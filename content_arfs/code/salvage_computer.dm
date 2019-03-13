/obj/machinery/computer/salvage
	name = "\improper salvage platform controller"
	icon_keyboard = "tech_key"
	icon_screen = "rd_key"
	light_color = "#a97faa"
	circuit = /obj/item/weapon/circuitboard/salvage
	req_one_access = list(access_engine,access_engine_equip)
	var/salvage_cooldown = 30 MINUTES		//Wait this long before the drones are refueled and ready to search for another piece of salvage
	var/default_turf = turf/space			//The turf that all turfs in the area revert back to after the salvage zone is cleared
	var/default_area = area/salvage_zone	//The area that the map templates spawn in. 14x14
	var/chance_rare = 20					//Chance for a good salvage piece to be selected
	var/chance_ultra = 10					//Chance for a very good salvage piece to be selected
	var/loaded_salvage = null				//The submap loaded right now

/obj/machinery/computer/salvage
	..()
	update_icon()