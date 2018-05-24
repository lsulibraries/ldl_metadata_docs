# LDL Metadata Fields  

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
- __Usage Note:__ LDL practices require one XML record per file; <mods> must always be the root element rather than <modsCollection>.  
  
### Attributes  
<tr><th>Attribute</th><th>Obligation</th><th>Values</th></tr>  
<tr><td>xmlns</td><td>required</td><td>http://www.loc.gov/mods/v3</td></tr>  
<tr><td>xmlns:mods</td><td>required</td><td>http://www.loc.gov/mods/v3</td></tr>  
<tr><td>xmlns:xs</td><td>required</td><td>http://www.w3.org/2001/XMLSchema</td></tr>  
<tr><td>xmlns:xsi</td><td>required</td><td>http://www.w3.org/2001/XMLSchema-instance</td></tr>  
<tr><td>xsi:schemaLocation</td><td>required</td><td>http://www.loc.gov/mods/v3
                    http://www.loc.gov/standards/mods/v3/mods-3-7.xsd</td></tr>  
<tr><td>xlink</td><td>required</td><td>http://www.w3.org/1999/xlink</td></tr>  
<tr><td>version</td><td>required</td><td>3.7</td></tr>  
  

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
- __DC:__ Type  
  
### Usage  
- __Type:__ choice  
- __Authority:__ http://www.loc.gov/standards/mods//userguide/typeofresource.html  
- __Values:__ text; cartographic; notated music; sound recording; sound recording-musical; sound recording-nonmusical; still image; moving image; three dimensional object; software, multimedia; mixed material  
- __Usage Note:__ Use all lowercase letters without punctuation.  
- __Usage Note:__ Use 'collection' attribute to distinguish collection-level records.  
- __Example:__ <typeOfResource>still image</typeOfResource>  
- __Example:__ <typeOfResource collection="yes">mixed material</typeOfResource>  
  
### Attributes  
<tr><th>Attribute</th><th>Obligation</th><th>Values</th></tr>  
<tr><td>collection</td><td>required if applicable</td><td>yes</td></tr>  
  

- - -