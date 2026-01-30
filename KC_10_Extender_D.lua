	
KC_10_Extender_D =  {
      
		Name 			= 'KC_10_Extender_D',--AG
		DisplayName		= _('KC-10 Extender Drogue'),--AG
        Picture 		= "KC_10_Extender.png",
        Rate 			= "100",
        Shape			= "KC_10_Extender_D",--AG	
        WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'KC_10_Extender_D';
			life  	 	= 50; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'KC_10_Extender-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'KC_10_Extender_D';
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "KC_10_Extender-oblomok";
			file  		= "KC_10_Extender-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE),
	
	mapclasskey = "P0091000064",
	attribute = {
		wsType_Air, 
		wsType_Airplane, 
		wsType_Cruiser,
		WSTYPE_PLACEHOLDER,
		"Tankers",
		"Refuelable",
	},
	
	Categories = {"{8A302789-A55D-4897-B647-66493FA6826F}", "Tanker",},
	

	--mapclasskey 		= "P0091000064",
	--attribute  			= {wsType_Air, wsType_Airplane, wsType_Cruiser, WSTYPE_PLACEHOLDER, "Tankers","Refuelable",},
	--Categories= {"{8A302789-A55D-4897-B647-66493FA6826F}", "",},
	
		TACAN = true,
		singleInFlight = true,
		
		M_empty			=	121200,--44663,
		M_nominal		=	221200,--100000,Wartime 251000lbs = 114000kg ish for Tanker only missions
		M_max			=	267860,--146000,Peacetime 590000lbs = 267000
		M_fuel_max		=	160200,--90700,Wartime 340000lbs = 154000kg
		H_max			=	13000,--12000,
		average_fuel_consumption	=	0.127,--0.1893,
		CAS_min			=	54,
		V_opt			=	208,--220,
		V_take_off		=	82,
		V_land			=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-1.817,	-5.038,	5.525},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{21.317,	-5.152,	0},
		AOA_take_off	=	0.17,--0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	276.72,--280.28,
		V_max_h	=	276.72,--280.28,	
		wing_area	=	367.71,--226,
		wing_span	=	50.41,--40,
		-- defFuelRatio = 0.9749, --**
		thrust_sum_max	=	72195,--38100,
		thrust_sum_ab	=	72195,--38100,
		Vy_max	=	34.9,--10,
		length	=	55.35,--46.61,
		height	=	17.7,--12.93,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.89,--0.9,
		range	=	18500,--12247,
		crew_size	=	4,--***
		RCS	=	100,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	0,
		engines_count	=	3,
		wing_tip_pos = 	{-6.627,	-0.265,	25.2},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			{
				pos = 	{1.013,	-1.899,	-8.043},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
			},
			{
				pos = 	{-27.25,	4.797,	0},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
			},
			{
				pos = 	{1.013,	-1.899,	8.043},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
			},
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [4]
		}, -- end of crew_members
		
		mechanimations = "Default",		
		
		brakeshute_name	=	0,
		
		tanker_type				=	1,		-- This tanker refuels from a boom system
		air_refuel_receptacle_pos = 	{ 26.024,   2.847,   0.00},
		
		--is_tanker				=	2, -- Drogue
		is_tanker				=	true,
		refueling_points_count	=	1,
		
		refueling_points = 
		{
			--          Front/Rear, Up/Down, Left/Right
			--            +   -      +  -      -    +
			-- [1] = { pos = {-45.863, -5.776, 0.964}, clientType = 3 },--Drogue
			-- [1] = { pos = {-45.629715, -5.764524, 0.964002}, clientType = 3 },--Drogue
			
			-- Values taken from modelviewer
			-- [1] = { pos = {-46.134087, -5.779092, 0.923170}, clientType = 3 },		--Drogue
			
			-- Offset values (in parentheses) stolen from KC135MPRS. Offsets from those (outside of parentheses) determined by trial and error.
			[1] = { pos = {(-45.763031 - 0.2374) + 0.3, (-5.775886 - 0.003018) - 0.10, (0.964001 - 0.003752)}, clientType = 3 },--Drogue
			
		}, -- end of refueling_points
		
		fires_pos = 
		{
			[1] = 	{7.166,	-1.843,	0},
			[2] = 	{3.863,	-0.629,	2.578},
			[3] = 	{3.863,	-0.629,	-2.578},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{5.354,	-1.868,	8.017},
			[9] = 	{5.354,	-1.868,	-8.017},
			[10] = 	{-23.974,	4.877,	0},
			[11] = 	{-23.974,	4.877,	0},
		}, -- end of fires_pos
		
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{1.158,	-1.77,	-0.967},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{1.158,	-1.77,	0.967},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser


		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 240,
			chaff = {default = 120, increment = 30, chargeSz = 1},
			flare = {default = 60, increment = 15, chargeSz = 2}
        },
	

