# CERIF Core

This is the Core of CERIF (=Common European Research Information Format), the result of 
the [CERIF Refactoring Pilot](https://www.eurocris.org/cerif-refactoring-project-introduction) project 
started in 2021 by [euroCRIS](https://www.eurocris.org/).

## Status

(2021-06-24) This is experimental.

## Scope

The Core consists of the following entities:
* [Agent](./entities/Agent.md)
  * [Person](./entities/Person.md), [Organisation Unit](./entities/Organisation_Unit.md)
* Activity
* [Document](./entities/Document.md)
  * [Textual Document](./entities/Textual_Document.md)
* [Contributorship](./entities/Contributorship.md)
  * [Authorship](./entities/Authorship.md)
* [Affiliation Statement](./entities/Affiliation_Statement.md)
* [Contribution Statement](./entities/Contribution_Statement.md)
  * [Free Text Contribution Statement](./entities/Free_Text_Contribution_Statement.md)
* [Textual Document Accessibility Specification](./entities/Textual_Document_Accessibility_Specification.md)
* [Language](./entities/Language.md), [Country](./entities/Country.md), [Currency](./entities/Script.md), [Script](./entities/Script.md)
* ...

And the following data types:
* [String](./datatypes/String.md)
* [Date](./datatypes/Date.md)
* [Boolean](./datatypes/Boolean.md)
* [Multilingual String](./datatypes/Multilingual_String.md)
* [ORCID iD Type](./datatypes/ORCID_iD.md)
* [ROR ID Type](./datatypes/ROR_ID.md)
* [URI](./datatypes/URI.md)
* [Person Name](./datatypes/Person_Name.md)
* [Postal Address](./datatypes/Postal_Address.md)
* Codes for languages: [ISO 639-1 Alpha2 Code](./datatypes/ISO_639_1_Alpha2_Code.md), [ISO 639-2B Alpha3 Code](./datatypes/ISO_639_2B_Alpha3_Code.md), [ISO 639-2T Alpha3 Code](./datatypes/ISO_639_2T_Alpha3_Code.md)
* Codes for countries: [ISO 3166 Alpha2 Code](./datatypes/ISO_3166_Alpha2_Code.md)
* Codes for currencies: [ISO 4217 Alpha Code](./datatypes/ISO_4217_Alpha_Code.md)
* Codes for scripts: [ISO 15924 Alpha4 Code](./datatypes/ISO_15924_Alpha4_Code.md)
* [Language Tag](./datatypes/Language_Tag.md)
* ...

![The CERIF Core diagram](./diagrams/core.svg)

## Usage

The Core is seldom used on its own, you almost always need to add one or several additional modules.

## Development Tools

The [tools](./tools/) directory contains useful tools for checking the integrity of this repository.

* list-references.sh should be used to validate established linkes between classes. It should be run in this way 

[FIXME] XXX
* plantuml.jar should be used to generate SVG images by using Plant UML files. More details about this tool can be found at this [link](https://gist.github.com/thedmeyer/8b50362ae71ecbadabb17f8683c70ece). It might be run from the tools directory in terminal in this way

java -jar plantuml.jar -v -tsvg -r -o "../diagrams" "../diagrams/**.puml"
