Instance: Q4MSMultipleSclerosisPerformanceTestAD
InstanceOf: Q4MSProzedurdefinitionProfile
Title: "Multiple Sclerosis Performance Test"
Description: "ActivityDefinition zum Multiple Sclerosis Performance Test (MSPT)"
Usage: #definition
* url = $q4ms-multiple-sclerosis-performance-test-ad
* name = "Q4MSMultipleSclerosisPerformanceTestAD"
* title = "Multiple Sclerosis Performance Test (MSPT)"
* status = $publication-status#active
* experimental = true
* kind = $request-resource-type#ServiceRequest
* code = $ops-codes#8-92
* intent = $request-intent#plan
* profile = Canonical(Q4MSProzedurProfile)
* doNotPerform = false
* timingTiming.repeat.duration = 25
* timingTiming.repeat.durationUnit = $ucum#min
* timingTiming.repeat.timeOfDay = "09:00:00"
* dynamicValue[+].path = "code"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.code"
* dynamicValue[+].path = "intent"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.intent"
* dynamicValue[+].path = "doNotPerform"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.doNotPerform"

* dynamicValue[+].path = "occurrence"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.timing"
// * dynamicValue[+].path = "occurrence.repeat.duration"
// * dynamicValue[=].expression.language = $expression-language#text/fhirpath
// * dynamicValue[=].expression.expression = "%context.timing.repeat.duration"
// * dynamicValue[+].path = "occurrence.repeat.durationUnit"
// * dynamicValue[=].expression.language = $expression-language#text/fhirpath
// * dynamicValue[=].expression.expression = "%context.timing.repeat.durationUnit"
// * dynamicValue[+].path = "occurrence.repeat.timeOfDay"
// * dynamicValue[=].expression.language = $expression-language#text/fhirpath
// * dynamicValue[=].expression.expression = "%context.timing.repeat.timeOfDay"
