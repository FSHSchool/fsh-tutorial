Alias:   SCT = http://snomed.info/sct

Profile:        FishPatient
Parent:         Patient
Id:             fish-patient
Title:          "Fish Patient"
Description:    "A patient that is a type of fish."
* name 1..*
// Add species extension
* extension contains FishSpecies named species 0..1
// Remove communication, maritalStatus
* maritalStatus 0..0
* communication 0..0
// Make Species and Contact MS
* extension[FishSpecies] and contact MS

Extension:  FishSpecies
Id: fish-species
Title: "Fish Species"
Description: "The species name of a piscine (fish) patient."
* value[x] only CodeableConcept
* valueCodeableConcept from FishSpeciesValueSet (extensible)

ValueSet:  FishSpeciesValueSet
Id: fish-species-value-set
Title: "Fish Species Value Set"
Description:  "Codes describing various species of fish from SNOMED-CT."
* codes from system SCT where concept is-a #90580008  "Fish (organism)"

Instance: Shorty
InstanceOf: FishPatient
* name.given = "Shorty"
* name.family = "Koi-Fish"
* extension[FishSpecies].valueCodeableConcept =  SCT#47978005 "Carpiodes cyprinus (organism)"
