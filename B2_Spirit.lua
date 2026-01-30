
--DCS World\Scripts\Database\Types.lua
declare_loadout(
	{
		category   		= 	CAT_BOMBS,
		CLSID    		= 	"{B2_Mk82*40}",
		Picture			=	"mk82.png",
		wsTypeOfWeapon	=	{wsType_Weapon,	wsType_Bomb, wsType_Bomb_A,	31},-- Mk_82
		displayName		=	_("B2 Mk-82*40"),
		Weight			=	9640,
		Count			=	40,
		attribute		=	{4,	5,	32,	51},--{4,	5,	32,	131},
		Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MK-82",
					}, 
				}, -- end of Elements
	}
)

declare_loadout(
	{
		category   		= 	CAT_BOMBS,
		CLSID    		= 	"{B2_CBU87*18}",
		Picture			=	"CBU.png",
		wsTypeOfWeapon	=	{wsType_Weapon,	wsType_Bomb, wsType_Bomb_Cluster, 77},-- CBU_87
		displayName		=	_("B2 CBU87*18"),
		Weight			=	7740,
		Count			=	18,
		attribute		=	{4,	5,	38,	77},--{4,	5,	32,	131},
		Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"CBU-87",
					}, 
				}, -- end of Elements
	}
)

declare_loadout(
	{
		category   		= 	CAT_BOMBS,
		CLSID    		= 	"{B2_CBU97*18}",
		wsTypeOfWeapon	=	{wsType_Weapon,	wsType_Bomb, wsType_Bomb_Cluster, 35},-- CBU_97
		Picture			=	"CBU.png",
		displayName		=	_("B2 CBU-97*18"),
		Weight			=	7506,
		Count			=	18,
		attribute		=	{4,	5,	38,	35},--{4,	5,	32,	131},
		Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"CBU-97",
					}, 
				}, -- end of Elements
	}
)

declare_loadout(
	{
		category   		= 	CAT_BOMBS,
		CLSID    		= 	"{B2_GBU-38*40}",
		Picture			=	"GBU38.png",
		wsTypeOfWeapon	=	{wsType_Weapon,	wsType_Bomb, wsType_Bomb_Guided, 89},-- GPU_38  --89
		displayName		=	_("B2 GBU-38*40"),
		Weight			=	9640,
		Count			=	40,
		attribute		=	{4,	5,	36,	86},
		Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-38",
					}, 
				}, -- end of Elements
	}
)

declare_loadout(
	{
		category   		= 	CAT_BOMBS,
		CLSID    		= 	"{B2_GBU-28*4}",
		Picture			=	"GBU27.png",
		wsTypeOfWeapon	=	{wsType_Weapon,	wsType_Bomb, wsType_Bomb_Guided, 48},-- GPU_28
		displayName		=	_("B2 GBU-28*4"),
		Weight			=	8520,
		Count			=	4,
		attribute		=	{4,	5,	36,	48},--{4,	5,	32,	131},
		Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-28",
					}, 
				}, -- end of Elements
	}
)

declare_loadout(
	{
		category   		= 	CAT_BOMBS,
		CLSID    		= 	"{B2_GBU-27*4}",
		Picture			=	"GBU27.png",
		wsTypeOfWeapon	=	{wsType_Weapon,	wsType_Bomb, wsType_Bomb_Guided, 43},-- GPU_27
		displayName		=	_("B2 GBU-27*4"),
		Weight			=	4800,
		Count			=	4,
		attribute		=	{4,	5,	36,	43},--{4,	5,	32,	131},
		Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-27",
					}, 
				}, -- end of Elements
	}
)

declare_loadout(
	{
		category   		= 	CAT_MISSILES,
		CLSID    		= 	"{B2_AGM-154C*8}",
		Picture			=	"AGM154.png",
		wsTypeOfWeapon	=	{wsType_Weapon,	wsType_Missile, wsType_AS_Missile, 43},-- AGM_154
		displayName		=	_("B2 AGM-154C*8"),
		Weight			=	3872,
		Count			=	8,
		attribute		=	{4,	4,	8,	132}, --{4,	5,	32,	131},
		--attribute		=	{4,	4,	8,	132,	"Cruise missiles"},
		Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"agm-154",
					}, 
				}, -- end of Elements
	}
)

