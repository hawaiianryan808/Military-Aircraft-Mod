-- ===================================================================
-- DCS WORLD: NORTHROP B-2 SPIRIT (MOD DEFINITION)
-- ===================================================================
--[[
CONFIGURATION: Northrop B-2 Spirit Block 30
				with 4x General Electric F118-GE-100 turbofans

1. GEOMETRY:
   - Length: 21.0 m (69 ft)
   - Wingspan: 52.4 m (172 ft)
   - Height: 5.18 m (17 ft)
   - Wing Area: 478 m^2 (5,140 sq ft)

2. MASS & BALANCE:
   - Empty Weight: ~71,700 kg (158,000 lb)
   - MTOW: ~170,600 kg (376,000 lb)
   - Max Fuel: ~75,750 kg (167,000 lb)
   - Payload: Up to 23,000 kg (50,000 lb) internally.

3. PROPULSION (4x F118-GE-100):
   - Thrust: ~17,300 lbf (77 kN) per engine.
   - Total Thrust: ~69,200 lbf (308 kN).
   - Non-afterburning.

4. PERFORMANCE:
   - Max Speed: Mach 0.95 (High subsonic).
   - Service Ceiling: 50,000 ft (15,240 m).
   - Range: 6,000 nmi (11,100 km).
   - Stealth: Extremely low RCS and IR signature.
--]]

-- ===================================================================
-- LOADOUT DECLARATIONS
-- ===================================================================

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID    		= "{B2_Mk82*40}",
	Picture			= "mk82.png",
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Bomb, wsType_Bomb_A, 31},
	displayName		= _("B2 Mk-82*40"),
	Weight			= 9640,
	Count			= 40,
	attribute		= {4, 5, 32, 51},
	Elements		= {{
		DrawArgs	= {[1] = {1, 1}, [2] = {2, 1}},
		Position	= {0, 0, 0},
		ShapeName	= "MK-82",
	}},
	settings 		= Get_Combined_GUISettings_Preset("MDRN_B_A_GPLD"),
})

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID    		= "{B2_CBU87*18}",
	Picture			= "CBU.png",
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Bomb, wsType_Bomb_Cluster, 77},
	displayName		= _("B2 CBU87*18"),
	Weight			= 7740,
	Count			= 18,
	attribute		= {4, 5, 38, 77},
	Elements		= {{
		DrawArgs	= {[1] = {1, 1}, [2] = {2, 1}},
		Position	= {0, 0, 0},
		ShapeName	= "CBU-87",
	}},
})

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID    		= "{B2_CBU97*18}",
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Bomb, wsType_Bomb_Cluster, 35},
	Picture			= "CBU.png",
	displayName		= _("B2 CBU-97*18"),
	Weight			= 7506,
	Count			= 18,
	attribute		= {4, 5, 38, 35},
	Elements		= {{
		DrawArgs	= {[1] = {1, 1}, [2] = {2, 1}},
		Position	= {0, 0, 0},
		ShapeName	= "CBU-97",
	}},
})

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID    		= "{B2_GBU-38*40}",
	Picture			= "GBU38.png",
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Bomb, wsType_Bomb_Guided, 89},
	displayName		= _("B2 GBU-38*40"),
	Weight			= 9640,
	Count			= 40,
	attribute		= {4, 5, 36, 86},
	Elements		= {{
		DrawArgs	= {[1] = {1, 1}, [2] = {2, 1}},
		Position	= {0, 0, 0},
		ShapeName	= "GBU-38",
	}},
	settings 		= Get_Combined_GUISettings_Preset("MDRN_B_A_PGM_TWINWELL"),
})

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID    		= "{B2_GBU-28*4}",
	Picture			= "GBU27.png",
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Bomb, wsType_Bomb_Guided, 48},
	displayName		= _("B2 GBU-28*4"),
	Weight			= 8520,
	Count			= 4,
	attribute		= {4, 5, 36, 48},
	Elements		= {{
		DrawArgs	= {[1] = {1, 1}, [2] = {2, 1}},
		Position	= {0, 0, 0},
		ShapeName	= "GBU-28",
	}},
	settings		= Get_Combined_GUISettings_Preset("Paveway_III_HTP"),
})

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID    		= "{B2_GBU-27*4}",
	Picture			= "GBU27.png",
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Bomb, wsType_Bomb_Guided, 43},
	displayName		= _("B2 GBU-27*4"),
	Weight			= 4800,
	Count			= 4,
	attribute		= {4, 5, 36, 43},
	Elements		= {{
		DrawArgs	= {[1] = {1, 1}, [2] = {2, 1}},
		Position	= {0, 0, 0},
		ShapeName	= "GBU-27",
	}},
	settings		= Get_Combined_GUISettings_Preset("Paveway_III_HTP"),
})

