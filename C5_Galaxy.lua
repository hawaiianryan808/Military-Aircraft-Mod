-- C-5M SUPER GALAXY DCS DEFINITION FILE
-- CORRECTED AND OPTIMIZED FOR REALISTIC PERFORMANCE
--
-- CHANGELOG & CORRECTIONS:
-- 1. DIMENSIONS: Confirmed corrections for Length (75.53m), Span (67.91m), Height (19.84m).
-- 2. THRUST: Maintained total static thrust at 900,000 N (approx 50,580 lbf x 4).
-- 3. THRUST EFFICIENCY: Adjusted Thrust vs Mach table. High-bypass turbofans lose thrust
--    rapidly with speed. Previous table (88% thrust at M0.8) was too optimistic.
--    Curve adjusted to ~55% at M0.8 to prevent "rocket" acceleration at high speed.
-- 4. FUEL FLOW (cemax): CORRECTED CRITICAL ERROR.
--    Old: 0.96 kg/s (Way too low, this is cruise flow).
--    New: 2.60 kg/s (Real world takeoff flow ~21,000 pph per engine).
--    This ensures the aircraft burns fuel realistically at high throttle settings.
-- 5. FUEL FLOW (average): Kept at 0.96 kg/s for accurate AI cruise range calculation.
-- 6. AERODYNAMICS: Verified Service Ceiling (12.5km) and Engine Altitude limits.