local available_payload  =
{
	{ CLSID = "{B2_Mk82*40}"		}, --
	{ CLSID = "{B2_CBU87*18}"		}, --
	{ CLSID = "{B2_CBU97*18}"		}, --
	{ CLSID = "{B2_GBU-38*40}"		}, --
	{ CLSID = "{B2_GBU-28*4}"			,Type = 4 }, --on rotary launcher
	{ CLSID = "{B2_GBU-27*4}"			,Type = 4 }, --on rotary launcher
	{ CLSID = "{B2_AGM-154C*8}"			,Type = 4 }, --on rotary launcher
	{ CLSID = "B-1B_Mk-84*8"			,Type = 8 },-- on rotary launcher ( 8 sides )
}

B2_Spirit =  {
      
		Name 			= 'B2_Spirit',--
		DisplayName		= _('B-2 Spirit'),--
        Picture 		= "B2_Spirit.png",
        Rate 			= "40",
        Shape			= "B2_Spirit",--	
        WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'B2_Spirit';--
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'B2_Spirit-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'B2_Spirit';--
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "B2_Spirit-oblomok";
			file  		= "B2_Spirit-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	singleInFlight = true,

	mapclasskey 		= "P0091000027",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_F_Bomber, WSTYPE_PLACEHOLDER ,
        "Strategic bombers", "Refuelable", "Datalink", "Link16",},
		
	Categories = {
        },
	
		M_empty	=	82840,
		M_nominal	=	140000,
		M_max	=	213192,
		M_fuel_max	=	88450,
		H_max	=	15240,
		average_fuel_consumption	=	0.2923,
		CAS_min	=	75,
		V_opt	=	217,
		V_take_off	=	79,
		V_land	=	78,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-0.80,	-3.566,	6.091},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{9.695,	-3.542,	0},
		AOA_take_off	=	0.14,
		stores_number	=	2,
		bank_angle_max	=	45,
		Ny_min	=	-2,
		Ny_max	=	3.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	333,
		V_max_h	=	369.4,
		tanker_type	=	1,
		wing_area	=	181,
		wing_span	=	41.67,
		wing_type	= 	0,-- 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		thrust_sum_max	=	80000,
		thrust_sum_ab	=	130000,
		Vy_max	=	70,
		length	=	44.81,
		height	=	10.36,
		flaps_maneuver	=	1,
		Mach_max	=	0.98,
		range	=	12000,
		crew_size	=	2,
		RCS	=	0.2,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.3,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-3.996, -1.0,	20.835},
		nose_gear_wheel_diameter	=	0.95,
		main_gear_wheel_diameter	=	1.10,
		engines_nozzles = 
		{
			{
				pos = 	{-9.75,	-1.249,	-4.549},
				elevation	=	0.01,
				diameter	=	0.01,
				exhaust_length_ab	=	0.01,
				exhaust_length_ab_K	=	0.01,	
				smokiness_level     = 	0.1, 
			}, 

			{
				pos = 	{-9.75,	-1.249,	-2.839},
				elevation	=	0.01,
				diameter	=	0.01,
				exhaust_length_ab	=	0.01,
				exhaust_length_ab_K	=	0.01,	
				smokiness_level     = 	0.1, 
			}, 
			{
				pos = 	{-9.75,	-1.249,	2.881},
				elevation	=	0.01,
				diameter	=	0.01,
				exhaust_length_ab	=	0.01,
				exhaust_length_ab_K	=	0.01,	
				smokiness_level     = 	0.1, 
			}, 
			{
				pos = 	{-9.75,	-1.249,	4.549},
				elevation	=	0.01,
				diameter	=	0.01,
				exhaust_length_ab	=	0.01,
				exhaust_length_ab_K	=	0.01,	
				smokiness_level     = 	0.1, 
			}, 
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
				bailout_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
				bailout_arg = -1,
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	0,
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{11.737,	4.251,	0},
		fires_pos = 
		{
			[1] = 	{0.338,	-0.815,	0},
			[2] = 	{-3.491,	-0.153,	4.263},
			[3] = 	{-3.491,	-0.153,	-4.263},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-8.938,	-1.237,	2.985},
			[9] = 	{-8.938,	-1.237,	-2.985},
			[10] = 	{-8.938,	-1.154,	4.571},
			[11] = 	{-8.938,	-1.154,	-4.571},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	-0.878},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	0.878},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser

       -- Countermeasures
passivCounterm = {
CMDS_Edit = true,
SingleChargeTotal = 120,
chaff = {default = 60, increment = 30, chargeSz = 1},
flare = {default = 30, increment = 15, chargeSz = 2}
 },	
	
        CanopyGeometry = {
            azimuth = {-145.0, 145.0},
            elevation = {-50.0, 90.0}
        },

