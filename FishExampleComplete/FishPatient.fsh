Alias:   SCT = http://snomed.info/sct

Profile:        FishPatient
Parent:         Patient
Id:             fish-patient
Title:          "Fish Patient"
Description:    "A patient at Aquatic Veterinary Services."
// Add species extension
* extension contains FishSpecies 0..1
// Remove communication, maritalStatus
* maritalStatus 0..0
* communication 0..0
// Make Species and Contact MS
* extension[FishSpecies], contact MS

Extension:  FishSpecies
Id: fish-species
Title: "Fish Species"
Description: "The species name of a piscine (fish) patient."
* value[x] only CodeableConcept
* valueCodeableConcept from FishSpeciesValueSet (extensible)

ValueSet:  FishSpeciesValueSet
Title: "Fish Species Value Set"
Description:  "Codes describing various species of fish from SNOMED-CT."
* codes from system SCT where code is-a SCT#90580008  "Fish (organism)"
