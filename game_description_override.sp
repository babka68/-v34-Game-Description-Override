#pragma semicolon 1
#pragma newdecls required

// ConVar
bool g_bEnadle;
char g_sGame_Description_Override[PLATFORM_MAX_PATH];

public Plugin myinfo = 
{
	name = "[v34] Game Description Override", 
	author = "babka68", 
	description = "Переопределение описание 'Игра'", 
	version = "1.0", 
	url = "https://vk.com/zakazserver68"
};

public void OnPluginStart()
{
	ConVar cvar;
	
	cvar = CreateConVar("sm_game_description_override_enable", "1", "Включить плагин? [1 - Включить, 0 - Нет]", _, true, 0.0, true, 1.0);
	cvar.AddChangeHook(ChangeEneble);
	g_bEnadle = cvar.BoolValue;
	
	cvar = CreateConVar("sm_game_description_override", "Skins|CS:GO", "Установить описание игры при загрузке сервера (максимум 64 символа)");
	cvar.AddChangeHook(ChangeStringValue);
	cvar.GetString(g_sGame_Description_Override, sizeof(g_sGame_Description_Override));
	
	AutoExecConfig(true, "game_description_override");
}

public void ChangeEneble(ConVar cvar, const char[] oldValue, const char[] newValue)
{
	g_bEnadle = cvar.BoolValue;
}

public void ChangeStringValue(ConVar cvar, const char[] oldValue, const char[] newValue)
{
	cvar.GetString(g_sGame_Description_Override, sizeof(g_sGame_Description_Override));
}

public Action OnGetGameDescription(char gameDesc[64])
{
	if (g_bEnadle)
	{
		if (StrEqual(g_sGame_Description_Override, ""))
		{
			LogError("Описание игры не задано, пожалуйста, установите его в вашем скрипте запуска с помощью +sm_game_description_override");
		}
		
		else
		{
			PrintToServer("[v34] Game Description Override Описание игры установлено на %s", g_sGame_Description_Override);
			strcopy(gameDesc, sizeof(gameDesc), g_sGame_Description_Override);
		}
	}
	return Plugin_Changed;
}
