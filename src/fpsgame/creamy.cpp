#include "creamy.h"
#include "game.h"

VAR(aim_assist_value, 0, 0, 100);
VAR(aim_assist_speed, 0, 0, 100);
VAR(enable_aimbot, 0, 0, 1);
VAR(enable_teleport, 0, 0, 1);
VAR(enable_god_aim, 0, 0, 1);


//void toggle(int hack_name)
//{
//    if(hack_name == 0) { hack_name = 1; return; } // TODO: please for the love of god use a switch case here
//    if(hack_name == 1) { hack_name = 0; return; }
//}


namespace creamy {
    VAR(enable_overwrite_third_person, 0, 0, 1);
    VAR(enable_kill_switch, 0, 0, 1); // This is a clusterfuck.
    VAR(force_jump, 0, 0, 1);
    VAR(enable_collision_toggle, 0, 0, 1);
    VAR(current_target, 1, 1, 8);
    VAR(enable_z_teleport, 0, 0, 1);
    VAR(enable_anti_aim, 0, 0, 1);
    VAR(enable_triggerbot, 0, 0, 1);
    VAR(enable_spinny_spinny, 0, 0, 1);

    int attack_state;
    int last_attack_state = 0;

    // TODO: MAKE THIS LESS DUMB
    void creamy_toggle(char *name)
    {
        if(std::string(name) == "enable_aimbot") { if(enable_aimbot) { enable_aimbot = 0; return; } if(!enable_aimbot) { enable_aimbot = 1; return; }} // This is a mega-clusterfuck- i don't care.
        if(std::string(name) == "enable_teleport") { if(enable_teleport) { enable_teleport = 0; return; } if(!enable_teleport) { enable_teleport = 1; return; }} // This is a mega-clusterfuck- i don't care.
        if(std::string(name) == "enable_god_aim") { if(enable_god_aim) { enable_god_aim = 0; return; } if(!enable_god_aim) { enable_god_aim = 1; return; }} // This is a mega-clusterfuck- i don't care.
        if(std::string(name) == "enable_overwrite_third_person"){ if(enable_overwrite_third_person) { enable_overwrite_third_person = 0; return; } if(!enable_overwrite_third_person) { enable_overwrite_third_person = 1; return; }} // This is a mega-clusterfuck- i don't care.
        if(std::string(name) == "enable_kill_switch") { if(enable_kill_switch) { enable_kill_switch = 0; return; } if(!enable_kill_switch) { enable_kill_switch = 1; return; }} // This is a mega-clusterfuck- i don't care.
        if(std::string(name) == "force_jump") { if(force_jump) { force_jump = 0; return; } if(!force_jump) { force_jump = 1; return; }} // This is a mega-clusterfuck- i don't care.
        if(std::string(name) == "enable_collision_toggle") { if(enable_collision_toggle) { enable_collision_toggle = 0; return; } if(!enable_collision_toggle) { enable_collision_toggle = 1; return; }} // This is a mega-clusterfuck- i don't care.
    }

    COMMAND(creamy_toggle, "s");

    bool should_fire(int target) {
        fpsent *d = game::hudplayer();

        bool fire = false;
        dynent *o = game::intersectclosest(d->o, worldpos, d);

        if (o && o->type == ENT_PLAYER) {
            fire = true;
            int msec = 0;
        }

        return fire;
    }

    vec player_getaimpos(fpsent *d, fpsent *e) {
        vec o = e->o;
        if (d->gunselect == GUN_RL) o.z += (e->aboveeye * 0.2f) - (0.8f * d->eyeheight);
        else if (d->gunselect != GUN_GL) o.z += (e->aboveeye - e->eyeheight) * 0.5f;
        return o;
    }

    void player_fixfullrange(float &yaw, float &pitch, float &roll, bool full) {
        if (full) {
            while (pitch < -180.0f) pitch += 360.0f;
            while (pitch >= 180.0f) pitch -= 360.0f;
            while (roll < -180.0f) roll += 360.0f;
            while (roll >= 180.0f) roll -= 360.0f;
        } else {
            if (pitch > 89.9f) pitch = 89.9f;
            if (pitch < -89.9f) pitch = -89.9f;
            if (roll > 89.9f) roll = 89.9f;
            if (roll < -89.9f) roll = -89.9f;
        }
        while (yaw < 0.0f) yaw += 360.0f;
        while (yaw >= 360.0f) yaw -= 360.0f;
    }

    void player_fixrange(float &yaw, float &pitch) {
        float r = 0.f;
        player_fixfullrange(yaw, pitch, r, false);
    }

    void getyawpitch(const vec &from, const vec &pos, float &yaw, float &pitch) {
        float dist = from.dist(pos);
        yaw = -atan2(pos.x - from.x, pos.y - from.y) / RAD;
        pitch = asin((pos.z - from.z) / dist) / RAD;
    }

