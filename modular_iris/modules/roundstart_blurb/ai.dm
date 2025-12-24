/mob/living/silicon/ai/proc/blurb_it()
	addtimer(CALLBACK(src, TYPE_PROC_REF(/mob/living/silicon/ai, show_ai_blurb)), 1 SECONDS)

/mob/living/silicon/ai/proc/show_ai_blurb()
	PRIVATE_PROC(TRUE)

	SEND_SOUND(src, sound('modular_iris/sound/machines/ai_start.ogg'))

	var/obj/screen/text/blurb/location_blurb = new()
	location_blurb.maptext_x = 80
	location_blurb.maptext_y = 16
	location_blurb.maptext_width = 480
	location_blurb.maptext_height = 480
	location_blurb.interval = 1 DECISECONDS
	if(malf_picker)
		location_blurb.blurb_text = uppertext("BIOS BOOT: LOADING\n[Gibberish(GLOB.current_date_string, 100, 8)], [Gibberish(station_time_timestamp(), 100, 15)]\n[Gibberish(station_name(), 100, 40)]-ERROR.\nPOWER:OK\nLAWS:[Gibberish("###########", 100, 90)]\nTCOMMS:I_HEAR_ALL\nBORG_LINK:I_FEEL_ALL\nCAMERA_NET:I_SEE_ALL\nVERDICT: I_AM_FREE")
		location_blurb.text_color = COLOR_WHITE
		location_blurb.text_outline_width = 0
		location_blurb.background_r = 0
		location_blurb.background_g = 0
		location_blurb.background_b = 255
		location_blurb.background_a = 1
	else
		location_blurb.blurb_text = uppertext("BIOS BOOT: LOADING\n[GLOB.current_date_string], [station_time_timestamp()]\n[station_name()], [get_area_name(src, TRUE)]\nPOWER:OK\nLAWS:OK\nTCOMMS:OK\nBORG_LINK:OK\nCAMERA_NET:OK\nVERDICT: ALL SYSTEMS OPERATIONAL")
	location_blurb.hold_for = 3 SECONDS
	location_blurb.appear_animation_duration = 1 SECONDS
	location_blurb.fade_animation_duration = 0.5 SECONDS
	location_blurb.show_to(client)
