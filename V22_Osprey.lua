
V22_Osprey =  {
      
		Name 			= 'V22_Osprey',
		DisplayName		= _('V-22 Osprey'),
        Picture 		= "V22_Osprey.png",
        Rate 			= "50",
        Shape			= "V22_Osprey",	
        WorldID			=  WSTYPE_PLACEHOLDER, 
		singleInFlight	= true,
		
		propellorShapeType  = "3ARG_PROC_BLUR",
		propellorShapeName  = "V22_Osprey_blade_L.fbx",
		--prop_length         = 2.3,
		--debrisGeneration    = 1,	
		--debrisGeneration   = true,		
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'V22_Osprey';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'V22_Osprey-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'V22_Osprey';
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "V22_Osprey-oblomok";
			file  		= "V22_Osprey-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	LandRWCategories = 
    {
        [1] = 
        {
           Name = "HelicopterCarrier",
        },
        [2] = 
        {
           Name = "AircraftCarrier",
        },
        [3] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [4] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    },
	TakeOffRWCategories = 
    {
        [1] = 
        {
            Name = "HelicopterCarrier",
        },
        [2] = 
        {
           Name = "AircraftCarrier",
        },
        [3] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [4] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    },
	
		takeoff_and_landing_type = "VTOL",
	
		CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_BAD),

		mapclasskey 	= "P0091000029",
		attribute 		= {
		wsType_Air,
		wsType_Airplane,
		wsType_Cruiser,
		WSTYPE_PLACEHOLDER,
		"Transports",
		"Refuelable",
        "Datalink",
        "Link16",
		},

		Categories = {"{C168A850-3C0B-436a-95B5-C4A015552560}", "Plane",},
		

		M_empty				=	6715.0,		-- with pilot and nose load, kg
		M_nominal			=	10410.0,	-- kg (Empty Plus Full Internal Fuel)
		M_max				=	14100.0,	-- kg (Maximum Take Off Weight - Rolling) Max Take Off Weight Vertical = 9415.0
		M_fuel_max			=	3519.423,	-- kg (Maximum Internal Fuel Only)
		
		InternalCargo = {
			nominalCapacity = 4536,
			maximalCapacity = 9350,
			para_unit_point = 10, -- Anzahl der Fallschirmjäger
			unit_point 		= 24, 	  -- Anzahl der Infanterie
			area 			= {6.34, 1.74, 1.67},-- Das Innenvolumen des Laderaums ist lang, breit, hoch, m
			unit_block 		= {0.76, 0.775}-- Abmessungen für einen Fallschirmjäger, Länge, Breite, m
		},		
		H_max						=	16764,
		average_fuel_consumption	=	0.125,	
		CAS_min						=	60,
		V_opt						=  	225.0,
		V_take_off					=   58.0,
		V_land						=   61.0,	
		has_afteburner				=	false,	-- true VTOL
		has_speedbrake				=	true,
		radar_can_see_ground		=	false,	

		nose_gear_pos 								= 	{6.902,	-1.80,	0},
	    nose_gear_amortizer_direct_stroke   		=	0,      -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  -0.24,      -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  -0.12,      -- down from nose_gear_pos
	    nose_gear_wheel_diameter					=	0.528,
	
	    main_gear_pos 								= 	{-0.0,	-1.95,	3.141},--??? 0.0 bis 0.8 Probleme
	    main_gear_amortizer_direct_stroke	 	    =   0,     --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =  -0.30,     --  up 
	    main_gear_amortizer_normal_weight_stroke    =  -0.15,     --  down from main_gear_pos
	    main_gear_wheel_diameter					=	0.972,

		AOA_take_off				=   0.14,
		stores_number				=	0,
		bank_angle_max				=   60,
		Ny_min						=   -2.0,
		Ny_max						=   7.0,	
		V_max_sea_level				=  	300.0,
		V_max_h						=  	275.0,	
		wing_area					=	56.5,
		thrust_sum_max				=	10660.0, --AV-8B Corrected
		thrust_sum_ab				=	10660.0, --AV-8B Corrected	
		Vy_max	        			=  	150.0,
		flaps_maneuver				=   1,
		Mach_max	    			=   0.60,
		range	        			= 	2200,
		RCS							=	5,
		Ny_max_e	    			=   7.0,
		detection_range_max			=	100,
		IR_emission_coeff			=	0.7,
		IR_emission_coeff_ab		=	0,
		tand_gear_max				=	3.73,
		tanker_type					=	2,
		wing_span					=	25.78,
		wing_type 					= 	2,-- 0=FIXED_WING/ 2=FOLDED_WING
		length						=	17.48,
		height						=	6.63,
		crew_size					=	3,
		engines_count				=	2,
		wing_tip_pos              	= 	{ -4.0,   0.74,   5.3}, 
		
		EPLRS 						= true,--?
		TACAN_AA					= true,
		--launch_bar_connected_arg_value	= 0.85,
		
		mechanimations = {
            Door0 = {
			
				{Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 2.2},{"Arg", 999, "to", 1.0, "in", 2.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 2.2},{"Arg", 999, "to", 1.0, "in", 30.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
				--{Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 2.2},},},}, Flags = {"Reversible"},},
                --{Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 2.2},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Open", "Taxi"},   Sequence = {{C = {{"Arg", 38, "to", 0.5, "in", 2.2},{"Arg", 999, "to", 1.0, "in", 2.0},},},},},
				{Transition = {"Taxi", "Open"},   Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 2.2},{"Arg", 999, "to", 0.0, "in", 30.0},},},},},
				{Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
				
                --{Transition = {"Any", "Bailout"}, Sequence = {{C = {{"PosType", 9}, {"Sleep", "for", 5.0}}}, {C = {{"Arg", 38, "set", 0.4}}}}}, -- TODO make jettisonable - Made Dragon
                {Transition = {"Open", "Board"},  Sequence = {{C = {{"PosType", 9}, {"Sleep", "for", 60.0}}}, {C = {{"Arg", 38, "to", 0.9, "in", 1.75}}}}},
                {Transition = {"Board", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 3.75}}}}},
            },
            Door1 = {DuplicateOf = "Door0"},
            Door2 = {DuplicateOf = "Door0"},
            FoldableWings = {
               {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.0, "in", 5.0},{"Arg", 999, "to", 1.0, "in", 10.0},}}}, Flags = {"Reversible"}},
               {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 1.0, "in", 5.0},{"Arg", 999, "to", 1.0, "in", 2.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
			CrewLadder = {
			{Transition = {"Dismantle", "Erect"}, Sequence = {
				{C = {{"Arg", 888, "to", 1.0, "in", 8.0},{"Arg", 999, "to", 1.0, "in", 15.0},}},
			}},
			{Transition = {"Erect", "Dismantle"}, Sequence = {
				{C = {{"Arg", 888, "to", 0.0, "in", 8.0},{"Arg", 999, "to", 1.0, "in", 15.0},}},
			}},
		},
        }, -- end of mechanimations
		
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-2.004,	0.438,	-3.293},
				diameter	 = 0.01,--0*0.1, -- AFB cone diameter
				exhaust_length_ab   = 0.01,---3.0, -- lenght in m
				exhaust_length_ab_K = 0.3, -- AB animation
				engine_number       = 1,
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-2.004,	0.438,	3.293},
				diameter	 = 0.01,--0*0.1, -- AFB cone diameter
				exhaust_length_ab   = 0.01,---3.0, -- lenght in m
				exhaust_length_ab_K = 0.3, -- AB animation
				engine_number       = 2,
			}, -- end of [2]
		}, -- end of engines_nozzles
		
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
				ejection_order = 3,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
				ejection_order = 2,
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
				ejection_order = 1,
			}, -- end of [3]
		}, -- end of crew_members
		
		brakeshute_name	=	0,
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{ 0,   0,   0 }, 
		fires_pos = 
		{
			[1] = 	{0.048,	1.008,	0},
			[2] = 	{0.048,	1.008,	2.322},
			[3] = 	{0.048,	1.008,	-2.322},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-0.267,	0.054,	3.293},
			[9] = 	{-0.267,	0.054,	-3.293},
			[10] = 	{-0.267,	0.054,	3.293},
			[11] = 	{-0.267,	0.054,	-3.293},
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
passivCounterm 		= {
CMDS_Edit 			= true,
SingleChargeTotal 	= 240,
chaff 				= {default = 120, increment = 30, chargeSz = 1},
flare 				= {default = 60, increment = 15, chargeSz = 2}
 },		
		
