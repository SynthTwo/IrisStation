GLOBAL_LIST_INIT(genetic_lottery_choice, list(
	"Gigantism" = /datum/mutation/human/gigantism,
	"Tourettes" = /datum/mutation/human/tourettes,
	"Muscle Spasms" = /datum/mutation/human/spastic,
	"Epilepsy" = /datum/mutation/human/epilepsy,
	"Unstable DNA" = /datum/mutation/human/bad_dna,
))

/datum/quirk/genetic_lottery
	name = "Genetic Lottery"
	desc = "You didn't...really hit big at the genetic lottery, sadly. This is the best you are gonna get."
	icon = FA_ICON_RECEIPT
	value = -4
	gain_text = "Thanks, mom and dad for these ass genes."
	lose_text = "Freed from the shackles of your DNA."
	medical_record_text = "Patient has unfortunate genetic sequences."
	/// The mutation that's applied to the mob, for ease of removal
	var/applied_mutation

/datum/quirk_constant_data/genetic_lottery
	associated_typepath = /datum/quirk/genetic_lottery
	customization_options = list(/datum/preference/choiced/genetic_lottery)

/datum/quirk/genetic_lottery/add(client/client_source)
	var/mob/living/carbon/human/human_holder = quirk_holder
	var/mutation_path = GLOB.genetic_lottery_choice[client_source?.prefs?.read_preference(/datum/preference/choiced/genetic_lottery)]
	applied_mutation = mutation_path
	human_holder.dna.add_mutation(applied_mutation, MUT_OTHER, 0)

/datum/quirk/genetic_lottery/remove()
	var/mob/living/carbon/human/human_holder = quirk_holder
	human_holder.dna.remove_mutation(applied_mutation)

/datum/preference/choiced/genetic_lottery
	category = PREFERENCE_CATEGORY_MANUALLY_RENDERED
	savefile_key = "genetic_lottery"
	savefile_identifier = PREFERENCE_CHARACTER

/datum/preference/choiced/genetic_lottery/init_possible_values()
	return GLOB.genetic_lottery_choice

/datum/preference/choiced/genetic_lottery/create_default_value()
	return "Gigantism"

/datum/preference/choiced/genetic_lottery/is_accessible(datum/preferences/preferences)
	. = ..()
	if (!.)
		return FALSE

	return "Genetic Lottery" in preferences.all_quirks

/datum/preference/choiced/genetic_lottery/apply_to_human(mob/living/carbon/human/target, value)
	return
