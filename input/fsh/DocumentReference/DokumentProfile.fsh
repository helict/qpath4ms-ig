Profile: Q4MSDokumentProfile
Parent: DocumentReference
Title: "Dokument"
Description: "Profile eines Dokuments"
* ^url = $q4ms-dokument-sd
* type from $ihe-xds-type-code (required)
* category from $ihe-xds-class-code (required)
* securityLabel from $ihe-xds-confidentiality-code (required)
* subject only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
