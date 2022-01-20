Instance: Q4MSArztbriefanfrage
InstanceOf: Q4MSDokumentanforderungProfile
Usage: #definition
Title: "Arztbriefanfrage"
Description: "Profile einer Arztbriefanfrage"
* url = $q4ms-arztbriefanfrage-md
* status = $publication-status#draft
* date = "2021-12-21"
* parent = Canonical(Q4MSDokumenteAbfragenAD)
* eventCoding = $q4ms-dokumentanforderungkategorie#doctor-letter
* focus.code = $resource-type#DocumentReference
* focus.profile = Canonical(Q4MSArztbriefProfile)
* focus.max = "*"
* responseRequired = $messageheader-response-request#always
