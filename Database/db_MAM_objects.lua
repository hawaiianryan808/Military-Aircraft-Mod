local function add_personnel(f)
	if(f) then
		f.shape_table_data = 
		{
			{
				file  	    = f.ShapeName,
				life		= f.Life,
				username    = f.Name,
				desrt       = f.ShapeNameDestr or "self",
			    classname 	= "lHuman",
				positioning = f.positioning or "BYNORMAL"	--available: {"BYNORMAL", "ONLYHEIGTH", "BY_XZ", "ADD_HEIGTH"}
			}
		}
		if f.ShapeNameDestr then
			f.shape_table_data[#f.shape_table_data + 1] = 
			{
				name  = f.ShapeNameDestr,
				file  = f.ShapeNameDestr,	
			}
		end
		
		f.mapclasskey = "P0091000201";
		f.attribute = {wsType_Static, wsType_Standing} 
		
		add_surface_unit(f)
		GT = nil;
	else
		error("Can't add personnel")
	end;
end
---------------- USAF Pilot ------------
add_personnel({
Name 		 =  "MAMPilot_STATIC",                -- MAM USAF Pilot
DisplayName  = _("MAM USAF Pilot - static"),
ShapeName	 =   "MAM_usaf_pilot",
ShapeNameDestr = "soldier_ge_00_d",
Life		 =  5,
Rate		 =  10,
category     =  'Personnel',
SeaObject    = 	false,
isPutToWater =  false,
})