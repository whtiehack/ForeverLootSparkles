-- Translations keyed by the English text; anything missing stays English.

local _, ns = ...;

local L = setmetatable({}, { __index = function(_, key) return key; end });
ns.L = L;

if GetLocale() == "zhCN" then
	L["Forever Loot Sparkles"] = "任务物品闪光";
	L["|cffff8000Forever Loot Sparkles:|r restart the game to remove the sparkles. /reload is not enough."] =
		"|cffff8000任务物品闪光：|r要完全重启游戏，闪光才会消失，/reload 不行。";
	L["Show quest item sparkles"] = "任务物品闪光";
	L["Keeps the game's loot sparkle on, even after a graphics preset turns it off. Your outline mode is left as you set it. Switching this off takes effect after restarting the game."] =
		"让能拾取的任务物品一直闪光，调整画质后也会自动打开，不改你的描边设置。关掉后要完全重启游戏才生效。";
	L["Sparkles while approaching"] = "靠近时闪光";
	L[" Uses Blizzard's soft targeting: the nearest object within about 15 yards sparkles, brighter once you can reach it. Needs the game's Enable Interact Key setting and its interact icons on objects; switching this on turns both on, and with them off nothing sparkles. Side effect: a friendly spell cast without a target may land on someone near you instead of you."] =
		"离你最近的一个物体（约 15 码内）会闪光，走到够得着的距离会更亮。用的是游戏自带的互动按键功能，勾选时会自动打开它和物体上的互动图标，所以物体上方会出现一个小图标；把它们关了就不会闪光。注意：开着时，没选目标就放的增益和治疗可能落到旁边的人身上。";
	L["Ore veins"] = "矿脉";
	L["Sparkles on mining nodes as you approach them."] = "靠近矿脉时闪光。";
	L["Herbs"] = "草药";
	L["Sparkles on herbs as you approach them."] = "靠近草药时闪光。";
	L["Quest objects"] = "任务物体";
	L["Extra sparkles on quest objects as you approach them. Off by default: the game's loot sparkle already marks most of them."] =
		"靠近任务物体时额外闪光。默认关闭，因为大部分任务物体本来就会闪光。";
	L["Corpses with loot"] = "有战利品的尸体";
	L["Sparkles on a corpse that still holds loot for you, bosses included. Only after the fight: the game doesn't let addons switch the nameplate it hangs on during combat."] =
		"靠近还有东西没拾取的尸体时闪光，首领也算。战斗结束后才会显示，战斗中游戏不允许插件改动。";
end
