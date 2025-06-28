/datum/mutation/human/smile
	name = "Smile"
	desc = "Causes the user to be in constant mania."
	quality = MINOR_NEGATIVE
	text_gain_indication = span_notice("You feel so happy. Nothing can be wrong with anything.")
	text_lose_indication = span_notice("Everything is terrible again.")
	power_coeff = 1

/datum/mutation/human/smile/New(class, timer, datum/mutation/human/copymut)
	. = ..()
	AddComponent(/datum/component/speechmod, replacements = strings("smile_replacement.json", "smile"))
