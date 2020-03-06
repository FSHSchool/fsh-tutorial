Alias: QUAL = http://hl7.org/fhir/sid/ca-hc-npn
Alias:   IDTYPE = http://terminology.hl7.org/CodeSystem/v2-0203

Profile:        Veterinarian
Parent:         Practitioner
Id:             veterinarian
Title:          "Veterinarian"
Description:    "A profile on the Practitioner resource for veterinarians. In the US, vets do not have National Provider Numbers."
* name 1..*
* qualification.code = QUAL#174MM1900N	"Other Service Providers; Veterinarian; Medical Research"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
// Make this an inline extension (could also be done as a standalone extension)
* identifier contains licenseNumber 1..1 MS
* identifier[licenseNumber].type = IDTYPE#LN "License number"
* identifier[licenseNumber].value MS

