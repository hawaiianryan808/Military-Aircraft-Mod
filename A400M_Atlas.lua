A400M_Atlas =  {
      
	Name 			= 'A400M_Atlas',--
	DisplayName		= _('A400M Atlas'),--
	Picture 		= "A400M_Atlas.png",
	Rate 			= "40",
	Shape			= "A400M_Atlas",--	
	WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'A400M_Atlas';--
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'A400M_Atlas-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'A400M_Atlas';--
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "A400M_Atlas-oblomok";
			file  		= "A400M_Atlas-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	Categories = {
    },
		
	singleInFlight = false,
	
	CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_AVERAGE, LOOK_BAD),
		
	mapclasskey 		= "P0091000029",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Cruiser, WSTYPE_PLACEHOLDER ,
							"Transports", "Refuelable",},
	Categories 			= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},	
	
	M_empty	=	36400,--c-130
	M_nominal	=	70000,
	M_max	=	79380,
	M_fuel_max	=	20830,
	InternalCargo = {
		nominalCapacity = 20000,
		maximalCapacity = 37000,
		para_unit_point = 80, -- Anzahl der Fallschirmjäger (Infanterie/1.4375)
		unit_point = 116, 	  -- Anzahl der Infanterie
		area = {17.7, 4.0, 3.85},-- Das Innenvolumen des Laderaums ist lang, breit, hoch, m
		unit_block = {0.76, 0.775}-- Abmessungen für einen Fallschirmjäger, Länge, Breite, m
	},
	H_max	=	9315,
	average_fuel_consumption	=	0.06,
	CAS_min	=	54,
	V_opt	=	174,
	V_take_off	=	58,
	V_land	=	61,
	has_afteburner	=	false,
	has_speedbrake	=	false,
	has_thrustReverser = true,
	has_differential_stabilizer = false,
	main_gear_pos = 	{-2.529,	-3.921,	2.996},
	radar_can_see_ground	=	false,
	nose_gear_pos = 	{9.623,	-3.921,	0},
	AOA_take_off	=	0.17,
	stores_number	=	0,
	bank_angle_max	=	45,
	Ny_min	=	0.5,
	Ny_max	=	2.5,
	tand_gear_max	=	0.577,
	V_max_sea_level	=	167.5,
	V_max_h	=	172.5,
	wing_area	=	152.1,
	wing_span	=	40.4,
	thrust_sum_max	=	44400,
	thrust_sum_ab	=	44400,
	Vy_max	=	9.1,
	length	=	29.79,
	height	=	11.66,
	flaps_maneuver	=	0.5,
	Mach_max	=	0.63,
	range	=	8260,
	RCS	=	80,
	Ny_max_e	=	2,
	detection_range_max	=	0,
	IR_emission_coeff	=	1,
	IR_emission_coeff_ab	=	0,
	tanker_type		=	2,--F14=2/S33=4/M29=0/S27=0/F15=1/F16=1/To=0/F18=2/A10A=1/M29K=4/M2000=2/F4=0/F5=0/
	engines_count	=	4,
	wing_tip_pos = 	{-6.627,	-0.265,	20.2},
	nose_gear_wheel_diameter	=	0.754,
	main_gear_wheel_diameter	=	0.972,
	engines_nozzles = 
	{

		{
			pos = 	{-0.73,	1.105,	-10.335},
			elevation	=	0,
			diameter	=	1.523,
			exhaust_length_ab	=	11.794,
			exhaust_length_ab_K	=	0.76,
			smokiness_level     = 	0.1, 
		}, 	
		{
			pos = 	{-0.742,	1.248,	-5.152},
			elevation	=	0,
			diameter	=	1.523,
			exhaust_length_ab	=	11.794,
			exhaust_length_ab_K	=	0.76,
			smokiness_level     = 	0.1, 
		},
		{
			pos = 	{-0.742,	1.248,	5.152},
			elevation	=	0,
			diameter	=	1.523,
			exhaust_length_ab	=	11.794,
			exhaust_length_ab_K	=	0.76,
			smokiness_level     = 	0.1, 
		}, 
		{
			pos = 	{-0.73,	1.105,	10.335},
			elevation	=	0,
			diameter	=	1.523,
			exhaust_length_ab	=	11.794,
			exhaust_length_ab_K	=	0.76,
			smokiness_level     = 	0.1, 
		},

	}, -- end of engines_nozzles
	crew_members = 
	{
		[1] = 
		{
			ejection_seat_name	=	0,
			drop_canopy_name	=	0,
			pos = 	{7.0,	0.0,	-0.8},
			bailout_arg = -1,
		}, -- end of [1]
		[2] = 
		{
			ejection_seat_name	=	0,
			drop_canopy_name	=	0,
			pos = 	{7.0,	0.0,	0.8},
			bailout_arg = -1,
		}, -- end of [2]
	}, -- end of crew_members
	
	brakeshute_name	=	0,
	is_tanker	=	false,
	air_refuel_receptacle_pos = 	{11.737,	4.251,	0},
	
	mechanimations = {
		Door0 = {
			{Transition = {"Close", "Open"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
			{Transition = {"Open", "Close"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
			{Transition = {"Open", "Board"}, Sequence = {{C = {{"Sleep", "for", 50.0}}}, {C = {{"Arg", 38, "from", 0.0, "to", 0.1 + 0.011, "in", 0.6}}}, {C = {{"Sleep", "for", 2.5}}}, {C = {{"Arg", 38, "to", 1.0, "in", 3.3}}}}},
			{Transition = {"Board", "Open"}, Sequence = {{C = {{"Sleep", "for", 10.0}}}, {C = {{"Arg", 38, "set", 0.0}}},                                {C = {{"Sleep", "for", 1.5}}}, {C = {{"Arg", 38, "to", 0.0, "in", 4.7}}}}, Flags = {"StepsBackwards"}},
		},
	},
	
	fires_pos = 
	{
		[1] = 	{-2.33,	1.807,	0},
		[2] = 	{-2.333,	1.807,	5.463},
		[3] = 	{-2.333,	1.807,	-5.463},
		[4] = 	{-0.82,	0.265,	2.774},
		[5] = 	{-0.82,	0.265,	-2.774},
		[6] = 	{-0.82,	0.255,	4.274},
		[7] = 	{-0.82,	0.255,	-4.274},
		[8] = 	{0.586,	1.66,	4.841},
		[9] = 	{0.586,	1.66,	-4.841},
		[10] = 	{0.586,	1.546,	10.05},
		[11] = 	{0.586,	1.546,	-10.05},
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

   -- Countermeasures, 
	passivCounterm = {
		CMDS_Edit = true,
		SingleChargeTotal = 240,
		chaff = {default = 120, increment = 30, chargeSz = 1},
		flare = {default = 60, increment = 15, chargeSz = 2}
	},

	CanopyGeometry = {
		azimuth = {-145.0, 145.0},
		elevation = {-50.0, 90.0}
	},
	
	Sensors = {
		RWR = "Abstract RWR"
	},
	
	Countermeasures = {         
		IRCM = "AN/ALQ-157",
		DISPENSER = "AN/ALE-47"
	},

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

	Pylons = {
    },
	
	Tasks = {
        aircraft_task(Transport),
    },	
	DefaultTask = aircraft_task(Transport),

	SFM_Data = { --C130
		aerodynamics = 
			{
				Cy0	=	0,
				Mzalfa	=	6.6,
				Mzalfadt	=	1,
				kjx	=	2.85,
				kjz	=	0.00125,
				Czbe	=	-0.012,
				cx_gear	=	0.015,
				cx_flap	=	0.08,
				cy_flap	=	1,
				cx_brk	=	0.06,
				table_data = 
				{
					[1] = 	{0,		0.024,	0.1,	0.0384,	1e-006,	0.5,	20,	1.2},
					[2] = 	{0.2,	0.024,	0.1,	0.0384,	1e-006,	1.5,	20,	1.2},
					[3] = 	{0.4,	0.024,	0.1,	0.0384,	1e-006,	2.5,	20,	1.2},
					[4] = 	{0.5,	0.024,	0.1,	0.0384,	1e-006,	2.5,	20,	1.2},
					[5] = 	{0.6,	0.027,	0.1,	0.0,	0.3,	3.5,	20,	1.2},
					[6] = 	{0.7,	0.031,	0.1,	0.045,	0.9,	3.5,	20,	1},
					[7] = 	{0.8,	0.036,	0.1,	0.107,	1,		3.5,	20,	0.8},
					[8] = 	{0.9,	0.045,	0.1,	0.148,	0.058,	3.5,	20,	0.6},
					[9] = 	{1,		0.054,	0.1,	0.199,	0.1,	3.5,	20,	0.53333333333333},
					[10] = 	{1.5,	0.054,	0.1,	0.199,	0.1,	3.5,	20,	0.2},
				}, -- end of table_data
			}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	60.00001,--67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	1,
			ForsRUD	=	1,
			--type	=	"TurboProp",
			type	=	"TurboProp", 	--MQ-9 Reaper
			Nominal_Fan_RPM = 842,		-- Source: https://www.easa.europa.eu/en/downloads/7276/en   and   https://aircraft-database.com/database/engine-models/tp400-d6
			Nominal_RPM = 10000,		-- Source: https://aircraft-database.com/database/engine-models/tp400-d6
			
			D_prop		= 5.33,
			prop_blades_count = 8,
			prop_pitch_min  = -20,
            prop_pitch_max  = 85,
            prop_pitch_feather = 90,
			
			hMaxEng	=	19.5,
			dcx_eng	=	0.0085,
			cemax	=	0.37,
			cefor	=	0.37,
			dpdh_m	=	4820,
			dpdh_f	=	4820,
			table_data = 
			{
				[1] = 	{0,		150791.9,	150791.9},
				[2] = 	{0.1,	148287.6,	148287.6},
				[3] = 	{0.2,	123531.3,	123531.3},
				[4] = 	{0.3,	103801.6,	103801.6},
				[5] = 	{0.4,	87546.7,	87546.7},
				[6] = 	{0.5,	71708.3,	71708.3},
				[7] = 	{0.6,	58458.4,	58458.4},
				[8] = 	{0.7,	48624.7,	48624.7},
				[9] = 	{0.8,	41438.6,	41438.6},
				[10] = 	{0.9,	33000,		33000},
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
		[1] = "A400M_Atlas-oblomok-wing-r", -- wing R
		[2] = "A400M_Atlas-oblomok-wing-l", -- wing L
	},
	
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

	lights_data = {
		typename = "collection", lights = {
	
			[WOLALIGHT_NAVLIGHTS] = {
				typename = "collection",
				lights = {
					[1] = {
						typename = "Collection",
						lights = {
							{
								typename = "Spot", position = { -24.710, 2.563581, -0.010 },
								direction = {azimuth = math.rad(180.0), elevation = math.rad(0.0)}, argument = 192,
								proto = lamp_prototypes.HS_2A, angle_max = math.rad(180.0), angle_min = math.rad(0.0),
							},
							{
								typename = "Omni", position = { -24.710, 2.563581, -0.010 },
								proto = lamp_prototypes.HS_2A,
							},
							{
								typename = "Spot", position = { -5.665617, 0.839193, -21.2295 },
								direction = {azimuth = math.rad(-60.0), elevation = math.rad(0.0)}, argument = 190,
								proto = lamp_prototypes.BANO_7M_red, angle_max = math.rad(120.0), angle_min = math.rad(0),
							},
							{
								typename = "Spot", position = { -5.841463, 0.841421, 21.2256 },
								direction = {azimuth = math.rad(60.0), elevation = math.rad(0.0)}, argument = 191,
								proto = lamp_prototypes.BANO_7M_green, angle_max = math.rad(120.0), angle_min = math.rad(0),
							},
						},
					},
				},
			},

			[WOLALIGHT_SPOTS] = {
				typename = "collection",
				lights = {
					[1] = {
						typename = "Collection",
						lights = {
							{
								typename = "Spot", position = {9.80, -3.0, -0.010}, argument = 51,
								direction = {azimuth = math.rad(0.0), elevation = math.rad(2.0)},
								angle_max = math.rad(40.0), angle_min = math.rad(0),
								proto = lamp_prototypes.LFS_R_27_450, cool_down_t = 0.5,
							},
							{
								typename = "Spot", position = {2.458815, -2.58642, -2.649771},
								direction = {azimuth = math.rad(-5.0), elevation = math.rad(2.0)},
								angle_max = math.rad(21.0), angle_min = math.rad(0),
								proto = lamp_prototypes.LFS_P_27_1000, cool_down_t = 0.8,
							},
							{
								typename = "Spot", position = {2.458916, -2.5865, 2.732245},
								direction = {azimuth = math.rad(5.0), elevation = math.rad(2.0)},
								angle_max = math.rad(21.0), angle_min = math.rad(0),
								proto = lamp_prototypes.LFS_P_27_1000, cool_down_t = 0.8,
							},
							{
								typename = "Spot", position = {-4.90037, 1.03453, -20.7077},
								direction = {azimuth = math.rad(2.0), elevation = math.rad(2.0)},
								angle_max = math.rad(25.0), angle_min = math.rad(0),
								proto = lamp_prototypes.LFS_P_27_1000, cool_down_t = 0.8,
							},
							{
								typename = "Spot", position = {-4.878644, 1.00465, 20.6812},
								direction = {azimuth = math.rad(-2.0), elevation = math.rad(2.0)},
								angle_max = math.rad(25.0), angle_min = math.rad(0),
								proto = lamp_prototypes.LFS_P_27_1000, cool_down_t = 0.8,
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
								typename = "Spot", position = {9.80, -3.0, -0.010},
								direction = {azimuth = math.rad(0.0), elevation = math.rad(2.0)}, argument = 51,
								angle_max = math.rad(40.0), angle_min = math.rad(0),
								proto = lamp_prototypes.LFS_R_27_450, cool_down_t = 0.5,
							},
							{
								typename = "Spot", position = {2.458815, -2.58642, -2.649771},
								direction = {azimuth = math.rad(-15.0), elevation = math.rad(2.0)},
								angle_max = math.rad(33.0), angle_min = math.rad(0),
								proto = lamp_prototypes.LFS_R_27_450, cool_down_t = 0.5,
							},
							{
								typename = "Spot", position = {2.458916, -2.5865, 2.732245},
								direction = {azimuth = math.rad(15.0), elevation = math.rad(2.0)},
								angle_max = math.rad(33.0), angle_min = math.rad(0),
								proto = lamp_prototypes.LFS_R_27_450, cool_down_t = 0.5,
							},
							{
								typename = "Spot", position = {-4.90037, 1.03453, -20.7077},
								direction = {azimuth = math.rad(2.0), elevation = math.rad(2.0)},
								angle_max = math.rad(25.0), angle_min = math.rad(0),
								proto = lamp_prototypes.LFS_R_27_450, cool_down_t = 0.8,
							},
							{
								typename = "Spot", position = {-4.878644, 1.00465, 20.6812},
								direction = {azimuth = math.rad(-2.0), elevation = math.rad(2.0)},
								angle_max = math.rad(25.0), angle_min = math.rad(0),
								proto = lamp_prototypes.LFS_R_27_450, cool_down_t = 0.8,
							},
						},
					},
				},
			},
			
			[WOLALIGHT_STROBES] = {				-- For moving around on/near the runway (including airborne).
				typename = "collection",
				lights = {
					[1] = {
						typename = "Collection",
						lights = {
							{
								typename = "natostrobelight", position = { 2.30, -3.0, -0.010 },
								proto = lamp_prototypes.SMI_2KM, period = 1.9, phase_shift = 0.0,
							},
							{
								typename = "natostrobelight", position = { -5.90, 2.90, -0.010 },
								proto = lamp_prototypes.SMI_2KM, period = 1.9, phase_shift = 0.5,
							},
							{
								typename = "Spot", position = { -24.710, 2.563581, -0.010 },
								proto = lamp_prototypes.MPS_1, intensity_max = 300.0, phase_shift = 0.0,
								direction = {azimuth = math.rad(180.0), elevation = math.rad(0)}, angle_max = math.rad(160.0), angle_min = math.rad(0),
								controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.1, period = 1.2,
							},
							{
								typename = "Spot", position = { -5.665617, 0.839193, -21.2295 },
								proto = lamp_prototypes.MPS_1, intensity_max = 300.0, phase_shift = 0.0,
								direction = {azimuth = math.rad(-90.0), elevation = math.rad(0)}, angle_max = math.rad(180.0), angle_min = math.rad(0),
								controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.1, period = 1.2,
							},
							{
								typename = "Spot", position = { -5.841463, 0.841421, 21.2256 },
								proto = lamp_prototypes.MPS_1, intensity_max = 300.0, phase_shift = 0.0,
								direction = {azimuth = math.rad(90.0), elevation = math.rad(0)}, angle_max = math.rad(180.0), angle_min = math.rad(0),
								controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.1, period = 1.2,
							},
						},
					},
				},
			},
			
			[WOLALIGHT_BEACONS] = {				-- For moving around on the ground/taxiing.
				typename = "collection",
				lights = {
					[1] = {
						typename = "Collection",
						lights = {
							{
								typename = "natostrobelight", position = { 2.30, -3.0, -0.010 },
								proto = lamp_prototypes.SMI_2KM, phase_shift = 0.0,
							},
							{
								typename = "natostrobelight", position = { -5.90, 2.90, -0.010 },
								proto = lamp_prototypes.SMI_2KM, phase_shift = 0.5,
							},
						},
					},
				},
			},
			
			[WOLALIGHT_FORMATION_LIGHTS] = {
				typename = "collection",
				lights = {
					[1] = {
						typename = "Collection",
						lights = {
							{typename = "argumentlight",argument = 190}, -- Left Position(red)
							{typename = "argumentlight",argument = 191}, -- Right Position(green)
							{typename = "argumentlight",argument = 192}, -- Tail Position (white)
							{
								typename = "natostrobelight", position = { 2.30, -3.0, -0.010 },
								proto = lamp_prototypes.SMI_2KM, period = 1.9, phase_shift = 0.0,
							},
							{
								typename = "natostrobelight", position = { -5.90, 2.90, -0.010 },
								proto = lamp_prototypes.SMI_2KM, period = 1.9, phase_shift = 0.5,
							},
						},
					},
				},
			},
			
		},
	},
}

add_aircraft(A400M_Atlas)
