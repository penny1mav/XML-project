<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">
    <html>
    <body bgcolor="lightgrey">
        <h2  style="color:brown">Sort by manifacturer's brand</h2>


                <xsl:apply-templates/>

          </body>
        </html>
    </xsl:template>
    <xsl:template match="cars_to_rent">
        <xsl:for-each select="car">
        <xsl:sort select="manifacturer_brand/text()"/>


        <xsl:apply-templates select="manifacturer_brand/text()"/>
    <br/>





</xsl:for-each>

</xsl:template>
</xsl:stylesheet>