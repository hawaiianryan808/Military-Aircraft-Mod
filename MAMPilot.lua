--Pilot Mod - By SUNTSAG updated 19 March 20; Modified Warlord --	
GT = {};
GT.animation = {};

GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_human);
set_recursive_metatable(GT.chassis, GT_t.CH_t.HUMAN);
set_recursive_metatable(GT.animation, GT_t.CH_t.HUMAN_ANIMATION);

GT.visual.shape = "MAM_usaf_pilot";
GT.visual.shape_dstr = "soldier_ge_00_d";
GT.CustomAimPoint = {0,1.0,0};

GT.AddPropVehicle = {
			{ id = "TentedRoof" , control = 'checkbox', label = _('Pilot Face'), defValue = true, arg=70} 
		}

GT.mobile = true;

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 7500;
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.igla_manpad);
GT.driverViewConnectorName = {"camera", offset = {0.0, 0.0, 0.0}}
GT.WS[ws].pointer = "camera";

GT.Name = "MAMPilot";
GT.DisplayName = _("MAM USAF Pilot");
GT.Rate = 1;

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000201";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericInfantry,wsType_GenericIFV,
				"Infantry",
				"New infantry",
				};
				
GT.category = "Infantry";

GT.Transportable = {
	size = 100,
	valide = true
}

add_surface_unit(GT)