<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">
    <html>
    <body >
        <h2 style="color:brown;">Co2 Emissions greater than 110</h2>




                <xsl:apply-templates/>

          </body>
        </html>
    </xsl:template>
    <xsl:template match="cars_to_rent">
      <xsl:for-each select="car">
    <xsl:if test="main_characteristics/co_emissions&gt; 110">


        <xsl:apply-templates select="manifacturer_brand/text()"/>
        <br/>

        <xsl:apply-templates select="main_characteristics/co_emissions"/>
<br/>




</xsl:if>
</xsl:for-each>

</xsl:template>
</xsl:stylesheet>