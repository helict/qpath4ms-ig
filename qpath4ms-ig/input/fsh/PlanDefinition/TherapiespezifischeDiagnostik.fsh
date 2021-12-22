Instance: Q4MSTherapiespezifischeDiagnostik
InstanceOf: PlanDefinition
Title: "Therapiespezifische Diagnostik PlanDefinition"
Usage: #definition
* url = "http://qpath.ukdd.de/PlanDefinition/Q4MSTherapiespezifischeDiagnostik"
* type = $plan-definition-type#eca-rule
* status = #draft
* experimental = true
* action.title = "Therapiespezifische Diagnostik"
* action.type = $action-type#create
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "is under therapy"
* action.definitionCanonical = Canonical(Q4MSTherapiespezifischeDiagnostikActivity)