# LDL Metadata Fields  

## Introduction  
This document provides guidance for creating a core (minimal) LDL metadata record.  

## Contents  
1. [MODS](#mods)  
1. [Title](#title)  
1. [Identifier](#identifier)  
1. [Date](#date)  
1. [Type of Resource](#type-of-resource)  
1. [Digital Collection](#digital-collection)  
1. [Relation](#relation)  
1. [Physical Location](#physical-location)  
1. [Institution Web Site](#institution-web-site)  
1. [Rights](#rights)  
1. [Contact Information](#contact-information)  
1. [Record Info](#record-info)  
- - -
## MODS  
### About  
- __LDL Default Label:__ [not displayed]  
- __MODS Element:__ mods  
- __Definition:__ Root element for a MODS record.  
- __Obligation:__ required  
- __Repeatable:__ no  
- __Controlled:__ no  
- __Governing Standard:__ MODS ver. 3  
  
### Usage  
- __Usage Notes:__  
    - LDL practices require one XML record per file; `<mods>` must always be the root element rather than `<modsCollection>`.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| xmlns | http://www.loc.gov/mods/v3 | required |  
| xmlns:mods | http://www.loc.gov/mods/v3 | required |  
| xmlns:xs | http://www.w3.org/2001/XMLSchema | required |  
| xmlns:xsi | http://www.w3.org/2001/XMLSchema-instance | required |  
| xsi:schemaLocation | http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-7.xsd | required |  
| xlink | http://www.w3.org/1999/xlink | required |  
| version | 3.7 | required |  

[Back to Contents](#contents)  

- - -
## Title  
### About  
- __LDL Default Label:__ Title  
- __MODS Element:__ mods/titleInfo  
- __Definition:__ A word, phrase, character, or group of characters, normally appearing in a resource, that names it or the work contained in it. ([source](http://www.loc.gov/standards/mods//userguide/titleinfo.html))  
- __Obligation:__ required  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__ RDA 2.3  
- __MARC:__ 245; also 210, 242, 246, 130, 240, 730, 740  
- __DC:__ dc:title  
  
### Usage  
- __Instructions:__ Enter the title of the resource. All items must have a title.  
- __Type:__ text  
- __Usage Notes:__  
    - The title should describe the item in basic terms, but should not attempt to supply an exhaustive description. If no title exists, construct one using accepted standards; use “Untitled” only when the resource is explicitly named “Untitled.” Use information provided on or with the original materials if available.  
    - For additional titles, use a type attribute and/or distinguishing displayLabel attribute.  
    - Contents of subelements `<nonSort>`, `<title>`, and `<subTitle>` will be concatenated in display, with a space automatically inserted between NonSort and Title, and a colon and space automatically inserted between Title and Subtitle.  
    - Titles must always appear first in an item's displayed metadata.  
    - The repository will order items within a collection alphabetically by their main title, using the ASCII values of the characters in the title. Capitalization and punctuation will change the filing order. Numbers will file alphabetically as well, meaning a collection of 12 items with titles such as "Photo 1", "Photo 2", etc. will fall in the order Photo 1, Photo 10, Photo 11, Photo 12, Photo 2, Photo 3, Photo 4, Photo 5, Photo 6, Photo 7, Photo 8, Photo 9. To avoid unintended sort order results in your collection, be consistent with the use of capitalization and punctuation, carefully consider how dates are used as portions of titles, and when using numbers in titles, add leading zeros so that all numbers have the same amount of digits (if there are fewer than 10 items, you can use 1-9; if there are between 10-99, use 01-09; if there are 100-999, use 001-099; etc.)  
- __Examples:__  
    -   
  
### Subelements  

| Subelement | Encoding | Obligation | Repeatable | Controlled |  
| --- | --- | --- | --- | --- |  
| Title | mods/titleInfo/title | required | yes | no |  
| NonSort | mods/titleInfo/nonSort | required if applicable | no | no |  
| SubTitle | mods/titleInfo/subTitle | optional | yes | no |  
  
#### Title  
- __Definition:__ The core title of the resource.  

#### NonSort  
- __Definition:__ Any initial article that should not be used for alphabetical arrangement or database searches.  

- __Usage Notes:__ Use for articles or punctuation that fall at the beginning of the title. Do not duplicate the contents of `<nonSort>` within the `<title>` subelement.  

#### SubTitle  
- __Definition:__ The remainder of title information following the core title.  

- __Usage Notes:__ A colon and space will be inserted automatically in the display, and do not need to be entered.  

### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | abbreviated; alternative; translated; uniform | required if applicable |  
| displayLabel | [uncontrolled; if omitted, the default label will be used] | optional |  

[Back to Contents](#contents)  

- - -
## Identifier  
### About  
- __LDL Default Label:__ Item Number  
- __MODS Element:__ mods/identifier  
- __Definition:__ Contains a unique standard number or code that distinctively identifies a resource. ([source](http://www.loc.gov/standards/mods//userguide/identifier.html))  
- __Obligation:__ required  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__ RDA 2.15  
- __MARC:__ 024; 0XX depending on "type" attribute  
- __DC:__ dc:identifier  
  
### Usage  
- __Instructions:__ Enter the local item number or other identifier associated with the physical item.  
- __Type:__ text  
- __Usage Notes:__  
    - The local file name of the content file may be recorded in this field.  
    - The type attribute designates the type of identifer, with the default for local item number or file name as type="local". Select from Standard Identifier Source Codes at http://www.loc.gov/standards/sourcelist/standard-identifier.html.  
    - The Identifier field is repeatable with different display labels and/or types.  
- __Examples:__  
    -   
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | [uncontrolled; if omitted, "local" will be used] | optional |  
| displayLabel | [uncontrolled; if omitted, the default label will be used] | optional |  

[Back to Contents](#contents)  

- - -
## Date  
### About  
- __LDL Default Label:__ Date Created / Date Published  
- __MODS Element:__ mods/originInfo/dateIssued  
- __MODS Element:__ mods/originInfo/dateCreated  
- __Definition:__ Either the date that the resource was published, released, or issued; or, the date of creation of the resource. ([source](http://www.loc.gov/standards/mods//userguide/origininfo.html))  
- __Obligation:__ required  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__ RDA 2.11  
- __MARC:__ 260c / 260g  
- __DC:__ dc:date  
  
### Usage  
- __Instructions:__ For formally published materials, enter the date of publication as a dateIssued element. For unpublished materials, enter the date for the creation of resource as a dateCreated element. Use the W3C date format YYYY-MM-DD for complete dates, or YYYY-MM or YYYY for partial dates (W3CDTF).  
- __Type:__ date  
- __Usage Notes:__  
    - At least one instance of either dateIssued or dateCreated is required. Exactly one date* field should have a keyDate="yes" attribute. For a date range, it is recommended that the start date has the keyDate attribute.  
    - If distinct dates of creation and publication exist for the resource, use both dateCreated and dateIssued. In this case, it is recommended that the publication date has the keyDate attribute  
    - For a date range, repeat the date* field and use the point attributes to mark the start and end point.  
    - When a date is uncertain or supplied, indicate this through the use of the qualifier attribute rather than inserting characters such as "ca.", brackets, or a question mark as part of the field contents.  
    - When only a decade is known, enter a date range for the entire decade and mark the date as questionable. When only a century is known, enter a date range for the entire century and mark the date as questionable. Do not enter "Unknown," "No date," or similar.  
- __Examples:__  
    -   
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| keyDate | yes | required if applicable |  
| encoding | w3cdtf [recommended] | optional |  
| point | start; end | required if applicable |  
| qualifier | approximate; inferred; questionable | required if applicable |  

[Back to Contents](#contents)  

- - -
## Type of Resource  
### About  
- __LDL Default Label:__ Type of Resource  
- __MODS Element:__ mods/typeOfResource  
- __Definition:__ A term that specifies the characteristics and general type of content of the resource. ([source](http://www.loc.gov/standards/mods//userguide/typeofresource.html))  
- __Obligation:__ required  
- __Repeatable:__ yes  
- __Controlled:__ yes  
- __Governing Standard:__ MODS ver. 3  
- __MARC:__ Leader/06  
- __DC:__ dc:type  
  
### Usage  
- __Instructions:__ Select an authorized MODS value characterizing the resource’s format.  
- __Type:__ choice  
- __Authority:__ [MODS TypeOfResource Values](http://www.loc.gov/standards/mods//userguide/typeofresource.html)  
- __Values:__ text; cartographic; notated music; sound recording; sound recording-musical; sound recording-nonmusical; still image; moving image; three dimensional object; software, multimedia; mixed material  
- __Usage Notes:__  
    - Use all lowercase letters without punctuation.  
    - Use 'collection' attribute to distinguish collection-level records.  
- __Examples:__  
    - `<typeOfResource>still image</typeOfResource>`  
    - `<typeOfResource collection="yes">mixed material</typeOfResource>`  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| collection | yes | required if applicable |  

[Back to Contents](#contents)  

- - -
## Digital Collection  
### About  
- __LDL Default Label:__ Digital Collection  
- __MODS Element:__ mods/relatedItem[@type="host"]/titleInfo/title  
- __Definition:__ The name of the LDL digital collection to which the resource belongs.  
- __Obligation:__ required  
- __Repeatable:__ no  
- __Controlled:__ yes  
- __Governing Standard:__ RDA 25.1  
- __MARC:__ 773  
- __DC:__ dc:relation  
  
### Usage  
- __Instructions:__ Enter the title of the digital collection.  
- __Type:__ text  
- __Usage Notes:__  
    - Use the full title as it appears in the collection level metadata. The value should be consistent throughout the collection.  
- __Examples:__  
    -   
  
[Back to Contents](#contents)  

- - -
## Relation  
### About  
- __LDL Default Label:__ [not displayed]  
- __MODS Element:__ mods/relatedItem[@type="host"]/location/url  
- __Definition:__ The URL of the home page of the LDL digital collection to which the resource belongs.  
- __Obligation:__ required  
- __Repeatable:__ no  
- __Controlled:__ yes  
- __Governing Standard:__ RDA 25.1  
- __MARC:__ 773  
- __DC:__ dc:relation  
  
### Usage  
- __Instructions:__ Enter the URL of the digital collection landing page.  
- __Type:__ url  
- __Usage Notes:__  
    - The format is: http://louisianadigitallibrary.org/islandora/object/[collection_namespace]:collection. The collection_namespace is the institution code (namespace prefix), hyphen, collection code (alias) for the collection.  
    - This value should be consistent throughout the collection.  
    - Enter the URL only; any helper text will cause the MODS record to fail validation.  
- __Examples:__  
    -   
  
[Back to Contents](#contents)  

- - -
## Physical Location  
### About  
- __LDL Default Label:__ Physical Location  
- __MODS Element:__ mods/location/physicalLocation  
- __Definition:__ The institution or repository that holds the resource or where it is available. ([source](http://www.loc.gov/standards/mods//userguide/location.html#physicallocation))  
- __Obligation:__ required  
- __Repeatable:__ no  
- __Controlled:__ yes  
- __Governing Standard:__   
- __MARC:__ 852  
- __DC:__ none  
  
### Usage  
- __Instructions:__ Select the name of the institution or repository that holds the physical resource from the locally-controlled list.  
- __Type:__ choice  
- __Authority:__ LDL  
- __Usage Notes:__  
    - If the physical resource is housed at a different institution from the LDC member institution providing it to the LDL, consult a metadata librarian for guidance.  
- __Examples:__  
    -   
  
[Back to Contents](#contents)  

- - -
## Institution Web Site  
### About  
- __LDL Default Label:__ [not displayed]  
- __MODS Element:__ mods/location/url  
- __Definition:__ Contains the Uniform Resource Location of the resource; an electronic location from which the resource is available. ([source](http://www.loc.gov/standards/mods//userguide/location.html#url))  
- __Obligation:__ required  
- __Repeatable:__ no  
- __Controlled:__ yes  
- __Governing Standard:__   
- __MARC:__ 856u  
- __DC:__ dc:identifier  
  
### Usage  
- __Instructions:__ Select the URL for the home page of the institution or repository that holds the physical resource from the locally-controlled list.  
- __Type:__ choice  
- __Authority:__ LDL  
- __Usage Notes:__  
    - In the LDL display, this value will be the hyperlinked URL associated with the text in the Physical Location field.  
    - If the physical resource is housed at a different institution from the LDC member institution providing it to the LDL, consult a metadata librarian for guidance.  
    - Enter the URL only; any helper text will cause the MODS record to fail validation.  
- __Examples:__  
    -   
  
[Back to Contents](#contents)  

- - -
## Rights  
### About  
- __LDL Default Label:__ Rights  
- __MODS Element:__ mods/accessCondition  
- __Definition:__ Information about restrictions imposed on access to a resource. ([source](http://www.loc.gov/standards/mods//userguide/accesscondition.html))  
- __Obligation:__ required  
- __Repeatable:__ no  
- __Controlled:__ no  
- __Governing Standard:__ RDA 4.5  
- __MARC:__ 540  
- __DC:__ dc:rights  
  
### Usage  
- __Instructions:__ Enter the rights statement for accessing the resource.  
- __Type:__ text  
- __Usage Notes:__  
    - Either the legacy "Rights" field or the "Standardized Rights Statement" field is required, with the latter strongly recommended.  
- __Examples:__  
    -   
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | use and reproduction | required |  

[Back to Contents](#contents)  

- - -
## Contact Information  
### About  
- __LDL Default Label:__ Contact Information  
- __MODS Element:__ mods/accessCondition  
- __Definition:__ Information provided to users in order to contact the repository about a resource.  
- __Obligation:__ required  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__ RDA 4.5  
- __MARC:__ 540  
- __DC:__ dc:rights  
  
### Usage  
- __Instructions:__ Enter contact information for the owning repository.  
- __Type:__ text  
- __Usage Notes:__  
    - Include at least one of an institutional email address or a URL for a dedicated website pertaining to reproduction and reuse.  
    - This field may include other information instructing users how to make a request for reuse or reproduction.  
- __Examples:__  
    -   
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | use and reproduction | required |  

[Back to Contents](#contents)  

- - -
## Record Info  
### About  
- __LDL Default Label:__ [not displayed]  
- __MODS Element:__ mods/recordInfo  
- __Definition:__ Information about the metadata record. ([source](http://www.loc.gov/standards/mods//userguide/recordinfo.html))  
- __Obligation:__ required  
- __Repeatable:__ no  
- __Controlled:__ no  
- __Governing Standard:__   
- __MARC:__ 00X  
- __DC:__ none  
  
### Usage  
- __Instructions:__ Enter information about the creation of or changes to the metadata record in the corresponding subelements.  
- __Usage Notes:__  
    - All records should have either a Record Origin or Record Content Source subfield within Record Info.  
- __Examples:__  
    - `<recordInfo> <languageTerm type="text">English</languageTerm> <languageTerm type="code" authority="iso639-2b">eng</languageTerm> </language>`  
    - `<recordInfo> <languageTerm type="text">French</languageTerm> <languageTerm type="code" authority="iso639-2b">fre</languageTerm> </language>`  
    - `<recordInfo> <languageTerm type="text">Spanish</languageTerm> <languageTerm type="code" authority="iso639-2b">spa</languageTerm> </language>`  
  
### Subelements  

| Subelement | Encoding | Obligation | Repeatable | Controlled |  
| --- | --- | --- | --- | --- |  
| Record Content Source | mods/recordInfo/recordContentSource | required if applicable | yes | yes |  
| Record Origin | mods/recordInfo/recordOrigin | required if applicable | no | no |  
| Record Creation Date | mods/recordInfo/recordCreationDate | required | no | no |  
| Record Change Date | mods/recordInfo/recordChangeDate | required if applicable | yes | no |  
| Language of Cataloging | mods/recordInfo/languageOfCataloging/languageTerm | required | yes | yes |  
  
#### Record Content Source  
- __Definition:__ The creator of the original MODS record.  

- __Authority:__ local  

- __Usage Notes:__ For original metadata records, enter the creator of the record in the format "institution_code/cataloger_initials", e.g. lsu/cmk. Uses an authority attribute with value "local". Optional for records which have a Record Origin field.  

#### Record Origin  
- __Definition:__ Shows the origin or provenance of the MODS record.  

- __Usage Notes:__ For metadata records that were migrated or generated through an automated process, enter a brief description of that process.  

#### Record Creation Date  
- __Definition:__ The date on which the original MODS record was first created.  

- __Usage Notes:__ Enter the date of creation of the record using W3CDTF encoding, YYYY-MM-DD. Uses an encoding attribute with value "w3cdtf".  

#### Record Change Date  
- __Definition:__ The date the original MODS record was last modified.  

- __Usage Notes:__ Enter the date that record was modified using W3CDTF encoding, YYYY-MM-DD. Uses an encoding attribute with value "w3cdtf".  

#### Language of Cataloging  
- __Definition:__ The language of the text of the cataloging in the MODS record.  

- __Usage Notes:__ Use the ISO alpha-3 encoding for the language used in cataloging the record. Uses a type attribute with value "code" and an authority attribute with value "iso639-2b".  

[Back to Contents](#contents)  

- - -