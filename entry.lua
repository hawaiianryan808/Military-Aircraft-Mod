self_ID = "Military Aircraft Mod"
declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("Military Aircraft Mod"),
developerName = _("Military Aircraft Mod"),

fileMenuName = _("Military Aircraft Mod"),
update_id        = "Military Aircraft Mod",
version		 = "2.7.0",
state		 = "installed",
info		 = _("Military Aircraft Mod"),

encyclopedia_path = current_mod_path..'/Encyclopedia',

Skins	=
	{
		{
		    name	= _("Military Aircraft Mod"),
			dir		= "Theme"
		},
	},	
Missions =
	{
		{
			name	= _("Military Aircraft Mod"),
			dir		= "Missions",
  		},
	},	
})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/Military Aircraft Mod")
-------------------------------------------------------------------------------------
--Military Aircraft Mod
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/A400M_Atlas.lua')
dofile(current_mod_path..'/B2_Spirit.lua')
dofile(current_mod_path..'/C2A_Greyhound.lua')
dofile(current_mod_path..'/C5_Galaxy.lua')
dofile(current_mod_path..'/KC_10_Extender.lua')
dofile(current_mod_path..'/KC_10_Extender_D.lua')
dofile(current_mod_path..'/P3C_Orion.lua')
dofile(current_mod_path..'/V22_Osprey.lua')
dofile(current_mod_path..'/MAMPilot.lua')
dofile(current_mod_path.."/Database/db_MAM_objects.lua")
-------------------------------------------------------------------------------------
plugin_done()