declare_loadout({
	category 		= CAT_MISSILES,
	CLSID    		= "{B2_AGM-154C*8}",
	Picture			= "AGM154.png",
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Missile, wsType_AS_Missile, 43},
	displayName		= _("B2 AGM-154C*8"),
	Weight			= 3872,
	Count			= 8,
	attribute		= {4, 4, 8, 132},
	Elements		= {{
		DrawArgs	= {[1] = {1, 1}, [2] = {2, 1}},
		Position	= {0, 0, 0},
		ShapeName	= "agm-154",
	}},
})

local available_payload  = {
	{ CLSID = "{B2_Mk82*40}"		},
	{ CLSID = "{B2_CBU87*18}"		},
	{ CLSID = "{B2_CBU97*18}"		},
	{ CLSID = "{B2_GBU-38*40}"		},
	{ CLSID = "{B2_GBU-28*4}",		Type = 4 }, -- Rotary Launcher
	{ CLSID = "{B2_GBU-27*4}",		Type = 4 }, -- Rotary Launcher
	{ CLSID = "{B2_AGM-154C*8}",	Type = 4 }, -- Rotary Launcher
	{ CLSID = "B-1B_Mk-84*8",		Type = 8 }, -- Rotary Launcher
}

-- ===================================================================
-- AIRCRAFT DEFINITION
-- ===================================================================

