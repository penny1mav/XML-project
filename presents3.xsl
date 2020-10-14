<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">
    <html>
    <body>
        <h2 align="center" style="color:brown">Sort by monthly leasing</h2>
        <table border="3" align="center" CELLPADDING="5">

            <tr bgcolor="lightsalmon">
                <th>manifacturer brand</th>
                <th>model</th>
                <th>monthly leasing without ΦΠΑ</th>


            </tr>
                <xsl:apply-templates/>
            </table>
          </body>
        </html>
    </xsl:template>
    <xsl:template match="cars_to_rent">
        <xsl:if test="car/economic_info_leasing/monthly_leasing[@without_tax='true']">
        <xsl:for-each select="car">
                <xsl:sort select="economic_info_leasing/monthly_leasing" order="descending" />
                <tr>
    <td>
        <xsl:apply-templates select="manifacturer_brand/text()"/>
    </td>
    <td>
        <xsl:apply-templates select="manifacturer_brand/model"/>
    </td>
    <td>
        <xsl:apply-templates select="economic_info_leasing/monthly_leasing[@without_tax='true']"/>
    </td>


</tr>


</xsl:for-each>
</xsl:if>

</xsl:template>
</xsl:stylesheet>