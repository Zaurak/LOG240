<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="/usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl"/>

  <xsl:param name="l10n.gentext.default.language">fr</xsl:param>

  <xsl:param name="toc.max.depth">5</xsl:param>
  <xsl:param name="toc.section.depth">5</xsl:param>
  <xsl:attribute-set name="toc.margin.properties">
    <xsl:attribute name="break-after">page</xsl:attribute>
  </xsl:attribute-set>
  <xsl:param name="section.autolabel" select="1"></xsl:param>
  
  <xsl:param name="page.margin.inner">
    <xsl:choose>
      <xsl:when test="$double.sided != 0">7%</xsl:when>
      <xsl:otherwise>5%</xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  
  <xsl:param name="body.margin.inner">
    <xsl:choose>
      <xsl:when test="$double.sided != 0">7%</xsl:when>
      <xsl:otherwise>5%</xsl:otherwise>
    </xsl:choose>
  </xsl:param>

  <xsl:attribute-set name="list.item.spacing">
    <xsl:attribute name="space-before.optimum">1em</xsl:attribute>
    <xsl:attribute name="space-before.minimum">0.8em</xsl:attribute>
    <xsl:attribute name="space-before.maximum">1.2em</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:param name="variablelist.term.break.after">1</xsl:param>
  
  <xsl:param name="shade.verbatim" select="0"></xsl:param>
  <xsl:attribute-set name="shade.verbatim.style">
    <!-- <xsl:attribute name="background-color">#E0E0E0</xsl:attribute> -->
  </xsl:attribute-set>
  <xsl:attribute-set name="verbatim.properties">
    <xsl:attribute name="padding-left">0.5em</xsl:attribute>
    <xsl:attribute name="border-left">3px black solid</xsl:attribute>
  </xsl:attribute-set>
    
  <xsl:attribute-set name="monospace.verbatim.properties" 
                   use-attribute-sets="verbatim.properties monospace.properties">
    <xsl:attribute name="wrap-option">wrap</xsl:attribute>
    <xsl:attribute name="hyphenation-character">\\</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="figure.properties">
    <xsl:attribute name="text-align">center</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>
  <xsl:param name="formal.title.placement">
    figure after
    example before
    equation after
    table before
    procedure before
  </xsl:param>

  <xsl:param name="admon.graphics" select="1"/>
  <xsl:param name="admon.graphics.extension">.svg</xsl:param>
</xsl:stylesheet>
