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
- __Usage Note:__ LDL practices require one XML record per file; &lt;mods&gt; must always be the root element rather than &lt;modsCollection&gt;.  

### Attributes  
&lt;tr&gt;&lt;th&gt;Attribute&lt;/th&gt;&lt;th&gt;Obligation&lt;/th&gt;&lt;th&gt;Values&lt;/th&gt;&lt;/tr&gt;  
&lt;tr&gt;&lt;td&gt;xmlns&lt;/td&gt;&lt;td&gt;required&lt;/td&gt;&lt;td&gt;http://www.loc.gov/mods/v3&lt;/td&gt;&lt;/tr&gt;  
&lt;tr&gt;&lt;td&gt;xmlns:mods&lt;/td&gt;&lt;td&gt;required&lt;/td&gt;&lt;td&gt;http://www.loc.gov/mods/v3&lt;/td&gt;&lt;/tr&gt;  
&lt;tr&gt;&lt;td&gt;xmlns:xs&lt;/td&gt;&lt;td&gt;required&lt;/td&gt;&lt;td&gt;http://www.w3.org/2001/XMLSchema&lt;/td&gt;&lt;/tr&gt;  
&lt;tr&gt;&lt;td&gt;xmlns:xsi&lt;/td&gt;&lt;td&gt;required&lt;/td&gt;&lt;td&gt;http://www.w3.org/2001/XMLSchema-instance&lt;/td&gt;&lt;/tr&gt;  
&lt;tr&gt;&lt;td&gt;xsi:schemaLocation&lt;/td&gt;&lt;td&gt;required&lt;/td&gt;&lt;td&gt;http://www.loc.gov/mods/v3
                    http://www.loc.gov/standards/mods/v3/mods-3-7.xsd&lt;/td&gt;&lt;/tr&gt;  
&lt;tr&gt;&lt;td&gt;xlink&lt;/td&gt;&lt;td&gt;required&lt;/td&gt;&lt;td&gt;http://www.w3.org/1999/xlink&lt;/td&gt;&lt;/tr&gt;  
&lt;tr&gt;&lt;td&gt;version&lt;/td&gt;&lt;td&gt;required&lt;/td&gt;&lt;td&gt;3.7&lt;/td&gt;&lt;/tr&gt;  


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
- __Example:__ &lt;typeOfResource&gt;still image&lt;/typeOfResource&gt;  
- __Example:__ &lt;typeOfResource collection="yes"&gt;mixed material&lt;/typeOfResource&gt;  

### Attributes  
&lt;tr&gt;&lt;th&gt;Attribute&lt;/th&gt;&lt;th&gt;Obligation&lt;/th&gt;&lt;th&gt;Values&lt;/th&gt;&lt;/tr&gt;  
&lt;tr&gt;&lt;td&gt;collection&lt;/td&gt;&lt;td&gt;required if applicable&lt;/td&gt;&lt;td&gt;yes&lt;/td&gt;&lt;/tr&gt;  


- - -
