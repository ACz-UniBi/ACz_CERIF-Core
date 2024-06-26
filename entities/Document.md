# Document

## URI
https://w3id.org/cerif2/core/Document

## Definition
A document is a bounded representation of a body of information designed with the capacity (and usually intent) to communicate. 
A document may manifest symbolic, diagrammatic or sensory-representational information.<sup>[1](#fn1)</sup>

## Usage notes
Research outputs (such as Journal Articles, Datasets, Software, Patents etc.) are an important subclass of documents.
Any document or set of documents can also serve as input to research.
There are also documents that serve the purpose of planning, organizing and managing research
which are of specific interest for Research Management and Administration.
However, the CERIF Core does not make any of these functions of documents explicit.
Should that be necessary, a particular module should undertake this effort.

## Specialization of
[Resource](../entities/Resource.md)

## Attributes
title : [Multilingual String](../datatypes/Multilingual_String.md)

publication date: [Date](../datatypes/Date.md) in case the document has gone through publication

## Relationships

<a name="rel__has-contribution">has-contribution</a> / [has-target](../entities/Contribution_to_Document.md#user-content-rel__has-target) : A Document any number of [contributions](../entities/Contribution_to_Document.md) that helped it arise.

<a name="rel__provides-evidence-of">provides-evidence-of</a> / [is-evidenced-by](../entities/Expertise_and_Skills_Possession.md#user-content-rel__is-evidenced-by) : A Document can provide evidence of any number of [Expertise and Skills Possessions](../entities/Expertise_and_Skills_Possession.md).

---
## Matches
1. Close match of [Bibo Document](http://purl.org/ontology/bibo/Document)
2. Close match of [Schema.org CreativeWork](https://schema.org/CreativeWork)

## References
<a name="fn1">\[1\]</a> Source: The Bibo Ontology, http://purl.org/ontology/bibo/Document
