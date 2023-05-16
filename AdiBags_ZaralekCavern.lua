-------------------------------------------------------------------------------
-- AdiBags - Zaralek Cavern By Crackpot (US, Illidan)
-------------------------------------------------------------------------------
local addonName, addon = ...
local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")

local tonumber = _G.tonumber
local L = addon.L

local cavernFilter = AdiBags:RegisterFilter("Zaralek Cavern", 98, "ABEvent-1.0")
cavernFilter.uiName = L["Zaralek Cavern"]
cavernFilter.uiDesc = L["Items from Zaralek Cavern, added in patch 10.1."]

function cavernFilter:OnInitialize()
    self.cavern = {
        [202171] = true, -- Obsidian Flightstone
        [203706] = true, -- Hurricane Scepter
        [203708] = true, -- Conch Whistle
        [204075] = true, -- Whelpling's Shadowflame Crest Fragment
        [204076] = true, -- Drake's Shadowflame Crest Fragment
        [204077] = true, -- Wyrm's Shadowflame Crest Fragment
        [204078] = true, -- Aspect's Shadowflame Crest Fragmenta
        [204193] = true, -- Whelpling's Shadowflame Crest
        [204194] = true, -- Aspect's Shadowflame Crest
        [204195] = true, -- Drake's Shadowflame Crest
        [204196] = true, -- Wyrm's Shadowflame Crest
        [204361] = true, -- Winding Slitherdrake
        [204408] = true, -- Gholna's Lavaborne Legwraps
        [204409] = true, -- Heatbinder's Burning Slippers
        [204418] = true, -- Ashen Zaralek Cuirass
        [204419] = true, -- Cavernous Foliage Wristbands
        [204425] = true, -- Crown of the Twin Elders
        [204426] = true, -- Blazestalker's Smelted Cleats
        [204431] = true, -- Epaulettes of Draconic Conquest
        [204432] = true, -- Vakan's Shale Greatbelt
        [204440] = true, -- Spark of Shadowflame
        [204460] = true, -- Zaralek Glowspores
        [204681] = true, -- Enchanted Whelpling's Shadowflame Crest
        [204682] = true, -- Enchanted Wrym's Shadowflame Crest
        [204715] = true, -- Unearthed Fragrant Coin
        [204717] = true, -- Splintered Spark of Shadwoflame
        [204721] = true, -- Whelpling's Small Chest
        [204722] = true, -- Whelpling's Bountiful Chest
        [204723] = true, -- Whelpling's Hefty Chest
        [204724] = true, -- Drake's Small Chest
        [204725] = true, -- Drake's Hefty Chest
        [204726] = true, -- Drake's Bountiful Chest
        [204727] = true, -- Coveted Bauble
        [204843] = true, -- Draconic Mark of Mastery
        [204985] = true, -- Barter Brick
        [205026] = true, -- Devourer Lobstrok
        [205114] = true, -- Brul
        [205120] = true, -- Thimblerig
        [205147] = true, -- Ridged Shalewing
        [205151] = true, -- Salverun
        [205154] = true, -- Aquapo
        [205155] = true, -- Big Slick in the City
        [205159] = true, -- Teardrop Moth
        [205188] = true, -- Barter Boulder
        [205203] = true, -- Cobalt Shalewing
        [205209] = true, -- Boulder Hauler Reins
        [205247] = true, -- Clinking Dirt-Covered Pouch
        [205248] = true, -- Clanging Dirt-Covered Pouch
        [205367] = true, -- Indebted Researcher's Gift
        [205368] = true, -- Thankful Researcher's Gift
        [205369] = true, -- Appreciative Researcher's Gift
        [205370] = true, -- Researcher's Gift
        [205419] = true, -- Jrumm's Drum
        [205421] = true, -- Ponzo's Scheming Topper
        [205452] = true, -- Ponzo's Cream
        [205453] = true, -- Glimmerogg Timeshare Voucher
        [205463] = true, -- Skornak's Lava Ball
        [205796] = true, -- Molten Lava Pack
        [205982] = true, -- Lost Dig Map
        [205983] = true, -- Scentsational Niffen Treasures
        [205984] = true, -- Bartered Dig Map
        [206009] = true, -- Ouroboros Tablet
    }
end

function cavernFilter:Update()
    self:SendMessage("AdiBags_FiltersChanged")
end

function cavernFilter:OnEnable()
    AdiBags:UpdateFilters()
end

function cavernFilter:OnDisable()
    AdiBags:UpdateFilters()
end

function cavernFilter:Filter(slotData)
    if self.cavern[tonumber(slotData.itemId)] then
        return L["Zaralek Cavern"]
    end
end