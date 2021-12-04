#include <sdkhooks>
#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo =
{
    name = "Game Description Override",
    author = "babka68",
    description = "Переопределение описание 'Игра'",
    version = "1.0",
    url = "https://vk.com/zakazserver68"
};

public Action OnGetGameDescription(char gameDescription[64]) {
    strcopy(gameDescription, sizeof(gameDescription), "Желаемый текст");
    return Plugin_Changed;
}
