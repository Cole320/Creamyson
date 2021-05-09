#include "creamy.h"
#include "game.h"

bool should_fire()
{
    fpsent *d = game::hudplayer();

    bool fire = false;
    dynent *o = game::intersectclosest(d->o, worldpos, d);
    if(o && o->type==ENT_PLAYER)
    {
        fire = true;
        int msec = 0;

    }
    return fire;
}

vec player_getaimpos(fpsent *d, fpsent *e)
{
    vec o = e->o;
    if(d->gunselect == GUN_RL) o.z += (e->aboveeye*0.2f)-(0.8f*d->eyeheight);
    else if(d->gunselect != GUN_GL) o.z += (e->aboveeye-e->eyeheight)*0.5f;
    return o;
}

void player_fixfullrange(float &yaw, float &pitch, float &roll, bool full)
{
    if(full)
    {
        while(pitch < -180.0f) pitch += 360.0f;
        while(pitch >= 180.0f) pitch -= 360.0f;
        while(roll < -180.0f) roll += 360.0f;
        while(roll >= 180.0f) roll -= 360.0f;
    }
    else
    {
        if(pitch > 89.9f) pitch = 89.9f;
        if(pitch < -89.9f) pitch = -89.9f;
        if(roll > 89.9f) roll = 89.9f;
        if(roll < -89.9f) roll = -89.9f;
    }
    while(yaw < 0.0f) yaw += 360.0f;
    while(yaw >= 360.0f) yaw -= 360.0f;
}

void player_fixrange(float &yaw, float &pitch)
{
    float r = 0.f;
    player_fixfullrange(yaw, pitch, r, false);
}

void getyawpitch(const vec &from, const vec &pos, float &yaw, float &pitch)
{
    float dist = from.dist(pos);
    yaw = -atan2(pos.x-from.x, pos.y-from.y)/RAD;
    pitch = asin((pos.z-from.z)/dist)/RAD;
}

void player_scaleyawpitch(float &yaw, float &pitch, float targyaw, float targpitch, float frame, float scale)
{
    if(yaw < targyaw-180.0f) yaw += 360.0f;
    if(yaw > targyaw+180.0f) yaw -= 360.0f;
    float offyaw = fabs(targyaw-yaw)*frame, offpitch = fabs(targpitch-pitch)*frame*scale;
    if(targyaw > yaw)
    {
        yaw += offyaw;
        if(targyaw < yaw) yaw = targyaw;
    }
    else if(targyaw < yaw)
    {
        yaw -= offyaw;
        if(targyaw > yaw) yaw = targyaw;
    }
    if(targpitch > pitch)
    {
        pitch += offpitch;
        if(targpitch < pitch) pitch = targpitch;
    }
    else if(targpitch < pitch)
    {
        pitch -= offpitch;
        if(targpitch > pitch) pitch = targpitch;
    }
    player_fixrange(yaw, pitch);
}

void aimbot()
{
    for (int i = 0; i < game::players.length(); i++)
    {
        if(game::players[1])
        {
            vec enemy_aimpos = player_getaimpos(game::player1, game::players[i]);
            conoutf("Player:%i X:%f, Y%f, Z%f", i, enemy_aimpos.x, enemy_aimpos.y, enemy_aimpos.z);

        }

        if(game::players[0])
        {
            vec player_aimpos = player_getaimpos(game::player1, game::players[i]);

            vec dp = game::player1->headpos();


            vec ep = player_getaimpos(game::player1, game::players[i]);
            float yaw, pitch;
            getyawpitch(dp, ep, yaw, pitch);
            player_fixrange(yaw, pitch);

            player_scaleyawpitch(game::players[1]->yaw, game::players[1]->pitch, yaw, pitch, 0.0f, 1.0f);

            conoutf("Yaw:%f, Pitch:%f", yaw, pitch);

            game::players[0]->yaw = yaw;
            game::players[0]->pitch = pitch;
        }


    }
}

void update()
{
    if(true)aimbot();
}