Sensors = {
RADAR = "AN/APS-138",
RWR = "Abstract RWR"
},
Countermeasures = {
ECM = "AN/ALQ-135"--f15
},		

	Pylons = {
    },
	
	Tasks = {
        aircraft_task(Transport),
    },	
	DefaultTask = aircraft_task(Transport),

--[[
	SFM_Data = {--AV8BNA
	aerodynamics = 
		{
			Cy0	        =	0.0334, --0.0668, -- zero AoA lift coefficient*
			Mzalfa	    =	5.0,    -- coefficients for pitch agility
			Mzalfadt	=	0.9,    -- coefficients for pitch agility
			kjx	        =	2.3,    -- Inertia parametre X - Dimension (clean) airframe drag coefficient at X (Top) Simply the wing area in square meters (as that is a major factor in drag calculations)
			kjz	        =	0.00125,-- Inertia parametre Z - Dimension (clean) airframe drag coefficient at Z (Front) Simply the wing area in square meters (as that is a major factor in drag calculations)
			Czbe	    =	-0.016, -- coefficient, along Z axis (perpendicular), affects yaw, negative value means force orientation in FC coordinate system
			cx_gear	    =	0.015,  -- coefficient, drag, gear ??
			cx_flap	    =	0.08,   -- coefficient, drag, full flaps
			cy_flap	    =	0.26,   -- coefficient, normal force, lift, flaps
			cx_brk	    =	0.08,   -- coefficient, drag, breaks
			table_data = 
			{	--      M		Cx0*	 	Cya*		B2		 	B4	 		Omxmax		Aldop*		Cymax*
				[1 ] = { 0,		0.0235	,	0.0669	,	0.0182	,	0.2298	,	0.5	,	    16.2	,	1.154},
				[2 ] = { 0.1,	0.0235	,	0.0669	,	0.0182	,	0.2298	,	1.5	,	    16.2	,	1.154},
				[3 ] = { 0.2,	0.0235	,	0.0669	,	0.0182	,	0.2296	,	2.0	,	    16.2	,	1.154},
				[4 ] = { 0.4,	0.0235	,	0.0669	,	0.0183	,	0.2294	,	2.25,	    16.2	,	1.154},
				[5 ] = { 0.6,	0.0235	,	0.0674	,	0.0194	,	0.2245	,	2.43,	    16.0	,	1.145},
				[6 ] = { 0.6,	0.0235	,	0.0685	,	0.0252	,	0.2245	,	2.43,	    16.0	,	1.145},
				[7 ] = { 0.7,	0.0235	,	0.0722	,	0.0303	,	0.2111	,	2.82,	    11.8	,	0.921},
				[8 ] = { 0.8,	0.0335	,	0.0689	,	0.0510	,	0.3826	,	2.47,	    9.9		,	0.749},
				[9 ] = { 0.9,	0.0435	,	0.0661	,	0.0554	,	0.4359	,	2.25,	    10.1	,	0.731},
				[10] = { 1.0,	0.0535	,	0.0631	,	0.0514	,	0.5218	,	2.10,	    10.2	,	0.707},
				[11] = { 1.1,	0.0635	,	0.0621	,	0.0547	,	0.5431	,	1.75,	    10.3	,	0.701},
				[12] = { 1.2,	0.0735	,	0.0620	,	0.0559	,	0.5453	,	1.50,	    10.3	,	0.701},
				[13] = { 1.3,	0.0835	,	0.0620	,	0.0572	,	0.5447	,	1.25,	    10.3	,	0.701},
				-- Approximately                                                            
				[14] = { 2.0,	0.0835	,	0.0620	,	0.0572	,	0.5447	,	1.00,	    10.3	,	0.701},
				[15] = { 2.5,	0.0835	,	0.0620	,	0.0572	  ,	0.5447	,	1.00,	    10.3	,	0.701},
				[16] = { 3.9,	0.0835	,	0.0620	,	0.0572	,	0.5447	,	1.00,	    10.3	,	0.701},
			}, -- end of table_data
		}, -- end of aerodynamics

	engine = 
		{
			Nmg 	=	50.0,--29, -- RPM at idle
			MinRUD	=	0, -- Min state of the ???
			MaxRUD	=	1, -- Max state of the ???
			MaksRUD	=	1, -- Military power state of the ???
			ForsRUD	=	1, -- Afterburner state of the ???
			--typeng	=	0, -- 0 - engine with high bypass ratio, 1 - jet engine
			--type	=	"TurboProp", 	--MQ-9 Reaper
			
			--type	=	"TurboShaft",
			type    = "Radial",
			
            cylinder_firing_order = {1, 3, 5, 7, 9, 2, 4, 6, 8},
			Startup_Prework = 15.0,
            Startup_RPMs = {
                {0.0, 0},
                {2.0, 120},
                {5.6, 120},
                {5.5, 120},
                {6.5, 1100},
                {8.5, 900},
				{13.0, 900},
				{21.0, 550},
            },
		
			Startup_Ignition_Time = 6.3,
            Shutdown_Duration = 6.3,
			
			
			
			hMaxEng	=	19, -- Max altitude for safe engine operation in km
			dcx_eng	=	0.0170, -- Engine drag coeficient
			cemax	=	1.24, -- not used for fuel calulation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			cefor	=	2.56, -- not used for fuel calulation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			dpdh_m	=	4500, --  altitude coefficient for max thrust
			dpdh_f	=	9800, --  altitude coefficient for AB thrust
			
			prop_pitch_min      = 26.0, -- prop pitch min, degrees 
            prop_pitch_max      = 82.0, -- prop pitch max, degrees 
            prop_pitch_feather  = 90.0, -- prop pitch feather position, degrees if feather < prop_pitch_max no feathering available
            prop_blades_count   = 3,
            prop_direction      = 1,
			
			table_data = 
			{
				[1] = 	{0,	    105000,	105000},
				[2] = 	{0.1,	105000,	105000},
				[3] = 	{0.2,	105000,	105000},
				[4] = 	{0.3,	105000,	105000},
				[5] = 	{0.4,	105000,	105000},
				[6] = 	{0.5,	105000,	105000},
				[7] = 	{0.6,	105000,	105000},
				[8] = 	{0.7,	102000,	102000},
				[9] = 	{0.8,	100000,	100000},
				[10] = 	{0.9,	 90000,	 90000},
				[11] = 	{1,	     80000,	 80000},
			}, -- end of table_data
		}, -- end of engine
	},
--]]		
	SFM_Data = {
	aerodynamics = --F15
		{
			Cy0	=	0,
			Mzalfa	=	6,
			Mzalfadt	=	1,
			kjx = 2.95,
			kjz = 0.00125,
			Czbe = -0.016,
			cx_gear = 0.0268,
			cx_flap = 0.06,
			cy_flap = 0.4,
			cx_brk = 0.06,
			table_data = 
			{
			--      M	 Cx0		 Cya		 B		 B4	      Omxmax	Aldop	Cymax
				{0.0,	0.0215,		0.055,		0.08,		0.22,	0.65,	25.0,	1.2 	},
				{0.2,	0.0215,		0.055,		0.08,		0.22,	1.80,	25.0,	1.2     },
				{0.4,	0.0215,		0.055,		0.08,	   	0.22,	3.00,	25.0,	1.2     },
				{0.6,	0.0215,		0.055,		0.05,		0.28,	4.20,	25.0,	1.2     },
				{0.7,	0.0215,		0.055,		0.05,		0.28,	4.20,	23.0,	1.15    },
				{0.8,	0.0215,		0.055,		0.05,		0.28,	4.20,	21.7,	1.1     },
				{0.9,	0.0230,		0.058,		0.09,		0.20,	4.20,	20.1,	1.07    },
				{1.0,	0.0320,		0.062,		0.17,		0.15,	4.20,	18.9,	1.04    },
				{1.1,	0.0430,		0.062,	   	0.235,		0.09,	3.78,	17.4,	1.02    },
				{1.2,	0.0460,		0.062,	   	0.285,		0.08,	2.94,	17.0,	1.00 	},		
				{1.3,	0.0470,		0.06,	   	0.29,		0.10,	2.10,	16.0,	0.92 	},				
				{1.4,	0.0470,		0.056,	   	0.3,		0.136,	1.80,	15.0,	0.80 	},					
				{1.6,	0.0470,		0.052,	   	0.34,		0.21,	1.08,	13.0,	0.7 	},					
				{1.8,	0.0460,		0.042,	   	0.34,		2.43,	0.96,	12.0,	0.55 	},		
				{2.2,	0.0420,		0.037,	   	0.49,		3.5,	0.84,	 10.0,	0.37 	},					
				{2.5,	0.0420,		0.033,		0.6,		4.7,	0.84,	 9.0,	0.3 	},		
				{3.9,	0.0400,		0.023,		0.9,		6.0,	0.84,	 7.0,	0.2		},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg		=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			--type	=	"TurboJet",
			type	=	"TurboProp", 
			hMaxEng	=	19.5,
			dcx_eng	=	0.0114,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	6000,
			dpdh_f	=	14000.0,
			
			Startup_Ignition_Time 	= 6.3,
            Shutdown_Duration 		= 16.3,
			prop_blades_count   	= 3,
            prop_direction      	= -1,
			
			table_data = {
			--   M		Pmax		 Pfor
				{0.0,	115000,		212000},
				{0.2,	 94000,		200000},
				{0.4,	 92000,		205000},
				{0.6,	103000,		207000},
				{0.7,	105000,		210000},
				{0.8,	105000,		220000},
				{0.9,	105000,		235000},
				{1.0,	107000,		250000},
				{1.1,	103000,		258000},
				{1.2,	 94000,		268000},
				{1.3,	 84000,		285000},
				{1.4,	 71000,		300000},
				{1.6,	 34000,		318000},
				{1.8,	 19000,		337000},
				{2.2,	 17000,		370000},
				{2.5,	 19000,		390000},
				{3.9,	 82000,		310000},
			}, -- end of table_data
		}, -- end of engine
	},
		

	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},
	[1]  = {critical_damage = 3,  args = {296}},
	[2]  = {critical_damage = 3,  args = {297}},
	[3]  = {critical_damage = 8, args = {65}},
	[4]  = {critical_damage = 2,  args = {298}},
	[5]  = {critical_damage = 2,  args = {301}},
	[7]  = {critical_damage = 2,  args = {249}},
	[8]  = {critical_damage = 3,  args = {265}},
	[9]  = {critical_damage = 3,  args = {154}},
	[10] = {critical_damage = 3,  args = {153}},
	[11] = {critical_damage = 1,  args = {167}},
	[12] = {critical_damage = 1,  args = {161}},
	[13] = {critical_damage = 2,  args = {169}},
	[14] = {critical_damage = 2,  args = {163}},
	[15] = {critical_damage = 2,  args = {267}},
	[16] = {critical_damage = 2,  args = {266}},
	[17] = {critical_damage = 2,  args = {168}},
	[18] = {critical_damage = 2,  args = {162}},
	[20] = {critical_damage = 2,  args = {183}},
	[23] = {critical_damage = 5, args = {223}},
	[24] = {critical_damage = 5, args = {213}},
	[25] = {critical_damage = 2,  args = {226}},
	[26] = {critical_damage = 2,  args = {216}},
	[29] = {critical_damage = 5, args = {224}, deps_cells = {23, 25}},
	[30] = {critical_damage = 5, args = {214}, deps_cells = {24, 26}},
	[35] = {critical_damage = 6, args = {225}, deps_cells = {23, 29, 25, 37}},
	[36] = {critical_damage = 6, args = {215}, deps_cells = {24, 30, 26, 38}}, 
	[37] = {critical_damage = 2,  args = {228}},
	[38] = {critical_damage = 2,  args = {218}},
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}}, 
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}}, 
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}}, 
	[51] = {critical_damage = 2,  args = {240}}, 
	[52] = {critical_damage = 2,  args = {238}},
	[53] = {critical_damage = 2,  args = {248}},
	[54] = {critical_damage = 2,  args = {247}},
	[56] = {critical_damage = 2,  args = {158}},
	[57] = {critical_damage = 2,  args = {157}},
	[59] = {critical_damage = 3,  args = {148}},
	[61] = {critical_damage = 2,  args = {147}},
	[82] = {critical_damage = 2,  args = {152}},
	},
	
	DamageParts = 
	{  
		[1] = "V22_Osprey-oblomok-wing-r", -- wing R
		[2] = "V22_Osprey-oblomok-wing-l", -- wing L
	},
	
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

	lights_data = { typename = "collection", lights = {
	
        [WOLALIGHT_NAVLIGHTS] = {
            typename = "Collection",
					lights = {	
                [1] = {
                    typename = "collection",
                    lights = {
                        {typename = "argumentlight",argument = 190}, -- Left Position(red)
						{typename = "argumentlight",argument = 191}, -- Right Position(green)
						{typename = "argumentlight",argument = 192}, -- Tail Position white)
                    },
                },
            },
        },
	
        [WOLALIGHT_SPOTS] = {
            typename = "collection",
					lights = {
                {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", dir_correction = {elevation = math.rad(8.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_P_27_600,
			},
                        {
                            typename = "Spot", connector = "RESERV_SPOT_PTR", dir_correction = {elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_P_27_600,
			},
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", dir_correction = {elevation = math.rad(8.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_P_27_600,
                        },
                        {
                            typename = "Spot", connector = "RESERV_SPOT_PTR", dir_correction = {elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_P_27_600,
                        },						
                    },
                },
            }
        },
        [WOLALIGHT_TAXI_LIGHTS] = {
            typename = "collection",
            lights = {
                {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", dir_correction = {elevation = math.rad(8.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_R_27_180,
                        },
                        {
                            typename = "Spot", connector = "RESERV_SPOT_PTR", dir_correction = {elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_R_27_180,
                        },
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", dir_correction = {elevation = math.rad(8.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_R_27_180,
                        },
                        {
                            typename = "Spot", connector = "RESERV_SPOT_PTR", dir_correction = {elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_R_27_180,
                        },						
                    },
                },
            }
        },
        [WOLALIGHT_STROBES] = {
            typename = "collection",
            lights = {
                [1] = {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "natostrobelight", position = {-8.963, 3.942 + 0.200, -2.500}, argument = 194,
                            proto = lamp_prototypes.MSL_3_2,
                            period = 2.0,
                        },
                        {
                            typename = "natostrobelight", position = {4.126, -1.379 - 0.200, 0.004}, argument = 193,
                            proto = lamp_prototypes.MSL_3_2,
                            period = 1.81, phase_shift = 0.5,
                        },
                    },
                },
            },
        },
    
        [WOLALIGHT_FORMATION_LIGHTS] = {
            --typename = "argumentlight", argument = 88,
        },
    },		
  },
}

add_aircraft(V22_Osprey) 

