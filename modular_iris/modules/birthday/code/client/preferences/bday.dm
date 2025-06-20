/datum/preference/numeric/human/bday_month
	category = PREFERENCE_CATEGORY_MANUALLY_RENDERED
	savefile_key = "bday_month"
	savefile_identifier = PREFERENCE_CHARACTER
	can_randomize = FALSE

	step = 1
	minimum = 0
	maximum = 12

/datum/preference/numeric/human/bday_month/apply_to_human(mob/living/carbon/human/target, value)
	return

/datum/preference/numeric/human/bday_month/create_default_value()
	return 0

/datum/preference/numeric/human/bday_day
	category = PREFERENCE_CATEGORY_MANUALLY_RENDERED
	savefile_key = "bday_day"
	savefile_identifier = PREFERENCE_CHARACTER
	can_randomize = FALSE

	step = 1
	minimum = 0
	maximum = 31

/datum/preference/numeric/human/bday_day/apply_to_human(mob/living/carbon/human/target, value)
	return

/datum/preference/numeric/human/bday_day/create_default_value()
	return 0

/datum/preference/numeric/human/last_bday_note
	category = PREFERENCE_CATEGORY_MANUALLY_RENDERED
	savefile_key = "last_bday_note"
	savefile_identifier = PREFERENCE_CHARACTER
	can_randomize = FALSE

	step = 1
	minimum = 0
	maximum = 9999

/datum/preference/numeric/human/last_bday_note/apply_to_human(mob/living/carbon/human/target, value)
	return

/datum/preference/numeric/human/last_bday_note/create_default_value()
	return 0

/datum/preference/numeric/human/last_bday_note/is_accessible(datum/preferences/preferences)
	..()
	return FALSE
