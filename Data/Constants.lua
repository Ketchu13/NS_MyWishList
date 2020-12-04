-- Author      : ketch
-- Create Date : 11/19/2020 12:48:43 PM
local addonname, NS_MyWishList = ...
local _G = getfenv(0)
local NS_MyWishList =_G.NS_MyWishList

NS_MyWishList.buttonText = {"Valider","Annuler","Confirmer","Oui","Non","Précédant","Suivant","Quitter","Rafraichir", "Fermer", "Enregistrer"}
--COLORS
NS_MyWishList.Colors = {
    Red = "|cFFFF0000",
    Blue = "|cFF5555FF",
    Green = "|cFF008000",
    Yellow = "|cFFFFFF00",
    Brown = "|cFF663300",
    Gray = "|cFF808080",
    White = "|cFFFFFFFF",
    Black = "|cFF000000",
    Aquablue = "|cFF00B8E6",
    Pink = "|cFFFF00FF",
    cend = "|r"
}
NS_MyWishList.clr_lines = {r =0.2, g = 0.2, b = 0.4, a = 0.2}
NS_MyWishList.drk_lines = {r =0.4, g = 0.4, b = 0.8, a = 0.2}
--
NS_MyWishList.engFR_classNames = {
    ["DRUID"] = "Druide",
    ["HUNTER"] = "Chasseur",
    ["MAGE"] = "Mage", 
    ["PALADIN"] = "Paladin", 
    ["PRIEST"] = "Pr�tre", 
    ["ROGUE"] = "Voleur", 
    ["SHAMAN"] = "Chaman", 
    ["WARLOCK"] = "D�moniste", 
    ["WARRIOR"] = "Gu�rrier"
};

