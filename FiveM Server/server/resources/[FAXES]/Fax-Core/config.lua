--[[

 Please note. When adding cars, weapons or peds that all characterization is uppercase (A, B, C not a, b, c)
 Also when making separate lines you are required to place a comma (,) on all lines except the last, as seen below.
 Links for lists of vehicles, weapons and peds can be found at the very bottom of this file.

 Configs in this file include
 - Vehicle blacklists
 - Weapon blacklists
 - Ped models blacklists
 - Extra Information

 Set up Wiki / Edit Guide
 http://faxes.zone/docs/faxcore.html

]]

--[[
	VEHICLE SECTION

	NOTES

	x Don't add Military Vehicles! They are added as a vehicle class to make your life better!
	x Vehicles will force people out of them except for vehicles in "restrictedVehsGen"
	x All Super cars are already blacklisted for guests by default
]]
-- Vehicles that are restricted for all except admins
vehModelsAdmin = 
{
	"cvpi5",
	"lssheriff3",
}

-- Vehicles that are restricted for people below Owner (Snr Admin, Admin, M3, M2, M1, Guest)
restrictedVehsGen = 
{
	"APC",
	"BLIMP",
	"BLIMP2",
	"BLAZER4",
	"BLAZER5",
	"SCARAB",
    "SCARAB2",
	"BRICKADE",
	"BUZZARD",
	"BOXVILLE5",
	"DUKES2",
	"DUNE2",
	"DUNE3",
	"DUNE4",
	"DUNE5",
	"DUMP",
	"HYDRA",
	"INSURGENT",
	"INSURGENT2",
	"INSURGENT3",
	"JET",
	"KURUMA2",
	"LAZER",
	"LIMO2",
	"MARSHALL",
	"MONSTER",
	"RHINO",
	"SAVAGE",
	"SCHAFTER5",
	"SCHAFTER6",
	"SHEAVA",
	"SHOTARO",
	"SKYLIFT",
	"TECHNICAL",
	"TECHNICAL2",
	"TECHNICAL3",
	"TROPHYTRUCK",
	"TROPHYTRUCK2",
	"TUG",
	"VALKYRIE",
	"VALKYRIE2",
	"OPPRESSOR",
	"TAMPA3",
	"TRAILERSMALL2",
	"ARDENT",
	"HALFTRACK",
	"PHANTOM2",
	"RUINER2",
	"VOLTIC2",
	"WASTELANDER",
	"NIGHTSHARK",
	"CARTRAILER",
	"RAMPTRUCK",
	"HUNTER",
    "VIGILANTE",
    "BOMBUSHKA",
    "ROGUE",
    "ALPHAZ1",
    "STARLING",
    "TULA",
    "RIOT2",
    "AKULA",
    "AVENGER",
    "AVENGER2",
    "BARRAGE",
    "CHERNOBOG",
    "KHANJALI",
    "STROMBERG",
    "VOLATOL",
    "THRUSTER",
    "PYRO",
    "MOGUL",
    "NOKOTA",
    "BOMBUSHKA",
    "MOLOTOK",
    "MICROLIGHT",
    "REVOLTER",
	"DELUXO",
	"RCBANDITO",
	"SEABREEZE",
	"CARACARA",
	"AFO",
}

-- Vehicles that are restricted for people below Owner (Admin, M3, M2, M1, Guest)
restrictedVehsSnrAdmin = 
{	
	"CAR1",
	"CAR2",
}

