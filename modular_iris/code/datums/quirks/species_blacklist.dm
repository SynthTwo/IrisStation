/datum/quirk
	// Is the quirk only for an organic species or a synthetic species?
	var/quirk_species

if((quirk_species & QUIRK_SYNTHETIC) && !HASTRAIT(species_synth))
	CRASH("You can't apply an organic quirk to a synthetic!")
