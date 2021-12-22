Instance: Q4MSArztbriefanfrage
InstanceOf: Q4MSDokumentanforderungProfile
Usage: #definition
Title: "Arztbriefanfrage MessageDefinition"
* status = $publication-status#draft
* date = "2021-12-21"
* parent = Canonical(Q4MSDokumenteAbfragenActivity)
* eventCoding = $q4ms-dokumentanforderungkategorie#doctor-letter
* focus
  * code = $resource-type#DocumentReference
  * profile = Canonical(Q4MSArztbriefProfile)
  * min = 1