P3C_Orion =  {
      
	Name 			= 'P3C_Orion',
	DisplayName		= _('P-3C Orion'),
	date_of_introduction= 1962.08,
	Picture 		= "P3C_Orion.png",
	Rate 			= "40",
	Shape			= "P3C_Orion",
	WorldID			=  WSTYPE_PLACEHOLDER,
	defFuelRatio    = 0.8, -- fuel default in fractions of the full (1.0)

	shape_table_data 	= 
	{
		{
			file  	 	= 'P3C_Orion';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'P3C_Orion-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'P3C_Orion';
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "P3C_Orion-oblomok";
			file  		= "P3C_Orion-oblomok";
			fire  		= { 240, 2};
		},
	},

	Categories = {},
	mapclasskey 		= "P0091000063",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Cruiser, WSTYPE_PLACEHOLDER, "Aux", "Datalink", "Link16"},
	CanopyGeometry      = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_BAD),
	singleInFlight 	    = true,
	EPLRS               = true,
    
    ------------------------------------------------------------------------------------------------
    -- MASS & WEIGHTS (kg)
    ------------------------------------------------------------------------------------------------
    -- NATOPS: Empty ~61,500 lbs, Max TO (Overload) 142,000 lbs
    M_empty     = 27890,    -- 61,500 lbs
    M_nominal   = 49895,    -- 110,000 lbs (Typical patrol weight)
    M_max       = 64410,    -- 142,000 lbs (Max Takeoff)
    M_fuel_max  = 28350,    -- 62,500 lbs (Internal fuel JP-5)
    
    ------------------------------------------------------------------------------------------------
    -- DIMENSIONS & GEOMETRY
    ------------------------------------------------------------------------------------------------
    wing_area					=	120.77,
    wing_span					=	30.37,  -- 99 ft 8 in
    length						=	35.61,  -- 116 ft 10 in
    height						=	10.27,  -- 33 ft 8 in
    wing_tip_pos 				= 	{-0.753,	0.617,	18.04},
    
	
	nose_gear_pos 	= 	{ 7.982,	-3.15,	0}, 		-- Nose gear position (ground under center of the axle)
		
	main_gear_pos 	= 	{-0.862,	-3.177,	4.62},		-- Main gear position (ground under center of the axle)
														-- automatically mirrored
	
	nose_gear_amortizer_direct_stroke 		 =  0.0,	-- Full Strut Expansion (no weight on wheels) (arg 2)
	nose_gear_amortizer_reversal_stroke 	 = -0.24317,-- Full Strut Compression (maximum+ weight on wheels)
	nose_gear_amortizer_normal_weight_stroke = -0.06099,-- Strut Weight Compression (normal compression with weight on wheels; number is amount of "chrome showing")
	nose_gear_wheel_diameter				 =  0.83,	-- Diameter of the nose gear wheel (meters)

	main_gear_amortizer_direct_stroke 		 =  0.0,	-- Full Strut Expansion (no weight on wheels) (args 4 and 6)
	main_gear_amortizer_reversal_stroke 	 = -0.2003,	-- Full Strut Compression (maximum+ weight on wheels)
	main_gear_amortizer_normal_weight_stroke = -0.04137,-- Strut Weight Compression (normal compression with weight on wheels; number is amount of "chrome showing")
	main_gear_wheel_diameter 				 =  1.09,	-- Diameter of the main gear wheels (meters)
	
	
    tand_gear_max				=	math.tan(math.rad(60)),
    
    ------------------------------------------------------------------------------------------------
    -- PERFORMANCE & LIMITS
    ------------------------------------------------------------------------------------------------
    V_opt           = 168.0,    -- Cruise speed (~328 kts)
    V_take_off      = 70.0,     -- ~135 kts
    V_land          = 65.0,     -- ~125 kts
    V_max_sea_level = 200.0,    -- ~390 kts (low level dash)
    V_max_h         = 211.0,    -- ~411 kts (max speed at altitude)
    Mach_max        = 0.65,
    CAS_min         = 52.0,     -- Stall speed (~101 kts, adjusted for flapped stall at nominal weight)
    
    H_max           = 8625,     -- 28,300 ft service ceiling
    Vy_max          = 16.0,     -- ~3,140 fpm rate of climb
    range           = 8944,     -- 4,830 nm (Ferry range)
    
    Ny_min          = -1.0,
    Ny_max          = 2.5,      -- Patrol aircraft limit (2.5g)
    Ny_max_e        = 3.0,
    
    bank_angle_max 	= 40,  	    -- Heavy patrol aircraft limits
    flaps_maneuver	= 1/4,
    AOA_take_off	= math.rad(9),	 -- 8-10 degrees
    
    has_afteburner				=	false,
    has_speedbrake				=	false,
    has_thrustReverser 			= 	true,
    has_differential_stabilizer = 	false,
    radar_can_see_ground		=	false,
    stores_number				=	0,
    tanker_type					=	0,
    is_tanker	                =	false,
    brakeshute_name	            =	0,

    ------------------------------------------------------------------------------------------------
    -- SIGNATURES & SENSORS
    ------------------------------------------------------------------------------------------------
    RCS							=	80,
    detection_range_max			=	18,
    IR_emission_coeff			=	1.2,
    IR_emission_coeff_ab		=	0,
    
    Sensors = {
        RADAR = "AN/APS-137",
        RWR = "Abstract RWR"
    },
    Countermeasures = {         
        IRCM = "AN/ALQ-157",
        DISPENSER = "AN/ALE-47"
    },
    passivCounterm = {
        CMDS_Edit = true,
        SingleChargeTotal = 240,
        chaff = {default = 120, increment = 30, chargeSz = 1},
        flare = {default = 60, increment = 15, chargeSz = 2}
    },

    ------------------------------------------------------------------------------------------------
    -- ENGINE CONFIGURATION (4x Allison T56-A-14)
    ------------------------------------------------------------------------------------------------
    -- Corrected Thrust: ~8,500 lbs (37.8 kN) per engine static x 4 = 34,000 lbs (151.2 kN)
    -- Original 82kN was far too low for takeoff performance.
    
    engines_count	=	4,
    thrust_sum_max  = 18150,	-- [kgf]
    thrust_sum_ab   = 18150,	-- [kgf]
    average_fuel_consumption = 0.55, -- [kg/s] Slight increase for cruise FF match

	engines_startup_sequence = { 3, 2, 1, 0 },
    engines_nozzles = 
    {
        [1] = 
		{
            pos = 	{-3.05,	0.0312,	-8.916},
            elevation			=	-3.0,	-- 3.0 degree exhaust inclination (negative means exhaust points up)
			azimuth             = 	0,
            diameter			=	0.3,
            exhaust_length_ab	=	6.4,
            exhaust_length_ab_K	=	0.0,
            smokiness_level     = 	0.4, 	-- T56 known for smoke
			engine_number       = 	1,
        },
        [2] = 
		{
            pos = 	{-4.1,	-0.447,	-4.5894},
            elevation			=	-3.0,	-- 3.0 degree exhaust inclination (negative means exhaust points up)
			azimuth             = 	0,
            diameter			=	0.3,
            exhaust_length_ab	=	6.4,
            exhaust_length_ab_K	=	0.0,
            smokiness_level     = 	0.4,
			engine_number       = 	2,
        },
        [3] = 
        {
            pos = 	{-4.1,	-0.447,	4.5894},
            elevation			=	-3.0,	-- 3.0 degree exhaust inclination (negative means exhaust points up)
			azimuth             = 	0,
            diameter			=	0.3,
            exhaust_length_ab	=	6.4,
            exhaust_length_ab_K	=	0.0,
            smokiness_level     = 	0.4,
			engine_number       = 	3,
        },
        [4] = 
		{
            pos = 	{-3.05,	0.0312,	8.916},
            elevation			=	-3.0,	-- 3.0 degree exhaust inclination (negative means exhaust points up)
			azimuth             = 	0,
            diameter			=	0.3,
            exhaust_length_ab	=	6.4,
            exhaust_length_ab_K	=	0.0,
            smokiness_level     = 	0.4,
			engine_number       = 	4,
        },
    },

    ------------------------------------------------------------------------------------------------
    -- CREW & SYSTEMS
    ------------------------------------------------------------------------------------------------
    crew_members = 
    {
        [1] = { ejection_seat_name = 0, drop_canopy_name = 0, pos = {-6.66, 0.543, -1.755} },
        [2] = { ejection_seat_name = 0, drop_canopy_name = 0, pos = {-6.66, 0.543, -1.755} },
        [3] = { ejection_seat_name = 0, drop_canopy_name = 0, pos = {-6.66, 0.543, -1.755} },
    },

    fires_pos = 
    {
        [1] = 	{-0.138,	-0.79,	0},
        [2] = 	{-0.138,	-0.79,	5.741},
        [3] = 	{-0.138,	-0.79,	-5.741},
        [4] = 	{-0.82,		0.265,	2.774},
        [5] = 	{-0.82,		0.265,	-2.774},
        [6] = 	{-0.82,		0.255,	4.274},
        [7] = 	{-0.82,		0.255,	-4.274},
        [8] = 	{-0.347,	-1.875,	8.138},
        [9] = 	{-0.347,	-1.875,	-8.138},
        [10] = 	{-5.024,	-1.353,	13.986},
        [11] = 	{-5.024,	-1.353,	-13.986},
    },

    chaff_flare_dispenser = 
    {
        [1] = { dir = {0, -1, 0}, pos = {1.158, -1.77, -0.967} },
        [2] = { dir = {0, -1, 0}, pos = {1.158, -1.77, 0.967} },
    },

    Failures = {
        { id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'r_engine',	label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
    },

    HumanRadio = {
		frequency = 127.5,
		editable = true,
		minFrequency = 118.000,
		maxFrequency = 137.000,
		modulation = MODULATION_AM
	},

    ------------------------------------------------------------------------------------------------
    -- FLIGHT MODEL (SFM)
    ------------------------------------------------------------------------------------------------
    SFM_Data = {
        aerodynamics = 
        {
            -- P-3C Aerodynamics (Modified for straight wing behavior)
            Cy0         = 0.03,   -- Slight positive lift at 0 AoA due to camber
            Mzalfa      = 4.5,    -- Pitch moment slope
            Mzalfadt    = 1.5,
            kjx         = 2.8,    -- Inertia parameters (increased for heavy aircraft)
            kjz         = 0.0013,
            Czbe        = -0.017,
            cx_gear     = 0.03,	  -- Gear drag
            cx_flap     = 0.10,	  -- Flap drag (increased for realism)
            cy_flap     = 1.0,	  -- Flap lift bonus (increased for realistic flapped stall)
            cx_brk      = 0.0,    -- No speedbrakes

            -- AERODYNAMICS TABLE
            -- Mach, Cx0, Cya, B, B4, Omxmax, Aldop, Cymax
            -- Cx0: Drag Coefficient (Clean)
            -- Cya: Lift Curve Slope
            -- Omxmax: Max Roll Rate (Rad/s)
            table_data = 
            {
				--         M     Cx0     Cya      B2      B4   Omxmax  Aldop   Cymax
				-- Tuned for P-3C high-lift wing (Cymax 1.4 clean, AR~7.5, B~0.049)
				[1] =   { 0.0,  0.022,  0.095,  0.049,  1e-06,  0.3,    17.0,   1.40 }, 
				[2] =   { 0.1,  0.022,  0.095,  0.049,  1e-06,  0.4,    17.0,   1.40 }, 
				[3] =   { 0.2,  0.022,  0.097,  0.050,  1e-06,  0.5,    16.8,   1.38 }, 
				[4] =   { 0.3,  0.023,  0.099,  0.051,  1e-06,  0.6,    16.5,   1.35 }, 
				[5] =   { 0.4,  0.024,  0.101,  0.053,  1e-06,  0.7,    16.0,   1.30 }, 
				[6] =   { 0.5,  0.025,  0.103,  0.055,  0.01,   0.7,    15.5,   1.25 }, 
				[7] =   { 0.6,  0.027,  0.104,  0.059,  0.02,   0.7,    14.5,   1.15 }, 
				[8] =   { 0.65, 0.030,  0.103,  0.067,  0.04,   0.6,    13.5,   1.05 },  -- M_max
				
			--[[
				-- Tuned for P-3C high-lift wing (Cymax 1.55 clean, AR~7.5, B~0.042)
				[1] =   { 0.0,  0.022,  0.095,  0.042,  1e-06,  0.4,    17.0,   1.55 }, 
				[2] =   { 0.1,  0.022,  0.095,  0.042,  1e-06,  0.6,    17.0,   1.55 }, 
				[3] =   { 0.2,  0.022,  0.097,  0.043,  1e-06,  0.8,    16.8,   1.52 }, 
				[4] =   { 0.3,  0.023,  0.099,  0.044,  1e-06,  1.0,    16.5,   1.48 }, 
				[5] =   { 0.4,  0.024,  0.101,  0.046,  1e-06,  1.2,    16.0,   1.43 }, 
				[6] =   { 0.5,  0.025,  0.103,  0.048,  0.01,   1.3,    15.5,   1.37 }, 
				[7] =   { 0.6,  0.027,  0.104,  0.052,  0.02,   1.3,    14.5,   1.28 }, 
				[8] =   { 0.65, 0.030,  0.103,  0.060,  0.04,   1.2,    13.5,   1.15 },  -- M_max
			]]
				
			--[[
                [1] = {0.0,    0.024,  0.110,  0.035,   0.001,   0.40,   16.0,   1.55},
                [2] = {0.1,    0.024,  0.110,  0.035,   0.001,   0.80,   16.0,   1.55},
                [3] = {0.2,    0.024,  0.112,  0.036,   0.002,   1.10,   15.5,   1.50},
                [4] = {0.3,    0.025,  0.114,  0.038,   0.005,   1.20,   15.0,   1.45},
                [5] = {0.4,    0.027,  0.115,  0.042,   0.010,   1.20,   14.5,   1.40},
                [6] = {0.5,    0.030,  0.112,  0.050,   0.020,   1.20,   14.0,   1.30},
                [7] = {0.6,    0.038,  0.108,  0.065,   0.040,   1.00,   13.0,   1.10},
                [8] = {0.7,    0.065,  0.100,  0.100,   0.150,   0.80,   11.0,   0.90}, -- Compressibility drag rise
			]]
            }, 
        }, 
        
        engine = 
        {
            -- ENGINE PERFORMANCE (Allison T56-A-14)
            -- Rated at 4,910 SHP per engine (constant speed)
            -- Propeller thrust decreases as airspeed increases
            
            typeng = 3, -- E_TURBOPROP
            type	=	"TurboProp",
            
            Nmg         = 72.0,         -- Idle RPM %
            Nominal_RPM = 13820,		-- Turbine RPM
            Nominal_Fan_RPM = 1020,		-- Propeller RPM
            
            hMaxEng     = 12.0,   		-- Engine ceiling (km)
            dcx_eng     = 0.015,  		-- Engine drag coeff
            
            -- FUEL FLOW (per engine)
			-- SFC ~0.47-0.5 lb/shp-hr; max FF ~5,000 kg/h total
			cemax       = 0.35,   -- kg/s per engine at max
			cefor       = 0.35,
			
            MinRUD	=	0,
            MaxRUD	=	1,
            MaksRUD	=	1,
            ForsRUD	=	1,
            
            -- Altitude Lapse (turboprop ~25% loss per 10k ft)
			dpdh_m      = 3200,		-- [N/km per engine] 
			dpdh_f      = 3200,
			
			D_prop		= 4.11,
			prop_blades_count = 4,
			prop_pitch_min  = -8,
            prop_pitch_max  = 85,
            prop_pitch_feather = 85.8,
			MOI_prop    = 60,
			
			prop_locations = {
                {3.434, -0.089, -8.916}, 	{0.0, 0.0, math.rad(-3.0)},
				{3.665, -0.38, 	-4.62}, 	{0.0, 0.0, math.rad(-3.0)},
                {3.665, -0.38,   4.62},  	{0.0, 0.0, math.rad(-3.0)},
				{3.434, -0.089,  8.916},  	{0.0, 0.0, math.rad(-3.0)},
            },
            
            table_data = 
            {
                -- THRUST TABLE (4x T56-A-14)
				-- FLATTENED TABLE FOR P-3C
                -- Ensures ~9kN Net Thrust per engine at M0.6 / 26k ft
                --    Mach, Thrust (N), Thrust_afterburner (N)
                [1] = {0.0,    178000,     178000}, -- Static
                [2] = {0.1,    175000,     175000},
                [3] = {0.2,    170000,     170000},
                [4] = {0.3,    165000,     165000},
                [5] = {0.4,    158000,     158000},
                [6] = {0.5,    148000,     148000},
                [7] = {0.6,    135000,     135000}, -- Cruise Base
                [8] = {0.7,    90000,      90000},  -- Prop limit
            },
        },
    },

    ------------------------------------------------------------------------------------------------
    -- DAMAGE MODEL
    ------------------------------------------------------------------------------------------------
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
		[1] = "P3C_Orion-OBLOMOK-WING-R",
		[2] = "P3C_Orion-OBLOMOK-WING-L",
	},
	
    ------------------------------------------------------------------------------------------------
    -- LIGHTS & VISUALS
    ------------------------------------------------------------------------------------------------
	lights_data = { typename = "collection", lights = {
	
        [WOLALIGHT_NAVLIGHTS] = {
            typename = "Collection",
            lights = {
                [1] = {
                    typename = "collection",
                    lights = {
                        {	-- The 3D model has this in the wrong place. It's really below the MAD boom just aft of the last antenna on the ventral side.
                            typename = "Spot", position = { -17.0, -0.03, 0 },
							direction = {azimuth = math.rad(180.0)}, argument = 192,
                            proto = lamp_prototypes.HS_2A, angle_max = math.rad(180.0), angle_min = math.rad(0.0), movable = true,
                        },
						{
							typename = "Omni", position = { -17.0, -0.03, 0 },
							proto = lamp_prototypes.HS_2A,
						},
                        {
                            typename = "Spot", position = { 0.393295, 0.40, -14.882221 },
							direction = {azimuth = math.rad(-60.0), elevation = math.rad(0.0)}, argument = 190,
                            proto = lamp_prototypes.BANO_7M_red, angle_max = math.rad(120.0), angle_min = math.rad(0), movable = true,
                        },
                        {
                            typename = "Spot", position = { 0.474911, 0.40, 14.849687 },
							direction = {azimuth = math.rad(60.0), elevation = math.rad(45.0)}, argument = 191,
                            proto = lamp_prototypes.BANO_7M_green, angle_max = math.rad(120.0), angle_min = math.rad(0), movable = true,
                        },
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
                            typename = "Spot", position = { 8.1948, -2.050237, 0.2 },
							dir_correction = {azimuth = math.rad(0.0), elevation = math.rad(4.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_P_27_600, angle_max = math.rad(30.0), angle_min = math.rad(0),
							cool_down_t = 0.6,
                        },
						{
                            typename = "Spot", position = { 8.1948, -2.050237, -0.2 },
							dir_correction = {azimuth = math.rad(0.0), elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_R_27_250, angle_max = math.rad(30.0), angle_min = math.rad(0),
							cool_down_t = 0.5,
                        },
                        {
                            typename = "Spot", position = { -2.0, -0.7, -7.30 },
							dir_correction = {azimuth = math.rad(-10.0), elevation = math.rad(4.0)},
                            proto = lamp_prototypes.LFS_P_27_600, angle_max = math.rad(30.0), angle_min = math.rad(0),
							cool_down_t = 0.6,
                        },
						{
                            typename = "Spot", position = { -2.0, -0.7, 7.30 },
							dir_correction = {azimuth = math.rad(10.0), elevation = math.rad(4.0)},
                            proto = lamp_prototypes.LFS_P_27_600, angle_max = math.rad(30.0), angle_min = math.rad(0),
							cool_down_t = 0.6,
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
                            typename = "Spot", position = { 8.1948, -2.050237, -0.2 },
							dir_correction = {azimuth = math.rad(0.0), elevation = math.rad(8.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_R_27_250, angle_max = math.rad(30.0), angle_min = math.rad(0),
							cool_down_t = 0.5,
                        },
                        {
                            typename = "Spot", position = { -2.0, -0.7, -7.30 },
							dir_correction = {azimuth = math.rad(-10.0), elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_R_27_250, angle_max = math.rad(30.0), angle_min = math.rad(0),
							cool_down_t = 0.5,
                        },
						{
                            typename = "Spot", position = { -2.0, -0.7, 7.30 },
							dir_correction = {azimuth = math.rad(10.0), elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_R_27_250, angle_max = math.rad(30.0), angle_min = math.rad(0),
							cool_down_t = 0.5,
                        },
                    },
                },
            }
        },
		
        [WOLALIGHT_STROBES] = {
			-- Source: https://www.youtube.com/watch?v=Q563FPQAv0s  and  https://www.youtube.com/watch?v=QB36p393Spc  and  https://www.youtube.com/watch?v=ldAz4kdzs7A
            typename = "collection",
            lights = {
                [1] = {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "natostrobelight", position = { -5.7, 3.800, 0.000 },
                            proto = lamp_prototypes.SMI_2KM, intensity_max = 25.0, period = 1.9, phase_shift = 0.0,
                        },
                        {
                            typename = "natostrobelight", position = { -2.0, -1.700, 0.000},
                            proto = lamp_prototypes.SMI_2KM, intensity_max = 25.0, period = 1.9, phase_shift = 0.5,
                        },
                    },
                },
            },
        },
		
		[WOLALIGHT_BEACONS] = {
			-- Source: https://www.youtube.com/watch?v=Q563FPQAv0s  and  https://www.youtube.com/watch?v=QB36p393Spc  and  https://www.youtube.com/watch?v=ldAz4kdzs7A
            typename = "collection",
            lights = {
                [1] = {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "natostrobelight", position = { -5.7, 3.800, 0.000 },
                            proto = lamp_prototypes.SMI_2KM, intensity_max = 25.0, period = 1.9, phase_shift = 0.0,
                        },
                        {
                            typename = "natostrobelight", position = { -2.0, -1.700, 0.000},
                            proto = lamp_prototypes.SMI_2KM, intensity_max = 25.0, period = 1.9, phase_shift = 0.5,
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
					},
				},
			},
		},
		
		[WOLALIGHT_TIPS_LIGHTS] = {
			typename = "collection",
			lights = {
				[1] = {
					typename = "Collection",
					lights = {
						{typename = "argumentlight",argument = 190}, -- Left Position(red)
						{typename = "argumentlight",argument = 191}, -- Right Position(green)
						{typename = "argumentlight",argument = 192}, -- Tail Position (white)
					},
				},
			},
		},
	}},

    ------------------------------------------------------------------------------------------------
    -- PYLONS & WEAPONS
    ------------------------------------------------------------------------------------------------
	Pylons =     {

        pylon(1, 0, -2.15, 0.395, -6.405,
            {
				use_full_connector_position = true,
				arg 	  	  = 308,
				arg_increment = 1,
            },
            {
				{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_increment = 0.0}, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_increment = 0.0}, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_increment = 0.0}, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_increment = 0.0}, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_increment = 0.0}, --Smokewinder - yellow
				{ CLSID = "{AIS_ASQ_T50}" ,arg_increment = 0.0, attach_point_position = {0.30,  0.0,  0.0}},-- ACMI pod
				{ CLSID = "LAU-115_LAU-127_AIM-9L",arg_increment = 0.0},				  -- AIM-9L
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" ,arg_increment = 0.0}, -- Mk-20
				{ CLSID	= "{AGM_84D}", Type = 1 ,arg_increment = 0.0}, 					  -- AGM-84D Harpoon 	
				{ CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" ,arg_increment = 0.0}, -- LAU-10 - 4 ZUNI MK 71
            }
        ),
        pylon(2, 0, -1.87, 0.075, -4.27,
            {
				use_full_connector_position = true,
				arg 	  	  = 309,
				arg_increment = 1,
            },
            {
				{ CLSID = "LAU-115_LAU-127_AIM-9L",arg_increment = 0.0},	-- AIM-9L
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" ,arg_increment = 0.0}, -- Mk-20
				{ CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" ,arg_increment = 0.0}, -- 2 Mk-20 Rockeye
				{ CLSID	= "{AGM_84D}", Type = 1 ,arg_increment = 0.0}, 					  -- AGM-84D Harpoon 	
				{ CLSID = "{AF42E6DF-9A60-46D8-A9A0-1708B241AADB}" ,arg_increment = 0.0}, -- AGM-84E
				{ CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}" ,arg_increment = 0.0}, -- AGM-65E
				{ CLSID = "LAU_117_AGM_65F" ,arg_increment = 0.0}, -- AGM-65F
				{ CLSID = "LAU_117_AGM_65G" ,arg_increment = 0.0}, -- AGM-65G
				{ CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" ,arg_increment = 0.0}, -- LAU-10 - 4 ZUNI MK 71
				{ CLSID = "{LTF_5B}",  Type = 1 ,arg_increment = 0.0},           --Torpedo WWII
            }
        ),
        pylon(3, 0, -1.02, -0.074, -3.325,
            {
				use_full_connector_position = true,
				arg 	  	  = 310,
				arg_increment = 1,
            },
            {
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk-82
				{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" ,arg_increment = 0.0}, -- 3 Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" ,arg_increment = 0.0}, -- Mk-20
				{ CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" ,arg_increment = 0.0}, -- 2 Mk-20 Rockeye
				{ CLSID	= "{AGM_84D}", Type = 1 ,arg_increment = 0.0}, 					  -- AGM-84D Harpoon 	
				{ CLSID = "{AF42E6DF-9A60-46D8-A9A0-1708B241AADB}" ,arg_increment = 0.0}, -- AGM-84E
				{ CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}" ,arg_increment = 0.0}, -- AGM-65E
				{ CLSID = "LAU_117_AGM_65F" ,arg_increment = 0.0}, -- AGM-65F
				{ CLSID = "LAU_117_AGM_65G" ,arg_increment = 0.0}, -- AGM-65G
				{ CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" ,arg_increment = 0.0}, -- LAU-10 - 4 ZUNI MK 71
				{ CLSID = "{LTF_5B}",  Type = 1 ,arg_increment = 0.0},           --Torpedo WWII
            }
        ),
        pylon(4, 0, -0.77, -0.066, -2.297,
            {
				use_full_connector_position = true,
				arg 	  	  = 311,
				arg_increment = 1,
            },
            {
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
				
            }
        ),
        pylon(5, 1, -2.47, -0.45, -1.165,--2.47, -0.5, -1.215
            {
				use_full_connector_position = true,
				arg 	  	  = 312,
				arg_increment = 1,
            },
            {
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },  -- Mk-20
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },  -- Mk-82
				{ CLSID = "{LTF_5B}",  Type = 1 ,arg_increment = 0.0}, --Torpedo WWII
            }
        ),
        pylon(6, 1, 0.93, -0.466, 0,
            {
				use_full_connector_position = true,
				arg 	  	  = 313,
				arg_increment = 1,
            },
            {
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },  -- Mk-20
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },  -- Mk-82
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },  -- Mk-83
				{ CLSID = "{LTF_5B}",  Type = 1 ,arg_increment = 0.0}, --Torpedo WWII
            }
        ),
        pylon(7, 1, -2.47, -0.45, 1.165,--2.47, -0.5, 1.215
            {
				use_full_connector_position = true,
				arg 	  	  = 314,
				arg_increment = 1,
            },
            {
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },  -- Mk-20
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },  -- Mk-82
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },  -- Mk-83
				{ CLSID = "{LTF_5B}",  Type = 1 ,arg_increment = 0.0}, --Torpedo WWII
            }
        ),
        pylon(8, 0, -0.77, -0.066, 2.297,
			{
				use_full_connector_position = true,
				arg 	  	  = 315,
				arg_increment = 1,
            },
            {
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" }, -- Mk-83
            }
        ),
        pylon(9, 0, -1.02, -0.074, 3.325,
            {
				use_full_connector_position = true,
				arg 	  	  = 316,
				arg_increment = 1,
            },
            {
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" }, -- Mk-83
            }
        ),
        pylon(10, 0, -1.87, 0.075, 4.27,            
			{
				use_full_connector_position = true,
				arg 	  	  = 317,
				arg_increment = 1,
            },
            {
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
            }
        ),
        pylon(11, 0, -2.15, 0.395, 6.405,--2.15, 0.475, 6.455
            {
				use_full_connector_position = true,
				arg 	  	  = 318,
				arg_increment = 1,
            },
            {
		        { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
            }
        ),
		pylon(12, 0, -2.15, 0.395, 6.405,--2.15, 0.475, 6.455
            {
				use_full_connector_position = true,
				arg 	  	  = 319,
				arg_increment = 1,
            },
            {
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk-82
				{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" ,arg_increment = 0.0}, -- 3 Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" ,arg_increment = 0.0}, -- Mk-20
				{ CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" ,arg_increment = 0.0}, -- 2 Mk-20 Rockeye
				{ CLSID	= "{AGM_84D}", Type = 1 ,arg_increment = 0.0}, 					  -- AGM-84D Harpoon 	
				{ CLSID = "{AF42E6DF-9A60-46D8-A9A0-1708B241AADB}" ,arg_increment = 0.0}, -- AGM-84E
				{ CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}" ,arg_increment = 0.0}, -- AGM-65E
				{ CLSID = "LAU_117_AGM_65F" ,arg_increment = 0.0}, -- AGM-65F
				{ CLSID = "LAU_117_AGM_65G" ,arg_increment = 0.0}, -- AGM-65G
				{ CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" ,arg_increment = 0.0}, -- LAU-10 - 4 ZUNI MK 71
				{ CLSID = "{LTF_5B}",  Type = 1 ,arg_increment = 0.0},           --Torpedo WWII
            }
        ),
		pylon(13, 0, -2.15, 0.395, 6.405,--2.15, 0.475, 6.455
            {
				use_full_connector_position = true,
				arg 	  	  = 320,
				arg_increment = 1,
            },
            {
		        { CLSID = "LAU-115_LAU-127_AIM-9L",arg_increment = 0.0},	-- AIM-9L
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" ,arg_increment = 0.0}, -- Mk-20
				{ CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" ,arg_increment = 0.0}, -- 2 Mk-20 Rockeye
				{ CLSID	= "{AGM_84D}", Type = 1 ,arg_increment = 0.0}, 					  -- AGM-84D Harpoon 	
				{ CLSID = "{AF42E6DF-9A60-46D8-A9A0-1708B241AADB}" ,arg_increment = 0.0}, -- AGM-84E
				{ CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}" ,arg_increment = 0.0}, -- AGM-65E
				{ CLSID = "LAU_117_AGM_65F" ,arg_increment = 0.0}, -- AGM-65F
				{ CLSID = "LAU_117_AGM_65G" ,arg_increment = 0.0}, -- AGM-65G
				{ CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" ,arg_increment = 0.0}, -- LAU-10 - 4 ZUNI MK 71
            }
        ),
		pylon(14, 0, -2.15, 0.395, 6.405,--2.15, 0.475, 6.455
            {
				use_full_connector_position = true,
				arg 	  	  = 321,
				arg_increment = 1,
            },
            {
		        { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_increment = 0.0}, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_increment = 0.0}, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_increment = 0.0}, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_increment = 0.0}, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_increment = 0.0}, --Smokewinder - yellow
				{ CLSID = "{AIS_ASQ_T50}" ,arg_increment = 0.0, attach_point_position = {0.30,  0.0,  0.0}},-- ACMI pod
				{ CLSID = "LAU-115_LAU-127_AIM-9L",arg_increment = 0.0},				  -- AIM-9L
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" ,arg_increment = 0.0}, -- Mk-20
				{ CLSID	= "{AGM_84D}", Type = 1 ,arg_increment = 0.0}, 					  -- AGM-84D Harpoon 	
				{ CLSID = "{LTF_5B}",  Type = 1 ,arg_increment = 0.0},           --Torpedo WWII				
            }
        ),
	},

	Tasks = {
		aircraft_task(Transport),
		aircraft_task(Reconnaissance),
    	aircraft_task(GroundAttack),
     	aircraft_task(CAS),
        aircraft_task(AFAC),
	    aircraft_task(RunwayAttack),
    	aircraft_task(AntishipStrike),
    },	
	DefaultTask = aircraft_task(AntishipStrike),
}

add_aircraft(P3C_Orion)