Sensors = {
OPTIC = {"Sniper XR FLIR", "Sniper XR CCD TV"},
RADAR = "B-1B SS radar",--63
RWR = "Abstract RWR"
},
Countermeasures = {
ECM = "AN/ALQ-161"
},
EPLRS = true,--?


	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},

Guns = {gun_mount("M_61", { count = 0 },{muzzle_pos = {5.00000, 0.250000, 0.000000}})--

},

	Pylons =     {
        pylon(1, 2, -2.218, -0.63, -5.77,{},available_payload),
        pylon(2, 2, -1.069, -0.42, -2.21,{},available_payload),
	},
	
	Tasks = {
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(PinpointStrike),
		aircraft_task(CAS),        
    },	
	DefaultTask = aircraft_task(GroundAttack),

	SFM_Data = {
	aerodynamics = 
		{
			Cy0	=	0.2,
			Mzalfa	=	6.6,
			Mzalfadt	=	1,
			kjx	=	2.85,
			kjz	=	0.00125,
			Czbe	=	-0.012,
			cx_gear	=	0.015,
			cx_flap	=	0.04,
			cy_flap	=	0.8,
			cx_brk	=	0.0275,
			table_data = 
			{
				[1] = 	{0,	0.0215,	0.07,	0.018,	0.025,	0.5,	30,	1.1},
				[2] = 	{0.2,	0.0215,	0.07,	0.018,	0.025,	1.5,	30,	1.1},
				[3] = 	{0.4,	0.0215,	0.07,	0.018,	0.025,	2.5,	30,	1.1},
				[4] = 	{0.6,	0.0215,	0.073,	0.018,	0.025,	3.5,	30,	1.1},
				[5] = 	{0.7,	0.0225,	0.076,	0.024,	0.05,	3.5,	28.666666666667,	1.0911111111111},
				[6] = 	{0.8,	0.022,	0.079,	0.3,	0.052,	3.5,	27.333333333333,	1.0822222222222},
				[7] = 	{0.9,	0.0235,	0.083,	0.324,	0.0536,	3.5,	26,	1.0733333333333},
				[8] = 	{1,	0.03,	0.085,	0.348,	0.0552,	3.5,	24.666666666667,	1.0644444444444},
				[9] = 	{1.05,	0.031,	0.0855,	0.36,	0.056,	3.5,	24,	1.06},
				[10] = 	{1.1,	0.032,	0.086,	0.372,	0.0568,	3.15,	18,	1.04},
				[11] = 	{1.2,	0.0325,	0.083,	0.396,	0.0584,	2.45,	17,	1.02},
				[12] = 	{1.3,	0.032,	0.077,	0.42,	0.06,	1.75,	16,	1},
				[13] = 	{1.5,	0.031,	0.062,	0.488571,	0.06,	1.5,	13,	0.9},
				[14] = 	{1.7,	0.03,	0.051333333333333,	0.557143,	0.06,	0.9,	12,	0.7},
				[15] = 	{1.8,	0.0295,	0.046,	0.591429,	0.06,	0.86,	11.4,	0.64},
				[16] = 	{2,	0.029,	0.039,	0.66,	0.06,	0.78,	10.2,	0.52},
				[17] = 	{2.2,	0.028,	0.034,	0.227,	3.2,	0.7,	9,	0.4},
				[18] = 	{2.5,	0.027,	0.033,	0.25,	4.5,	0.7,	9,	0.4},
				[19] = 	{3.9,	0.027,	0.033,	0.35,	6,	0.7,	9,	0.4},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	60.00001,--67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			type	=	"TurboJet",
			hMaxEng	=	19,
			cemax	=	0.37,
			cefor	=	0.37,
			dpdh_m	=	3000,
			dpdh_f	=	16000,
			table_data = 
			{
				[1] = 	{0,	260000,	544000},
				[2] = 	{0.2,	261346.3,	555216.5},
				[3] = 	{0.4,	265306.1,	570000},
				[4] = 	{0.6,	281414,	630000},
				[5] = 	{0.7,	298469.4,	675000},
				[6] = 	{0.8,	370000,	750000},
				[7] = 	{0.9,	360000,	790000},
				[8] = 	{1,	320000,	856000},
				[9] = 	{1.1,	320000,	880000},
				[10] = 	{1.2,	324703,	895000},
				[11] = 	{1.3,	336582.4,	895000},
				[12] = 	{1.4,	348461.8,	860000},
				[13] = 	{1.6,	368260.7,	640000},
				[14] = 	{1.8,	384099.9,	440000},
				[15] = 	{2.2,	459336,	314000},
				[16] = 	{2.35,	467255.6,	450000},
				[17] = 	{3.9,	304904.1,	841237.1},
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},--NOSE_CENTER
	[1]  = {critical_damage = 3,  args = {296}},--NOSE_LEFT_SIDE
	[2]  = {critical_damage = 3,  args = {297}},--NOSE_RIGHT_SIDE
	[3]  = {critical_damage = 8, args = {65}},--CABINA / COCKPIT
	[4]  = {critical_damage = 2,  args = {298}},--CABIN_LEFT_SIDE
	[5]  = {critical_damage = 2,  args = {301}},--CABIN_RIGHT_SIDE
	[7]  = {critical_damage = 2,  args = {249}},--GUN
	[8]  = {critical_damage = 3,  args = {265}},--FRONT_GEAR_BOX
	[9]  = {critical_damage = 3,  args = {154}},--FUSELAGE_LEFT_SIDE
	[10] = {critical_damage = 3,  args = {153}},--MAIN / FUSELAGE_RIGHT_SIDE
	[11] = {critical_damage = 1,  args = {167}},--ENGINE_L
	[12] = {critical_damage = 1,  args = {161}},--ENGINE_R
	[13] = {critical_damage = 2,  args = {169}},--MTG_L_BOTTOM
	[14] = {critical_damage = 2,  args = {163}},--MTG_R_BOTTOM
	[15] = {critical_damage = 2,  args = {267}},--LEFT_GEAR_BOX
	[16] = {critical_damage = 2,  args = {266}},--RIGHT_GEAR_BOX
	[17] = {critical_damage = 2,  args = {168}},--ENGINE_L_OUT
	[18] = {critical_damage = 2,  args = {162}},--ENGINE_R_OUT
	[20] = {critical_damage = 2,  args = {183}},--AIR_BRAKE_R
	[23] = {critical_damage = 5, args = {223}},--WING_L_OUT
	[24] = {critical_damage = 5, args = {213}},--WING_R_OUT
	[25] = {critical_damage = 2,  args = {226}},--ELERON_L
	[26] = {critical_damage = 2,  args = {216}},--ELERON_R
	[29] = {critical_damage = 5, args = {224}, deps_cells = {23, 25}},--WING_L_CENTER
	[30] = {critical_damage = 5, args = {214}, deps_cells = {24, 26}},--WING_R_CENTER
	[35] = {critical_damage = 6, args = {225}, deps_cells = {23, 29, 25, 37}},--WING_L_IN
	[36] = {critical_damage = 6, args = {215}, deps_cells = {24, 30, 26, 38}},--WING_R_IN
	[37] = {critical_damage = 2,  args = {228}},--FLAP_L_IN
	[38] = {critical_damage = 2,  args = {218}},--FLAP_R_IN
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}},--FIN_L_TOP
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}},--FIN_R_TOP 
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},--FIN_L_BOTTOM
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}},--FIN_R_BOTTOM 
	[51] = {critical_damage = 2,  args = {240}},--ELEVATOR_L_IN
	[52] = {critical_damage = 2,  args = {238}},--ELEVATOR_R_IN
	[53] = {critical_damage = 2,  args = {248}},--RUDDER_L
	[54] = {critical_damage = 2,  args = {247}},--RUDDER_R
	[56] = {critical_damage = 2,  args = {158}},--TAIL_LEFT_SIDE
	[57] = {critical_damage = 2,  args = {157}},--TAIL_RIGHT_SIDE
	[59] = {critical_damage = 3,  args = {148}},--NOSE_BOTTOM
	[61] = {critical_damage = 2,  args = {147}},--FUEL_TANK_F
	[82] = {critical_damage = 2,  args = {152}},--FUSELAGE_BOTTOM
	[105] = {critical_damage = 2,  args = {603}},--ENGINE_3
	[106] = {critical_damage = 2,  args = {604}},--ENGINE_4
	},
	
	DamageParts = 
	{  
		[1] = "B2_Spirit-oblomok-wing-r", -- wing R
		[2] = "B2_Spirit-oblomok-wing-l", -- wing L
--		[3] = "kc-135-oblomok-noise", -- nose
--		[4] = "kc-135-oblomok-tail-r", -- tail
--		[5] = "kc-135-oblomok-tail-l", -- tail
	},
	
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

	lights_data = { typename = "collection", lights = {
	
        [WOLALIGHT_NAVLIGHTS] = {
            typename = "Collection",
					lights = {	
                        {
                            typename = "Spot", connector = "BANO_0", dir_correction = {azimuth = math.rad(180.0)}, argument = 192,
                            proto = lamp_prototypes.HS_2A, angle_max = math.rad(180.0), angle_min = math.rad(170.0),
			},
                        {
                            typename = "Spot", connector = "BANO_1", dir_correction = {azimuth = math.rad(-45.0), elevation = math.rad(45.0)}, argument = 190,
                            proto = lamp_prototypes.BANO_7M_red,
						},
                        {
                            typename = "Spot", connector = "BANO_2", dir_correction = {azimuth = math.rad(45.0), elevation = math.rad(45.0)}, argument = 191,
                            proto = lamp_prototypes.BANO_7M_green,
			},
	
            }
        },
        [WOLALIGHT_SPOTS] = {
            typename = "collection",
					lights = {
                [1] = {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "Spot", position = {-2.654, -1.878, -5.864}, dir_correction = {elevation = math.rad(4.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_P_27_1000,
			},
                        {
                            typename = "Omni", position = {-2.654 + 0.5, -1.878, -5.864},
                            proto = lamp_prototypes.LFS_P_27_1000, range = 8.0,
			},
                        {
                            typename = "Spot", position = {-2.654, -1.878, 5.864}, dir_correction = {elevation = math.rad(4.0)},
                            proto = lamp_prototypes.LFS_P_27_1000,
                        },
                        {
                            typename = "Omni", position = {-2.654 + 0.5, -1.878, 5.864},
                            proto = lamp_prototypes.LFS_P_27_1000, range = 8.0,
                        },
                        {
                            typename = "Spot", position = {10.654, -2.078, -0.264}, dir_correction = {elevation = math.rad(4.0)},
                            proto = lamp_prototypes.LFS_P_27_1000,
                        },
                        {
                            typename = "Omni", position = {10.654 + 0.5, -2.078, -0.264},
                            proto = lamp_prototypes.LFS_P_27_1000, range = 8.0,
                        },
                        {
                            typename = "Spot", position = {10.654, -2.878, -0.264}, dir_correction = {elevation = math.rad(4.0)},
                            proto = lamp_prototypes.LFS_P_27_1000,
                        },
                        {
                            typename = "Omni", position = {10.654 + 0.5, -2.878, -0.264},
                            proto = lamp_prototypes.LFS_P_27_1000, range = 8.0,
                        },						
                    },
                },
            },
        },
        [WOLALIGHT_TAXI_LIGHTS] = {
            typename = "collection",
            lights = {
                [1] = {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "Spot", position = {-2.654, -1.878, -5.864}, dir_correction = {elevation = math.rad(4.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_R_27_450,
                        },
                        {
                            typename = "Omni", position = {-2.654 + 0.5, -1.878, -5.864},
                            proto = lamp_prototypes.LFS_R_27_450, range = 8.0,
                        },
                        {
                            typename = "Spot", position = {-2.654, -1.878, 5.864}, dir_correction = {elevation = math.rad(4.0)},
                            proto = lamp_prototypes.LFS_R_27_450,
                        },
                        {
                            typename = "Omni", position = {-2.654 + 0.5, -1.878, 5.864},
                            proto = lamp_prototypes.LFS_R_27_450, range = 8.0,
                        },
                        {
                            typename = "Spot", position = {10.654, -2.078, -0.264}, dir_correction = {elevation = math.rad(4.0)},
                            proto = lamp_prototypes.LFS_R_27_450,
                        },
                        {
                            typename = "Omni", position = {10.654 + 0.5, -2.078, -0.264},
                            proto = lamp_prototypes.LFS_R_27_450, range = 8.0,
                        },
                        {
                            typename = "Spot", position = {10.654, -2.878, -0.264}, dir_correction = {elevation = math.rad(4.0)},
                            proto = lamp_prototypes.LFS_R_27_450,
                        },
                        {
                            typename = "Omni", position = {10.654 + 0.5, -2.878, -0.264},
                            proto = lamp_prototypes.LFS_R_27_450, range = 8.0,
                        },						
                    },
                },
            },
        },
        [WOLALIGHT_STROBES] = {
            typename = "collection",
            lights = {
                [1] = {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "natostrobelight", position = {5.075, 2.215 + 0.200, 0.030}, argument = 83,
                            proto = lamp_prototypes.SMI_2KM,
                        },
                        {
                            typename = "natostrobelight", position = {-6.226, -1.270 - 0.200, -0.070},
                            proto = lamp_prototypes.SMI_2KM,
                        },
                    },
                },
            },
        },
    
			
	}},
}

add_aircraft(B2_Spirit)