B2_Spirit =  {
	Name 					= "B2_Spirit",
	DisplayName				= _("B-2 Spirit"),
	Picture 				= "B2_Spirit.png",
	Rate 					= "40",
	Shape					= "B2_Spirit",
	WorldID					= WSTYPE_PLACEHOLDER,
	date_of_introduction	= 1997.01,
	defFuelRatio    		= 0.8,

	shape_table_data 		= {
		{
			file  	 		= "B2_Spirit",
			life  	 		= 25, 				-- [hitpoints] Robust airframe
			vis   	 		= 3, 				-- [scalar] Visibility gain
			desrt    		= "B2_Spirit-oblomok",
			fire  	 		= {300, 2}, 		-- [sec, m] Fire duration, size
			username		= "B2_Spirit",
			index       	= WSTYPE_PLACEHOLDER,
			classname   	= "lLandPlane",
			positioning 	= "BYNORMAL",
		},
		{
			name  			= "B2_Spirit-oblomok",
			file  			= "B2_Spirit-oblomok",
			fire  			= {240, 2},
		},
	},

	singleInFlight 			= true,
	mapclasskey 			= "P0091000027",
	attribute  				= {wsType_Air, wsType_Airplane, wsType_F_Bomber, WSTYPE_PLACEHOLDER, "Strategic bombers", "Refuelable", "Datalink", "Link16"},
	Categories 				= {},

	-- ===================================================================
	-- MASS & DIMENSIONS
	-- ===================================================================

	-- Mass Parameters
	M_empty					= 71700,			-- [kg] OEW (approx 158,000 lbs)
	M_nominal				= 152600,			-- [kg] Normal Mission Weight
	M_max					= 170600,			-- [kg] MTOW (approx 376,000 lbs)
	M_fuel_max				= 75750,			-- [kg] Max Fuel (approx 167,000 lbs)

	-- Dimensions
	length					= 21.0,				-- [m] Length
	height					= 5.18,				-- [m] Height
	wing_area				= 478.0,			-- [m^2] Wing Area (Flying Wing)
	wing_span				= 52.4,				-- [m] Wingspan
	wing_type				= 0,				-- [enum] 0=FIXED_WING
	wing_tip_pos 			= {-7.25, -0.481, 26.2},

	-- ===================================================================
	-- INERTIA & CG
	-- ===================================================================
	-- Flying wing configuration: High Roll/Yaw inertia due to span, moderate Pitch inertia.
	-- DCS TsAGI Coords: x=Roll, y=Yaw, z=Pitch

	center_of_mass			= {1.55, 0.4, 0},	-- [m] CG relative to model origin
	moment_of_inertia		= {15.5e6, 28.5e6, 12.5e6, -100e3}, -- [kg*m^2] {Roll, Yaw, Pitch, POI} Estimated for flying wing

	-- ===================================================================
	-- PERFORMANCE PARAMETERS
	-- ===================================================================

	-- Speeds
	V_opt					= 250,				-- [m/s TAS] Cruise speed (Mach 0.85 @ Alt)
	V_take_off				= 77,				-- [m/s TAS] Takeoff speed (~150 kts)
	V_land					= 72,				-- [m/s TAS] Landing speed (~140 kts)
	V_max_sea_level			= 180,				-- [m/s TAS] Low level limit (Struct/Stealth) ~350kts
	V_max_h					= 285,				-- [m/s TAS] Max speed @ Alt (Mach 0.95)
	Mach_max				= 0.95,				-- [Mach] Subsonic limit
	CAS_min					= 65,				-- [m/s] Stall speed

	-- Climb & Ceiling
	H_max					= 15240,			-- [m] Service ceiling (50,000 ft)
	Vy_max					= 25,				-- [m/s] Max climb rate

	-- Range & Fuel
	range					= 11100,			-- [km] Max unrefueled range
	average_fuel_consumption = 1.15,			-- [kg/s] Efficient high-bypass cruise

	-- Limits
	Ny_min					= -1.0,				-- [G] Min G
	Ny_max					= 2.5,				-- [G] Max G (Structural limit for heavy bomber)
	Ny_max_e				= 3.0,				-- [G] Emergency G
	bank_angle_max			= 45,				-- [deg] Bank limit
	AOA_take_off			= 0.14,				-- [rad] Rotation AoA
	flaps_maneuver 			= 1.0,

	-- ===================================================================
	-- PROPULSION (4x F118-GE-100)
	-- ===================================================================

	engines_count			= 4,
	thrust_sum_max			= 31400,			-- [kgf] Total Dry Thrust (~69,200 lbs)
	thrust_sum_ab			= 31400,			-- [kgf] No Afterburner
	has_afteburner			= false,
	has_thrustReverser		= false,			-- B-2 uses split-rudders for drag/yaw, not TR

	engines_nozzles = {
		{
			pos 				= {-3.0, -0.34, -4.60},
			elevation			= 0.0,
			diameter			= 0.3,
			exhaust_length_ab	= 2.0,
			exhaust_length_ab_K	= 0.1,
			smokiness_level     = 0.05, 		-- [scalar] Very clean exhaust (Stealth)
		},
		{
			pos 				= {-3.0, -0.255, -3.40},
			elevation			= 0.0,
			diameter			= 0.3,
			exhaust_length_ab	= 2.0,
			exhaust_length_ab_K	= 0.1,
			smokiness_level     = 0.05,
			engine_number       = 2,
		},
		{
			pos 				= {-3.0, -0.255, 3.40},
			elevation			= 0.0,
			diameter			= 0.3,
			exhaust_length_ab	= 2.0,
			exhaust_length_ab_K	= 0.1,
			smokiness_level     = 0.05,
		},
		{
			pos 				= {-3.0, -0.34, 4.60},
			elevation			= 0.0,
			diameter			= 0.3,
			exhaust_length_ab	= 2.0,
			exhaust_length_ab_K	= 0.1,
			smokiness_level     = 0.05,
		},
	},

	-- ===================================================================
	-- SYSTEMS & EQUIPMENT
	-- ===================================================================

	has_speedbrake			= true,				-- [bool] Split rudders act as speedbrakes
	radar_can_see_ground	= true,				-- [bool] Aircraft can detect ground & sea surface units
	EPLRS 					= true,				-- [bool] Enhanced Position Location Reporting System (EPLRS) for Link-16
	brakeshute_name			= 0,				-- No drag chute model

	-- Stealth Characteristics
	RCS						= 0.0005,			-- [m^2] Extremely Low RCS (large physical size = broadband stealth)
	IR_emission_coeff		= 0.10,				-- [scalar] Shielded exhausts, very low IR
	IR_emission_coeff_ab	= 0.0,				-- [scalar] No AB
	detection_range_max		= 40,				-- [km] Max detection range of aircraft/ground vehicles/ships

	-- Gear Geometry
	nose_gear_pos 			= {9.7, -3.64, 0},
	main_gear_pos 			= {-0.14, -3.646, 6.18},
	nose_gear_wheel_diameter = 0.94,			-- [m] Diameter of the nose gear wheels
	main_gear_wheel_diameter = 1.09,			-- [m] Diameter of the main gear wheels

	nose_gear_amortizer_direct_stroke 		 =  0.0,	-- Full Strut Expansion (no weight on wheels) (arg 2)
	nose_gear_amortizer_reversal_stroke 	 = -0.2396,	-- Full Strut Compression (maximum+ weight on wheels)
	nose_gear_amortizer_normal_weight_stroke = -0.1331,	-- Strut Weight Compression (normal compression with weight on wheels; number is amount of "chrome showing")

	main_gear_amortizer_direct_stroke 		 =  0.0,	-- Full Strut Expansion (no weight on wheels) (args 4 and 6)
	main_gear_amortizer_reversal_stroke 	 = -0.168,	-- Full Strut Compression (maximum+ weight on wheels)
	main_gear_amortizer_normal_weight_stroke = -0.0933, -- Strut Weight Compression (normal compression with weight on wheels; number is amount of "chrome showing")

	tand_gear_max	=	math.tan(math.rad(60)),	-- [tan] Nose wheel steering angle

	-- Refueling
	is_tanker				= false,
	tanker_type				= 1,				-- [enum] 1=Boom receiver
	air_refuel_receptacle_pos = {3.137745, 1.9036, 0},

	-- Crew
	crew_size				= 2,
	crew_members = {
		[1] = {
			ejection_seat_name	= 17,			-- ACES II
			drop_canopy_name	= 0,
			pos 				= {7.25, 1.04, -0.562},
			bailout_arg 		= -1,
		},
		[2] = {
			ejection_seat_name	= 17,			-- ACES II
			drop_canopy_name	= 0,
			pos 				= {7.25, 1.04, 0.562},
			bailout_arg 		= -1,
		},
	},

	CanopyGeometry = {
		azimuth = {-110.0, 110.0},
		elevation = {-20.0, 15.0}
	},

	Sensors = {
		OPTIC 				= {"Sniper XR FLIR", "Sniper XR CCD TV"}, -- Placeholder for targeting systems
		RADAR 				= "B-1B SS radar",
		RWR 				= "Abstract RWR",
	},

	-- Damage Fires
	fires_pos = {
		[1] = 	{0.338,		-0.815,	  0},
		[2] = 	{-3.491,	-0.153,	  4.263},
		[3] = 	{-3.491,	-0.153,	 -4.263},
		[4] = 	{-0.82,		 0.265,	  2.774},
		[5] = 	{-0.82,		 0.265,	 -2.774},
		[6] = 	{-0.82,		 0.255,	  4.274},
		[7] = 	{-0.82,		 0.255,	 -4.274},
		[8] = 	{-8.938,	-1.237,	  2.985},
		[9] = 	{-8.938,	-1.237,	 -2.985},
		[10] = 	{-8.938,	-1.154,	  4.571},
		[11] = 	{-8.938,	-1.154,	 -4.571},
	},

	-- ===================================================================
	-- FLIGHT MODEL (SFM)
	-- ===================================================================
	
	SFM_Data = {
		aerodynamics = {
			Cy0					= 0.15,				-- [coeff] Lift at 0 AoA (Flying wing profile)
			Mzalfa				= 2.5,				-- [coeff] Reduced pitch stability (Relaxed)
			Mzalfadt			= 0.8,				-- [coeff] Pitch damping
			kjx					= 3.5,				-- [coeff] High roll inertia (Wide span)
			kjz					= 0.002,			-- [coeff] Pitch inertia
			Czbe				= -0.005,			-- [coeff] Low yaw stability (Drag rudders used)
			cx_gear				= 0.025,			-- [coeff] Gear drag
			cx_flap				= 0.04,				-- [coeff] Flap drag
			cy_flap				= 0.6,				-- [coeff] Flap lift
			cx_brk				= 0.06,				-- [coeff] Airbrake drag (Split rudders)

			table_data = {
				-- Aerodynamic Drag Polar Table
				-- M: Mach, Cx0: Zero-lift drag, Cya: Normal force coeff, B: Polar shape
				-- Omxmax: Roll rate, Aldop: Max AoA, Cymax: Max Lift
				-- 		M		Cx0		Cya		B		B4		Omxmax	Aldop	Cymax
				[1] = 	{0,		0.012,	0.07,	0.018,	0.025,	0.3,	20,		1.2}, -- Very clean airframe
				[2] = 	{0.2,	0.012,	0.07,	0.018,	0.025,	0.5,	20,		1.2},
				[3] = 	{0.4,	0.012,	0.07,	0.018,	0.025,	0.5,	20,		1.2},
				[4] = 	{0.6,	0.013,	0.073,	0.018,	0.025,	0.5,	18,		1.1},
				[5] = 	{0.7,	0.014,	0.076,	0.024,	0.05,	0.5,	17,		1.0},
				[6] = 	{0.8,	0.016,	0.079,	0.050,	0.052,	0.4,	16,		0.9},
				[7] = 	{0.9,	0.020,	0.083,	0.150,	0.0536,	0.3,	15,		0.8},
				[8] = 	{0.95,	0.045,	0.085,	0.300,	0.0552,	0.2,	14,		0.7}, -- Transonic drag rise
				[9] = 	{1.05,	0.080,	0.085,	0.360,	0.056,	0.1,	12,		0.5},
			},
		},

		engine = {
			Nmg					= 63.0,				-- [%] Idle RPM
			Nominal_RPM 		= 14500,			-- 100% speed high pressure turbine (N2)
			Nominal_Fan_RPM 	= 8700,				-- 100% speed fan (N1)
			MinRUD				= 0,
			MaxRUD				= 1,
			MaksRUD				= 1.0,				-- [scalar] Max dry power
			ForsRUD				= 1.0,				-- [scalar] No AB
			type				= "TurboFan",
			hMaxEng				= 16,				-- [km] Max engine alt
			cemax				= 0.72,				-- [kg/kgf/h] Low SFC (High bypass)
			cefor				= 0.72,				-- [kg/kgf/h] Same as dry
			dpdh_m				= 1500,				-- [N/km] Thrust loss with altitude
			dpdh_f				= 1500,

			table_data = {
				-- F118-GE-100 Thrust Profile (Approximate)
				-- Static thrust ~77kN (7850 kgf) per engine
				--        M		     Dry(N)	 Wet(N)
				[1] = 	{0,			308000,	308000}, -- Total thrust (4 engines) ~31,400 kgf
				[2] = 	{0.2,		300000,	300000},
				[3] = 	{0.4,		290000,	290000},
				[4] = 	{0.6,		280000,	280000},
				[5] = 	{0.8,		275000,	275000},
				[6] = 	{0.9,		270000,	270000},
				[7] = 	{1.0,		250000,	250000},
			},
		},
	},

	-- ===================================================================
	-- DAMAGE MODEL
	-- ===================================================================
	
	Damage = {
		[0]  = {critical_damage = 10, args = {146}}, -- NOSE_CENTER
		[1]  = {critical_damage = 5,  args = {296}}, -- NOSE_LEFT_SIDE
		[2]  = {critical_damage = 5,  args = {297}}, -- NOSE_RIGHT_SIDE
		[3]  = {critical_damage = 8,  args = {65}},  -- COCKPIT
		[4]  = {critical_damage = 5,  args = {298}}, -- CABIN_LEFT
		[5]  = {critical_damage = 5,  args = {301}}, -- CABIN_RIGHT
		[9]  = {critical_damage = 5,  args = {154}}, -- FUSELAGE_LEFT
		[10] = {critical_damage = 5,  args = {153}}, -- FUSELAGE_RIGHT
		[11] = {critical_damage = 4,  args = {167}}, -- ENGINE_L
		[12] = {critical_damage = 4,  args = {161}}, -- ENGINE_R
		[23] = {critical_damage = 8,  args = {223}}, -- WING_L_OUT
		[24] = {critical_damage = 8,  args = {213}}, -- WING_R_OUT
		[25] = {critical_damage = 4,  args = {226}}, -- ELERON_L
		[26] = {critical_damage = 4,  args = {216}}, -- ELERON_R
		[29] = {critical_damage = 8,  args = {224}, deps_cells = {23, 25}}, -- WING_L_CENTER
		[30] = {critical_damage = 8,  args = {214}, deps_cells = {24, 26}}, -- WING_R_CENTER
		[35] = {critical_damage = 10, args = {225}, deps_cells = {23, 29, 25, 37}}, -- WING_L_IN
		[36] = {critical_damage = 10, args = {215}, deps_cells = {24, 30, 26, 38}}, -- WING_R_IN
		[37] = {critical_damage = 4,  args = {228}}, -- FLAP_L_IN
		[38] = {critical_damage = 4,  args = {218}}, -- FLAP_R_IN
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
		[82] = {critical_damage = 5,  args = {152}}, -- FUSELAGE_BOTTOM
		[105] = {critical_damage = 2,  args = {603}},--ENGINE_3
		[106] = {critical_damage = 2,  args = {604}},--ENGINE_4
	},
	
	DamageParts = {  
		[1] = "B2_Spirit-oblomok-wing-r",
		[2] = "B2_Spirit-oblomok-wing-l",
	},
	
	-- ===================================================================
	-- FAILURES
	-- ===================================================================
	
	Failures = {
		{ id = "asc", 		label = _("ASC"), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = "autopilot", label = _("AUTOPILOT"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = "hydro",  	label = _("HYDRO"), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = "l_engine",  label = _("L-ENGINE"), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = "r_engine",  label = _("R-ENGINE"), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = "radar",  	label = _("RADAR"), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = "ecm",   	label = _("ECM"), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = "hud",  		label = _("HUD"), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = "mfd",  		label = _("MFD"), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	},
	
	-- ===================================================================
	-- RADIO & PYLONS
	-- ===================================================================

	HumanRadio = {
		frequency		= 251.0,
		editable		= true,
		minFrequency	= 30.000,
		maxFrequency	= 399.975,
		rangeFrequency = {
			{min =  30.0, max =  87.975, modulation	= MODULATION_FM},
			{min = 108.0, max = 136.975, modulation	= MODULATION_AM},
			{min = 137.0, max = 155.995, modulation	= MODULATION_AM_AND_FM, modulationDef = MODULATION_FM},
			{min = 156.0, max = 173.975, modulation	= MODULATION_FM},
			{min = 225.0, max = 399.975, modulation	= MODULATION_AM_AND_FM, modulationDef = MODULATION_AM},
		},
		modulation = MODULATION_AM,
	},

	Pylons = {
		-- Internal rotary launcher bays simulated as pylons
		pylon(1, 2, -2.218, -0.63, -5.77, {}, available_payload),
		pylon(2, 2, -1.069, -0.42, -2.21, {}, available_payload),
	},

	Tasks = {
		aircraft_task(GroundAttack),
		aircraft_task(RunwayAttack),
		aircraft_task(PinpointStrike),
		aircraft_task(CAS),        
	},	
	DefaultTask = aircraft_task(GroundAttack),

	-- ===================================================================
	-- LIGHTS
	-- ===================================================================

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