/obj/item/organ/tongue/shrimp
	name = "shrimp tongue"
	desc = "A fleshy muscle mostly used for making shrimp puns."
	say_mod = "hisses"
	taste_sensitivity = 5 // The most sensitive tongue that exists, the shrimp has fried rice so many times it can tell anything apart
	modifies_speech = TRUE
	liked_foodtypes = RAW | GORE | GRAIN
	disliked_foodtypes = CLOTH | FRIED | TOXIC
	toxic_foodtypes = DAIRY

/obj/item/organ/tongue/shrimp/handle_speech(datum/source, list/speech_args)
	var/message = speech_args[SPEECH_MESSAGE]
	if(message[1] == "*") // They are emoting, no point in looking
		return

	message = replacetext(message, "simple", "shrimple") // We are not simps
	message = replacetext(message, "confusing", "conchfusing")
	message = replacetext(message, "complicated", "clampified")
	message = replacetext(message, "self", "shellf")
	message = replacetext(message, "about", "a-boat")
	message = replacetext(message, "cap", "carp")
	message = replacetext(message, "god", "cod")
	message = replacetext(message, "calamity", "clamity")
	message = replacetext(message, "help", "kelp")
	message = replacetext(message, "not", "naught")
	message = replacetext(message, "sophisticated", "sofishticated")
	message = replacetext(message, "kill", "%1") // Krill yourshellf... or skrill issue
	message = replacetext(message, "real", "reel")
	message = replacetext(message, "ill", "eel")
	message = replacetext(message, "%1", "krill") // earlier on we added a symbol so it dosen't get messed up by ill regex, we fix it here

	speech_args[SPEECH_MESSAGE] = message
