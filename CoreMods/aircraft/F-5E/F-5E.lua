 -- M39 Flyer 
 -- Types: 
 -- API = M53A, 
 -- HE = M56,  
 -- HEI M56A1, 
 -- HPT = M54,
 -- TP = 55A1,
 -- Da0 = 0.00154, Will Result in Dispersion pattern of 8 mils 80%. Explained below.
 -- Dispersion 8 mil diameter 80%  Page 223 F-5E-34-1-1 1 aug 1979 , rev 1980 march "Acceptable Dispersion Pattern is 80 of rounds must hit in 8 mil circle"  
 -- 80 % Radius  = sqrt(-2*ln(1-0.80) = K80 = 1.7941 sigma, where sigma is = std dev of dispersion. 
 -- Therefore, sigma  is = 80% radius / K_80, or sigma = 4 / 1.1794
 -- Sigma = 2.23 mils
 -- DCS Dispersion parameter Da0, is = Range Error Probable = 0.6745*sigma and is given in rads.
 -- To model at 8 mil , Da0 = (2.23*0.6745)/1000
 --  Da0 = 0.00154, Will Result in Dispersion pattern of 8 mils 80%.
 -- F-5E Weapon Manual Projectile Types, Page 98
 -- TP = M55
 -- API = M53
 -- HEI = M56
 -- HEIT = XM242
 -- MV 3250 FPS / 990 MPS
 -- M39A3 TM 43-0001
 -- M56A3 https://books.google.com/books?id=f5hZuowkbhgC&newbks=1&newbks_redir=0&dq=ARMY%20AMMUNITION%20DATA%20SHEETS.&pg=SA14-PA31#v=onepage&q&f=false
 -- Filler Weight HE 165 Grains
 -- Filler Weight HE KG = Grains * 15430 =0.0106918
 -- Filler Weight Incendiary Grains = 20
 -- Filler Weight Incendiary KG = 0.0012958
 -- Filler Weight total KG =0.01198
 -- V 3380 FPS @ 78 Feet Page 97
 -- 3428 MV / 1045 mps = M61 Vulcan https://apps.dtic.mil/sti/tr/pdf/ADA100963.pdf
 -- Tracer times set to go on at +0.332 Second and off at +0.4.
 -- Tracers will be on at a range of 1000 to 1200 feet 
 -- Data From Public Air to Air Firing Table for M61 https://apps.dtic.mil/sti/pdfs/AD0923589.pdf
 -- Da0 = 0.00154, Will Result in Dispersion pattern of 8 mils 80%.
 -- Shot Heat Off
 -- Added Red Tracers To TP Tracer Ammo
declare_weapon({category = CAT_SHELLS,name = "M39_20_HEI", user_name=_("M39_20_HEI"),
  model_name     = "tracer_bullet_red", --Was white
  projectile     = "HE",
  v0    		 = 990.0,
  Dv0   		 = 0.0000,
  Da0     		 = 0.00154,
  Da1     		 = 0.0,
  mass      	 = 0.102,
  round_mass 	 = 0.254+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.117,-- old = 0.11 
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0,
  tracer_off     = -1,
  scale_tracer   = 1,
  scale_smoke    = 0.2, 
  smoke_opacity  = 0.3,
  cartridge		 = 0,
  display_name = "20mm HEI",
  _unique_resource_name = "weapons.shells.M39_20_HEI"
  })
  -- M242 TM 43-0001  Page 276 https://books.google.com/books?id=f5hZuowkbhgC&newbks=1&newbks_redir=0&dq=ARMY%20AMMUNITION%20DATA%20SHEETS.&pg=SA14-PA31#v=onepage&q&f=false
  -- Projectile Weight 3865 Grains = 250 grams = 0.25KG
  -- Filler Weight HE = 146.5 grains = 9.5 grams
  -- Filler Weight Incendiary = 20 Grains = 1.3 grams
   declare_weapon({category = CAT_SHELLS,name = "M39_20_HEI_T", user_name=_("M39_20_HEI_T"),
  model_name     = "tracer_bullet_yellow",
  projectile     = "HE",
  v0    		 = 990.0,
  Dv0   		 = 0.0000,
  Da0     		 = 0.00154,
  Da1     		 = 0.0,
  mass      	 = 0.102,
  round_mass 	 = 0.254+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.0108, --old 0.093
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0.0,
  tracer_off     = 5,
  scale_tracer   = 1,
  scale_smoke    = 0.1, 
  smoke_opacity  = 0.3,
  cartridge		 = 0,
  display_name = "20mm HEI T",
  }) 
-- API M53 Filler Weight 65 Grains / 0.00421 Kg
-- Mv 3380 at 50 feet
declare_weapon({category = CAT_SHELLS,name = "M39_20_API", user_name=_("M39_20_API"),
  model_name     = "tracer_bullet_red",
  projectile      = "AP",
  v0    		 = 990.0,
  Dv0   		 = 0.0000,
  Da0     		 = 0.00154,
  Da1     		 = 0.0,
  mass      	 = 0.102,
  round_mass 	 = 0.258+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.0042,
  AP_cap_caliber = 20.0,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0,
  tracer_off     = -1,
  scale_tracer   = 1,
  scale_smoke    = 0.3, 
  smoke_opacity  = 0.3,
  cartridge		 = 0,
  display_name = "20mm API",
  _unique_resource_name = "weapons.shells.M39_20_API",
  
  }) 
  
declare_weapon({category = CAT_SHELLS,name = "M39_20_TP", user_name=_("M39_20_TP"),
  model_name     = "tracer_bullet_red",
  v0    		 = 990.0,
  Dv0   		 = 0.0000,
  Da0     		 = 0.00154,
  Da1     		 = 0.0,
  mass      	 = 0.102,
  round_mass 	 = 0.254+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.000,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0,
  tracer_off     = -1,
  scale_tracer   = 0,
  scale_smoke    = 1.0, 
  smoke_opacity  = 0.3,
  cartridge		 = 0,
  display_name = "20mm TP",
  _unique_resource_name = "weapons.shells.M39_20_TP",
  
  }) 
  
declare_weapon({category = CAT_SHELLS,name = "M39_20_TP_T", user_name=_("M39_20_TP_T"), 
  model_name     = "tracer_bullet_red",
  v0    		 = 990.0,
  Dv0   		 = 0.0000,
  Da0     		 = 0.00154,
  Da1     		 = 0.0,
  mass      	 = 0.102,
  round_mass 	 = 0.254+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.000,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0,
  tracer_off     = 5,
  scale_tracer   = 1,
  scale_smoke    = 1.0, 
  smoke_opacity  = 0.3,
  cartridge		 = 0,
  display_name = "20mm TP T",
  _unique_resource_name = "weapons.shells.M39_20_TP_T",
  
  })  
  -- M39 20mm
    function M_39 ( tbl )
        tbl.category = CAT_GUN_MOUNT
        tbl.name = "M_39"
        tbl.display_name = _("M 39")
        tbl.supply = {
            shells = {
                --[[ 1 ]]   "M39_20_HEI",
                --[[ 2 ]]   "M39_20_HEI_T",
                --[[ 3 ]]   "M39_20_API",
                --[[ 4 ]]   "M39_20_TP",
                --[[ 5 ]]   "M39_20_TP_T",
                
            },
            mixes = { {1, 1, 1, 2},{2, 1, 1, 3},{3},{4, 5} },
            count = 280,
        }
        if tbl.mixes then
            tbl.supply.mixes = tbl.mixes
            tbl.mixes = nil
        end
        if tbl.count then
            tbl.supply.count = tbl.count
            tbl.count = nil
        end
        tbl.gun = {
            max_burst_length = 65535,
            rates = {1700}, -- unsynchronized mount --default 1500 set to F-5E Weaps Manual 1500 to 1700 
            recoil_coeff = 0.91,
            barrels_count = 1,
        }
        if tbl.rates then
            tbl.gun.rates = tbl.rates
            tbl.rates = nil
        end
        --tbl.ejector_pos_connector
        tbl.ejector_pos = tbl.ejector_pos or {-0.5, -0.5, 0.0}
        tbl.ejector_dir = tbl.ejector_dir or {-2.0, -5.0, 0.0}
        tbl.supply_position = tbl.supply_position or {0.0, 0.0, 0.0}
        tbl.aft_gun_mount = false
        tbl.effective_fire_distance = 1200
        tbl.drop_cartridge = tbl.drop_cartridge or 204
        if tbl.muzzle_pos_connector ~= nil then
            tbl.muzzle_pos = {0, 0, 0}
        end
        tbl.azimuth_initial = tbl.azimuth_initial or 0
        tbl.elevation_initial = tbl.elevation_initial or 0
        if tbl.effects == nil then
            tbl.effects = {
                {name = "HeatEffectExt", shot_heat = 0, barrel_k = 0.462 * 6.0, body_k = 0.462 * 32.0},
                {name = "FireEffect", arg = tbl.effect_arg_number or 436, duration = 0.02, attenuation = 2.0, light_pos = {0.5, 0.0, 0.0}},
                {name = "SmokeEffect"},
            }
        end

        return declare_weapon(tbl)
    end
    -- end of M39 20mm -----------------------------------------
  

local wingOutbdPylonMass	= 58.1		-- [kg]	(128 lb)
local wingInbdPylonMass		= 55.3		-- [kg]	(122 lb)
local ctrPylonMass			= 77.1		-- [kg]	(170 lb)

local tips =
{
	{ CLSID = "{AIM-9B}"							  ,												Cx_gain = 0.302},			-- AIM_9B (GAR-8)
	{ CLSID = "{AIM-9J}"							  ,												Cx_gain = 0.302},			-- AIM_9J
	{ CLSID = "{AIM-9P5}"							  ,												Cx_gain = 0.302},			-- AIM_9P5
	{ CLSID = "{AIM-9P3}"							  ,												Cx_gain = 0.302},			-- AIM_9P3
	{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",											    Cx_gain = 0.302},			-- AIM_9P				-- rev.177067
	{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}",												Cx_gain = 0.22},			-- Smokewinder red
	{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}",												Cx_gain = 0.22},			-- Smokewinder green
	{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}",												Cx_gain = 0.22},			-- Smokewinder blue
	{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}",												Cx_gain = 0.22},			-- Smokewinder white
	{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}",												Cx_gain = 0.22},			-- Smokewinder yellow
	{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E746}",												Cx_gain = 0.22},			-- Smokewinder orange
	{ CLSID = "{AIS_ASQ_T50}", 																		Cx_gain = 0.302},			-- AIS POD
	{ CLSID = "CATM-9M"							 	  ,												Cx_gain = 0.302},			-- CATM-9M
}
local outboard =
{
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- Mk-82
	{ CLSID = "{Mk82SNAKEYE}",							arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- Mk-82 Snakeye
	{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}",	arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- M117
	{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}", arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- GBU-12
	{ CLSID = "{CBU-52B}", 								arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- CBU-52
	{ CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}", arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- LAU-68-MK1
	{ CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}", arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- LAU-68-MK5
	{ CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}", arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- LAU-68-MK61
	{ CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}", arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- LAU-68-M151
	{ CLSID = "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}", arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- LAU-68-MK156
	{ CLSID = "{1F7136CB-8120-4e77-B97B-945FF01FB67C}", arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- LAU-68-WTU1B
	{ CLSID = "{647C5F26-BDD1-41e6-A371-8DE1E4CC0E94}", arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- LAU-68-M257
	{ CLSID = "{0877B74B-5A00-4e61-BA8A-A56450BA9E27}", arg_value = 0.0, add_mass = wingOutbdPylonMass	},	-- LAU-68-W274
--------------------------------------------------------------------------------------------------------------------------------------------
	{ CLSID = "{LAU68_FFAR_WP156}",						arg_value = 0.0, add_mass = wingOutbdPylonMass	},
	{ CLSID = "{LAU68_FFAR_MK1HE}",						arg_value = 0.0, add_mass = wingOutbdPylonMass	},
	{ CLSID = "{LAU68_FFAR_MK5HEAT}",					arg_value = 0.0, add_mass = wingOutbdPylonMass	},
--------------------------------------------------------------------------------------------------------------------------------------------
	{ CLSID = "LAU3_WP156",								arg_value = 0.0, attach_point_position = {0.05,  0.0,  0.0}, add_mass = wingOutbdPylonMass	},	-- LAU-3 - 19 MK156 WP
	{ CLSID = "LAU3_WP1B",								arg_value = 0.0, attach_point_position = {0.05,  0.0,  0.0}, add_mass = wingOutbdPylonMass	},	-- LAU-3 - 19 WTU-1/B WP
	{ CLSID = "LAU3_WP61",								arg_value = 0.0, attach_point_position = {0.05,  0.0,  0.0}, add_mass = wingOutbdPylonMass	},	-- LAU-3 - 19 MK61 WP
	{ CLSID = "LAU3_HE5",								arg_value = 0.0, attach_point_position = {0.05,  0.0,  0.0}, add_mass = wingOutbdPylonMass	},	-- LAU-3 - 19 MK5 HEAT
	{ CLSID = "LAU3_HE151",								arg_value = 0.0, attach_point_position = {0.05,  0.0,  0.0}, add_mass = wingOutbdPylonMass	},	-- LAU-3 - 19 MK151 HE
--------------------------------------------------------------------------------------------------------------------------------------------
	{ CLSID = "{LAU3_FFAR_WP156}",						arg_value = 0.0, attach_point_position = {0.05,  0.0,  0.0}, add_mass = wingOutbdPylonMass	},
	{ CLSID = "{LAU3_FFAR_MK1HE}",						arg_value = 0.0, attach_point_position = {0.05,  0.0,  0.0}, add_mass = wingOutbdPylonMass	},
	{ CLSID = "{LAU3_FFAR_MK5HEAT}",					arg_value = 0.0, attach_point_position = {0.05,  0.0,  0.0}, add_mass = wingOutbdPylonMass	},
---------------------------------------------------------------------------------------------------------------------------------------------
	{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}", arg_value = 0.0, add_mass = wingOutbdPylonMass	},												-- SUU-25 8 LUU-2
	--
	{ CLSID = "{BDU-33}",								arg_value = 0.0,attach_point_position = { 0.25,  0.0,   0.0}, add_mass = wingOutbdPylonMass	},	-- BDU-33	
	{ CLSID = "{BDU-50LD}",								arg_value = 0.0,attach_point_position = {-0.05, -0.008, 0.0}, add_mass = wingOutbdPylonMass	},
	{ CLSID = "{BDU-50LGB}",							arg_value = 0.0, add_mass = wingOutbdPylonMass	}, -- BDU-50LGB
	{ CLSID = "{BDU-50HD}",								arg_value = 0.0,attach_point_position = { 0.05,  0.0,   0.0}, add_mass = wingOutbdPylonMass	},
}
local inboard =
{
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- Mk-82
	{ CLSID = "{Mk82SNAKEYE}",							arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- Mk-82 Snakeye
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- Mk-83
	{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- M117
	{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- GBU-12
	{ CLSID = "{CBU-52B}",								arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- CBU-52
	{ CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- LAU-68-MK1
	{ CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- LAU-68-MK5
	{ CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- LAU-68-MK61
	{ CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- LAU-68-M151
	{ CLSID = "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- LAU-68-MK156
	{ CLSID = "{1F7136CB-8120-4e77-B97B-945FF01FB67C}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- LAU-68-WTU1B
	{ CLSID = "{647C5F26-BDD1-41e6-A371-8DE1E4CC0E94}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- LAU-68-M257
	{ CLSID = "{0877B74B-5A00-4e61-BA8A-A56450BA9E27}", arg_value = 0.0, add_mass = wingInbdPylonMass	},	-- LAU-68-W274
--------------------------------------------------------------------------------------------------------------------------------------------
	{ CLSID = "{LAU68_FFAR_WP156}",						arg_value = 0.0, add_mass = wingInbdPylonMass	},
	{ CLSID = "{LAU68_FFAR_MK1HE}",						arg_value = 0.0, add_mass = wingInbdPylonMass	},
	{ CLSID = "{LAU68_FFAR_MK5HEAT}",					arg_value = 0.0, add_mass = wingInbdPylonMass	},
--------------------------------------------------------------------------------------------------------------------------------------------
	{ CLSID = "LAU3_WP156",								arg_value = 0.0, attach_point_position = {-0.06,  0.0,  0.0}, add_mass = wingInbdPylonMass	},	-- LAU-3 - 19 MK156 WP
	{ CLSID = "LAU3_WP1B",								arg_value = 0.0, attach_point_position = {-0.06,  0.0,  0.0}, add_mass = wingInbdPylonMass	},	-- LAU-3 - 19 WTU-1/B WP
	{ CLSID = "LAU3_WP61",								arg_value = 0.0, attach_point_position = {-0.06,  0.0,  0.0}, add_mass = wingInbdPylonMass	},	-- LAU-3 - 19 MK61 WP
	{ CLSID = "LAU3_HE5",								arg_value = 0.0, attach_point_position = {-0.06,  0.0,  0.0}, add_mass = wingInbdPylonMass	},	-- LAU-3 - 19 MK5 HEAT
	{ CLSID = "LAU3_HE151",								arg_value = 0.0, attach_point_position = {-0.06,  0.0,  0.0}, add_mass = wingInbdPylonMass	},	-- LAU-3 - 19 MK151 HE
--------------------------------------------------------------------------------------------------------------------------------------------
	{ CLSID = "{LAU3_FFAR_WP156}",						arg_value = 0.0, attach_point_position = {-0.06,  0.0,  0.0}, add_mass = wingInbdPylonMass	},
	{ CLSID = "{LAU3_FFAR_MK1HE}",						arg_value = 0.0, attach_point_position = {-0.06,  0.0,  0.0}, add_mass = wingInbdPylonMass	},
	{ CLSID = "{LAU3_FFAR_MK5HEAT}",					arg_value = 0.0, attach_point_position = {-0.06,  0.0,  0.0}, add_mass = wingInbdPylonMass	},
---------------------------------------------------------------------------------------------------------------------------------------------
	{ CLSID = "{0395076D-2F77-4420-9D33-087A4398130B}", arg_value = 0.0, add_mass = wingInbdPylonMass	},												-- 275 gal drop tank
	{ CLSID = "{PTB-150GAL}",							arg_value = 0.0, add_mass = wingInbdPylonMass	},												-- 150 gal drop tank
	{ CLSID = "MXU-648-TP",								arg_value = 0.0, add_mass = wingInbdPylonMass	},												-- MXU-648-TP
	--
	{ CLSID = "{BDU-33}",								arg_value = 0.0,attach_point_position = { 0.17,  0.0,   0.0}, add_mass = wingInbdPylonMass	},	-- BDU-33
	{ CLSID = "{BDU-50LD}",								arg_value = 0.0,attach_point_position = {-0.15, -0.008, 0.0}, add_mass = wingInbdPylonMass	},
	{ CLSID = "{BDU-50LGB}",							arg_value = 0.0, add_mass = wingInbdPylonMass	}, -- BDU-50LGB
	{ CLSID = "{BDU-50HD}",								arg_value = 0.0,attach_point_position = {-0.08,  0.0,   0.0}, add_mass = wingInbdPylonMass	},
}
local centerline =
{
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", arg_value = 0.0, add_mass = ctrPylonMass	},	-- Mk-82
	{ CLSID = "{Mk82SNAKEYE}",							arg_value = 0.0, add_mass = ctrPylonMass	},	-- Mk-82 Snakeye
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}", arg_value = 0.0, add_mass = ctrPylonMass	},	-- Mk-83
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}", arg_value = 0.0, add_mass = ctrPylonMass	},	-- Mk-84
	{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}", arg_value = 0.0, add_mass = ctrPylonMass	},	-- M117
	{ CLSID = "{MER-5E_MK82x5}",						arg_value = 0.0,attach_point_position = {0.0, -0.005, 0.0}, add_mass = ctrPylonMass	},	-- MER-5E 5xMk-82
	{ CLSID = "{MER-5E_Mk82SNAKEYEx5}",					arg_value = 0.0,attach_point_position = {0.0, -0.005, 0.0}, add_mass = ctrPylonMass	},	-- MER-5E 5xMk-82 Snakeye
	{ CLSID = "{CBU-52B}",								arg_value = 0.0, add_mass = ctrPylonMass	},	-- CBU-52
	{ CLSID = "{0395076D-2F77-4420-9D33-087A4398130B}", arg_value = 0.0, add_mass = ctrPylonMass	},	-- 275 gal drop tank
	{ CLSID = "{PTB-150GAL}",							arg_value = 0.0, add_mass = ctrPylonMass	},	-- 150 gal drop tank
	{ CLSID = "MXU-648-TP",								arg_value = 0.0, add_mass = ctrPylonMass	},	-- MXU-648-TP
	--
	{ CLSID = "{BDU-33}",								arg_value = 0.0,attach_point_position = { 0.285, 0.0,   0.0}, add_mass = ctrPylonMass	},	-- BDU-33
	{ CLSID = "{BDU-50LD}",								arg_value = 0.0,attach_point_position = {-0.10, -0.008, 0.0}, add_mass = ctrPylonMass	},
	{ CLSID = "{BDU-50HD}",								arg_value = 0.0,attach_point_position = {-0.03,   0.0,  0.0}, add_mass = ctrPylonMass	},
}

function make_tiger(rewrite_settings)  

local rewrite_settings  = rewrite_settings or {Shape = 'f-5e' , Name = 'F-5E' , WorldID = F_5E, desrt = 'f-5e_oblomok'}
local base_F_5 = {
	Picture				=	"F-5E.png",	

	shape_table_data 	= 
	{
		{
			file		= rewrite_settings.Shape	or 'f-5e';
			username	= rewrite_settings.Name		or 'F-5E';
			index		= rewrite_settings.WorldID	or F_5E;
			life		= 16; -- прочность объекта (методом lifebar*) -- The strength of the object (ie. lifebar *)
			vis			= 3; -- множитель видимости (для маленьких объектов лучше ставить поменьше). Visibility factor (For a small objects is better to put lower nr).
			desrt		= rewrite_settings.Name..'_destr';-- Name of destroyed object file name
			fire		= { 300, 4}; -- Fire on the ground after destoyed: 300sec 4m
			classname	= "lLandPlane";
			positioning	= "BYNORMAL";
		},
		{
			name	= rewrite_settings.Name.."_destr";
			file	= rewrite_settings.desrt	or "f-5e_oblomok";
			fire	= { 240, 2};
		},
	},
	DisplayName									=	_("F-5E"),
	mapclasskey									=	"P0091000024",
	WorldID										=	46,
	attribute 									= 	{wsType_Air,wsType_Airplane,wsType_Fighter,F_5E,"Fighters"},
	
	Rate										=	30,
	AOA_take_off								=	0.17,
	CAS_min										=	60,
	CanopyGeometry 								=	makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_BAD),
	Categories 									=	{"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},

	nose_gear_pos 							 =	{ 4.406, -1.898, 0},
	nose_gear_amortizer_direct_stroke        =	0,
	nose_gear_amortizer_reversal_stroke      = -0.502,  -- up 
	nose_gear_amortizer_normal_weight_stroke = -0.050-0.325,
	nose_gear_wheel_diameter				 =	0.460,
	nose_gear_hiking						 =	0.325,
	
	main_gear_pos 							 = 	{-0.8546, -1.702458, 1.914661},
	main_gear_amortizer_direct_stroke		=  0,
	main_gear_amortizer_reversal_stroke		= -0.215084, --  up 
	main_gear_amortizer_normal_weight_stroke = -0.165,
	main_gear_wheel_diameter				=	0.600,

	radar_can_see_ground						=	false,
	range										=	2112,
	tand_gear_max								=	1.1917,
	thrust_sum_ab								=	7500,
	thrust_sum_max								=	4534,
	wing_area									=	17.3,
	wing_span									=	8.53,
	wing_tip_pos 								= 	{-2.784,	-0.393,	4.037},
	IR_emission_coeff							=	0.4,
	IR_emission_coeff_ab						=	2,
	M_empty										=	4831,
	M_fuel_max									=	1996,
	M_max										=	11187,
	M_nominal									=	7800,
	Mach_max									=	1.61,
	Ny_max										=	7.5,
	Ny_max_e									=	7,
	Ny_min										=	-2,
	RCS											=	3,
	defFuelRatio								=	1.0, -- топливо по умолчанию в долях от полного
	H_max										=	16154,
	V_land										=	68,
	V_max_h										=	484,
	V_max_sea_level								=	374,
	V_opt										=	174,
	V_take_off									=	65,
	Vy_max										=	200,
	WingSpan									=	8.53,
	average_fuel_consumption					=	0.06,
	bank_angle_max								=	60,
	bigParkingRamp								=	false,
	brakeshute_name								=	3,
	detection_range_max							=	60,
	engines_count								=	2,
	flaps_maneuver								=	1,
	has_afteburner								=	true,
	has_differential_stabilizer					=	false,
	has_speedbrake								=	true,
	flaps_transmission							=	"Electrical",
	undercarriage_transmission					=	"Hydraulic",
	height										=	4.06,
	length										=	14.68,
	stores_number								=	7,
	country_of_origin							= "USA",
	
	undercarriage_transmission 	= "Hydraulic",
    undercarriage_movement 		= 2,
	crew_members = 
	{
		[1] = 
		{
			ejection_seat_name	=	17,
			drop_canopy_name	=	43,
			canopy_pos			=	{1.170, 0.0, 0.0},
			pos = 	{3.022,	0.86,	0},
		}, -- end of [1]
	}, -- end of crew_members

    mechanimations = make_default_mech_animation("Default"),

	-- add model draw args for network transmitting to this draw_args table (16 limit)
	net_animation = 
	{
		 13, --[[right LE flap]]
		 14, --[[left LE flap]]
		 23, --[[chocks]]
		 25, --[[hoook]]
		 35, --[[drag chute]]
		 36, --[[drag chute]]
		 37, --[[drag chute]]
		274, --[[left aux inlet]]
		275, --[[right aux inlet]]
		327, --[[left up gun door]]
		328, --[[right up gun door]]
		329, --[[left down gun door]]
		330, --[[right down gun door]]
		474, --[[nose strut]]
		475 --[[nose strut]]
	},
	
	Pylons = rewrite_settings.Pylons or {
		pylon(1, 0, -1.319000, -0.332000, -4.099000,
			{
				use_full_connector_position = true,
				connector		= "Pylon1",
			},
			tips
		),
		pylon(2, 0, -1.122000, -0.861000, -3.132000,
			{
				use_full_connector_position = true,
				connector		= "Pylon2",
				arg				= 309,
				arg_value		= 1,
				droppable_shape	= "F-5e3_pylon_02",
			},
			outboard
		),
		pylon(3, 0, -1.190000, -0.922000, -2.334000,
			{
				use_full_connector_position = true,
				connector		= "Pylon3",
				arg				= 310,
				arg_value		= 1,
				droppable_shape	= "F-5e3_pylon_03",
			},
			inboard
		),
		pylon(4, 0,  0.065000, -0.930000,  0.000000,
			{
				use_full_connector_position = true,
				connector		= "Pylon4",
				arg				= 311,
				arg_value		= 1,
				droppable_shape	= "F-5e3_pylon_04c",
			},
			centerline
		),
		pylon(5, 0, -1.190000, -0.922000,  2.334000,
			{
				use_full_connector_position = true,
				connector		= "Pylon5",
				arg				= 312,
				arg_value		= 1,
				droppable_shape	= "F-5e3_pylon_05",
			},
			inboard
		),
		pylon(6, 0, -1.122000, -0.861000,  3.132000,
			{
				use_full_connector_position = true,
				connector		= "Pylon6",
				arg				= 313,
				arg_value		= 1,
				droppable_shape	= "F-5e3_pylon_06",
			},
			outboard
		),
		pylon(7, 0, -1.319000, -0.332000,  4.099000,
			{
				use_full_connector_position = true,
				connector		= "Pylon7",
			},
			tips
		),
	},
    	
	Guns = {
		M_39({
		
            count = 280,
			muzzle_pos				= {4.904,  0.239,-0.248},
			muzzle_pos_connector	= "Gun_point_00",
			supply_position			= {4.8753, 0, -0.2},	-- approx
			drop_cartridge			= 204,		-- cartridge_50cal
			ejector_pos_connector	= "ejector_1",
			ejector_dir 			= {-2,0,0},
			effects = {
				{name = "FireEffect", arg = 432,duration = 0.02, attenuation = 2 , light_pos = {0.5,0,0}},
				{name = "SmokeEffect",gas_deflector_arg = 327  , add_speed = {0, -3, 10}},
			},
		}),			-- LEFT
		M_39({
		
			count = 280,
			muzzle_pos				= {4.904,  0.239, 0.242},
			muzzle_pos_connector	= "Gun_point_01",
			supply_position			= {4.8753, 0,  0.2},	-- approx
			drop_cartridge 			= 204,		-- cartridge_50cal
			ejector_pos_connector	= "ejector_2",
			ejector_dir 			= {-2,0,0},
			effects = {
				{name = "FireEffect", arg 				= 433, duration  = 0.02, attenuation = 2 , light_pos = {0.5,0,0}},
				{name = "SmokeEffect",gas_deflector_arg = 328, add_speed = {0,  3, 10}},
			},
		})			-- RIGHT
	},
	ammo_type_default = 2, -- interface to set desired ammunition mix in ME (DCSCORE-1104)
	ammo_type ={_("HEI High Explosive Incendiary"),
				_("CM Combat Mix"),
				_("AP Armor Piercing"),
				_("TP Target Practice"),
	},
   

	Sensors = {
		RADAR = "AN/APQ-153",
	},

	-- Countermeasures
	passivCounterm = {
		CMDS_Edit = false,
		SingleChargeTotal = 0,
		chaff = {default = 0, increment = 0, chargeSz = 0},
		flare = {default = 0, increment = 0, chargeSz = 0}
	},

	DefaultTask =   aircraft_task(CAP),
	Tasks 		= 
	{
		aircraft_task(CAS),
		aircraft_task(GroundAttack),
		aircraft_task(CAP),
		aircraft_task(Escort),
		aircraft_task(FighterSweep),
		aircraft_task(Intercept),
		aircraft_task(AntishipStrike),
		aircraft_task(RunwayAttack),
		aircraft_task(Reconnaissance),                              
	},-- end of Tasks

	Damage = verbose_to_dmg_properties(
	{
		["NOSE_CENTER"]				= {args = {146}, critical_damage = 3},-- NOSE_CENTER
		["NOSE_BOTTOM"]				= {args = {148}, critical_damage = 3},-- NOSE_BOTTOM
		["NOSE_LEFT_SIDE"]			= {args = {296}, critical_damage = 3},-- NOSE_LEFT_SIDE
		["NOSE_RIGHT_SIDE"]			= {args = {297}, critical_damage = 3},-- NOSE_RIGHT_SIDE

		["COCKPIT"]					= {args = {65},  critical_damage = 1},-- COCKPIT
		["CABIN_BOTTOM"]			= {args = {152}, critical_damage = 3},-- CABIN_BOTTOM
		["CABIN_LEFT_SIDE"]			= {args = {298}, critical_damage = 3},-- CABIN_LEFT_SIDE
		["CABIN_RIGHT_SIDE"]		= {args = {299}, critical_damage = 3},-- CABIN_RIGHT_SIDE

		["FRONT_GEAR_BOX"]			= {args = {265}, critical_damage = 2},-- FRONT_GEAR_BOX
		["WHEEL_F"]					= {args = {134}, critical_damage = 3},-- WHEEL_F

		["FUSELAGE_LEFT_SIDE"]		= {args = {154}, critical_damage = 3},-- FUSELAGE_LEFT_SIDE
		["FUSELAGE_RIGHT_SIDE"]		= {args = {153}, critical_damage = 3},-- FUSELAGE_RIGHT_SIDE
		["FUSELAGE_BOTTOM"]			= {args = {156}, critical_damage = 4},-- FUSELAGE_BOTTOM
		["FUSELAGE_BOTTOM_LEFT"]	= {args = {158}, critical_damage = 3},
		["FUSELAGE_BOTTOM_RIGHT"]	= {args = {157}, critical_damage = 3},
		["TAIL"]					= {args = {159}, critical_damage = 2},--,deps_cells = 	{40,	45,	46},},-- TAIL
		["AIR_BRAKE_L"]				= {args = {185}, critical_damage = 1},-- AIR_BRAKE_L
		["AIR_BRAKE_R"]				= {args = {183}, critical_damage = 1},-- AIR_BRAKE_R
		["PYLON_04"]				= {				 critical_damage = 2},

		["MTG_LEFT_SIDE"]			= {args = {166}, critical_damage = 3},
		["MTG_CENTER_L"]			= {args = {168}, critical_damage = 3},
		["MTG_BOTTOM_LEFT"]			= {args = {169}, critical_damage = 3},
		["TAIL_LEFT_SIDE"]			= {args = {167}, critical_damage = 3},-- TAIL_LEFT_SIDE
		["ENGINE_L"]				= {args = {272}, critical_damage = 2},-- ENGINE_L
		["L_GEAR_BOX"]				= {args = {267}, critical_damage = 3},
		["WHEEL_L"]					= {args = {136}, critical_damage = 3},-- WHEEL_L

		["MTG_RIGHT_SIDE"]			= {args = {160}, critical_damage = 3},
		["MTG_CENTER_R"]			= {args = {162}, critical_damage = 3},
		["MTG_BOTTOM_RIGHT"]		= {args = {163}, critical_damage = 3},
		["TAIL_RIGHT_SIDE"]			= {args = {161}, critical_damage = 3},-- TAIL_RIGHT_SIDE
		["ENGINE_R"]				= {args = {270}, critical_damage = 2},-- ENGINE_R
		["R_GEAR_BOX"]				= {args = {266}, critical_damage = 3},
		["WHEEL_R"]					= {args = {135}, critical_damage = 3},-- WHEEL_R

		["WING_L_IN"]				= {args = {225}, critical_damage = 5, deps_cells = {"WING_L_CENTER", "FLAP_L_IN", "PYLON_03"}},-- WING_L_IN
		["WING_L_CENTER"]			= {args = {224}, critical_damage = 4, deps_cells = {"WING_L_OUT", "ELERON_L", "WING_L_PART_CENTER", "PYLON_02"}},-- WING_L_CENTER
		["WING_L_OUT"]				= {args = {223}, critical_damage = 3},-- WING_L_OUT
		["WING_L_PART_CENTER"]		= {args = {230}, critical_damage = 1.5},-- WING_L_PART_CENTER -- slat
		["FLAP_L_IN"]				= {args = {227}, critical_damage = 2},-- FLAP_L_IN -- flap
		["ELERON_L"]				= {args = {226}, critical_damage = 1},-- ELERON_L
		["PYLON_02"]				= {				 critical_damage = 2},
		["PYLON_03"]				= {				 critical_damage = 2},

		["WING_R_IN"]				= {args = {215}, critical_damage = 5,deps_cells = {"WING_R_CENTER", "FLAP_R_IN", "PYLON_05"}},-- WING_R_IN
		["WING_R_CENTER"]			= {args = {214}, critical_damage = 4,deps_cells = {"WING_R_OUT", "ELERON_R", "WING_R_PART_CENTER", "PYLON_06"}},-- WING_R_CENTER
		["WING_R_OUT"]				= {args = {213}, critical_damage = 3},-- WING_R_OUT
		["WING_R_PART_CENTER"]		= {args = {220}, critical_damage = 1.5},-- WING_R_PART_CENTER -- slat
		["FLAP_R_IN"]				= {args = {217}, critical_damage = 2},-- FLAP_R_IN -- flap
		["ELERON_R"]				= {args = {216}, critical_damage = 1},-- ELERON_R
		["PYLON_05"]				= {				 critical_damage = 2},
		["PYLON_06"]				= {				 critical_damage = 2},

		["FIN_L_BOTTOM"]			= {args = {242}, critical_damage = 4,deps_cells = {"FIN_L_TOP"}},                                                                                      
		["FIN_L_TOP"]				= {args = {242}, critical_damage = 4},
		["RUDDER"]					= {args = {247}, critical_damage = 1},-- RUDDER

		["STABILIZER_L_IN"]			= {args = {240}, critical_damage = 2},-- STABILIZER_L_IN
		["STABILIZER_R_IN"]			= {args = {238}, critical_damage = 2},-- STABILIZER_R_IN
		["HOOK"]					= {critical_damage = 2},
		["Box807"]					= {critical_damage = 2},		                                    
	}),-- end of Damage

	DamageParts 	=
	{
			[1] = "f-5e_oblomok_wing_l",
			[2] = "f-5e_oblomok_wing_r",
	},

	HumanRadio 		=
	{
		frequency	= 305.0,
		editable	= true,
		minFrequency	= 225.000,
		maxFrequency	= 399.999,
		modulation	= MODULATION_AM,
	},
	TACAN_AA = true,

	SFM_Data =
	{
		aerodynamics =
		{
			Cy0	=	0,
			Mzalfa	=	4.355,
			Mzalfadt	=	0.8,
			kjx	=	2.75,
			kjz	=	0.00125,
			Czbe	=	-0.016,
			cx_gear	=	0.0268,
			cx_flap	=	0.05,
			cy_flap	=	0.52,
			cx_brk	=	0.06,
			table_data = 
			{	--      M		Cx0*	Cya*	B2		B4	 	Omxmax	Aldop*	Cymax*
				[1] = 	{0.0,	0.017,	0.07,	0.1,	0.0001,	0.5,	30,	1.2},
				[2] = 	{0.2,	0.017,	0.07,	0.1,	0.0001,	1.5,	30,	1.2},
				[3] = 	{0.4,	0.017,	0.07,	0.1,	0.0001,	2.5,	30,	1.2},
				[4] = 	{0.6,	0.017,	0.073,	0.1,	0.0001,	3.5,	30,	1.2},
				[5] = 	{0.7,	0.017,	0.076,	0.1,	0.0001,	3.5,	28.666666666667,	1.18},
				[6] = 	{0.8,	0.017,	0.079,	0.1,	0.0001,	3.5,	27.333333333333,	1.16},
				[7] = 	{0.9,	0.02,	0.083,	0.14,	0.0001,	3.5,	26,	1.14},
				[8] = 	{1.0,	0.03,	0.085,	0.16,	0.0001,	3.5,	24.666666666667,	1.12},
				[9] = 	{1.05,	0.036,	0.0855,	0.18,	0.0001,	3.5,	24,	1.11},
				[10] = 	{1.1,	0.042,	0.086,	0.2,	0.0001,	3.15,	18,	1.1},
				[11] = 	{1.2,	0.043,	0.083,	0.23,	0.0001,	2.45,	17,	1.05},
				[12] = 	{1.3,	0.042,	0.077,	0.25,	0.0001,	1.75,	16,	1},
				[13] = 	{1.5,	0.04,	0.062,	0.3,	0.0001,	1.5,	13,	0.9},
				[14] = 	{1.7,	0.036666666666667,	0.051333333333333,	0.348,	0.0001,	0.9,	12,	0.7},
				[15] = 	{1.8,	0.035,	0.046,	0.372,	0.0001,	0.86,	11.4,	0.64},
				[16] = 	{2.0,	0.032,	0.039,	0.42,	9.9999999999999e-006,	0.78,	10.2,	0.52},
				[17] = 	{2.2,	0.032,	0.034,	0.458,	1e-005,	0.7,	9,	0.4},
				[18] = 	{2.5,	0.03,	0.033,	0.515,	1e-005,	0.7,	9,	0.4},
				[19] = 	{3.0,	0.03,	0.033,	0.61,	1e-005,	0.7,	9,	0.4},
				[20] = 	{3.9,	0.03,	0.033,	0.61,	1e-005,	0.7,	9,	0.4},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine =
		{
			type	=	"TurboJet",
			Nmg	=	50.0,
            Startup_Duration = 30.0,
            Shutdown_Duration = 20.0,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			hMaxEng	=	19,
			dcx_eng	=	0.0144,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	1650,
			dpdh_f	=	2950,
			table_data = 
			{
				[1] = 	{0.0,	28311.1,	44492},
				[2] = 	{0.2,	26133.3,	41016.1},
				[3] = 	{0.4,	25044.4,	39800},
				[4] = 	{0.6,	24500.0,	40600},
				[5] = 	{0.7,	24500.0,	41500},
				[6] = 	{0.8,	24500.0,	42700},
				[7] = 	{0.9,	25044.4,	45200},
				[8] = 	{1.0,	25316.7,	49400},
				[9] = 	{1.1,	25588.9,	54500},
				[10] = 	{1.2,	26133.3,	56500},
				[11] = 	{1.3,	26677.8,	58200},
				[12] = 	{1.5,	28311.1,	62400},
				[13] = 	{1.8,	30488.9,	62000},
				[14] = 	{2.0,	31577.8,	56500},
				[15] = 	{2.2,	31033.3,	55700},
				[16] = 	{2.5,	29944.4,	53000},
				[17] = 	{3.0,	27222.2,	55000},
			}, -- end of table_data
		}, -- end of engine
	},-- end of SFM_Data

	engines_nozzles =
	{
		[1] =
		{
			pos = 	{-6.922,	-0.084,	-0.226},
			elevation			=	0.5,
			azimuth				=	-2.08,
			diameter			=	0.5,
			exhaust_length_ab	=	4.5,
			exhaust_length_ab_K	=	0.76,
			smokiness_level     = 	0.15, 
		}, -- end of [1]
		[2] =
		{
			pos 				= 	{-6.922,	-0.084,	0.226},
			elevation			=	0.5,
			azimuth				=	2.08,
			diameter			=	0.5,
			exhaust_length_ab	=	4.5,
			exhaust_length_ab_K	=	0.76,
			smokiness_level     = 	0.15, 
		}, -- end of [2]
	}, -- end of engines_nozzles
	fires_pos =
	{
		[1] = 	{-1.801,	-0.633,	0}, -- offsets: length, height, witdth 
		[2] = 	{-0.961,	-0.311,	1.9}, -- / at least some fuel lines are here
		[3] = 	{-0.961,	-0.311,	-1.9}, -- / at least some fuel lines are here
		[4] = 	{-1.42,		-0.311,	2.75}, -- / at least some fuel lines are here
		[5] = 	{-1.42,		-0.311,	-2.75}, -- / at least some fuel lines are here
		--[6] = 	{-1.72,		-0.311,	3.57}, -- /no fuel
		--[7] = 	{-1.72,		-0.311,	-3.57}, -- /no fuel
		[8] = 	{-5.922,	-0.084,	0.226},
		[9] = 	{-5.922,	-0.084,	-0.226},
		[10] = 	{-0.088,	0.55,	0},
		[11] = 	{-0.023,	-0.61,	0},
	}, -- end of fires_pos

	lights_data = {
		typename = "collection",
		lights = {
			[WOLALIGHT_BEACONS] = {
				typename = "collection",
				lights = {
					{ -- 0 -- tail beacon
						typename = "RotatingBeacon", position = {-4.088, 1.970, 0.000}, argument = 192,
						proto = lamp_prototypes.ANO_3_Kr, angle_max = math.rad(45.0),
						cups = 1, angular_velocity = math.rad(380), argument_threshold = 0.47,
					},
				},
			},
			[WOLALIGHT_LANDING_LIGHTS] = {
				typename = "collection",
				lights = {
					{ -- 0 -- left ldg & taxi
						typename = "collection",
						lights = {
							{
								typename = "Spot", connector = "MAIN_SPOT_L", argument = 208,
								color = {255, 255, 255, 0.25}, range = 2.1, angle_max = math.rad(180.0), angle_min = math.rad(170.0),
								exposure = {{51, 0.81, 0.82}}, movable = true,
							},
							{
								typename = "Omni", connector = "MAIN_SPOT_L", pos_correction = {0.3, 0.0, 0.0},
								color = {255, 255, 255, 0.25}, range = 3.8,
								exposure = {{51, 0.81, 0.82}}, movable = true,
							},
						},
					},
					{ -- 1 -- right ldg & taxi
						typename = "collection",
						lights = {
							{
								typename = "Spot", connector = "MAIN_SPOT_R", argument = 209,
								color = {255, 255, 255, 0.25}, range = 2.1, angle_max = math.rad(180.0), angle_min = math.rad(170.0),
								exposure = {{51, 0.81, 0.82}}, movable = true,
							},
							{
								typename = "Omni", connector = "MAIN_SPOT_R", pos_correction = {0.3, 0.0, 0.0},
								color = {255, 255, 255, 0.25}, range = 3.8,
								exposure = {{51, 0.81, 0.82}}, movable = true,
							},
						},
					},
				},
			},
			[WOLALIGHT_TAXI_LIGHTS] = {
				typename = "collection",
				lights = {
					{ -- 0 -- left ldg & taxi
						typename = "collection",
						lights = {
							{
								typename = "Spot", connector = "MAIN_SPOT_L", argument = 208,
								color = {255, 255, 255, 0.25}, range = 2.1, angle_max = math.rad(180.0), angle_min = math.rad(170.0),
								exposure = {{51, 0.81, 0.82}}, movable = true,
							},
							{
								typename = "Omni", connector = "MAIN_SPOT_L", pos_correction = {0.3, 0.0, 0.0},
								color = {255, 255, 255, 0.25}, range = 3.8,
								exposure = {{51, 0.81, 0.82}}, movable = true,
							},
						},
					},
					{ -- 1 -- right ldg & taxi
						typename = "collection",
						lights = {
							{
								typename = "Spot", connector = "MAIN_SPOT_R", argument = 209,
								color = {255, 255, 255, 0.25}, range = 2.1, angle_max = math.rad(180.0), angle_min = math.rad(170.0),
								exposure = {{51, 0.81, 0.82}}, movable = true,
							},
							{
								typename = "Omni", connector = "MAIN_SPOT_R", pos_correction = {0.3, 0.0, 0.0},
								color = {255, 255, 255, 0.25}, range = 3.8,
								exposure = {{51, 0.81, 0.82}}, movable = true,
							},
						},
					},
				},
			},
			[WOLALIGHT_NAVLIGHTS] = {
				typename = "collection",
				lights = {
					{ -- 0 -- wings
						typename = "collection",
						lights = {
							{
								typename = "argumentlight", argument = 191,
							},
							{
								typename = "Spot", connector = "BANO_015", dir_correction = {elevation = math.rad(-90.0)},
								proto = lamp_prototypes.ANO_3_Kr, angle_max = math.rad(120.0),
							},
							{
								typename = "Spot", connector = "BANO_018", dir_correction = {elevation = math.rad(-90.0)},
								proto = lamp_prototypes.ANO_3_Zl, angle_max = math.rad(120.0),
							},
						},
					},
					{ -- 1 -- tail
						typename = "collection",
						lights = {
							{
								typename = "argumentlight", argument = 193,
								controller = "Strobe", mode = 0, period = 1.03, flash_time = 0.77,
							},
							{
								typename = "Omni", connector = "BANO_4", pos_correction = {0.0, 0.1, 0.0},
								proto = lamp_prototypes.ANO_3_Bl, range = 2.0,
								controller = "Strobe", mode = 0, period = 1.03, flash_time = 0.77,
							},
							{
								typename = "Spot", connector = "BANO_4", dir_correction = {elevation = math.rad(-135.0)},
								proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(150.0), angle_min = math.rad(90.0),
								controller = "Strobe", mode = 0, period = 1.03, flash_time = 0.77,
							},
							{
								typename = "Omni", connector = "BANO_020", pos_correction = {0.0, -0.1, 0.0},
								proto = lamp_prototypes.ANO_3_Bl, range = 2.0,
								controller = "Strobe", mode = 0, period = 1.03, flash_time = 0.77,
							},
							{
								typename = "Spot", connector = "BANO_020", dir_correction = {elevation = math.rad(135.0)},
								proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(150.0), angle_min = math.rad(90.0),
								controller = "Strobe", mode = 0, period = 1.03, flash_time = 0.77,
							},
						},
					},
					{ -- 2 -- inlet
						typename = "collection",
						lights = {
							{
								typename = "argumentlight", argument = 194,
								controller = "Strobe", mode = 0, period = 1.03, flash_time = 0.77,
							},
							{
								typename = "Spot", connector = "BANO_016", dir_correction = {elevation = math.rad(-60.0)},
								proto = lamp_prototypes.ANO_3_Kr, angle_max = math.rad(150.0), angle_min = math.rad(90.0),
								controller = "Strobe", mode = 0, period = 1.03, flash_time = 0.77,
							},
							{
								typename = "Spot", connector = "BANO_019", dir_correction = {elevation = math.rad(-60.0)},
								proto = lamp_prototypes.ANO_3_Zl, angle_max = math.rad(150.0), angle_min = math.rad(90.0),
								controller = "Strobe", mode = 0, period = 1.03, flash_time = 0.77,
							},
						},
					},
				},
			},
			[WOLALIGHT_FORMATION_LIGHTS] = {
				typename = "collection",
				lights = {
					{ -- 0 -- electroluminescent
						typename = "argumentlight", argument = 88,
					},
					{ -- 1 -- tips
						typename = "collection",
						lights = {
							{
								typename = "argumentlight", argument = 190,
							},
							{
								typename = "Spot", connector = "BANO_2", dir_correction = {elevation = math.rad(-135.0)},
								proto = lamp_prototypes.BANO_7M_red,
							},
							{
								typename = "Spot", connector = "BANO_013", dir_correction = {elevation = math.rad(-135.0)},
								proto = lamp_prototypes.BANO_7M_green,
							},
						},
					},
				},
			},
			[WOLALIGHT_AUX_LIGHTS] = {
				typename = "collection",
				lights = {
					{ -- 0 -- fuselage
						typename = "collection",
						lights = {
							{
								typename = "argumentlight", argument = 196,
								power_up_t = 1.0,
							},
							{
								typename = "Spot", connector = "MAIN_SPOT_PTR_L",
								proto = lamp_prototypes.FR_100, angle_max = math.rad(94.0), angle_min = math.rad(0.0), angle_change_rate = math.rad(44.0 * 0.25),
								power_up_t = 1.0,
							},
							{
								typename = "Spot", connector = "MAIN_SPOT_PTR_R",
								proto = lamp_prototypes.FR_100, angle_max = math.rad(94.0), angle_min = math.rad(0.0), angle_change_rate = math.rad(44.0 * 0.25),
								power_up_t = 1.0,
							},
						},
					},
				},
			},
		}, -- end of lights
	},-- end of lights_data
}-- end of base_F_5

base_F_5.mechanimations.HeadLights = {
	{Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 51, "to", 0.0, "speed", 0.25},},},},},
	{Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 51, "to", 0.92, "speed", 0.25},},},},},
	{Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 51, "to", 1.0, "speed", 0.25},},},},},
}

base_F_5.mechanimations.LeftStrut = {
			{
				Transition = {"Retract", "Extend"},
				Sequence = {						
					{C = {{"VelType", 1}, {"Arg", 116, "to", 1.0, "speed", 0.5 , "sign", 1}}, Width = {0.0, 0.25}},
					{C = {{"Sleep", "for", 0.5}}, Width = {0.25, 0.5}},						
					{C = {{"VelType", 5}, {"Arg", 5, "to", 1.0, "speed", 1.0/2.5, "sign", 1}}, Width = {0.5, 1.0}},
					{C = {{"Sleep", "for", 0.1}}, Width = {0.25, 0.5}},
					{C = {{"VelType", 1}, {"Arg", 116, "to", 0.0, "speed", 1.5 , "sign", -1}}, Width = {0.0, 0.25}},
				},
				Flags = {"Reversible"},
			},
			{
				Transition = {"Extend", "Retract"},
				Sequence = {
					--[[0]]{C = {{"VelType", 1}, {"Arg", 116, "to", 1.0, "speed", 1.5 , "sign", 1}}, Width = {0.0, 0.25}},
					--[[1]]{C = {{"VelType", 5}, {"Arg", 5, "to", 0.0, "speed", 1.0/2.5, "sign", -1}}, Width = {0.0, 0.5}},	-- retract strut
					--[[2]]{C = {{"Sleep", "for", 3.0}}},	-- wait 3.0 seconds, then check front strut
					--[[3]]{C = {{"ArgumentPhase", 6, "x", 0, "to", 0.1, "sign", -1}}}, -- if(argumentValue(0)<0.1) goto 5	when central strut retracted - close doors
					--[[4]]{C = {{"Sleep", "for", 0.5}}},	-- halt(0.5)
					--[[5]]{C = {{"ValuePhase", 3}}}, -- goto 2 - check front strut
					--[[6]]{C = {{"Arg", 5, "set", 0.0}, {"VelType", 4}, {"Arg", 116, "to", 0.0, "speed", 1.5, "sign", -1}}},	-- close the door
				},
				Flags = {"Reversible"},
			},
			{
				Transition = {"Any", "Collapse"},
				Sequence = {
					{C = {{"VelType", 5}, {"PosType", 6}, {"Arg", 5, "to", 0.5, "speed", 2.0, "sign", -1}}},
				},
			},
		}
base_F_5.mechanimations.RightStrut = {
			{
				Transition = {"Retract", "Extend"},
				Sequence = {						
					{C = {{"VelType", 1}, {"Arg", 115, "to", 1.0, "speed", 0.5 , "sign", 1}}, Width = {0.0, 0.25}},
					{C = {{"Sleep", "for", 0.5}}, Width = {0.25, 0.5}},						
					{C = {{"VelType", 3}, {"Arg", 3, "to", 1.0, "speed", 1.0/2.5, "sign", 1}}, Width = {0.5, 1.0}},
					{C = {{"Sleep", "for", 0.1}}, Width = {0.25, 0.5}},
					{C = {{"VelType", 1}, {"Arg", 115, "to", 0.0, "speed", 1.5 , "sign", -1}}, Width = {0.0, 0.25}},
				},
				Flags = {"Reversible"},
			},
			{
				Transition = {"Extend", "Retract"},
				Sequence = {
					--[[0]]{C = {{"VelType", 1}, {"Arg", 115, "to", 1.0, "speed", 1.5 , "sign", 1}}, Width = {0.0, 0.25}},
					--[[1]]{C = {{"VelType", 5}, {"Arg", 3, "to", 0.0, "speed", 1.0/2.5, "sign", -1}}, Width = {0.0, 0.5}},	-- retract strut
					--[[2]]{C = {{"Sleep", "for", 3.0}}},	-- wait 3.0 seconds, then check front strut
					--[[3]]{C = {{"ArgumentPhase", 6, "x", 0, "to", 0.1, "sign", -1}}}, -- if(argumentValue(0)<0.1) goto 5	when central strut retracted - close doors
					--[[4]]{C = {{"Sleep", "for", 0.5}}},	-- halt(0.5)
					--[[5]]{C = {{"ValuePhase", 3}}}, 		-- goto 2 - check front strut
					--[[6]]{C = {{"Arg", 3, "set", 0.0}, {"VelType", 4}, {"Arg", 115, "to", 0.0, "speed", 1.5, "sign", -1}}},	-- close the door					
				},
				Flags = {"Reversible"},
			},
			{
				Transition = {"Any", "Collapse"},
				Sequence = {
					{C = {{"VelType", 3}, {"PosType", 7}, {"Arg", 3, "to", 0.5, "speed", 2.0, "sign", -1}}},
				},
			},
		}
base_F_5.mechanimations.CentralStrut = {
			{
				Transition = {"Retract", "Extend"},
				Sequence = {						
					{C = {{"Arg", 474, "set", 0.0}, {"VelType", 1}, {"Arg", 117, "to", 1.0, "speed", 0.5 , "sign", 1}}, Width = {0.0, 0.25}},
					{C = {{"Sleep", "for", 0.5}}, Width = {0.25, 0.5}},						
					{C = {{"VelType", 3}, {"Arg", 0, "to", 1.0, "speed", 1.0/2.5, "sign", 1}}, Width = {0.5, 1.0}},
					{C = {{"Sleep", "for", 0.1}}, Width = {0.25, 0.5}},
					{C = {{"VelType", 1}, {"Arg", 117, "to", 0.0, "speed", 1.5 , "sign", -1}}, Width = {0.0, 0.25}},
				},
				Flags = {"Reversible"},
			},
			{
				Transition = {"Extend", "Retract"},
				Sequence = {
					{C = {{"VelType", 1}, {"Arg", 117, "to", 1.0, "speed", 1.5 , "sign", 1}}, Width = {0.0, 0.25}},
					{C = {{"VelType", 5}, {"Arg", 474, "to", 0.0, "speed", 1.0/7.5, "sign", -1}}, Width = {0.0, 0.5}},	-- dehiking
					{C = {{"Sleep", "for", 0.5}}, Width = {0.5, 0.75}},	
					{C = {{"VelType", 5}, {"Arg", 0, "to", 0.0, "speed", 1.0/2.5, "sign", -1}}, Width = {0.0, 0.5}},	-- retract strut
					{C = {{"Sleep", "for", 0.1}}, Width = {0.5, 0.75}},	
					{C = {{"Arg", 0, "set", 0.0},{"Arg", 474, "set", 0.0}, {"VelType", 4}, {"Arg", 117, "to", 0.0, "speed", 1.5, "sign", -1}}, Width = {0.75, 1.0}},
				},
				Flags = {"Reversible"},
			},
			{
				Transition = {"Any", "Collapse"},
				Sequence = {
					{C = {{"PosType", 0}, {"Arg", 0, "to", 0.441, "speed", 2.0, "sign", -1}}},
				},
			},
		}

if rewrite_settings then 
	for i,o in pairs(rewrite_settings) do
		base_F_5[i] = o
	end
end
add_aircraft(base_F_5)
end

make_tiger()