-- Vehicles that are restricted for people below Owner (M3, M2, M1, Guest)
restrictedVehsAdmin = 
{
	"BLIMP3",
    "MENACER",
    "MULE4",
    "PATRIOT2",
    "POUNDER2",
    "STRIKEFORCE",
    "SCRAMJET",
    "SPEEDO4",
    "STAFFORD",
    "SWINGER",
    "TERBYTE",
	"BRUISER",
    "BRUISER2",
    "BRUTUS",
    "BRUTUS2",
    "CERBERUS",
    "CERBERUS2",
    "CLIQUE",
    "DEATHBIKE",
    "DEATHBIKE2",
    "DEVESTE",
    "DEVIANT",
    "IMPALER",
    "IMPALER2",
    "IMPALER3",
    "IMPERATOR",
    "IMPERATOR2",
    "ISSI4",
    "ISSI5",
    "ITALIGTO",
    "MONSTER3",
    "MONSTER4",
    "SCHLAGEN",
    "SLAMVAN4",
    "SLAMVAN5",
    "TOROS",
    "TULIP",
    "VAMOS",
    "ZR380",
	"ZR3802"
}

-- Vehicles that are restricted for people below Owner (M2, M1, Guest)
restrictedVehsM3 = 
{
	"FPIS13",
	"PUCVAN1",
	"TESLA11",
	"LYKAN",
	"IT458",
	"HURACAN",
	"LP700",
	"LP770",
	"LP770R",
	"A8FSI",
	"2F2FGTR34",
	"2F2FGTS",
	"2F2FMK4",
	"2F2FMLE7",
	"FF4WRX",
	"FNF4R34",
	"FNFLAN",
	"FNFMITS",
	"FNFMK4",
	"FNFRX7",
	"ONEBEAST",
	"BALLER5",
	"BALLER6",
	"XLS2",
	"COG552",
	"COGNOSCENTI2",
	"DOMINATOR4",
    "DOMINATOR5",
}

-- Vehicles that are restricted for people below Owner (M1, Guest)
restrictedVehsM2 = 
{
	"06TAHOE1",
	"06TAHOELIB",
	"CONTENDRED",
	"cvpi1",
	"cvpi2",
	"cvpi3",
	"cpvi4",
	"cvpi1blue",
	"cvpi2blue",
	"cvpifd",
	"cvpifreedomblue",
	"cvpilasd1",
	"cvpilasd2",
	"emssuv",
	"fpiu13",
	"fpiu16",
	"hwaycar",
	"hwaycar2",
	"hwaycar3",
	"hwaycar4",
	"hwaycar5",
	"hwaycar6",
	"hwaycar7",
	"lapdtraffic12cvpi",
	"pgresley",
	"pgranger",
	"pinterceptor",
	"police5",
	"police5blue",
	"police6",
	"police7",
	"policeinsurgent",
	"psubby16",
	"pyosemite",
	"sheriffinsurgent2",
	"sheriffmav2",
	"z01bimpalalib",
	"z01blueimpala",
	"fbi",
	"fbi2",
	"fbi3",
	"fbi4",
	"fbi5",
	"fbiriot",
	"fbiinsurgent",
	"policemav",
	"riot",
	"sheriff4",
	"fdcar1",
	"fdcar2",
	"fdcar3",
	"fdcar4",
	"sspres",
	"VC7",
	"Z4I",
	"CARGOPLANE",
}
--[[
	WEAPON SECTION

	NOTES

	x Explosive weapons are added into weaps.lua. To disable this edit the file or watch the video made by FAXES.
]]
-- Weapons that are restricted for people below owner (Snr Admin, Admin, M3, M2, M1, Guest)
restrictedWeapsGen = 
{
	"WEAPON_AIRSTRIKE_ROCKET",
	"WEAPON_ASSAULTSHOTGUN",
	"WEAPON_COMBATMG",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_GRENADE",
	"WEAPON_STINGER",
	"WEAPON_FIREWORK",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_MG",
	"WEAPON_MINIGUN",
	"WEAPON_MOLOTOV",
	"WEAPON_PASSENGER_ROCKET",
	"WEAPON_PIPEBOMB",
	"WEAPON_PROXMINE",
	"WEAPON_RAILGUN",
	"WEAPON_REVOLVER",
	"WEAPON_RPG",
	"WEAPON_SMG",
	"WEAPON_SMG_MK2",
	"WEAPON_STICKYBOMB",
	"WEAPON_ASSAULTRIFLE_MK2",
	"WEAPON_CARBINERIFLE_MK2",
	"WEAPON_HEAVYSNIPER_MK2",
	"WEAPON_COMBATMG_MK2",
	"WEAPON_PISTOL_MK2",
}

