# Agent

## Definition
Anything that has the ability to perform activities.

## Usage notes
Currently either [Person](../entities/Person.md), 
[Organisation Unit](../entities/Organisation_Unit.md),
or [Group](../entities/Group.md),
for future extension.

## Attributes

keywords: List<[Multilingual String](../datatypes/Multilingual_String.md)>

lifetime : [Date Range](../datatypes/Date_Range.md)

contacts : List<[Contact_Information](../datatypes/Contact_Information.md)>

## Relationships

<a name="rel__is-actor-in">is-actor-in</a> / [has-actor](../entities/Activity.md#user-content-rel__has-actor) : An Agent can be the actor in any number of [Activities](../entities/Activity.md).

<a name="rel__solicits">solicits</a> / [is-solicited-by](../entities/Call_for_Applications.md#user-content-rel__is-solicited-by) : An Agent can solicit any number of [Calls for Applications](../entities/Call_for_Applications.md).

<a name="rel__is-applicant-in">is-applicant-in</a> / [has-applicant](../entities/Application.md#user-content-rel__has-applicant) : An Agent can be the applicant in any number of [Applications](../entities/Application.md).

<a name="rel__is-addressee-of">is-addressee-of</a> / [has-addressee](../entities/Application.md#user-content-rel__has-addressee) : An Agent can be the addressee of any number of [Applications](../entities/Application.md).

<a name="rel__is-recipient-of">is-recipient-of</a> / [has-recipient](../entities/Prize_Award.md#user-content-rel__has-recipient) : An Agent can be the recipient of any number of [Prize Awards](../entities/Prize_Award.md).

<a name="rel__is-agent-in1">is-agent-in1</a> / [by-agent](../entities/Expertise_and_Skills_Possession.md#user-content-rel__by-agent) : An Agent can be the agent in any number of [Expertise and Skills Possessions](../entities/Expertise_and_Skills_Possession.md).

<a name="rel__is-agent-in2">is-agent-in2</a> / [by-agent](../entities/Expertise_and_Time_and_Effort.md#user-content-rel__by-agent) : An Agent can be the agent in any number of [Expertise and Time and Effort](../entities/Expertise_and_Time_and_Effort.md) instances.

<a name="rel__has-identifier">has-identifier</a> / [is-assigned-to](../entities/Agent_Identifier.md#user-content-rel__is-assigned-to) : An Agent can be assigned any number of [Agent Identifiers](../entities/Agent_Identifier.md).

<a name="rel__is-author-of">is-author-of</a> / [has-author](../entities/Textual_Document.md#user-content-rel__has-author) : An Agent can be the author of any number of [Textual Documents](../entities/Textual_Document.md).

## Illustrative Diagram
![The Agent diagram](../diagrams/agent.svg)

---
## Matches
1. Close match of [FOAF Agent](http://xmlns.com/foaf/spec/#term_Agent) 