    void player_scaleyawpitch(float &yaw, float &pitch, float targyaw, float targpitch, float frame, float scale) {
        if (yaw < targyaw - 180.0f) yaw += 360.0f;
        if (yaw > targyaw + 180.0f) yaw -= 360.0f;
        float offyaw = fabs(targyaw - yaw) * frame, offpitch = fabs(targpitch - pitch) * frame * scale;
        if (targyaw > yaw) {
            yaw += offyaw;
            if (targyaw < yaw) yaw = targyaw;
        } else if (targyaw < yaw) {
            yaw -= offyaw;
            if (targyaw > yaw) yaw = targyaw;
        }
        if (targpitch > pitch) {
            pitch += offpitch;
            if (targpitch < pitch) pitch = targpitch;
        } else if (targpitch < pitch) {
            pitch -= offpitch;
            if (targpitch > pitch) pitch = targpitch;
        }
        player_fixrange(yaw, pitch);
    }

    void aimbot(int target) {

        if (game::players[target]) {
            vec enemy_aimpos = player_getaimpos(game::player1, game::players[target]);
            //conoutf("Player:%i X:%f, Y%f, Z%f", i, enemy_aimpos.x, enemy_aimpos.y, enemy_aimpos.z);

        }

        if (game::players[0]) {
            vec player_aimpos = player_getaimpos(game::player1, game::players[target]);

            vec dp = game::player1->headpos();

            vec ep = player_getaimpos(game::player1, game::players[target]);
            float yaw, pitch;
            getyawpitch(dp, ep, yaw, pitch);
            player_fixrange(yaw, pitch);

            player_scaleyawpitch(game::players[target]->yaw, game::players[target]->pitch, yaw, pitch, 0.0f, 1.0f);

            conoutf("Yaw:%f, Pitch:%f", yaw, pitch);

            game::players[0]->yaw = yaw;
            game::players[0]->pitch = pitch;
        }
    }

    void aim_assist(int target) {
        if (game::players[target]) {
            vec enemy_aimpos = player_getaimpos(game::player1, game::players[target]);
        }

        if (game::players[0]) {
            vec player_aimpos = player_getaimpos(game::player1, game::players[target]);

            vec dp = game::player1->headpos();


            vec ep = player_getaimpos(game::player1, game::players[target]);
            float yaw, pitch;
            getyawpitch(dp, ep, yaw, pitch);
            player_fixrange(yaw, pitch);

            player_scaleyawpitch(game::players[target]->yaw, game::players[target]->pitch, yaw, pitch, 0.0f, 1.0f);

            conoutf("Target Yaw%f, Target Pitch:%f", yaw, pitch);
            conoutf("Current Yaw%f, Current Pitch:%f", game::players[0]->yaw, game::players[0]->pitch);
            if (abs(game::players[0]->yaw - yaw) <= aim_assist_value && abs(game::players[0]->pitch - pitch) <= aim_assist_value)
            {
                if(game::players[0]->yaw > yaw) game::players[0]->yaw -= aim_assist_speed/10;
                if(game::players[0]->yaw < yaw) game::players[0]->yaw += aim_assist_speed/10;
                if(game::players[0]->pitch > pitch) game::players[0]->pitch -= aim_assist_speed/10;
                if(game::players[0]->pitch < pitch) game::players[0]->pitch += aim_assist_speed/10;
            }
        }
    }


    void teleport(int target) {
        if(game::players[0]) {
            if (game::players[target]) {
                game::players[0]->o.x = game::players[target]->o.x;
                game::players[0]->o.y = game::players[target]->o.y;
                game::players[0]->o.z = game::players[target]->o.z;
            }
        }
    }

    void z_teleport(int target) {
        if(game::players[0]) {
            if (game::players[target]) {
                game::players[0]->o.z = game::players[target]->o.z;
            }
        }
    }

    void triggerbot()
    {
        fpsent *d = game::hudplayer();
        dynent *o = game::intersectclosest(d->o, worldpos, d);

        if(o && o->type==ENT_PLAYER)
        {
            game::doattack(1);
            last_attack_state = 1;
        }
        else
        {
            if (last_attack_state == 1) game::doattack(0); last_attack_state = 0;
        }
    }

    void anti_aim()
    {

    }

    void spinny_spinny()
    {
        camera1->roll += 1;
    }

    void update() {
        if(creamy::enable_kill_switch == 0) {
            if (current_target > game::players.length() - 1 && game::players.length() > 1) current_target = game::players.length() - 1;
            if (current_target == 0) current_target == 1;
            if (enable_aimbot) aimbot(current_target);
            if (aim_assist_value) aim_assist(current_target);
            if (enable_teleport) teleport(current_target);
            if (enable_z_teleport) z_teleport(current_target);
            if (enable_triggerbot) triggerbot();
            if (enable_spinny_spinny) spinny_spinny();
        }
    }

}

