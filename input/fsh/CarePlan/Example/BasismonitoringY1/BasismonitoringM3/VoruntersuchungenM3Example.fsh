Instance: VoruntersuchungenM3ExampleCP
InstanceOf: CarePlan
Title: "Beispiel Voruntersuchungen"
Description: "Beispiel CarePlan zu den Voruntersuchungen eines Patienten (M3)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSVoruntersuchungenM3)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(VoruntersuchungenM3ExampleRG)

Instance: VoruntersuchungenM3ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Voruntersuchungen"
Description: "Beispiel RequestGroup zu den Voruntersuchungen eines Patienten (M3)"
* instantiatesCanonical = Canonical(Q4MSVoruntersuchungenM3)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)

// * action.groupingBehavior = #logical-group
// * action.selectionBehavior = #all
// * action.requiredBehavior = #must-unless-documented
// * action.cardinalityBehavior = #single

// Diagnostik aller 3 Monate
* action[+].title = "Multiple Sclerosis Performance Test (MSPT)"
* action[=].resource = Reference(MultipleSclerosisPerformanceTestM3ExampleCP)
* action[+].title = "Therapiespezifische Diagnostik"
* action[=].resource = Reference(TherapiespezifischeDiagnostikM3ExampleCP)

//* action[+].title = "Diagnostik alle 6 Monate"
// -> entfällt, da M3

//* action.action[+].title = "Diagnostik alle 12 Monate"
// -> entfällt, da M3

// Voruntersuchung M3 -> MSPT

Instance: MultipleSclerosisPerformanceTestM3ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Multiple Sclerosis Performance Test (MSPT)"
Description: "Beispiel CarePlan für die Durchführung eines MSPT mit dem Patienten (M3)"
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Multiple Sclerosis Performance Test (MSPT)"
* activity.reference = Reference(MultipleSclerosisPerformanceTestM3ExampleRG)

Instance: MultipleSclerosisPerformanceTestM3ExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Multiple Sclerosis Performance Test (MSPT)"
Description: "Beispiel RequestGroup für die Durchführung eines MSPT mit dem Patienten (M3)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Multiple Sclerosis Performance Test (MSPT)"
* action.resource = Reference(MultipleSclerosisPerformanceTestM3ExampleSR)

// Voruntersuchung -> Therapiespezifische Diagnostik

Instance: TherapiespezifischeDiagnostikM3ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel CarePlan für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M3)"
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Therapiespezifische Diagnostik"
* activity.reference = Reference(TherapiespezifischeDiagnostikM3ExampleRG)

Instance: TherapiespezifischeDiagnostikM3ExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel RequestGroup für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M3)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Therapiespezifische Diagnostik"
* action.resource = Reference(TherapiespezifischeDiagnostikM3ExampleSR)

Instance: TherapiespezifischeDiagnostikM3ExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel ServiceRequest für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M3)"
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostikAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientPseudonym)
* occurrencePeriod.start = "2022-05-02T10:30:00Z"
* occurrencePeriod.end = "2022-05-02T16:00:00Z"
* locationCode = $v3-role-code#DX