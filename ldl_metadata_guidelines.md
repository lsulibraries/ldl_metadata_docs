# LDL Metadata Fields  

## Contents  
[MODS](mods)  
[Title](title)  
[Title Part](title-part)  
[Type of Resource](type-of-resource)  
[Place of Origin](place-of-origin)  
[Publisher](publisher)  
[Date](date)  
[Date Captured](date-captured)  
- - -
## MODS  
### About  
- __LDL Label:__ [not displayed]  
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


- - -
## Title  
### About  
- __LDL Label:__ Title  
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
    - Contents of `<nonSort>`, `<title>`, and `<subTitle>` will be concatenated in display, with a space automatically inserted between NonSort and Title, and a colon and space automatically inserted between Title and Subtitle.  
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

- __Usage Notes:__ Enter articles or punctuation that fall at the beginning of the title. Do not duplicate articles or punctuation within the `<title>` subelement.  

#### SubTitle  
- __Definition:__ Remainder of the title information after the title proper.  

- __Usage Notes:__ A colon will be inserted automatically in the display.  


### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | abbreviated; alternative; translated; uniform | required if applicable |  
| displayLabel | [uncontrolled; if omitted, the default label will be used] | optional |  


- - -
## Title Part  
### About  

### Usage  




- - -
## Type of Resource  
### About  
- __LDL Label:__ Type of Resource  
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


- - -
## Place of Origin  
### About  
- __LDL Label:__ Place of Origin  
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
- __Examples:__  
    -   


### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| type | text | required |  


- - -
## Publisher  
### About  
- __LDL Label:__ Publisher  
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
- __Examples:__  
    -   




- - -
## Date  
### About  
- __LDL Label:__ Date Created / Date Published  
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


- - -
## Date Captured  
### About  
- __LDL Label:__ Date Captured  
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
- __Examples:__  
    -   
  
### Subelements  

| Subelement | Encoding | Obligation | Repeatable | Controlled |  
| --- | --- | --- | --- | --- |  
| [name] |  | required|required if applicable|optional | yes|no | yes|no |  
#### [name]  
- __Definition:__   

- __Authority:__ [name]  

- __Usage Notes:__   


### Attributes  

| Attribute | Values | Obligation |  
| --- | --- | --- |  
| [name] | list of literals with semicolon delimiting or [uncontrolled; if omitted, the default label will be used] | required|required if applicable|optional |  


- - -
