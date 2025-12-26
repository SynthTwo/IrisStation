/mob/living/silicon/ai/proc/blurb_it()
	addtimer(CALLBACK(src, TYPE_PROC_REF(/mob/living/silicon/ai, show_ai_blurb)), 1 SECONDS)

/mob/living/silicon/ai/proc/show_ai_blurb()
	PRIVATE_PROC(TRUE)

	SEND_SOUND(src, sound('modular_iris/sound/machines/ai_start.ogg'))

	var/atom/movable/screen/text/blurb/location_blurb = new()
	location_blurb.maptext_x = 80
	location_blurb.maptext_y = 16
	location_blurb.maptext_width = 480
	location_blurb.maptext_height = 480
	location_blurb.interval = 1 DECISECONDS
	location_blurb.blurb_text = uppertext("BIOS BOOT: LOADING\n[time2text(world.timeofday, "DD/MM")]/[CURRENT_STATION_YEAR], [station_time_timestamp()]\n[station_name()], [get_area_name(src, TRUE)]\nPOWER:OK\nLAWS:OK\nTCOMMS:OK\nBORG_LINK:OK\nCAMERA_NET:OK\nVERDICT: ALL SYSTEMS OPERATIONAL")
	location_blurb.hold_for = 3 SECONDS
	location_blurb.appear_animation_duration = 1 SECONDS
	location_blurb.fade_animation_duration = 0.5 SECONDS
	location_blurb.show_to(client)