NS_MyWishList.Instances = {
    [249] = {
        ["name"]  = "Onyxia",
        ["items"] = {
            17067,
            16914,
            16929,
            16900,
            16963,
            16921,
            16908,
            16939,
            16955,
            15273,
            17075,
            18813,
            17078,
            18705,
            18205,
            18422,
            17064
        }
    },
    [409] = {
        ["name"]  = "Molten Core",
        ["items"] = {
            16800,
            17109,
            16829,
            16805,
            16859,
            16863,
            16796,
            16835,
            17073,
            18203,
            16810,
            16847,
            16855,
            16867,
            17065,
            16822,
            16814,
            17069,
            16849,
            16812,
            16860,
            16826,
            16862,
            16795,
            17105,
            18832,
            16834,
            16813,
            17066,
            16808,
            16846,
            17071,
            16866,
            16854,
            16821,
            18563,
            16801,
            16831,
            16852,
            16811,
            16803,
            16824,
            16797,
            16836,
            16807,
            16856,
            17110,
            18563,
            16798,
            17103,
            17072,
            16865,
            16833,
            16809,
            16845,
            16853,
            16820,
            16815,
            18842,
            16848,
            16816,
            16823,
            16868,
            17074,
            18703,
            19140,
            18806,
            18805,
            18803,
            19139,
            18811,
            18808,
            18809,
            18646,
            18810,
            18812,
            17063,
            19138,
            16909,
            17076,
            18814,
            17102,
            18817,
            17107,
            16938,
            18815,
            16954,
            16922,
            16962,
            17106,
            16930,
            16915,
            19137,
            18816,
            17082,
            17104,
            16901,
            19145,
            18872,
            19136,
            18823,
            19146,
            18875,
            19144,
            18829,
            18861,
            18824,
            19143,
            19147,
            18879,
            18820,
            18821,
            19142,
            18822,
            18878,
            17077,
            16828,
            16851,
            16802,
            16858,
            16817,
            16827,
            16806,
            16830,
            16850,
            16799,
            16857,
            16819,
            16825,
            16861,
            16864,
            16804
        }
    },
    [469] = {
        ["name"]  = "Blackwing Lair",
        ["items"] = {
            16957,
            16927,
            16898,
            16912,
            16919,
            16941,
            16965,
            16906,
            19351,
            19350,
            19373,
            19341,
            19342,
            19374,
            19386,
            19385,
            19349,
            19352,
            19347,
            19361,
            16902,
            16961,
            16924,
            16917,
            16832,
            16932,
            16937,
            16953,
            19390,
            19391,
            19387,
            19389,
            19392,
            19388,
            19405,
            19403,
            19407,
            19368,
            19345,
            19406,
            19343,
            19399,
            19365,
            19398,
            19401,
            19400,
            19402,
            19430,
            19432,
            19433,
            19431,
            19367,
            19357,
            19397,
            19355,
            19396,
            19394,
            19353,
            19395,
            16964,
            16940,
            16907,
            16928,
            16913,
            16899,
            16920,
            16956,
            19002,
            19378,
            16966,
            16942,
            16905,
            16931,
            16897,
            16916,
            16923,
            16958,
            19381,
            19382,
            19376,
            19375,
            19360,
            19377,
            19363,
            19379,
            19364,
            19356,
            19380,
            19369,
            19335,
            19370,
            19334,
            19336,
            19337,
            16959,
            16911,
            16934,
            16904,
            16935,
            16951,
            16918,
            16926,
            19372,
            19371,
            19348,
            19346,
            19339,
            19340,
            16960,
            16910,
            16933,
            16903,
            16818,
            16952,
            16925,
            16936,
            19438,
            19437,
            19435,
            19362,
            19434,
            19436
        }
    },
    [309] = {
        ["name"]  = "Zul'Gurub",
        ["items"] = {
            10247,
            10249,
            10252,
            10255,
            10256,
            10257,
            10259,
            10261,
            10263,
            10264,
            10265,
            10266,
            10270,
            10385,
            10387,
            10388,
            10390,
            12017,
            12804,
            13874,
            15240,
            15247,
            15258,
            15267,
            15273,
            15283,
            15289,
            17057,
            17058,
            19221,
            19698,
            19699,
            19700,
            19701,
            19702,
            19703,
            19704,
            19705,
            19706,
            19708,
            19709,
            19710,
            19711,
            19713,
            19714,
            19715,
            19716,
            19717,
            19718,
            19719,
            19720,
            19721,
            19722,
            19723,
            19724,
            19767,
            19768,
            19802,
            19813,
            19814,
            19815,
            19816,
            19817,
            19818,
            19819,
            19820,
            19821,
            19852,
            19853,
            19854,
            19855,
            19856,
            19857,
            19859,
            19861,
            19862,
            19863,
            19864,
            19865,
            19866,
            19867,
            19869,
            19870,
            19871,
            19872,
            19873,
            19874,
            19875,
            19876,
            19877,
            19878,
            19881,
            19884,
            19885,
            19886,
            19887,
            19888,
            19889,
            19890,
            19891,
            19892,
            19893,
            19894,
            19895,
            19896,
            19897,
            19898,
            19899,
            19900,
            19901,
            19902,
            19903,
            19904,
            19905,
            19906,
            19907,
            19909,
            19910,
            19912,
            19913,
            19914,
            19915,
            19918,
            19919,
            19920,
            19922,
            19923,
            19925,
            19927,
            19928,
            19929,
            19930,
            19939,
            19940,
            19941,
            19942,
            19943,
            19944,
            19945,
            19946,
            19947,
            19961,
            19962,
            19963,
            19964,
            19965,
            19967,
            19968,
            19993,
            20032,
            20038,
            20257,
            20260,
            20262,
            20264,
            20265,
            20266,
            22216,
            22637,
            22711,
            22712,
            22713,
            22714,
            22715,
            22716,
            22718,
            22720,
            22721,
            22722,
            22739
        }
    },
    [509] = {
        ["name"]  = "Ahn'Qiraj 20",
        ["items"] = {
            20884,
            20885,
            20886,
            20888,
            20889,
            20890,
            21220,
            21452,
            21453,
            21454,
            21455,
            21456,
            21457,
            21458,
            21459,
            21460,
            21461,
            21462,
            21463,
            21464,
            21466,
            21467,
            21468,
            21469,
            21470,
            21471,
            21472,
            21473,
            21474,
            21475,
            21476,
            21477,
            21478,
            21479,
            21480,
            21481,
            21482,
            21483,
            21484,
            21485,
            21486,
            21487,
            21488,
            21489,
            21490,
            21491,
            21492,
            21493,
            21494,
            21495,
            21496,
            21497,
            21498,
            21499,
            21500,
            21501,
            21502,
            21503,
            21715,
            21806,
            21809,
            21810,
            22220
        }
    },
    [531] = {
        ["name"]  = "Ahn'Qiraj 40",
        ["items"] = {
            20726,
            20735,
            20926,
            20927,
            20928,
            20929,
            20930,
            20931,
            20932,
            20933,
            21126,
            21128,
            21134,
            21221,
            21232,
            21237,
            21579,
            21581,
            21582,
            21583,
            21585,
            21586,
            21596,
            21597,
            21598,
            21599,
            21600,
            21601,
            21602,
            21603,
            21604,
            21605,
            21606,
            21607,
            21608,
            21609,
            21610,
            21611,
            21615,
            21616,
            21617,
            21618,
            21619,
            21620,
            21621,
            21622,
            21623,
            21624,
            21625,
            21626,
            21627,
            21635,
            21639,
            21645,
            21647,
            21648,
            21650,
            21651,
            21652,
            21663,
            21664,
            21665,
            21666,
            21667,
            21668,
            21669,
            21670,
            21671,
            21672,
            21673,
            21674,
            21675,
            21676,
            21677,
            21678,
            21679,
            21680,
            21681,
            21682,
            21683,
            21684,
            21685,
            21686,
            21687,
            21688,
            21689,
            21690,
            21691,
            21692,
            21693,
            21694,
            21695,
            21696,
            21697,
            21698,
            21699,
            21700,
            21701,
            21702,
            21703,
            21704,
            21705,
            21706,
            21707,
            21708,
            21814,
            21836,
            21837,
            21838,
            21839,
            21856,
            21888,
            21889,
            21891,
            22196,
            22222,
            22396,
            22399,
            22402,
            22730,
            22731,
            22732,
            22734,
            23557,
            23558,
            23570
        }
    },
    [533] = {
        ["name"]  = "Naxxramas",
        ["items"] = {
            22349,
            22350,
            22351,
            22352,
            22353,
            22354,
            22355,
            22356,
            22357,
            22358,
            22359,
            22360,
            22361,
            22362,
            22363,
            22364,
            22365,
            22366,
            22367,
            22368,
            22369,
            22370,
            22371,
            22372,
            22373,
            22374,
            22375,
            22376,
            22416,
            22417,
            22418,
            22419,
            22420,
            22421,
            22422,
            22423,
            22424,
            22425,
            22426,
            22427,
            22428,
            22429,
            22430,
            22431,
            22436,
            22437,
            22438,
            22439,
            22440,
            22441,
            22442,
            22443,
            22464,
            22465,
            22466,
            22467,
            22468,
            22469,
            22470,
            22471,
            22476,
            22477,
            22478,
            22479,
            22480,
            22481,
            22482,
            22483,
            22488,
            22489,
            22490,
            22491,
            22492,
            22493,
            22494,
            22495,
            22496,
            22497,
            22498,
            22499,
            22500,
            22501,
            22502,
            22503,
            22504,
            22505,
            22506,
            22507,
            22508,
            22509,
            22510,
            22511,
            22512,
            22513,
            22514,
            22515,
            22516,
            22517,
            22518,
            22519,
            22520,
            22589,
            22630,
            22631,
            22632,
            22682,
            22691,
            22726,
            22727,
            22733,
            22798,
            22799,
            22800,
            22801,
            22802,
            22803,
            22804,
            22806,
            22807,
            22808,
            22809,
            22810,
            22811,
            22812,
            22813,
            22815,
            22816,
            22818,
            22819,
            22820,
            22821,
            22935,
            22936,
            22937,
            22938,
            22939,
            22940,
            22941,
            22942,
            22943,
            22947,
            22954,
            22960,
            22961,
            22967,
            22968,
            22981,
            22983,
            22988,
            22994,
            23000,
            23001,
            23004,
            23005,
            23006,
            23009,
            23014,
            23017,
            23018,
            23019,
            23020,
            23021,
            23023,
            23025,
            23027,
            23028,
            23029,
            23030,
            23031,
            23032,
            23033,
            23035,
            23036,
            23037,
            23038,
            23039,
            23040,
            23041,
            23042,
            23043,
            23044,
            23045,
            23046,
            23047,
            23048,
            23049,
            23050,
            23053,
            23054,
            23055,
            23056,
            23057,
            23059,
            23060,
            23061,
            23062,
            23063,
            23064,
            23065,
            23066,
            23067,
            23068,
            23069,
            23070,
            23071,
            23073,
            23075,
            23219,
            23220,
            23221,
            23226,
            23237,
            23238,
            23242,
            23545,
            23547,
            23548,
            23549,
            23577,
            23663,
            23664,
            23665,
            23666,
            23667,
            23668
        }
    },
}
--talents trees 
NS_MyWishList.speByClass = {
    WARRIOR = {
        { background = "WarriorArms", },
        { background = "WarriorFury", },
        { background = "WarriorProtection", },
    },
    ROGUE = {
        { background = "RogueAssassination", },
        { background = "RogueCombat", },
        { background = "RogueSubtlety", },
    },
    MAGE = {
        { background = "MageArcane", },
        { background = "MageFire", },
        { background = "MageFrost", },
    },
    PRIEST = {
        { background = "PriestDiscipline", },
        { background = "PriestHoly", },
        { background = "PriestShadow", },
    },
    WARLOCK = {
        { background = "WarlockCurses", },
        { background = "WarlockSummoning", },
        { background = "WarlockDestruction", },
    },
    HUNTER = {
        { background = "HunterBeastMastery", },
        { background = "HunterMarksmanship", },
        { background = "HunterSurvival", },
    },
    DRUID = {
        { background = "DruidBalance", },
        { background = "DruidFeralCombat", },
        { background = "DruidRestoration", },
    },
    SHAMAN = {
        { background = "ShamanElementalCombat", },
        { background = "ShamanEnhancement", },
        { background = "ShamanRestoration", },
    },
    PALADIN = {
        { background = "PaladinHoly", },
        { background = "PaladinProtection", },
        { background = "PaladinCombat", },
    },
}

NS_MyWishList.backdrop1 = {
    bgFile = [[Interface\Tooltips\UI-Tooltip-Background]],
    edgeFile = [[Interface\Tooltips\UI-Tooltip-Border]], edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 }
}