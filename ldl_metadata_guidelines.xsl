<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    >
    
    <xsl:output method="text" />
    
    <xsl:template match="/">
        <xsl:text># LDL Metadata Fields  &#xa;&#xa;</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>- - -</xsl:text>
    </xsl:template>
    
    <xsl:template match="@*|*">
        <xsl:copy>
            <xsl:apply-templates select="@*|*" />
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="element">
        <xsl:text>- - -&#xa;</xsl:text>
        <xsl:text>## </xsl:text>
        <xsl:value-of select="@name"/>
        <xsl:text>  &#xa;</xsl:text>
        <xsl:call-template name="About"/>
        <xsl:text>  &#xa;</xsl:text>
        <xsl:call-template name="Usage"/>    
        <xsl:text>  &#xa;</xsl:text>
        <xsl:apply-templates select="attributes"/>    
        <xsl:text>  &#xa;&#xa;</xsl:text>
    </xsl:template>
    
    <xsl:template name="About">
        <xsl:text>### About  &#xa;</xsl:text>
        <xsl:if test="defaultLabel">
            <xsl:text>- __LDL Label:__ </xsl:text>
            <xsl:value-of select="defaultLabel"/>
            <xsl:text>  &#xa;</xsl:text>
        </xsl:if>
        <xsl:if test="xpath">
            <xsl:text>- __MODS Element:__ </xsl:text>
            <xsl:value-of select="replace(xpath,'mods:','')"/>
            <xsl:text>  &#xa;</xsl:text>
        </xsl:if>
        <xsl:if test="definition">
            <xsl:text>- __Definition:__ </xsl:text>
            <xsl:value-of select="normalize-space(definition)"/>
            <xsl:if test="definition/@ref">
                <xsl:text> ([source](</xsl:text>
                <xsl:value-of select="definition/@ref"/>
                <xsl:text>))</xsl:text>
            </xsl:if>
            <xsl:text>  &#xa;</xsl:text>
        </xsl:if>
        <xsl:for-each select="@obligation|@repeatable|@controlled|governingStandard">
                <xsl:text>- __</xsl:text>
                <xsl:choose>
                    <xsl:when test="name() eq 'governingStandard'">
                        <xsl:text>Governing Standard</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="concat(upper-case(substring(name(),1,1)),substring(name(),2))"/>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:text>:__ </xsl:text>
                <xsl:value-of select="."/>
                <xsl:text>  &#xa;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="mapping">
            <xsl:text>- __</xsl:text>
            <xsl:value-of select="upper-case(@schema)"/>
            <xsl:text>:__ </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>  &#xa;</xsl:text>
        </xsl:for-each>
    </xsl:template>

<xsl:template name="Usage">
    <xsl:text>### Usage  &#xa;</xsl:text>
    <xsl:for-each select="content/type">
        <xsl:text>- __Type:__ </xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>  &#xa;</xsl:text>
    </xsl:for-each>
        <xsl:for-each select="content/vocabulary">
            <xsl:if test="@authority">
                <xsl:text>- __Authority:__ </xsl:text>
                <xsl:choose>
                    <xsl:when test="@ref">
                        <xsl:text>&lt;a href="</xsl:text>
                        <xsl:value-of select="normalize-space(@ref)"/>
                        <xsl:text>"&gt;</xsl:text>
                        <xsl:value-of select="@authority"/>
                        <xsl:text>&lt;a&gt;</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="@authority"/>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:text>  &#xa;</xsl:text>
            </xsl:if>
        </xsl:for-each>
    <xsl:if test="content/vocabulary/enumeration">
        <xsl:text>- __Values:__ </xsl:text>
        <xsl:for-each select="content/vocabulary/enumeration">
            <xsl:value-of select="@value"/>
            <xsl:if test="not(position()=last())">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>  &#xa;</xsl:text>
    </xsl:if>
    <xsl:if test="usageNote">
        <xsl:text>- __Usage Notes:__  &#xa;</xsl:text>
        <xsl:for-each select="usageNote">
            <xsl:text>    - </xsl:text>
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:text>  &#xa;</xsl:text>
        </xsl:for-each>
    </xsl:if>
    <xsl:if test="example">
        <xsl:text>- __Examples:__  &#xa;</xsl:text>
        <xsl:for-each select="example">
            <xsl:text>    - </xsl:text>
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:text>  &#xa;</xsl:text>
        </xsl:for-each>
    </xsl:if>
</xsl:template>
    
    <xsl:template match="attributes">
        <xsl:text>### Attributes  &#xa;</xsl:text>
        <xsl:text>&#xa;| Attribute | Obligation | Values |  &#xa;</xsl:text>
        <xsl:text>| --- | --- | --- |  &#xa;</xsl:text>
        <xsl:for-each select="attribute">
            <xsl:text>| </xsl:text>
            <xsl:value-of select="@name"/>
            <xsl:text> | </xsl:text>
            <xsl:value-of select="@obligation"/>
            <xsl:text> | </xsl:text>
            <xsl:value-of select="normalize-space(value)"/>
            <xsl:text> |  &#xa;</xsl:text>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>