-- Weapons that are restricted for people below M3 (M2, M1, Guest)
restrictedWeapsM3 = 
{
	"WEAPON_HEAVYSNIPER",
	"WEAPON_RIFLE_HEAVY",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_SNOWBALL",
	"WEAPON_FLAREGUN",
}

-- Weapons that are restricted for people below M1 (Guest)
restrictedWeapsM1 =
{
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_MARKSMANRIFLE",
	"WEAPON_SPECIALCARBINE",
	"WEAPON_REVOLVER",
}

--[[
	PED MODEL SECTION
]]
-- Switches back to the below ped when a user is in a blacklisted one.
newdmodel = GetHashKey("a_m_y_hipster_01")

-- Set staff / admin peds. These are blacklisted. Use /oda to go on duty as an admin.
restrictedPedsStaff =
{
	"s_m_m_armoured_02",
	"s_m_y_seb_02",
}

-- Peds that are restricted for people below owner (Snr Admin, Admin, M3, M2, M1, Guest)
restrictedPedsAll = 
{
	"a_c_dolphin",
	"a_c_pigeon",
	"a_c_seagull",
	"a_c_killerwhale",
	"a_c_sharkhammer",
	"a_c_sharktiger",
	"a_c_stingray",
	"a_c_humpback",
	"a_c_fish",
	"a_c_chickenhawk",
}

-- Peds that are restricted for people below M3 (M2, M1, Guests)
restrictedPedsM3 = 
{
	"a_c_chimp",
	"a_c_cormorant",
	"a_c_coyote",
	"a_c_hen",
	"a_c_rabbit_01",
	"a_c_rat",
	"a_c_rhesus",
	"a_c_mtlion",
	"ap_sp_dick",
	"ap_fra_ped",
	"S_M_M_MovAlien_01",
	"S_M_M_MovSpace_01",
	"U_M_Y_RSRanger_01",
	"U_M_Y_Zombie_01",
	"a_m_m_og_boss_01",
	"a_m_m_soucent_04",
}

-- Peds that are restricted for people below M2 (M1, Guests)
restrictedPedsM2 = 
{
	"a_c_chimp",
	"a_c_cormorant",
	"a_c_coyote",
	"a_c_hen",
	"a_c_rabbit_01",
	"a_c_rat",
	"a_c_rhesus",
	"a_c_mtlion",
	"ap_sp_dick",
	"ap_fra_ped",
	"S_M_M_MovAlien_01",
	"S_M_M_MovSpace_01",
	"U_M_Y_RSRanger_01",
	"U_M_Y_Zombie_01",
	"a_m_m_og_boss_01",
	"a_m_m_soucent_04",
}

-- Peds that are restricted for people below M1 (Guest)
restrictedPedsM1 = 
{
	"a_c_chop",
	"a_c_cat_01",
	"a_c_shepherd",
	"a_c_cow",
	"a_c_crow",
	"a_c_deer",
	"a_c_husky",
	"a_c_pig",
	"a_c_boar",
	"a_c_poodle", 
	"a_c_pug",
	"a_c_retriever",
	"a_c_rottweiler",
	"a_c_westy",
}

--[[
Links for lists of vehicles, peds and weapons:

The Below links have changed! They will not work!
Vehicles: https://wiki.fivem.net/wiki/Vehicles
Ped Models: https://wiki.fivem.net/wiki/Peds
Weapon Models: https://wiki.fivem.net/wiki/Weapons


GET RPG's AND RAIGUNS BLACKLISTED! USE THE BELOW!
WEAPON_RAILGUN
WEAPON_MINIGUN
WEAPON_RPG

Make sure all are uppercase when placing them in this file.
]]--