Instance: Q4MSDokumenteAbfragenPatient
InstanceOf: PlanDefinition
Title: "Dokumente beim Patienten abfragen PlanDefinition"
Usage: #definition
* url = $q4ms-dokumente-abfragen-patient
* type = $plan-definition-type#eca-rule
* status = $publication-status#draft
* experimental = true
* action.title = "Dokumente abfragen"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSDokumenteAbfragenActivity)