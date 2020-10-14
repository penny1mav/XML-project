<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
    <html>

    <head>
    <h2>Cars</h2>

    </head>
    <body>

  <table border="2" align="center" cellpadding="5">
    <TR bgcolor="lightsalmon">
        <TH>manifacturer brand</TH>
        <TH>model</TH>
        <TH>color</TH>
        <TH>mini model description</TH>
      </TR>
      <xsl:apply-templates/>
    </table>
  </body>
</html>
</xsl:template>
<xsl:template match="car">

<TR>
  <TD>
    <xsl:apply-templates select="manifacturer_brand/text()"/>
  </TD>
  <TD>
  <xsl:apply-templates select="manifacturer_brand/model"/>
<br/>
  </TD>
  <TD>
  <xsl:apply-templates select="extra_car_info/@color"/>
  </TD>
<TD>
  <xsl:apply-templates select="extra_car_info/@mini_model_description"/>
<br/>
</TD>
</TR>


</xsl:template>


</xsl:stylesheet>
