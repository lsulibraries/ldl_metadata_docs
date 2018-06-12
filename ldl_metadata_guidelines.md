# LDL Metadata Fields  

## Introduction  
_Insert introductory text about this document here._ 
 
            - **Terminology:** _Field_ is used as a generic descriptor; _Element_ is used specifically for the MODS encoding of a field. 

            - The contents of _Subelements_ within a Field will typically be displayed together.
            - Element definitions come from MODS Version 3 User Guide except where the usage of the field is customized for LDL description.  

## Contents  
1. [MODS](#mods)  
1. [Title](#title)  
1. [Part Detail](#part-detail)  
1. [Part Extent](#part-extent)  
1. [Identifier](#identifier)  
1. [Name](#name)  
1. [Place of Origin](#place-of-origin)  
1. [Publisher](#publisher)  
1. [Date](#date)  
1. [Date Captured](#date-captured)  
1. [Abstract](#abstract)  
1. [Note](#note)  
1. [Type of Resource](#type-of-resource)  
1. [Genre](#genre)  
1. [Form](#form)  
1. [Physical Description Note](#physical-description-note)  
1. [Extent](#extent)  
1. [Internet Media Type](#internet-media-type)  
1. [Digital Origin](#digital-origin)  
1. [Language](#language)  
1. [Contributing Repository](#contributing-repository)  
1. [Source Note](#source-note)  
1. [Digital Collection](#digital-collection)  
1. [Relation](#relation)  
1. [Repository Collection](#repository-collection)  
1. [Repository Collection Guide](#repository-collection-guide)  
1. [Physical Location](#physical-location)  
1. [OCLC Member Symbol](#oclc-member-symbol)  
1. [Institution Web Site](#institution-web-site)  
1. [Sublocation](#sublocation)  
1. [Shelf Location](#shelf-location)  
1. [Rights](#rights)  
1. [Standardized Rights Statement](#standardized-rights-statement)  
1. [Contact Information](#contact-information)  
1. [Restriction on Access](#restriction-on-access)  
1. [Preferred Citation](#preferred-citation)  
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
## Part Detail  
### About  
- __LDL Default Label:__ [Value of "Type" Attribute]  
- __MODS Element:__ mods/part/detail  
- __Definition:__ Contains numbering and type of designation of the part in relation to the host/parent item in which a host item resides. ([source](https://www.loc.gov/standards/mods/userguide/part.html#detail))  
- __Obligation:__ required if applicable  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__   
- __MARC:__ none  
- __DC:__ none  
  
### Usage  
- __Instructions:__ Enter volume, issue number, or other physical part of a resource by specifying the type and enumeration of the physical division.  
- __Type:__ text  
- __Usage Notes:__  
    - The value of the required Type attribute will be the field display label.  
    - Use when the resource being described was created or published as a standalone portion of a larger work, such as an issue of a periodical, a volume or episode in a series, etc. If the object described was only published within a larger entity (such as an article in a journal, a poem in an anthology, or a track on an album), use `<relatedItem type="host"><part>` instead to show the location of the part within the host item. Consult a metadata librarian for project specific guidance.  
  
### Subelements  

| Subelement | Encoding | Obligation | Repeatable | Controlled |  
| --- | --- | --- | --- | --- |  
| Number | mods/part/detail/number | required if applicable | no | no |  
| Caption | mods/part/detail/caption | optional | no | no |  
| Title | mods/part/detail/title | required if applicable | no | no |  
  
#### Number  
- __Definition:__ Contains the actual number within the part.  

- __Usage Notes:__ Enter only the number of the part.  

#### Caption  
- __Definition:__ Contains the caption describing the enumeration within a part.  

- __Usage Notes:__ Enter a caption to display in front of the part number, such as "vol." or "no.". A space will be inserted between the Caption and the Number.  

#### Title  
- __Definition:__ Contains the title of the part.  

- __Usage Notes:__ Enter the title of the part, if it is different than the core title of the resource.  

### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | volume; issue; chapter; section; paragraph; track [other values as needed] | required |  

[Back to Contents](#contents)  

- - -
## Part Extent  
### About  
- __LDL Default Label:__ [Value of "Unit" Attribute]  
- __MODS Element:__ mods/part/extent  
- __Definition:__ Contains the measured units making up the part. ([source](https://www.loc.gov/standards/mods/userguide/part.html#extent))  
- __Obligation:__ required if applicable  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__   
- __MARC:__ none  
- __DC:__ none  
  
### Usage  
- __Instructions:__ Enter pages, minutes, or other measurements of the part within the whole by specifying the unit and enumeration of the physical division.  
- __Type:__ text  
- __Usage Notes:__  
    - The value of the required Unit attribute will be the field display label.  
    - Use when the resource being described was created or published as a standalone portion of a larger work, such as an issue of a periodical, a volume or episode in a series, etc. If the object described was only published within a larger entity (such as an article in a journal, a poem in an anthology, or a track on an album), use `<relatedItem type="host"><part>` instead to show the location of the part within the host item. Consult a metadata librarian for project specific guidance.  
  
### Subelements  

| Subelement | Encoding | Obligation | Repeatable | Controlled |  
| --- | --- | --- | --- | --- |  
| Start | mods/part/extent/start | required if applicable | no | no |  
| End | mods/part/extent/end | required if applicable | no | no |  
| Total | mods/part/extent/total | required if applicable | no | no |  
| List | mods/part/extent/list | required if applicable | no | no |  
  
#### Start  
- __Definition:__ Contains the beginning unit of the extent within a part.  

- __Usage Notes:__ Enter the first number of the range of units indicated by the "Unit" attribute, for example the first page number.  

#### End  
- __Definition:__ Contains the ending unit of the extent within a part.  

- __Usage Notes:__ Enter the last number of the range of units indicated by the "Unit" attribute, for example the last page number.  

#### Total  
- __Definition:__ Contains the total number of units within a part, rather than specific units.  

- __Usage Notes:__ Enter the total number of units indicated by the "Unit" attribute, for example "5" to indicate a total of 5 pages.  

#### List  
- __Definition:__ Contains a textual listing of the units within a part.  

- __Usage Notes:__ Enter a textual description of units, rather than number alone, indicated by the "Unit" attribute, for example "pp. 5-9".  

### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| unit | page [other values as needed] | required |  

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
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | [uncontrolled; if omitted, "local" will be used] | optional |  
| displayLabel | [uncontrolled; if omitted, the default label will be used] | optional |  

[Back to Contents](#contents)  

- - -
## Name  
### About  
- __LDL Default Label:__ Name  
- __MODS Element:__ mods/name  
- __Definition:__ The name of a person, organization, or event (conference, meeting, etc.) associated in some way with the resource. ([source](https://www.loc.gov/standards/mods/userguide/name.html))  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ yes  
- __Governing Standard:__ RDA 19.2, 19.3, 20.2  
- __MARC:__ 1XX, 7XX  
- __DC:__ dc:creator, dc:contributor  
  
### Usage  
- __Instructions:__ Enter names of people associated with the creation of the resource under their appropriate roles. Use authorized forms of names from LCNAF or VIAF when they exist. Use controlled role terms from MARC Code List for Relators.  
- __Usage Notes:__  
    - Use of one or more Name fields is strongly recommended if a creator or contributor is known. If no names associated with the resource can be determined, leave the field blank; do not enter "Unknown" or any variant in a name field. Use a Content Note instead to denote unknown responsibility for the resource.  
    - Catalogers should use the "type" attribute with all names; most will be either "personal" or "corporate".  
    - The displayed field label will use the value of a Display Label attribute if given; or, the value of the Role subelement with Type attribute value "text"; or, the default "Name" if neither of these is provided.  
- __Examples:__  
```
            <name type="personal" displayLabel="Veteran">
              <namePart>Benoit, Andrew</namePart>
              <role>
                <roleTerm type="code" authority="marcrelator">dpc</roleTerm>
                <roleTerm type="text" authority="marcrelator">Depicted</roleTerm>
              </role>
              <affiliation>U.S. Army</affiliation>
              <affiliation>Unit: 1st Infantry</affiliation>
              <description>Rank: Private</description>
              <description>Date of Service: January 26, 1942 - February 1, 1945</description>
              <description>Location of Military Service: North Africa; Sicily</description>
            </name>
          
```
```
            <name type="personal">
              <namePart>Tamang, Rashmi</namePart>
              <role>
                <roleTerm type="code" authority="marcrelator">aut</roleTerm>
                <roleTerm type="text" authority="marcrelator">Author</roleTerm>
              </role>
            </name>
            <name type="personal" displayLabel="Major Professor">
              <namePart>Christian, Omar E.</namePart>
              <role>
                <roleTerm type="code" authority="marcrelator">dgs</roleTerm>
                <roleTerm type="text" authority="marcrelator">Degree supervisor</roleTerm>
              </role>
            </name>
            <name type="corporate" displayLabel="College">
              <namePart>Science</namePart>
              <role>
                <roleTerm type="code" authority="marcrelator">dgg</roleTerm>
                <roleTerm type="text" authority="marcrelator">Degree granting institution</roleTerm>
              </role>
            </name>
          
```
  
### Subelements  

| Subelement | Encoding | Obligation | Repeatable | Controlled |  
| --- | --- | --- | --- | --- |  
| Name Part | mods/name/namePart | required | yes | yes |  
| Role Term | mods/name/role/roleTerm | optional | yes | yes |  
| Affiliation | mods/name/affiliation | optional | yes | no |  
| Description | mods/name/description | optional | yes | no |  
  
#### Name Part  
- __Definition:__ Contains the name itself, in its authorized form if available.  

- __Authority:__ LC Name Authority File  

- __Authority:__ Virtual International Authority File  

- __Usage Notes:__ Enter the full name of the person or entity associated with the resource.
                    Enclose the entire name in a single `<namePart>` element rather than
                    parsing its parts. Use the authorized form including associated dates. If
                    no authorized form is available, enter last name or family name first, followed
                    by a comma, followed by first or given names.  

#### Role Term  
- __Definition:__ Designates the relationship (role) of the entity recorded in Name to the resource described in the record.  

- __Authority:__ MARC Code List for Relators  

- __Usage Notes:__ Enter the authorized textual term from the MARC Relators list for the
                    role that the entity performed with regards to the resource in a
                    `<roleTerm>` field with type="text". Enter the corresponding authorized
                    code from the MARC Relators list in a `<roleTerm>` field with
                    type="code".  

- __Usage Notes:__ "Creator" (text) and "cre" (code) are used as a default. Other frequently used Role Terms
                    in the LDL include: Contributor/ctb, Photographer/pht, Author/aut, Artist/art,
                    Interviewer/ivr, Interviewee/ive. Consult the MARC Relators list for further
                    information.  

#### Affiliation  
- __Definition:__ The name of an organization, institution, etc. with which the entity was associated at the time that the resource was created.  

- __Usage Notes:__ Optionally, record uncontrolled added data contextualizing the person or entity in the Name field.  

#### Description  
- __Definition:__ The name of an organization, institution, etc. with which the entity was associated at the time that the resource was created.  

- __Usage Notes:__ Optionally, record uncontrolled added data contextualizing the person or entity in the Name field.  

### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | personal; corporate; conference; family | optional |  
| authority | naf; viaf; local | required if applicable |  
| displayLabel | [uncontrolled; if omitted, the default label will be used] | optional |  

[Back to Contents](#contents)  

- - -
## Place of Origin  
### About  
- __LDL Default Label:__ Place of Origin  
- __MODS Element:__ mods/originInfo/place/placeTerm  
- __Definition:__ Name of a place associated with the publication or origin of a resource. ([source](http://www.loc.gov/standards/mods//userguide/origininfo.html#place))  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__ RDA 2.8  
- __MARC:__ 260a / 260c  
- __DC:__ dc:publisher  
  
### Usage  
- __Instructions:__ For formally published materials, enter the place of publication as it appears on the resource. For a resource with no formal publication, optionally, enter the place the resource originated.  
- __Type:__ text  
- __Authority:__ [TGN](http://www.getty.edu/research/tools/vocabularies/tgn/index.html)  
- __Usage Notes:__  
    - Use of Getty Thesaurus of Geographic Names (TGN) is encouraged.  
    - Places as subjects of a resource are recorded under Subject - Geographic.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | text | required |  

[Back to Contents](#contents)  

- - -
## Publisher  
### About  
- __LDL Default Label:__ Publisher  
- __MODS Element:__ mods/originInfo/publisher  
- __Definition:__ The name of the entity that published, printed, distributed, released, issued, or produced the resource. ([source](http://www.loc.gov/standards/mods//userguide/origininfo.html#publisher))  
- __Obligation:__ optional  
- __Repeatable:__ no  
- __Controlled:__ no  
- __Governing Standard:__ RDA 2.8  
- __MARC:__ 260b  
- __DC:__ dc:publisher  
  
### Usage  
- __Instructions:__ For a published resource, enter the publisher’s name as it appears on the resource.  
- __Type:__ text  
- __Usage Notes:__  
    - Uploading to the LDL is not considered formal publication; credit to the repository for making the resource available is implied under Source.  
  
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
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| keyDate | yes | required if applicable |  
| encoding | w3cdtf [recommended] | optional |  
| point | start; end | required if applicable |  
| qualifier | approximate; inferred; questionable | required if applicable |  

[Back to Contents](#contents)  

- - -
## Date Captured  
### About  
- __LDL Default Label:__ Date Captured  
- __MODS Element:__ mods/originInfo/dateCaptured  
- __Definition:__ The date on which the resource was digitized or a subsequent snapshot was taken. ([source](http://www.loc.gov/standards/mods//userguide/origininfo.html#datecaptured))  
- __Obligation:__ optional  
- __Repeatable:__ no  
- __Controlled:__ no  
- __Governing Standard:__ W3CDTF  
- __MARC:__ 033  
- __DC:__ dc:date  
  
### Usage  
- __Instructions:__ Enter the date of digitization for the resource in the W3CDTF format YYYY-MM-DD.  
- __Type:__ date  
- __Usage Notes:__  
    - Use a single date only.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| encoding | w3cdtf [recommended] | optional |  
| qualifier | approximate; inferred; questionable | required if applicable |  

[Back to Contents](#contents)  

- - -
## Abstract  
### About  
- __LDL Default Label:__ Description  
- __MODS Element:__ mods/abstract  
- __Definition:__ A summary of the content of the resource. ([source](http://www.loc.gov/standards/mods//userguide/abstract.html))  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__ RDA 7.10  
- __MARC:__ 520  
- __DC:__ dc:description  
  
### Usage  
- __Instructions:__ Enter a summary, abstract, scope and content note, or other description of the resource.  
- __Type:__ text  
- __Usage Notes:__  
    - Incorporate keywords in order to provide additional access points for searching.  
    - It is recommended that different display labels are used if repeating the Abstract field.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| displayLabel | [uncontrolled; if omitted, the default label will be used; other suggested values are "Summary" or "Scope and Content"] | optional |  

[Back to Contents](#contents)  

- - -
## Note  
### About  
- __LDL Default Label:__ Note  
- __MODS Element:__ mods/note  
- __Definition:__ General textual information relating to a resource. ([source](http://www.loc.gov/standards/mods//userguide/note.html))  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__ RDA 2.2  
- __MARC:__ 5XX  
- __DC:__ dc:description  
  
### Usage  
- __Instructions:__ Enter notes pertaining to the content of the resource that do not fit in a more specific field.  
- __Type:__ text  
- __Usage Notes:__  
    - Record each note in a separate Note field.  
    - The type attribute designates the type of note, with the default for general notes about the resource as type="content". Select from MODS list of note types at https://www.loc.gov/standards/mods/mods-notes.html. Other note types present in the LDL include "biographical/historical", "performers", "thesis", "date".  
    - Use this space to transcribe anything handwritten, stamped, or printed on the image, mat, or case.  
    - Include any descriptive information accompanying the item and any pertinent information not represented in other fields.  
    - Notes relating to physical description should be recorded in a Physical Description Note.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | [uncontrolled; if omitted, "content" will be used; select from MODS list of note types.] | required |  
| displayLabel | [uncontrolled; if omitted, the default label will be used; other suggested values are "Summary" or "Scope and Content"] | optional |  

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
- __Instructions:__ Select an authorized MODS Type of Resource term characterizing the resource’s format.  
- __Type:__ choice  
- __Authority:__ [MODS TypeOfResource Terms](http://www.loc.gov/standards/mods//userguide/typeofresource.html)  
- __Values:__ text; cartographic; notated music; sound recording; sound recording-musical; sound recording-nonmusical; still image; moving image; three dimensional object; software, multimedia; mixed material  
- __Usage Notes:__  
    - Use all lowercase letters without punctuation.  
    - Use 'collection' attribute to distinguish collection-level records.  
- __Examples:__  
```
            <typeOfResource>still image</typeOfResource>
          
```
```
            <typeOfResource collection="yes">mixed material</typeOfResource>
          
```
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| collection | yes | required if applicable |  

[Back to Contents](#contents)  

- - -
## Genre  
### About  
- __LDL Default Label:__ Genre  
- __MODS Element:__ mods/genre  
- __Definition:__ A term or terms that designate a category characterizing a particular style, form, or content, such as artistic, musical, literary composition, etc. ([source](http://www.loc.gov/standards/mods//userguide/genre.html))  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ yes  
- __Governing Standard:__ RDA 6.9  
- __MARC:__ 008; 336; 6XX  
- __DC:__ dc:type  
  
### Usage  
- __Instructions:__ Enter a term for the genre of the resource that characterizes its content.  
- __Type:__ text  
- __Authority:__ [aat](http://www.getty.edu/research/tools/vocabularies/aat/)  
- __Authority:__ [lcgft](http://id.loc.gov/authorities/genreForms.html)  
- __Usage Notes:__  
    - Choose applicable genre terms from the Getty Art and Architecture Thesaurus (AAT), particularly terms denoted as "genre". Other vocabularies, including local ones, may be used with consultation from a metadata librarian.  
    - The Genre field should be used to characterize the content of the resource rather than the resource itself or its physical characteristics, which would be Form.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| authority | aat; lcgft; lcsh; local | required |  

[Back to Contents](#contents)  

- - -
## Form  
### About  
- __LDL Default Label:__ Form  
- __MODS Element:__ mods/physicalDescription/form  
- __Definition:__ A designation of a particular physical presentation of a resource, including the physical form or medium of material for a resource. ([source](http://www.loc.gov/standards/mods//userguide/physicaldescription.html#form))  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ yes  
- __Governing Standard:__   
- __MARC:__ 007; 008  
- __DC:__ dc:format  
  
### Usage  
- __Instructions:__ Enter a controlled vocabulary term for the general physical form of the original resource.  
- __Type:__ text  
- __Authority:__ [aat](http://www.getty.edu/research/tools/vocabularies/aat/)  
- __Usage Notes:__  
    - Choose applicable terms from the Getty Art and Architecture Thesaurus (AAT), particularly terms denoted as "...by internal form". Other vocabularies, including local ones, may be used with consultation from a metadata librarian.  
    - The Form field should be used to describe the physical characteristics of the resource rather than its content, which would be Genre.  
    - Use of controlled terms is strongly encouraged for description; enter physical details that cannot be described using controlled vocabulary in the Physical Description Note field.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | material; technique | optional |  
| authority | aat; local | required |  

[Back to Contents](#contents)  

- - -
## Physical Description Note  
### About  
- __LDL Default Label:__ Physical Description Note  
- __MODS Element:__ mods/physicalDescription/note  
- __Definition:__ General textual information about the physical description of a resource. ([source](http://www.loc.gov/standards/mods//userguide/physicaldescription.html#note))  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__   
- __MARC:__ 340  
- __DC:__ dc:format  
  
### Usage  
- __Instructions:__ Enter an uncontrolled, detailed description of the medium/media used in the creation of the physical resource, or (changing the Type attribute) other details about the physical object not captured in controlled fields.  
- __Type:__ text  
- __Usage Notes:__  
    - The type attribute designates the type of note, with the default usage of this field in the LDL being type="medium". Select from MODS list of note types at http://www.loc.gov/standards/mods/mods-notes.html. Other note types present in the LDL include "condition", "marks", "technique", and "physical details".  
    - Use when information that is important for understanding the resource cannot be recorded using controlled vocabulary terms. Use the Form field to enter controlled vocabulary terms.  
    - Terminology may be drawn from AAT, but this field is not controlled or faceted.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | [uncontrolled; if omitted, "medium" will be used; other suggested values are "physical details", "condition," or "technique"] | required |  
| displayLabel | [uncontrolled; if omitted, the value of the type attribute will be used] | optional |  

[Back to Contents](#contents)  

- - -
## Extent  
### About  
- __LDL Default Label:__ Size  
- __MODS Element:__ mods/physicalDescription/extent  
- __Definition:__ A statement of the number and specific material of the units of the resource that express physical extent. ([source](http://www.loc.gov/standards/mods//userguide/physicaldescription.html#extent))  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__ RDA 3.4  
- __MARC:__ 300, 306  
- __DC:__ dc:format  
  
### Usage  
- __Instructions:__ Enter a statement of size or number and specific material of the units of the resource.  
- __Type:__ text  
- __Usage Notes:__  
    - Typically used to describe the original physical resource.  
  
[Back to Contents](#contents)  

- - -
## Internet Media Type  
### About  
- __LDL Default Label:__ Media Type  
- __MODS Element:__ mods/physicalDescription/internetMediaType  
- __Definition:__ An identification of the electronic format type, or the data representation of the resource. ([source](http://www.loc.gov/standards/mods//userguide/physicaldescription.html#internetmediatype))  
- __Obligation:__ required if applicable  
- __Repeatable:__ yes  
- __Controlled:__ yes  
- __Governing Standard:__   
- __MARC:__ 856  
- __DC:__ dc:format  
  
### Usage  
- __Instructions:__ Select from the controlled list of terms available from the MIME Media Types list.  
- __Type:__ choice  
- __Authority:__ [MIME Media Types](https://www.iana.org/assignments/media-types/media-types.xhtml)  
- __Values:__ image/jp2; application/pdf; audio/mpeg; video/mp4  
- __Usage Notes:__  
    - The enumerated values cover present LDL standards. Contact a metadata librarian if using file types not listed.  
    - For objects containing multiple file types, use a separate `<internetMediaType>` field for each.  
  
[Back to Contents](#contents)  

- - -
## Digital Origin  
### About  
- __LDL Default Label:__ Digital Origin  
- __MODS Element:__ mods/physicalDescription/digitalOrigin  
- __Definition:__ The method by which a resource achieved digital form. ([source](http://www.loc.gov/standards/mods//userguide/physicaldescription.html#digitalorigin))  
- __Obligation:__ required if applicable  
- __Repeatable:__ no  
- __Controlled:__ yes  
- __Governing Standard:__   
- __MARC:__ 007/11  
- __DC:__ dc:format  
  
### Usage  
- __Instructions:__ Select a controlled term from the MODS vocabulary describing the source of the digital file.  
- __Type:__ choice  
- __Authority:__ [MODS DigitalOrigin Values](http://www.loc.gov/standards/mods//userguide/physicaldescription.html#digitalorigin)  
- __Values:__ born digital; reformatted digital; digitized microfilm; digitized other analog  
- __Usage Notes:__  
    - Required for any repository object that has a content file. In other words, this field is not required for compound parent objects, but is required for compound child objects, as well as simple objects.  
    - Most LDL content will be "reformatted digital". Use "digitized other analog" only when the digital resource was created by digitizing an intermediate form other than microform, such as a photocopy, of the original. See MODS User Guide for more on the definitions of values.  
  
[Back to Contents](#contents)  

- - -
## Language  
### About  
- __LDL Default Label:__ Language  
- __MODS Element:__ mods/language  
- __Definition:__ A designation of the language in which the content of a resource is expressed. ([source](http://www.loc.gov/standards/mods//userguide/language.html))  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ yes  
- __Governing Standard:__ RDA 6.11  
- __MARC:__ 008/35-37; 041  
- __DC:__ dc:language  
  
### Usage  
- __Instructions:__ Enter the authorized text term from ISO 639-2 for the language used within the resource in a `<languageTerm>` field with type="text". Enter the alpha-3 language code from ISO 639-2 for the language used within the resource in a `<languageTerm>` field with type="code".  
- __Usage Notes:__  
    - For the Code term, use all lowercase letters without punctuation.  
    - For multiple languages present in a resource, repeat the `<language>` wrapper element, each with a pair of `<languageTerm>` subelements for text and code.  
    - The Language field is not recommended for resources that do not have a language component (such as photographs).  
    - "English"/"eng" as a Language value is not to be omitted and/or understood as a default.  
- __Examples:__  
```
            <language>
              <languageTerm type="text">English</languageTerm>
              <languageTerm type="code" authority="iso639-2b">eng</languageTerm>
            </language>  
```
```
            <language>
              <languageTerm type="text">French</languageTerm>
              <languageTerm type="code" authority="iso639-2b">fre</languageTerm>
            </language>  
```
```
            <language>
              <languageTerm type="text">Spanish</languageTerm>
              <languageTerm type="code" authority="iso639-2b">spa</languageTerm>
            </language>  
```
  
### Subelements  

| Subelement | Encoding | Obligation | Repeatable | Controlled |  
| --- | --- | --- | --- | --- |  
| Language Term | mods/language/languageTerm | required | yes | yes |  
  
#### Language Term  
- __Definition:__ Contains the textual or coded form for the language of the content of the resource.  

- __Authority:__ ISO 639-2  

- __Usage Notes:__ All attributes below are applied to the `<languageTerm>` subelement.  

- __Usage Notes:__ Use the type attribute on the `<languageTerm>` subelement to designate text and code values. The `<languageTerm>` subelement with attribute type="code" must have an authority attribute with the value "iso639-2b".  

### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | text; code | required |  
| authority | iso639-2b | required if applicable |  

[Back to Contents](#contents)  

- - -
## Contributing Repository  
### About  
- __LDL Default Label:__ Contributing Repository  
- __MODS Element:__ mods/name[@type="corporate"]/namePart  
- __Definition:__ The LDC member contributing the resource to the LDL.  
- __Obligation:__ required  
- __Repeatable:__ yes  
- __Controlled:__ yes  
- __Governing Standard:__   
- __MARC:__   
- __DC:__   
  
### Usage  
- __Instructions:__ Select the name of the LDC member institution contributing the digital resource from the locally-controlled list.  
- __Type:__ choice  
- __Authority:__ LDL  
- __Usage Notes:__  
    - The local authority file will draw this value from LCNAF authorities.  
    - The Contributing Repository field is a Name field with the Role of "Repository"/"rps".  
  
[Back to Contents](#contents)  

- - -
## Source Note  
### About  
- __LDL Default Label:__ Source Note  
- __MODS Element:__ mods/note[@type="ownership"]  
- __Definition:__ Notes clarifying details of ownership of the resource.  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__   
- __MARC:__   
- __DC:__   
  
### Usage  
- __Instructions:__ Enter notes about the source or ownership of the resource. Do not repeat the name of the LDC Contributing Repository providing the resource.  
- __Type:__ text  
- __Usage Notes:__  
    - Use when information pertaining to the resource's ownership cannot be recorded using controlled vocabulary terms in a Name field with an appropriate Role designation.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | ownership | required |  
| displayLabel | [uncontrolled; if omitted, the default label will be used] | optional |  

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
  
[Back to Contents](#contents)  

- - -
## Repository Collection  
### About  
- __LDL Default Label:__ Repository Collection  
- __MODS Element:__ mods/relatedItem[@type="host"]/titleInfo[@type="alternative]"/title  
- __Definition:__ The name of the repository collection to which the original physical resource belongs.  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ yes  
- __Governing Standard:__ RDA 25.1  
- __MARC:__ 773  
- __DC:__ dc:relation  
  
### Usage  
- __Instructions:__ Enter the title of the repository collection.  
- __Type:__ text  
- __Usage Notes:__  
    - Use this field when the name of the digital collection differs markedly from the repository collection, or when a digital collection is composed of materials from multiple repository collections.  
    - Use this field with one or more Part Name subelements to record archival arrangement within the repository collection.  
  
### Subelements  

| Subelement | Encoding | Obligation | Repeatable | Controlled |  
| --- | --- | --- | --- | --- |  
| Part Number | mods/relatedItem[@type="host"]/titleInfo[@type="alternative]"/partNumber | optional | yes | no |  
| Part Name | mods/relatedItem[@type="host"]/titleInfo[@type="alternative]"/partName | optional | yes | no |  
  
#### Part Number  
- __Definition:__ A part or section number of a title.  

- __Usage Notes:__ For archival arrangement, enter the level of arrangement and numeration, for example, "Series I" or "Folder 3".  

- __Usage Notes:__ Repeat the Part Number subelement for each level of arrangement being recorded, i.e. record Series, Subseries, Box, and Folder each as a separate Part Number subelement.  

#### Part Name  
- __Definition:__ A part or section name of a title.  

- __Usage Notes:__ For archival arrangement, enter the name/title of the division in the preceding Part Number subelement, if applicable.  

- __Usage Notes:__ Repeat the Part Name subelement for each level of arrangement being recorded.  

[Back to Contents](#contents)  

- - -
## Repository Collection Guide  
### About  
- __LDL Default Label:__ Repository Collection Guide  
- __MODS Element:__ mods/relatedItem[@type="host"]/location/url  
- __Definition:__ The URL of a finding aid or other guide for understanding and accessing the repository collection to which the resource belongs.  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ yes  
- __Governing Standard:__ RDA 25.1  
- __MARC:__ 773  
- __DC:__ dc:relation  
  
### Usage  
- __Instructions:__ Enter the URL of the finding aid or repository collection guide.  
- __Type:__ url  
- __Usage Notes:__  
    - Enter the URL only; any helper text will cause the MODS record to fail validation.  
  
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
  
[Back to Contents](#contents)  

- - -
## OCLC Member Symbol  
### About  
- __LDL Default Label:__ OCLC Member Symbol  
- __MODS Element:__ mods/location/physicalLocation  
- __Definition:__ [An encoded reference for] the institution or repository that holds the resource or where it is available. ([source](http://www.loc.gov/standards/mods//userguide/location.html#physicallocation))  
- __Obligation:__ required if applicable  
- __Repeatable:__ no  
- __Controlled:__ yes  
- __Governing Standard:__   
- __MARC:__ 852  
- __DC:__ none  
  
### Usage  
- __Instructions:__ Select the OCLC Member Symbol of the institution or repository that holds the physical resource from the locally-controlled list.  
- __Type:__ choice  
- __Authority:__ [OCLC Member Directory](https://www.oclc.org/en/contacts/libraries.html)  
- __Usage Notes:__  
    - If the physical resource is housed at a different institution from the LDC member institution providing it to the LDL, consult a metadata librarian for guidance.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| authority | oclcorg | required |  

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
  
[Back to Contents](#contents)  

- - -
## Sublocation  
### About  
- __LDL Default Label:__ Sublocation  
- __MODS Element:__ mods/location/holdingSimple/copyInformation/subLocation  
- __Definition:__ Department, division, or section of an institution holding a copy of the resource. ([source](http://www.loc.gov/standards/mods//userguide/location.html#sublocation))  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__   
- __MARC:__ 852  
- __DC:__ none  
  
### Usage  
- __Instructions:__ Enter the name of the department, buidling, collection, or other sublocation that holds the physical resource as applicable.  
- __Type:__ text  
- __Authority:__ local  
- __Usage Notes:__  
    - Use names from an institutionally-controlled list as available.  
- __Examples:__  
```
            <location>
              <holdingSimple>
                <copyInformation>
                  <subLocation>McNeese Archives</subLocation>
                </copyInformation>
              </holdingSimple>
            </location>
          
```
  
[Back to Contents](#contents)  

- - -
## Shelf Location  
### About  
- __LDL Default Label:__ Shelf Location  
- __MODS Element:__ mods/location/shelfLocator  
- __Definition:__ Shelfmark or other shelving designation that indicates the location identifier for a copy. ([source](http://www.loc.gov/standards/mods//userguide/location.html#shelflocator))  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ yes  
- __Governing Standard:__   
- __MARC:__ 852  
- __DC:__ none  
  
### Usage  
- __Instructions:__ Enter shelving information for the physical resource to assist in locating the original.  
- __Type:__ text  
- __Usage Notes:__  
    -   
- __Examples:__  
```
            <location>
              <shelfLocator>Manuscripts Number 600, Box 4, Folder 12</shelfLocator>
            </location>
          
```
  
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
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | use and reproduction | required |  

[Back to Contents](#contents)  

- - -
## Standardized Rights Statement  
### About  
- __LDL Default Label:__ Standardized Rights Statement  
- __MODS Element:__ mods/accessCondition  
- __Definition:__ [A standardized license or statement] about restrictions imposed on access to a resource. ([source](http://www.loc.gov/standards/mods//userguide/accesscondition.html))  
- __Obligation:__ required if applicable  
- __Repeatable:__ yes  
- __Controlled:__ yes  
- __Governing Standard:__ RDA 4.5  
- __MARC:__ 540  
- __DC:__ dc:rights  
  
### Usage  
- __Instructions:__ Select the applicable statement from RightsStatement.org; record the statement's URI in the "xlink:href" attribute, and the statement text as the field value.  
- __Type:__ text  
- __Type:__ URI  
- __Authority:__ [RightsStatements.org](http://rightsstatements.org/page/1.0/?language=en)  
- __Usage Notes:__  
    - Either the legacy "Rights" field or the "Standardized Rights Statement" field is required, with the latter strongly recommended.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | use and reproduction | required |  
| xlink:href | [URI of statement] | required |  

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
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | use and reproduction | required |  

[Back to Contents](#contents)  

- - -
## Restriction on Access  
### About  
- __LDL Default Label:__ Restriction on Access  
- __MODS Element:__ mods/accessCondition  
- __Definition:__ Information about restrictions imposed on access to a resource. ([source](http://www.loc.gov/standards/mods//userguide/accesscondition.html))  
- __Obligation:__ required if applicable  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__ RDA 4.5  
- __MARC:__ 506  
- __DC:__ dc:rights  
  
### Usage  
- __Instructions:__ Enter the terms of any restrictions on access to the resource.  
- __Type:__ text  
- __Usage Notes:__  
    - This may include IP range limitations and/or embargoed materials.  
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | restriction on access | required |  

[Back to Contents](#contents)  

- - -
## Preferred Citation  
### About  
- __LDL Default Label:__ Preferred Citation  
- __MODS Element:__ mods/note[@type="preferred citation"]  
- __Definition:__ A formatted bibliographic citation for the resource.  
- __Obligation:__ optional  
- __Repeatable:__ yes  
- __Controlled:__ no  
- __Governing Standard:__   
- __MARC:__ 524  
- __DC:__ none  
  
### Usage  
- __Instructions:__ Enter a formatted bibliographic citation for the collection or item.  
- __Type:__ text  
- __Usage Notes:__  
    -   
  
### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | preferred citation | required |  

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
```
            <recordInfo>
              <languageOfCataloging>
                <languageTerm type="code" authority="iso639-2b">eng</languageTerm>
              </languageOfCataloging>
            </recordInfo>
          
```
  
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

- __Usage Notes:__ Use the ISO alpha-3 encoding for the language used in cataloging the record. Note that this does not pertain to the language of the resource itself. Uses a type attribute with value "code" and an authority attribute with value "iso639-2b".  

[Back to Contents](#contents)  

- - -