Sensors = {
RADAR = "AN/APG-63",--f15
RWR = "Abstract RWR"
},
Countermeasures = {
ECM = "AN/ALQ-135"--f15
},	



    Pylons = {
    },
	
	Tasks = {
		aircraft_task(Transport),
		aircraft_task(Refueling),
    },
	
	DefaultTask = aircraft_task(Refueling),

	SFM_Data = {     
	aerodynamics = --kc-135
		{
			Cy0	=	0,
			Mzalfa	=	6.6,--4.355,
			Mzalfadt	=	1,--0.8,
			kjx	=	2.85,--2.75,
			kjz	=	0.00125,
			Czbe	=	-0.012,---0.016,
			cx_gear	=	0.015,
			cx_flap	=	0.08,--0.05,
			cy_flap	=	1.6,--1,
			cx_brk	=	0.06,
			table_data = 
			{
				[1] = 	{0,	0.023,	0.1,	0.064,	0,	0.5,	20,	1.4},
				[2] = 	{0.2,	0.023,	0.1,	0.064,	0,	1.5,	20,	1.4},
				[3] = 	{0.4,	0.023,	0.1,	0.064,	0,	2.5,	20,	1.4},
				[4] = 	{0.6,	0.025,	0.1,	0.064,	0.022,	3.5,	20,	1.4},
				[5] = 	{0.7,	0.03,	0.1,	0.083,	0.031,	3.5,	20,	1.2},
				[6] = 	{0.8,	0.032,	0.1,	0.107,	0.04,	3.5,	20,	1},
				[7] = 	{0.9,	0.045,	0.1,	0.148,	0.058,	3.5,	20,	0.8},
				[8] = 	{1,	0.054,	0.1,	0.199,	0.1,	3.5,	20,	0.7},
				[9] = 	{1.5,	0.054,	0.1,	0.199,	0.1,	3.5,	20,	0.2},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	60.00001,--67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	1,
			ForsRUD	=	1,
			type	=	"TurboJet",
			hMaxEng	=	19.5,
			dcx_eng	=	0.0085,
			cemax	=	0.37,--1.24,
			cefor	=	0.37,--2.56,
			dpdh_m	=	6200,--9000,
			dpdh_f	=	6200,--9000,
			table_data = 
			{
				[1] = 	{0,	708000,	708000}, --480000
				[2] = 	{0.2,	589976,	589976}, --400000
				[3] = 	{0.4,	505845,	505845}, --343000
				[4] = 	{0.6,	442412,	442412}, --300000
				[5] = 	{0.7,	420292,	420292}, --285000
				[6] = 	{0.8,	389316,	389316}, --264000
				[7] = 	{0.9,	374561,	374561}, --254000
				[8] = 	{1,	343585,	343585}, --233000
				[9] = 	{1.1,	319980,	319980}, --217000
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
		[1] = "kc_10_extender-oblomok-wing-r", -- wing R
		[2] = "kc_10_extender-oblomok-wing-l", -- wing L
	},
	
	lights_data = { typename = "collection", lights = {
	
        [WOLALIGHT_NAVLIGHTS] = {
            typename = "collection",
            lights = {
                [1] = {
                    typename = "Collection",
                    lights = {
						{
							typename = "Spot", position = { -25.8, 2.0, 0 },
							direction = {azimuth = math.rad(180.0)}, argument = 192,
							proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(140.0), angle_min = math.rad(0),
						},
						{
							typename = "Omni", position = { -25.8, 2.0, 0 },
							proto = lamp_prototypes.ANO_3_Bl, movable = true,
						},
						{
							typename = "Spot", position = { -9.316712, 0.440826, -25.289371 },
							direction = {azimuth = math.rad(-60.0), elevation = math.rad(0)}, argument = 190,
							proto = lamp_prototypes.BANO_8M_red, angle_max = math.rad(120.0), angle_min = math.rad(0),
						},
						{
							typename = "Spot", position = { -9.310573, 0.469207, 25.185984 },
							direction = {azimuth = math.rad(60.0), elevation = math.rad(0)}, argument = 191,
							proto = lamp_prototypes.BANO_8M_green, angle_max = math.rad(120.0), angle_min = math.rad(0),
						},
						
						{	-- port aft-facing white tail light. Source: http://www.arcforums.com/forums/air/index.php?/topic/192063-dc-10-lights/
                            typename = "Spot", position = { -12.65, 0.4590, -25.145 },
							direction = {azimuth = math.rad(180.0)},
							proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(140.0), angle_min = math.rad(0), cool_down_t = 0.8,
                        },
						{
							typename = "Omni", position = { -12.65, 0.4590, -25.145 },
							proto = lamp_prototypes.ANO_3_Bl, movable = true,
						},
						{	-- starboard aft-facing white tail light. Source: http://www.arcforums.com/forums/air/index.php?/topic/192063-dc-10-lights/
                            typename = "Spot", position = { -12.65, 0.4590, 25.145 },
							direction = {azimuth = math.rad(180.0)},
							proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(140.0), angle_min = math.rad(0), cool_down_t = 0.8,
                        },
						{
							typename = "Omni", position = { -12.65, 0.4590, 25.145 },
							proto = lamp_prototypes.ANO_3_Bl, movable = true,
						},
						
						{	-- port empennage logo illumination. Source: https://commons.wikimedia.org/wiki/File:McDonnell_Douglas_DC-10-30,_Air_Zaire_AN0199454.jpg
                            typename = "Spot",  position = { -24.000, 1.900, -8.00 },
							direction = {azimuth = math.rad(68.0), elevation = math.rad(-47.0)}, 
                            proto = lamp_prototypes.LFS_R_27_130, angle_max = math.rad(80.0), angle_min = math.rad(0.0),
                            exposure = {{0, 0.9, 1.0}}, cool_down_t = 0.2, movable = true,
                        },
						{	-- starboard empennage logo illumination. Source: https://commons.wikimedia.org/wiki/File:McDonnell_Douglas_DC-10-30,_Air_Zaire_AN0199454.jpg
                            typename = "Spot",  position = { -24.000, 1.900, 8.00 },
							direction = {azimuth = math.rad(-68.0), elevation = math.rad(-47.0)}, 
                            proto = lamp_prototypes.LFS_R_27_130, angle_max = math.rad(80.0), angle_min = math.rad(0.0),
                            exposure = {{0, 0.9, 1.0}}, cool_down_t = 0.2, movable = true,
                        },
						
						-- Wing illumination. Source: http://www.arcforums.com/forums/air/index.php?/topic/192063-dc-10-lights/
						{
							typename = "Spot",  position = { 9.100, 0.680, -3.25 },
							direction = {azimuth = math.rad(-135.0), elevation = math.rad(0.0)},
							proto = lamp_prototypes.LFS_R_27_250, angle_max = math.rad(22.0), angle_min = math.rad(0.0),
							cool_down_t = 0.5, exposure = {{0, 0.9, 1.0}}, movable = true,
						},
						{
							typename = "Spot",  position = { 9.100, 0.680, 3.25 },
							direction = {azimuth = math.rad(135.0), elevation = math.rad(0.0)},
							proto = lamp_prototypes.LFS_R_27_250, angle_max = math.rad(22.0), angle_min = math.rad(0.0),
							cool_down_t = 0.5, exposure = {{0, 0.9, 1.0}}, movable = true,
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
                            typename = "Spot", position = { 21.287432, -2.901209, 0.00 }, argument = 51,
							direction = {azimuth = math.rad(0.0), elevation = math.rad(5.0)},
                            proto = lamp_prototypes.LFS_P_27_1000, angle_max = math.rad(30.0), angle_min = math.rad(0),
							cool_down_t = 0.8, exposure = {{0, 0.9, 1.0}}, movable = true,
                        },
                        {
                            typename = "Spot",  position = { 24.100, -1.300, -2.500 },
							direction = {azimuth = math.rad(-7.0), elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_P_27_1000, angle_max = math.rad(21.0), angle_min = math.rad(0),
                            cool_down_t = 0.8, exposure = {{0, 0.9, 1.0}}, movable = true,
                        },
                        {
                            typename = "Spot",  position = { 24.100, -1.300, 2.500 },
							direction = {azimuth = math.rad(7.0), elevation = math.rad(8.0)},
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
                        {
							typename = "Spot", position = { 21.287432, -2.901209, 0.00 }, argument = 51,
							direction = {azimuth = math.rad(0.0), elevation = math.rad(5.0)},
							proto = lamp_prototypes.LFS_R_27_250, cool_down_t = 0.5, movable = true,
						},
						{
							typename = "Omni", position = { 21.387432, -2.901209, 0.00 },
							proto = lamp_prototypes.LFS_R_27_250, cool_down_t = 0.5, range = 6.0, movable = true,
						},
						
						-- Runway turnoff lights. These really ought to be animated as part of the wheel steering mechanism, but I don't know how to do that.
						{
                            typename = "Spot",  position = { 11.300, -0.600, -3.100 },
							direction = {azimuth = math.rad(-38.0), elevation = math.rad(10.0)},
                            proto = lamp_prototypes.LFS_R_27_250, angle_max = math.rad(45.0), angle_min = math.rad(0.0),
                            cool_down_t = 0.5, exposure = {{0, 0.9, 1.0}}, movable = true,
                        },
						{
                            typename = "Spot",  position = { 11.300, -0.600, 3.100 },
							direction = {azimuth = math.rad(38.0), elevation = math.rad(10.0)},
                            proto = lamp_prototypes.LFS_R_27_250, angle_max = math.rad(45.0), angle_min = math.rad(0.0),
                            cool_down_t = 0.5, exposure = {{0, 0.9, 1.0}}, movable = true,
                        },
                    },
                },
            },
        },
        [WOLALIGHT_STROBES] = {
			-- Source: https://www.youtube.com/watch?v=XQpfRwTQlok
            typename = "collection",
            lights = {
                [1] = {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "natostrobelight", position = { 15.415, -3.615 + 0.200, 0.000},
                            proto = lamp_prototypes.SMI_2KM, period = 1.9, phase_shift = 0.0,
                        },
                        {
                            typename = "natostrobelight", position = { 0.126, 4.120 - 0.200, -0.000},
                            proto = lamp_prototypes.SMI_2KM, period = 1.9, phase_shift = 0.5,
                        },
						
						{
                            typename = "Spot", position = { -9.316712, 0.440826, -25.289371 },
                            controller = "VariablePatternStrobe", mode = "2 Flash Long",
							proto = lamp_prototypes.MPS_1, intensity_max = 700.0, period = 0.250, phase_shift = 0.25,
							direction = {azimuth = math.rad(-90.0), elevation = math.rad(0)}, angle_max = math.rad(180.0), angle_min = math.rad(0),
                        },
                        {
                            typename = "Spot", position = { -9.310573, 0.469207, 25.185984 },
                            controller = "VariablePatternStrobe", mode = "2 Flash Long",
							proto = lamp_prototypes.MPS_1, intensity_max = 700.0, period = 0.250, phase_shift = 0.25,
							direction = {azimuth = math.rad(90.0), elevation = math.rad(0)}, angle_max = math.rad(180.0), angle_min = math.rad(0),
                        },
						{
                            typename = "Spot", position = { -25.8, 2.0, 0 },
                            controller = "VariablePatternStrobe", mode = "2 Flash Long",
							proto = lamp_prototypes.MPS_1, intensity_max = 700.0, period = 0.250, phase_shift = 0.25,
							direction = {azimuth = math.rad(180.0), elevation = math.rad(0)}, angle_max = math.rad(160.0), angle_min = math.rad(0),
                        },
                    },
                },
            },
        },
		
		[WOLALIGHT_BEACONS] = {
			-- Source: https://www.youtube.com/watch?v=XQpfRwTQlok
            typename = "collection",
            lights = {
                [1] = {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "natostrobelight", position = { 15.415, -3.615 + 0.200, 0.000},
                            proto = lamp_prototypes.SMI_2KM, period = 1.9, phase_shift = 0.0,
                        },
                        {
                            typename = "natostrobelight", position = { 0.126, 4.120 - 0.200, -0.000},
                            proto = lamp_prototypes.SMI_2KM, period = 1.9, phase_shift = 0.5,
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

add_aircraft(KC_10_Extender_D)
