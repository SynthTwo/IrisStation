/datum/species/shrimp
	name = "Shrimp"
	id = SPECIES_SHRIMP
	mutant_bodyparts = list()
	say_mod = "burbles"
	sexes = FALSE // shrimp are shrimp, nothing more nothing less
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	meat = /obj/item/food/fishmeat
	mutanttongue = /obj/item/organ/tongue/shrimp
	mutant_organs = list()
	mutant_bodyparts = list()
	inherent_traits = list(
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_GENELESS,
		TRAIT_MUTANT_COLORS,
		TRAIT_WATER_BREATHING,
		)
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/shrimp,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/shrimp,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/shrimp,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/shrimp,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/shrimp,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/shrimp,
	)
	var/special_names = list("Cajun", "Leech", "Krill", "Prawn", "Oyster", "Gill", "Shrimp", "Shrimple", "Old Bay", "Lobster", "Crabby", "Finn", "Craw", "Crawdad", "Chowder", "Crusty", "Krillin", "Barney",\
	"Saeu", "Mantis", "Pistol", "Carieda", "Crangon", "Pop", "Shelldon", "Shelly", "Krabs", "Jumbo", "Caspian", "Little Buoy", "Brook", "River", "Bubbles")
	var/human_name_chance = 5

/datum/species/shrimp/prepare_human_for_preview(mob/living/carbon/human/human)
	human.dna.features["mcolor"] = COLOR_ORANGE
	human.update_body(is_creating = TRUE)

/mob/living/carbon/human/species/shrimp
	race = /datum/species/shrimp
