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
end