C5_Galaxy =  {
    -- IDENTIFICATION
    Name 				= 'C5_Galaxy',
    DisplayName			= _('C-5M Galaxy'),
	date_of_introduction= 1970.06,
    Picture 			= "C5_Galaxy.png",
    Rate 				= "40",
    Shape				= "C5_Galaxy",
    WorldID				= WSTYPE_PLACEHOLDER, 
	defFuelRatio    	= 0.8, -- fuel default in fractions of the full (1.0)
    singleInFlight		= true,

    -- SHAPE & VISUALS
    shape_table_data = {
        {
            file  	 	= 'C5_Galaxy',
            life  	 	= 20,
            vis   	 	= 3,
            desrt    	= 'C5_Galaxy-oblomok',
            fire  	 	= { 300, 2},
            username	= 'C5_Galaxy',
            index       = WSTYPE_PLACEHOLDER,
            classname   = "lLandPlane",
            positioning = "BYNORMAL",
        },
        {
            name  		= "C5_Galaxy-oblomok",
            file  		= "C5_Galaxy-oblomok",
            fire  		= { 240, 2},
        },
    },

    mapclasskey 		= "P0091000029",
    attribute  			= {wsType_Air, wsType_Airplane, wsType_Cruiser, WSTYPE_PLACEHOLDER, "Transports", "Refuelable",},
    Categories 			= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},	

    --------------------------------------------------------------------------------
    -- DIMENSIONS & MASS
    --------------------------------------------------------------------------------
    -- Dimensions (Corrected to Real World C-5M)
    length      = 49.05,  -- 247.8 ft (75.53m)				Limited because DCS is stupid
    height      = 12.4,  -- 65.1 ft (Fixed from 16.79)		Limited because DCS is stupid
    wing_span   = 56.4,  -- 222.8 ft (67.91m)				Limited because DCS is stupid
    wing_area   = 576,    -- 6,200 sq ft
    
    -- Weights (kg)
    M_empty     = 172370,  -- Operating Empty Weight
    M_nominal   = 300000,  -- Typical mission mass
    M_max       = 381000,  -- MTOW
    M_fuel_max  = 150819,  -- Max Fuel Mass

    --------------------------------------------------------------------------------
    -- PERFORMANCE
    --------------------------------------------------------------------------------
    -- Speeds (m/s)
    V_take_off      = 74.0,   -- Bumped slightly for realistic rotation at MTOW
    V_land          = 70.0,   -- ~136 kts
    V_opt           = 236.0,  -- Cruise M0.78 (460 kts TAS)
	V_max_sea_level = 237.78, -- Vne / Vmax low
    V_max_h         = 237.78, -- Vne / Vmax high
    Mach_max        = 0.82,   -- Mmo (C-5M can push 0.82 in descent, 0.77 cruise)
    CAS_min         = 54,     -- Stall speed approximation

    -- Operational Limits
    H_max           = 12497,  -- Service Ceiling (41,000 ft)
    Vy_max          = 10.67,  -- Max Climb Rate (2,100 fpm)
    range           = 12964,   -- Ferry range (km)
    
    -- Load Factors
    Ny_min          = 0.5,
    Ny_max          = 2.5,
    Ny_max_e        = 2.5,

    --------------------------------------------------------------------------------
    -- ENGINES
    --------------------------------------------------------------------------------
    -- Engines: 4x GE CF6-80C2 (F138-GE-100)
    -- Static Thrust: ~50,580 lbf (225 kN) per engine
    -- Total Static: 900,000 N
    
    engines_count       = 4,
    thrust_sum_max      = 91774.5, 	-- kgf
    thrust_sum_ab       = 91774.5, 	-- kgf
    
    has_afteburner      = false,
    has_thrustReverser  = true,

    -- Fuel Consumption
    -- C-5M Burn is approx 18,000 - 21,000 pph at takeoff per engine.
    -- 21,000 lbs/hr = 2.64 kg/s.
    average_fuel_consumption = 2.5, 

    --------------------------------------------------------------------------------
    -- FLIGHT MODEL (SFM)
    --------------------------------------------------------------------------------
    SFM_Data = {
        aerodynamics = {
            Cy0         = 0.06,    -- Wings generate lift at 0 AoA due to camber
            Mzalfa      = 4.355,
            Mzalfadt    = 0.8,
            kjx         = 3.8,    -- Increased from 2.85 for realistic heavy roll inertia
            kjz         = 0.0013,
            Czbe        = -0.016,
            cx_gear     = 0.055,  -- Increased from 0.025 (28 wheels = high drag)
            cx_flap     = 0.08,   -- Increased from 0.06 (Huge Fowler flaps)
            cy_flap     = 1.2,
            cx_brk      = 0.08,
            table_data = {
                -- Adjusted Aldop (Stall Angle) to match Lift Slope (Cya)
                -- Prevents 10-degree "dead zone" in pitch authority.
                -- 		  M      Cx0     Cya     B2      B4    Ommax   Aldop    Cym
                [1] = 	{0.0,	0.018,	0.09,	0.05,	0.001,	0.3,	16.0,	1.45}, -- Taxi/Static (Fixed Aldop)
				[2] = 	{0.2,	0.018,	0.09,	0.05,	0.001,	0.4,	16.0,	1.45}, -- TO/Land (Fixed Aldop)
				[3] = 	{0.4,	0.019,	0.09,	0.05,	0.001,	0.4,	15.0,	1.45},
				[4] = 	{0.6,	0.022,	0.09,	0.05,	0.022,	0.4,	20,		1.45},
				[5] = 	{0.7,	0.025,	0.09,	0.06,	0.031,	0.4,	19,		1.25}, -- Cruise Start
				[6] = 	{0.8,	0.040,	0.095,	0.07,	0.040,	0.4,	17,		1.05}, -- Cruise M0.8
				[7] = 	{0.9,	0.060,	0.10,	0.10,	0.058,	0.3,	14,		0.85}, -- Drag Rise
				[8] = 	{1.0,	0.085,	0.105,	0.15,	0.100,	0.3,	12,		0.75},
            },
        },
        engine = {
            Nmg         = 63.0,		-- C-5M idles smoothly
			Nominal_RPM = 9825,		-- 100% speed high pressure turbine (N2)
			Nominal_Fan_RPM = 3280,
			
            hMaxEng     = 12.5,		-- Max Engine Alt (km) -> 41,000ft
            dcx_eng     = 0.0085,	-- Engine Drag
            typeng      = 4,		-- High Bypass Turbofan
            
            -- Fuel Flow Parameters
            cemax       = 2.64,		-- Corrected to 2.64 kg/s
            cefor       = 2.60,		-- Same as max (no AB)
            
            -- Altitude Coefficients
            -- dpdh_m set to 8000 for "sluggish" behavior at altitude
            dpdh_m      = 8000,		-- [N/km per engine]  
            dpdh_f      = 8000,

            MinRUD      = 0,
            MaxRUD      = 1,
            MaksRUD     = 1,
            ForsRUD     = 1,
            
            table_data = {
                -- Thrust vs Mach Number Table (Total N)
                -- Optimized for High-Bypass (F138/CF6) curve
				-- FLATTENED TABLE FOR C-5M
                -- Ensures ~50kN Net Thrust per engine at M0.8 / 36k ft
                --       M      Pmax        Pmax_ab
                [1] = {0.0,    900000,     900000}, -- Static
                [2] = {0.1,    880000,     880000},
                [3] = {0.2,    850000,     850000},
                [4] = {0.3,    810000,     810000},
                [5] = {0.4,    760000,     760000},
                [6] = {0.5,    710000,     710000},
                [7] = {0.6,    660000,     660000},
                [8] = {0.7,    610000,     610000},
                [9] = {0.8,    550000,     550000}, -- Cruise Base
                [10]= {0.9,    300000,     300000}, -- Drag rise
			},
        },
    },

    --------------------------------------------------------------------------------
    -- SYSTEMS & CARGO
    --------------------------------------------------------------------------------
    InternalCargo = {
        nominalCapacity = 60000,
        maximalCapacity = 118387,
        para_unit_point = 240, 
        unit_point      = 345, 
        area            = {43.8, 5.79, 4.11},
        unit_block      = {0.76, 0.775}
    },
    
    Sensors = {
        RADAR = "AN/APG-73",
        RWR = "Abstract RWR"
    },
    
    Countermeasures = {
        ECM = "AN/ALQ-165"
    },
    
    passivCounterm = {
        CMDS_Edit = true,
        SingleChargeTotal = 240,
        chaff = {default = 120, increment = 60, chargeSz = 1},
        flare = {default = 60, increment = 60, chargeSz = 2}
    },

    has_speedbrake              = true,
    has_differential_stabilizer = false,
    radar_can_see_ground        = false,
    stores_number               = 0,
    bank_angle_max              = 45,
    tand_gear_max				= math.tan(math.rad(60)),
    tanker_type                 = 1,
    flaps_maneuver              = 0.5,
    crew_size                   = 3,
    RCS                         = 125,
    detection_range_max         = 0,
    IR_emission_coeff           = 4,
    IR_emission_coeff_ab        = 0,
    
    -- Gear & Hardpoints
    nose_gear_pos               = {19.733, -4.588, 0},
    main_gear_pos               = {-2.50, -4.588, 3.781},
    wing_tip_pos                = {-13.527, 4.161, 25.87},
    nose_gear_wheel_diameter    = 1.30,
    main_gear_wheel_diameter    = 1.30,
    air_refuel_receptacle_pos   = {11.737, 4.251, 0},
    is_tanker                   = false,
    brakeshute_name             = 0,
    AOA_take_off                = math.rad(9),

	engines_startup_sequence 	= { 2, 3, 1, 0 },
    engines_nozzles = {
        [1] = {
            pos = 	{-2.988,	0.49,	-14.527},
            elevation			=	4.5,	-- 4.5 degree exhaust depression (positive means exhaust points down)
			azimuth             = 	2.0,	-- 2.0 degree toe-in (positive means thrust vector points toward longitudinal axis; exhaust points away)
            diameter			=	2.48,
            exhaust_length_ab	=	9,
            exhaust_length_ab_K	=	0.76,
            smokiness_level     = 	0.02,
			engine_number       = 	1,
        }, 
        [2] = {
            pos = 	{-0.471,	1.099,	-7.93},
            elevation			=	4.5,	-- 4.5 degree exhaust depression (positive means exhaust points down)
			azimuth             = 	2.0,	-- 2.0 degree toe-in (positive means thrust vector points toward longitudinal axis; exhaust points away)
            diameter			=	2.48,
            exhaust_length_ab	=	9,
            exhaust_length_ab_K	=	0.76,
            smokiness_level     = 	0.02,
			engine_number       = 	2,
        }, 
        [3] = {
            pos = 	{-0.471,	1.099,	7.93},
            elevation			=	4.5,	-- 4.5 degree exhaust depression (positive means exhaust points down)
			azimuth             =  -2.0,	-- 2.0 degree toe-in (negative means thrust vector points toward longitudinal axis; exhaust points away)
            diameter			=	2.48,
            exhaust_length_ab	=	9,
            exhaust_length_ab_K	=	0.76,
            smokiness_level     = 	0.02,
			engine_number       = 	3,
        }, 
        [4] = {
            pos = 	{-2.988,	0.49,	14.527},
            elevation			=	4.5,	-- 4.5 degree exhaust depression (positive means exhaust points down)
			azimuth             =  -2.0,	-- 2.0 degree toe-in (negative means thrust vector points toward longitudinal axis; exhaust points away)
            diameter			=	2.48,
            exhaust_length_ab	=	9,
            exhaust_length_ab_K	=	0.76,
            smokiness_level     = 	0.02,
			engine_number       = 	4,
        }, 
    },

    crew_members = {
        [1] = {ejection_seat_name = 0, drop_canopy_name = 0, pos = {7.916, 0.986, 0}},
        [2] = {ejection_seat_name = 0, drop_canopy_name = 0, pos = {3.949, 1.01, 0}},
        [3] = {ejection_seat_name = 0, drop_canopy_name = 0, pos = {3.949, 1.01, 0}},
    },

    fires_pos = {
        [1] = 	{-1.503,	3.288,	0},
        [2] = 	{-1.503,	3.288,	4.191},
        [3] = 	{-1.503,	3.288,	-4.191},
        [4] = 	{-0.82,	0.265,	2.774},
        [5] = 	{-0.82,	0.265,	-2.774},
        [6] = 	{-0.82,	0.255,	4.274},
        [7] = 	{-0.82,	0.255,	-4.274},
        [8] = 	{2.538,	1.154,	7.93},
        [9] = 	{2.538,	1.154,	-7.93},
        [10] = 	{-0.868,	0.546,	14.527},
        [11] = 	{-0.868,	0.546,	-14.527},
    },

    chaff_flare_dispenser = {
        [1] = {dir = {0, -1, 0}, pos = {-1.185, -1.728, -0.878}},
        [2] = {dir = {0, -1, 0}, pos = {-1.185, -1.728, 0.878}},
    },

    CanopyGeometry = {
        azimuth = {-145.0, 145.0},
        elevation = {-30.0, 60.0},
    },

    Failures = {
        { id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
    },

    HumanRadio = {
		frequency = 127.5,
		editable = true,
		minFrequency = 118.000,
		maxFrequency = 137.000,
		modulation = MODULATION_AM
	},

    Guns = {
        gun_mount("M_61", { count = 0 },{muzzle_pos = {5.00000, 0.250000, 0.000000}})
    },

    Pylons = {},
    
    Tasks = {
        aircraft_task(Transport),
    },	
    DefaultTask = aircraft_task(Transport),

    --------------------------------------------------------------------------------
    -- DAMAGE & COLLISION
    --------------------------------------------------------------------------------
    Damage = {
        [0]  = {critical_damage = 5,  args = {146}}, --NOSE_CENTER
        [1]  = {critical_damage = 3,  args = {296}}, --NOSE_LEFT_SIDE
        [2]  = {critical_damage = 3,  args = {297}}, --NOSE_RIGHT_SIDE
        [3]  = {critical_damage = 8,  args = {65}},  --COCKPIT
        [4]  = {critical_damage = 2,  args = {298}}, --CABIN_LEFT
        [5]  = {critical_damage = 2,  args = {301}}, --CABIN_RIGHT
        [7]  = {critical_damage = 2,  args = {249}}, --GUN
        [8]  = {critical_damage = 3,  args = {265}}, --FRONT_GEAR
        [9]  = {critical_damage = 3,  args = {154}}, --FUSELAGE_L
        [10] = {critical_damage = 3,  args = {153}}, --FUSELAGE_R
        [11] = {critical_damage = 1,  args = {167}}, --ENGINE_L
        [12] = {critical_damage = 1,  args = {161}}, --ENGINE_R
        [13] = {critical_damage = 2,  args = {169}}, --MTG_L_BOTTOM
        [14] = {critical_damage = 2,  args = {163}}, --MTG_R_BOTTOM
        [15] = {critical_damage = 2,  args = {267}}, --LEFT_GEAR_BOX
        [16] = {critical_damage = 2,  args = {266}}, --RIGHT_GEAR_BOX
        [17] = {critical_damage = 2,  args = {168}}, --ENGINE_L_OUT
        [18] = {critical_damage = 2,  args = {162}}, --ENGINE_R_OUT
        [20] = {critical_damage = 2,  args = {183}}, --AIR_BRAKE_R
        [23] = {critical_damage = 5,  args = {223}}, --WING_L_OUT
        [24] = {critical_damage = 5,  args = {213}}, --WING_R_OUT
        [25] = {critical_damage = 2,  args = {226}}, --ELERON_L
        [26] = {critical_damage = 2,  args = {216}}, --ELERON_R
        [29] = {critical_damage = 5,  args = {224}, deps_cells = {23, 25}}, --WING_L_CENTER
        [30] = {critical_damage = 5,  args = {214}, deps_cells = {24, 26}}, --WING_R_CENTER
        [35] = {critical_damage = 6,  args = {225}, deps_cells = {23, 29, 25, 37}}, --WING_L_IN
        [36] = {critical_damage = 6,  args = {215}, deps_cells = {24, 30, 26, 38}}, --WING_R_IN
        [37] = {critical_damage = 2,  args = {228}}, --FLAP_L_IN
        [38] = {critical_damage = 2,  args = {218}}, --FLAP_R_IN
        [39] = {critical_damage = 2,  args = {244}, deps_cells = {53}}, --FIN_L_TOP
        [40] = {critical_damage = 2,  args = {241}, deps_cells = {54}}, --FIN_R_TOP 
        [43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}}, --FIN_L_BOTTOM
        [44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}}, --FIN_R_BOTTOM 
        [51] = {critical_damage = 2,  args = {240}}, --ELEVATOR_L_IN
        [52] = {critical_damage = 2,  args = {238}}, --ELEVATOR_R_IN
        [53] = {critical_damage = 2,  args = {248}}, --RUDDER_L
        [54] = {critical_damage = 2,  args = {247}}, --RUDDER_R
        [56] = {critical_damage = 2,  args = {158}}, --TAIL_LEFT
        [57] = {critical_damage = 2,  args = {157}}, --TAIL_RIGHT
        [59] = {critical_damage = 3,  args = {148}}, --NOSE_BOTTOM
        [61] = {critical_damage = 2,  args = {147}}, --FUEL_TANK_F
        [82] = {critical_damage = 2,  args = {152}}, --FUSELAGE_BOTTOM
        [105] = {critical_damage = 2, args = {603}}, --ENGINE_3
        [106] = {critical_damage = 2, args = {604}}, --ENGINE_4
    },
    
    DamageParts = {  
        [1] = "c5_galaxy-oblomok-wing-r",
        [2] = "c5_galaxy-oblomok-wing-l",
    },

    --------------------------------------------------------------------------------
    -- LIGHTS
    --------------------------------------------------------------------------------
	--[[
		--------------------------------------------------------------
		------------------  HawaiianRyan overhaul  -------------------
		--------------------------------------------------------------
		DCS World\Scripts\Aircrafts\_Common\Lights.lua
		
		WOLALIGHT_STROBES          = 1		-- White strobe anti-collision lights.
		WOLALIGHT_SPOTS            = 2		-- Take-off and landing high power headlights.
		WOLALIGHT_LANDING_LIGHTS   = 2		-- Take-off and landing high power headlights.
		WOLALIGHT_NAVLIGHTS        = 3		-- P-Z colored navigation (position) wingtip lights..
		WOLALIGHT_FORMATION_LIGHTS = 4		-- Formation / Logo lights.
		WOLALIGHT_TIPS_LIGHTS      = 5		-- Helicopter-specific: rotor anti-collision tips lights.
		WOLALIGHT_TAXI_LIGHTS      = 6		-- Taxi headlights.
		WOLALIGHT_BEACONS          = 7		-- Rotary anti-collision lights.
		WOLALIGHT_CABIN_BOARDING   = 8		-- Cabin incandescence illumination.
		WOLALIGHT_CABIN_NIGHT      = 9		-- Cabin night time (UV) illumination.
		WOLALIGHT_REFUEL_LIGHTS    = 10		-- Refuel apparatus illumination.
		WOLALIGHT_PROJECTORS       = 11		-- Search lights, direction-controlled.
		WOLALIGHT_AUX_LIGHTS       = 12		-- White anti-collision strobes & others
		WOLALIGHT_IR_FORMATION     = 13		-- IR formation strips. Currently not implemented due to engine NVG limitations.
		WOLALIGHT_CABIN_WORK	   = 14		-- Flight instrument illumination of pilots
	]]
    lights_data = {
		typename = "collection", lights = {
	
			[WOLALIGHT_NAVLIGHTS] = {
				typename = "collection",
				lights = {
					[1] = {
						typename = "Collection",
						lights = {
							{typename = "argumentlight",argument = 190}, -- Left Position(red)
							{typename = "argumentlight",argument = 191}, -- Right Position(green)
							{typename = "argumentlight",argument = 192}, -- Tail Position (white)
						
							-- This is the aft nav light, but it's in the wrong place.
							{
								typename = "Spot", position = { -40.003651, 3.245312, 0 },
								direction = {azimuth = math.rad(180.0), elevation = math.rad(0.0)},
								proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(140.0), angle_min = math.rad(0.0),
							},
							{
								typename = "Omni", position = { -40.003651, 3.245312, 0 },
								proto = lamp_prototypes.ANO_3_Bl, movable = true,
							},
							
							-- This is the aft nav light placed correctly.
							{
								typename = "Spot", position = { -44.9, 14.45, 0 },
								direction = {azimuth = math.rad(180.0), elevation = math.rad(0.0)},
								proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(140.0), angle_min = math.rad(0.0),
							},
							{
								typename = "Omni", position = { -44.9, 14.45, 0 },
								proto = lamp_prototypes.ANO_3_Bl, movable = true,
							},
							
							{
								typename = "Spot", position = { -9.374928, 0.291265, -33.558388 },
								direction = {azimuth = math.rad(-55.0), elevation = math.rad(0.0)},
								proto = lamp_prototypes.BANO_8M_red, angle_max = math.rad(110.0), angle_min = math.rad(0.0),
							},
							
							{
								typename = "Spot", position = { -9.272314, 0.272808, 33.553429 },
								direction = {azimuth = math.rad(55.0), elevation = math.rad(0.0)},
								proto = lamp_prototypes.BANO_8M_green, angle_max = math.rad(110.0), angle_min = math.rad(0.0),
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
						
							-- Main gear nose landing lights.
							{
								typename = "Spot", position = { 19.930893, -3.569729, 0.000 },
								direction = {elevation = math.rad(4.0)}, argument = 51,
								proto = lamp_prototypes.LFS_P_27_1000, angle_max = math.rad(25.0), angle_min = math.rad(0),
								cool_down_t = 0.8, exposure = {{0, 0.9, 1.0}}, movable = true,
							},
							
							-- Main gear port landing lights.
							{
								typename = "Spot",  position = { 0.278005, -1.552321, -4.278831 },
								direction = {azimuth = math.rad(-8.0), elevation = math.rad(4.0)},
								proto = lamp_prototypes.LFS_P_27_1000, angle_max = math.rad(21.0), angle_min = math.rad(0),
								cool_down_t = 0.8, exposure = {{0, 0.9, 1.0}}, movable = true,
							},
							
							-- Main gear starboard landing lights.
							{
								typename = "Spot",  position = { 0.278107, -1.552395, 4.273913 },
								direction = {azimuth = math.rad(8.0), elevation = math.rad(4.0)},
								proto = lamp_prototypes.LFS_P_27_1000, angle_max = math.rad(21.0), angle_min = math.rad(0),
								cool_down_t = 0.8, exposure = {{0, 0.9, 1.0}}, movable = true,
							},
							
							-- Wingtip landing lights. Source: https://www.youtube.com/watch?v=JIMs1kfmcB8  and  https://www.youtube.com/watch?v=cHts7GFdOek
							{						
								typename = "Spot",  position = { -7.311604, 0.579670, -31.941507 },
								direction = {azimuth = math.rad(0.0), elevation = math.rad(8.0)},
								proto = lamp_prototypes.LFS_P_27_1000, angle_max = math.rad(21.0), angle_min = math.rad(0),
								cool_down_t = 0.8, exposure = {{0, 0.9, 1.0}}, movable = true,
							},
							{						
								typename = "Spot",  position = { -7.405598, 0.591694, 31.490250 },
								direction = {azimuth = math.rad(0.0), elevation = math.rad(8.0)},
								proto = lamp_prototypes.LFS_P_27_1000, angle_max = math.rad(21.0), angle_min = math.rad(0),
								cool_down_t = 0.8, exposure = {{0, 0.9, 1.0}}, movable = true,
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
							
							-- Source: https://www.westover.afrc.af.mil/News/Article-Display/Article/562693/furloughs-hurt-workers-local-economy-westover-mission/
							
							-- Main gear nose taxi lights.
							{
								typename = "Spot",  position = { 19.930893, -3.569729, 0.000 },
								direction = {azimuth = math.rad(0.0), elevation = math.rad(0.0)}, argument = 51,
								proto = lamp_prototypes.LFS_R_27_450, angle_max = math.rad(33.3), angle_min = math.rad(0.0),
								cool_down_t = 0.5, exposure = {{0, 0.9, 1.0}}, movable = true,
							},
							{
								typename = "Omni", position = { 19.930893, -3.569729, 0.000 },
								proto = lamp_prototypes.LFS_R_27_450, cool_down_t = 0.5, range = 8.0, movable = true,
							},
							
							-- Main gear port taxi lights.
							{
								typename = "Spot",  position = { 0.278005, -1.552321, -4.278831 },
								direction = {azimuth = math.rad(-15.0), elevation = math.rad(0.0)},
								proto = lamp_prototypes.LFS_R_27_450, angle_max = math.rad(30.0), angle_min = math.rad(0.0),
								cool_down_t = 0.5, exposure = {{0, 0.9, 1.0}}, movable = true,
							},
							{
								typename = "Omni", position = { 0.278005, -1.552321, -4.278831 },
								proto = lamp_prototypes.LFS_R_27_450, cool_down_t = 0.5, range = 8.0, movable = true,
							},
							
							-- Main gear starboard taxi lights.
							{
								typename = "Spot",  position = { 0.278107, -1.552395, 4.273913 },
								direction = {azimuth = math.rad(15.0), elevation = math.rad(0.0)},
								proto = lamp_prototypes.LFS_R_27_450, angle_max = math.rad(30.0), angle_min = math.rad(0),
								cool_down_t = 0.5, exposure = {{0, 0.9, 1.0}}, movable = true,
							},
							{
								typename = "Omni", position = { 0.278107, -1.552395, 4.273913 },
								proto = lamp_prototypes.LFS_R_27_450, cool_down_t = 0.5, range = 8.0, movable = true,
							},
						},
					},
				},
			},
			
			[WOLALIGHT_BEACONS] = {
				-- Source: https://www.youtube.com/watch?v=a-SZ3k188eI
				typename = "collection",
				lights = {
					[1] = {
						typename = "Collection",
						lights = {
							{
								typename = "natostrobelight", position = { 16.3, 5.1, 0.0 },
								proto = lamp_prototypes.SMI_2KM, period = 1.9, phase_shift = 0.0,
							},
							{
								typename = "natostrobelight", position = { 5.5, -4.6, 0.0 },
								proto = lamp_prototypes.SMI_2KM, period = 1.9, phase_shift = 0.5,
							},
							{
								typename = "natostrobelight", position = { -39.0, 15.4, 0.0 },
								proto = lamp_prototypes.SMI_2KM, period = 1.9, phase_shift = 0.5,
							},
						},
					},
				},
			},
			
			[WOLALIGHT_STROBES] = {
				-- For moving around on/near the runway (including airborne).
				
				-- Source: https://www.youtube.com/watch?v=a-SZ3k188eI
				typename = "collection",
				lights = {
					[1] = {
						typename = "Collection",
						lights = {
							-- C-5 Galaxy does not use red beacon strobes near the runway unless there is weight on wheels (at least I cannot find evidence that it does).
							
							{
								typename = "Spot", position = { 16.3, 5.1, 0.0},
								controller = "VariablePatternStrobe", mode = "2 Flash Long",
								proto = lamp_prototypes.MPS_1, intensity_max = 750.0, period = 0.250, phase_shift = 0.25,
								direction = {azimuth = math.rad(0.0), elevation = math.rad(-90)}, angle_max = math.rad(180.0), angle_min = math.rad(0),
							},
							{
								typename = "Spot", position = { 5.5, -4.6, 0.0},
								controller = "VariablePatternStrobe", mode = "2 Flash Long",
								proto = lamp_prototypes.MPS_1, intensity_max = 750.0, period = 0.250, phase_shift = 0.25,
								direction = {azimuth = math.rad(0.0), elevation = math.rad(90)}, angle_max = math.rad(180.0), angle_min = math.rad(0),
							},
							
							-- These are unrealistic, but you can actually see these strobes in DCS unlike the realistic ones above.
							{
								typename = "Spot", position = { -9.374928, 0.291265, -33.558388 },
								controller = "VariablePatternStrobe", mode = "2 Flash Long",
								proto = lamp_prototypes.MPS_1, intensity_max = 750.0, period = 0.250, phase_shift = 0.25,
								direction = {azimuth = math.rad(-90.0), elevation = math.rad(0)}, angle_max = math.rad(180.0), angle_min = math.rad(0),
							},
							{
								typename = "Spot", position = { -9.272314, 0.272808, 33.553429 },
								controller = "VariablePatternStrobe", mode = "2 Flash Long",
								proto = lamp_prototypes.MPS_1, intensity_max = 750.0, period = 0.250, phase_shift = 0.25,
								direction = {azimuth = math.rad(90.0), elevation = math.rad(0)}, angle_max = math.rad(180.0), angle_min = math.rad(0),
							},
							{
								typename = "Spot", position = { -44.9, 14.45, 0 },
								controller = "VariablePatternStrobe", mode = "2 Flash Long",
								proto = lamp_prototypes.MPS_1, intensity_max = 750.0, period = 0.250, phase_shift = 0.25,
								direction = {azimuth = math.rad(180.0), elevation = math.rad(0)}, angle_max = math.rad(160.0), angle_min = math.rad(0),
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
								typename = "Spot", position = { -40.003651, 3.245312, 0 },
								direction = {azimuth = math.rad(180.0), elevation = math.rad(0.0)},
								proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(140.0), angle_min = math.rad(0.0),
							},
							{
								typename = "Omni", position = { -40.003651, 3.245312, 0 },
								proto = lamp_prototypes.ANO_3_Bl, movable = true,
							},
							
							-- This is the aft nav light placed correctly.
							{
								typename = "Spot", position = { -44.9, 14.45, 0 },
								direction = {azimuth = math.rad(180.0), elevation = math.rad(0.0)},
								proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(140.0), angle_min = math.rad(0.0),
							},
							{
								typename = "Omni", position = { -44.9, 14.45, 0 },
								proto = lamp_prototypes.ANO_3_Bl, movable = true,
							},
							
							{
								typename = "Spot", position = { -9.374928, 0.291265, -33.558388 },
								direction = {azimuth = math.rad(-55.0), elevation = math.rad(0.0)},
								proto = lamp_prototypes.BANO_8M_red, angle_max = math.rad(110.0), angle_min = math.rad(0.0),
							},
							
							{
								typename = "Spot", position = { -9.272314, 0.272808, 33.553429 },
								direction = {azimuth = math.rad(55.0), elevation = math.rad(0.0)},
								proto = lamp_prototypes.BANO_8M_green, angle_max = math.rad(110.0), angle_min = math.rad(0.0),
							},
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
							{typename = "argumentlight",argument = 190},
							{typename = "argumentlight",argument = 191},
							{typename = "argumentlight",argument = 192},
						},
					},
				},
			},	
		},
	},
}

add_aircraft(C5_Galaxy)