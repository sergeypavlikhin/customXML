<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version = "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html"/>

    <xsl:template match="/">
        <DIV style="font-family: 'Roboto', sans-serif; display: flex;flex-direction: row;justify-content: center;align-items: center;flex-wrap: wrap;align-content: center;height: 100%;width: 100%;"><xsl:apply-templates /></DIV>
    </xsl:template>

    <xsl:template match="WORK">
        <DIV style=" background: #8df8f9;flex-basis: 400px;margin: 2px;padding: 15px; text-align: center;">
            <xsl:apply-templates select="NAME"/>
            <xsl:apply-templates select="SRC"/>
            <xsl:apply-templates select="DIST"/>
            <xsl:apply-templates select="IMG"/>
        </DIV>
    </xsl:template>

    <xsl:template match="NAME">
        <h1 style="background: #ffbfa0;padding: 20px;color: white;font-size: 20px;font-weight: bold;font-family: Arial;">
            <xsl:value-of select="."/>
        </h1>
    </xsl:template>

    <xsl:template match="SRC">
        <xsl:variable name="href"><xsl:value-of select="."/></xsl:variable>
        <span style=" margin-right: 10px;">SRC</span>
        <a href="{$href}" target="_blank">
            Link
        </a>
        <br />
    </xsl:template>

    <xsl:template match="DIST">
        <xsl:variable name="href"><xsl:value-of select="."/></xsl:variable>
        <span style=" margin-right: 10px;">DIST</span>
        <a href="{$href}" target="_blank">
            Link
        </a>
        <br />
    </xsl:template>

    <xsl:template match="IMG">
        <xsl:variable name="href"><xsl:value-of select="."/></xsl:variable>
        <a href="{$href}" target="_blank">
            SCREENSHOT
        </a>
        <br />
    </xsl:template>

</xsl:stylesheet>