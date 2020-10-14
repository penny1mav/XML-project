<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
    <html>

    <head>
    <h2 style="color:brown">Cars</h2>

    </head>
    <body>

  <table border="2" align="center" cellpadding="5">
    <TR bgcolor="lightsalmon">
        <TH>model</TH>
        <TH>basic equipment</TH>

      </TR>
      <xsl:apply-templates/>
    </table>
  </body>
</html>
</xsl:template>
<xsl:template match="car">

<TR>

  <TD>
  <xsl:apply-templates select="manifacturer_brand/model"/>
<br/>
  </TD>
  <TD>
  <xsl:apply-templates select="equipment/basic_equipment/equip"/>
  <br/>
  </TD>
</TR>


</xsl:template>


</xsl:stylesheet>
