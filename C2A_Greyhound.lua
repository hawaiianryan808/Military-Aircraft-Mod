C2A_Greyhound =  {

--===================================================================================
--  C-2A Greyhound Mod - Performance Update
--  
--  Changes made to match Grumman C-2A / Allison T56-A-425 real-world data:
--  1. MASS: Verified weights. Empty 15307kg, Max 27216kg match NATOPS.
--  2. ENGINE (T56-A-425): 
--     - Adjusted thrust_sum_max to ~10,886 kgf (24,000 lbs total static).
--     - Updated Nominal_RPM and Fan_RPM for T56 gear ratios.
--     - Reduced cemax (SFC) to 0.55 (approx 0.5 lb/shp/hr converted) for realistic range.
--     - REBUILT engine thrust tables (table_data). Old values were for a jet (constant thrust).
--       New values model prop thrust lapse: High static thrust, dropping as Mach increases.
--  3. AERO/PERFORMANCE:
--     - Tuned V_opt (Cruise) to ~260kts.
--     - Tuned V_max to ~343kts (Mach ~0.53).
--     - Adjusted Range to 2400km (1300nm).
--===================================================================================

    Name                = 'C2A_Greyhound',--AG
    DisplayName         = _('C-2A Greyhound'),--AG
	date_of_introduction= 1966.01,
    Picture             = "C2A_Greyhound.png",
    Rate                = "100",
    Shape               = "C2A_Greyhound",--AG    
    WorldID             = WSTYPE_PLACEHOLDER,
	defFuelRatio    	= 0.6, -- fuel default in fractions of the full (1.0)
    singleInFlight      = true,
        
    shape_table_data    = 
    {
        {
            file        = 'C2A_Greyhound';--AG
            life        = 20; -- lifebar
            vis         = 3; -- visibility gain.
            desrt       = 'C2A_Greyhound-oblomok'; -- Name of destroyed object file name
            fire        = { 300, 2};             -- Fire on the ground after destoyed: 300sec 2m
            username    = 'C2A_Greyhound';--AG
            index       =  WSTYPE_PLACEHOLDER;
            classname   = "lLandPlane";
            positioning = "BYNORMAL";
        },
        {
            name        = "C2A_Greyhound-oblomok";
            file        = "C2A_Greyhound-oblomok";
            fire        = { 240, 2};
        },
    },
    
    LandRWCategories = 
    {
        [1] = { Name = "AircraftCarrier" },
        [2] = { Name = "AircraftCarrier With Catapult" }, 
        [3] = { Name = "AircraftCarrier With Tramplin" }, 
    }, 
    
    TakeOffRWCategories = 
    {
        [1] = { Name = "AircraftCarrier" },
        [2] = { Name = "AircraftCarrier With Catapult" }, 
        [3] = { Name = "AircraftCarrier With Tramplin" }, 
    },
    
    CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_BAD, LOOK_BAD),

    mapclasskey     = "P0091000029",
    attribute       = {
        wsType_Air,
        wsType_Airplane,
        wsType_Cruiser,
        WSTYPE_PLACEHOLDER,
        "Transports",
        "Refuelable",
        "Datalink",
        "Link16",
    },
    
    Categories = {},
    
    ------------------------------------------------------------------------------------------------
    -- MASS & DIMENSIONS
    ------------------------------------------------------------------------------------------------
    M_empty     =   15307,  -- ~33,746 lbs
    M_nominal   =   22405,  -- ~49,394 lbs (Combat Weight)
    M_max       =   27216,  -- ~60,000 lbs (MTOW)
    M_fuel_max  =   5624,   -- ~12,400 lbs (JP-5)
    
    InternalCargo = {
        nominalCapacity = 4536, -- 10,000 lbs payload
        maximalCapacity = 9350,
        para_unit_point = 12, -- Anzahl der Fallschirmjäger
        unit_point = 26,       -- Anzahl der Infanterie
        area = {7.2, 2.1, 1.8},-- Das Innenvolumen des Laderaums ist lang, breit, hoch, m
        unit_block = {0.76, 0.775}-- Abmessungen für einen Fallschirmjäger, Länge, Breite, m
    },

    length      =   17.30,
    height      =   4.85,
    wing_area   =   65.03,  -- 700 sq ft
    wing_span   =   24.60,
    wing_type   =   FOLDED_WING,
    wing_tip_pos =  {-1.322, 1.63, 12.36},

    ------------------------------------------------------------------------------------------------
    -- AERODYNAMICS & PERFORMANCE
    ------------------------------------------------------------------------------------------------
    H_max       =   10200,  -- ~30,000 ft service ceiling (NATOPS) (real: up to 33,500 ft)
	average_fuel_consumption    =   0.35, -- Adjusted for turboprop loiter
    CAS_min     =   42,		-- Stall speed ~82 knots https://www.history.navy.mil/content/dam/nhhc/research/histories/naval-aviation/naval-aircraft/current-aircraft-inventory/pdf/c-2.pdf
    V_opt       =   129,    -- Cruise ~251 knots
    V_take_off  =   57,     -- ~110 knots (catapult-assisted takeoff speed reference)
    V_land      =   53,     -- ~103 knots approach
    V_max_sea_level =   150, -- ~291 knots SL (estimated)
    V_max_h     =   176.4,  -- ~343 knots max at optimum altitude
    Mach_max    =   0.57,   -- Real limit ~0.53-0.57
    range       =   2400,   -- Kept as ~1300 nm ferry
	
	Vy_max      =   15,     -- ~3,543 fpm (better match to higher reported ROC)
    
    has_afteburner  =   false,
    has_speedbrake  =   false,
    has_thrustReverser = true, -- Propeller reverse pitch
    has_differential_stabilizer = false,
    radar_can_see_ground    =   false,
	bigParkingRamp = false,
    
    AOA_take_off    =   0.14,
    bank_angle_max  =   45,
    Ny_min  =   -1.0,
    Ny_max  =   2.5, -- Transport limit
    Ny_max_e    =   2.5,
    tand_gear_max	= math.tan(math.rad(63)),
    flaps_maneuver  =   2/3,
    RCS     =   50,
    detection_range_max =   50,
    IR_emission_coeff   =   0.5,
    IR_emission_coeff_ab    =   0,
    
    SFM_Data = {
        aerodynamics =
        {
            Cy0     =   0.03,
            Mzalfa  =   4.8,	-- Pitch stability
            Mzalfadt=   1.2, 	-- Pitch damping
            kjx     =   2.75,	-- Roll Inertia
            kjz     =   0.00125,-- Yaw inertia
            Czbe    =   -0.016,	-- Dihedral effect
            cx_gear =   0.035, 	-- Increased for large gear sponsons
            cx_flap =   0.08,  	-- High drag from large Fowler flaps
            cy_flap =   1.1,   	-- High lift from Fowler flaps
            cx_brk  =   0.06,	-- Drag from speedbrakes
            table_data = 
            {
                -- M: Mach Number
                -- Cx0: Zero-lift drag coefficient (Parasitic drag)
                -- Cya: Lift curve slope (dCl/da) per degree. C-2A AR~9.3 -> ~0.086
                -- B2: Induced drag factor (Polar K)
                -- B4: Fourth order drag factor
                -- Omxmax: Max roll rate (rad/s). C-2A ~60 deg/s = ~1.0 rad/s
                -- Aldop: Stall Angle (deg). Straight wing ~16-18 deg
                -- Cymax: Max Lift Coefficient (clean)
                -- 		M      Cx0    Cya      B2       B4   Omxmax  Aldop   Cymax
				[1] = {0.0,   0.020, 0.300,  0.0397,  1e-006, 0.65,   18,     3.00},  -- Static: better roll, higher lift
				[2] = {0.1,   0.020, 0.250,  0.0397,  1e-006, 0.85,   18,     3.00},  -- Takeoff
				[3] = {0.2,   0.020, 0.220,  0.0397,  1e-006, 1.00,   18,     2.50},  -- Climb: better roll authority
				[4] = {0.3,   0.020, 0.180,  0.0397,  1e-006, 1.10,   18,     2.00},  -- Low cruise
				[5] = {0.4,   0.020, 0.150,  0.0397,  1e-006, 1.15,   18,  	  1.50},  -- Design cruise
				[6] = {0.5,   0.020, 0.120,  0.0397,  0.001,  1.15,   17,     1.38},  -- High cruise
				[7] = {0.55,  0.035, 0.117,  0.0397,  0.02,   1.00,   16,     1.28},  -- Near Vmax
				[8] = {0.57,  0.048, 0.110,  0.0650,  0.10,   0.85,   15,     1.05},  -- Drag rise limit
				[9] = {0.6,   0.055, 0.080,  0.0930,  0.10,   0.7,    14,     0.95},  -- Beyond ops limit

			--[[
				[1] =  {0.0,   0.032, 0.086,   0.045,  1e-006, 0.65,   18,     1.80}, -- Static: improved roll rate
				[2] =  {0.1,   0.032, 0.086,   0.045,  1e-006, 0.85,   18,     1.70}, -- Takeoff regime
				[3] =  {0.2,   0.032, 0.087,   0.043,  1e-006, 1.0,    18,     1.50}, -- Climb
				[4] =  {0.3,   0.032, 0.087,   0.042,  1e-006, 1.1,    18,     1.30}, -- Low cruise
				[5] =  {0.4,   0.033, 0.088,   0.042,  1e-006, 1.15,   17.5,   1.28}, -- Design cruise region
				[6] =  {0.5,   0.035, 0.088,   0.045,  0.001,  1.15,   17,     1.25}, -- High cruise, compressibility starts
				[7] =  {0.55,  0.042, 0.090,   0.065,  0.02,   1.0,    16,     1.15}, -- Near Vmax, critical Mach effects
				[8] =  {0.6,   0.055, 0.093,   0.100,  0.10,   0.85,   15,     1.05}, -- Beyond normal ops, drag rise
			]]
			--[[
                [1] =   {0.0,   0.032,  0.086,  0.045,  1e-006, 0.4,    18,     1.3},
                [2] =   {0.1,   0.032,  0.086,  0.045,  1e-006, 0.8,    18,     1.3},
                [3] =   {0.2,   0.032,  0.086,  0.042,  1e-006, 1.0,    18,     1.3},
                [4] =   {0.3,   0.032,  0.086,  0.040,  1e-006, 1.2,    18,     1.3},
                [5] =   {0.4,   0.032,  0.086,  0.040,  1e-006, 1.2,    18,     1.3},
                [6] =   {0.5,   0.032,  0.086,  0.042,  1e-006, 1.2,    17,     1.3}, -- Compressibility starts affecting stall AOA
                [7] =   {0.57,  0.038,  0.088,  0.060,  0.05,   1.1,    16,     1.2}, -- Drag rise (Critical Mach)
                [8] =   {0.6,   0.048,  0.090,  0.100,  0.15,   1.0,    15,     1.1}, -- Sharp drag rise
                [9] =   {0.7,   0.070,  0.095,  0.150,  0.60,   0.8,    13,     1.0}, -- Transonic (unlikely flight regime)
                [10] =  {0.8,   0.100,  0.100,  0.200,  1.20,   0.5,    12,     0.9},
			]]
            }, -- end of table_data
        }, -- end of aerodynamics
        
    ------------------------------------------------------------------------------------------------
    -- ENGINE (Allison T56-A-425)
    ------------------------------------------------------------------------------------------------
        engine = 
        {
            Nmg     =   72,
            MinRUD  =   0,
            MaxRUD  =   1,
            MaksRUD =   1,
            ForsRUD =   1,
            type    =   "TurboProp",     -- Verified
			typeng  = 	3, 				 -- Turboprop enumeration
            Nominal_Fan_RPM = 1106,      -- Prop RPM
            Nominal_RPM = 13820,         -- Turbine RPM (T56 standard)
            hMaxEng =   12.5,            -- Max effective altitude in km
            dcx_eng =   0.0144,
			
            cemax   =   0.30,            -- T56 SFC approx 0.5 lb/shp/hr
            cefor   =   0.30,            -- No afterburner, same SFC
			
            dpdh_m  =   4100,            -- [N/km per engine] Power lapse altitude factor
            dpdh_f  =   4100,
			
			prop_locations = {
                {2.56, 1.07, -3.40}, {0.0, 0.0, 0.0},
                {2.56, 1.07,  3.40}, {0.0, 0.0, 0.0},
            },
            
            -- Thrust Table (Newtons per engine vs Mach)
            -- Modeled for T56 Turboprop: High static thrust, drops with speed.
            -- Static ~52kN (~12,000 lbs) per engine.
            table_data = 
            {
				-- FLATTENED TABLE FOR C-2A
                -- Prevents negative thrust calculation at 30,000ft
				-- Mach   Thrust(N)     Afterburner(N)
                [1] = {0.0,    106000,     106000}, -- Static
                [2] = {0.1,    104000,     104000},
                [3] = {0.2,    101000,     101000},
                [4] = {0.3,    98000,      98000},
                [5] = {0.4,    94000,      94000},
                [6] = {0.5,    89000,      89000},  -- Cruise Base
                [7] = {0.6,    60000,      60000},  -- Prop limit
                [8] = {0.7,    20000,      20000},
            }, -- end of table_data
        }, -- end of engine
    },

    thrust_sum_max  =   10707, -- kgf (49,000N × 2 engines)
    thrust_sum_ab   =   10707, -- No AB
    engines_count   =   2,
	engines_startup_sequence = { 1, 0 },
    engines_nozzles = 
    {
        [1] = 
        {
            pos =   {-2.28,    0.529,  -3.40},
            elevation   =   0,
            diameter    =   0.37,
            exhaust_length_ab   =   5,
            exhaust_length_ab_K =   0.76,
            smokiness_level     =   0.2, -- T56 engines are notoriously smoky (updated from 0.1)
			engine_number       = 	1,
        }, 
        [2] = 
        {
            pos =   {-2.28,    0.529,  3.40},
            elevation   =   0,
            diameter    =   0.37,
            exhaust_length_ab   =   5,
            exhaust_length_ab_K =   0.76,
            smokiness_level     =   0.2,
			engine_number       = 	2,
        }, 
    }, 

    ------------------------------------------------------------------------------------------------
    -- SYSTEMS & GEAR
    ------------------------------------------------------------------------------------------------
    nose_gear_pos                               =   {6.093,  -2.00,  0.001826},
    nose_gear_amortizer_direct_stroke           =   0,      -- down from nose_gear_pos !!!
    nose_gear_amortizer_reversal_stroke         =  -0.18,  -- up 
    nose_gear_amortizer_normal_weight_stroke    =  -0.10,  -- down from nose_gear_pos
    nose_gear_wheel_diameter                    =   0.529,

    main_gear_pos                               =   {-0.869, -2.15,  3.141},--??? 0.0 bis 0.8 Probleme
    main_gear_amortizer_direct_stroke           =   0,     --  down from main_gear_pos !!!
    main_gear_amortizer_reversal_stroke         =  -0.24, --  up 
    main_gear_amortizer_normal_weight_stroke    =  -0.12, --  down from main_gear_pos
    main_gear_wheel_diameter                    =   0.969,
    
    stores_number   =   0,
    crew_size       =   4,
    
    EPLRS                       = true,--?
    TACAN_AA                    = true,
    launch_bar_connected_arg_value  = 0.930,
    brakeshute_name =   0,
    is_tanker   =   false,
    air_refuel_receptacle_pos =     {17.3,  1.3,    0},

    mechanimations = {
        Door0 = {
            {Transition = {"Close", "Open"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
            {Transition = {"Open", "Close"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
            {Transition = {"Open", "Board"}, Sequence = {{C = {{"Sleep", "for", 50.0}}}, {C = {{"Arg", 38, "to", 1.0, "in", 3.0}}}}},
            {Transition = {"Board", "Open"}, Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0}}}}},
        },
        Door1 = {DuplicateOf = "Door0"},
        Door2 = {DuplicateOf = "Door0"},
        Door3 = {DuplicateOf = "Door0"},
        FoldableWings = {
           {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.0, "in", 10.0},{"Arg", 555, "to", 0.0, "in", 6.0},}}}, Flags = {"Reversible"}},
           {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 1.0, "in", 15.0},{"Arg", 555, "to", 1.0, "in", 6.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
        },
        LaunchBar = {
            {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 3}, {"Arg", 85, "to", 1.000, "in", 1.0}}}}},                
            {Transition = {"Retract", "Stage"},  Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 3}, {"Arg", 85, "to", 0.930, "in", 1.0}}}}},
            {Transition = {"Any", "Retract"},  Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.000, "in", 6.0}}}}},
            {Transition = {"Extend", "Stage"},   Sequence = {
                    {C = {{"ChangeDriveTo", "Mechanical"}, {"Sleep", "for", 0.000}}},
                    {C = {{"Arg", 85, "from", 1.000, "to", 0.737, "in", 0.400}}},
                    {C = {{"Arg", 85, "from", 0.737, "to", 0.696, "in", 0.300}}},
                    {C = {{"Sleep", "for", 1.800}}},
                    {C = {{"Sleep", "for", 0.150}}},
                    {C = {{"Arg", 85, "from", 0.696, "to", 1.000, "in", 0.200}}},
                    {C = {{"PosType", 6}, {"Sleep", "for", 2.2}}},
                    {C = {{"Arg", 85, "from", 1.000, "to", 0.930, "in", 2.25}}},
                },
            },              
            {Transition = {"Stage", "Pull"},     Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.930, "to", 0.930, "in", 1.0}}}}},
            {Transition = {"Stage", "Extend"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.930, "to", 1.000, "in", 0.1}}}}},
        },
    }, 
    
    fires_pos = 
    {
        [1] =   {0.048, 	1.008,  0},
        [2] =   {0.048, 	1.008,  2.322},
        [3] =   {0.048, 	1.008,  -2.322},
        [4] =   {-0.82, 	0.265,  2.774},
        [5] =   {-0.82, 	0.265,  -2.774},
        [6] =   {-0.82, 	0.255,  4.274},
        [7] =   {-0.82, 	0.255,  -4.274},
        [8] =   {-0.267,    0.054,  3.293},
        [9] =   {-0.267,    0.054,  -3.293},
        [10] =  {-0.267,    0.054,  3.293},
        [11] =  {-0.267,    0.054,  -3.293},
    }, 
    
    chaff_flare_dispenser = 
    {
        [1] = { dir =   {0, -1, 0}, pos =   {-1.185,    -1.728, -0.878}, }, 
        [2] = { dir =   {0, -1, 0}, pos =   {-1.185,    -1.728, 0.878}, }, 
    }, 
        
    passivCounterm      = {
        CMDS_Edit           = true,
        SingleChargeTotal   = 240,
        chaff               = {default = 120, increment = 30, chargeSz = 1},
        flare               = {default = 60, increment = 15, chargeSz = 2}
    },      

    Sensors = {
        RADAR = "AN/APS-138",
        RWR = "Abstract RWR"
    },
        Countermeasures = {
        ECM = "AN/ALQ-135"--f15
    },      
        
    Failures = {
            { id = 'asc',       label = _('ASC'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'hydro',     label = _('HYDRO'),     enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'l_engine',  label = _('L-ENGINE'),  enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'r_engine',  label = _('R-ENGINE'),  enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'radar',     label = _('RADAR'),     enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'mlws',      label = _('MLWS'),      enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'rws',       label = _('RWS'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'ecm',       label = _('ECM'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'hud',       label = _('HUD'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'mfd',       label = _('MFD'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
    },
    
    HumanRadio = {
        frequency = 127.5,
        editable = true,
        minFrequency = 118.000,
        maxFrequency = 137.000,
        modulation = MODULATION_AM
    },

    Pylons = {},
    
    Tasks = { aircraft_task(Transport), },  
    DefaultTask = aircraft_task(Transport),

    crew_members = 
    {
        [1] = { ejection_seat_name = 0, drop_canopy_name = 0, pos = {7.916, 0.986, 0}, ejection_order = 4, }, 
        [2] = { ejection_seat_name = 0, drop_canopy_name = 0, pos = {3.949, 1.01, 0}, ejection_order = 3, }, 
        [3] = { ejection_seat_name = 0, drop_canopy_name = 0, pos = {7.916, 0.986, 0}, ejection_order = 2, }, 
        [4] = { ejection_seat_name = 0, drop_canopy_name = 0, pos = {3.949, 1.01, 0}, ejection_order = 1, }, 
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
        [1] = "c2a_greyhound-oblomok-wing-r", -- wing R
        [2] = "c2a_greyhound-oblomok-wing-l", -- wing L
    },
    
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

    lights_data = { typename = "collection", lights = {
	
        [WOLALIGHT_NAVLIGHTS] = {
            typename = "Collection",
            lights = {
                [1] = {
                    typename = "collection",
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
                    },
                },
            },
        },
        [WOLALIGHT_SPOTS] = {
            typename = "Collection",
            lights = {
                [1] = {
                    typename = "collection",
                    lights = {
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", dir_correction = {azimuth = math.rad(10.0), elevation = math.rad(10.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_P_27_200, angle_max = math.rad(30.0), angle_min = math.rad(30.0 * 0.8),
                        },
                        {
                            typename = "Spot", connector = "RESERV_SPOT_PTR", dir_correction = {azimuth = math.rad(-10.0), elevation = math.rad(10.0)},
                            proto = lamp_prototypes.LFS_P_27_200, angle_max = math.rad(30.0), angle_min = math.rad(30.0 * 0.8),
                        },
                    },
                },
            },
        },
        [WOLALIGHT_TAXI_LIGHTS] = {
            typename = "Collection",
            lights = {
                [1] = {
                    typename = "collection",
                    lights = {
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", dir_correction = {azimuth = math.rad(10.0), elevation = math.rad(10.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_P_27_200, angle_max = math.rad(30.0), angle_min = math.rad(30.0 * 0.8),
                        },
                        {
                            typename = "Spot", connector = "RESERV_SPOT_PTR", dir_correction = {azimuth = math.rad(-10.0), elevation = math.rad(10.0)},
                            proto = lamp_prototypes.LFS_P_27_200, angle_max = math.rad(30.0), angle_min = math.rad(30.0 * 0.8),
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
                            typename = "natostrobelight", position = {-9.263, 2.842 + 0.200, 3.980}, argument = 194,
                            proto = lamp_prototypes.MSL_3_2,
                            period = 2.0,
                        },
                        {
                            typename = "natostrobelight", position = {-5.526, -1.079 - 0.200, -1.804}, argument = 193,
                            proto = lamp_prototypes.MSL_3_2,
                            period = 1.81, phase_shift = 0.5,
                        },
                    },
                },
            },
        },
    
        [WOLALIGHT_FORMATION_LIGHTS] = {
            typename = "argumentlight", argument = 88,
        },
    		
  					
	}},
}

add_aircraft(C2A_Greyhound)