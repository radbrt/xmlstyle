<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/root">
    <root>
      <xsl:apply-templates select="DetailRecord/DetailSubRecord"/>
    </root>
  </xsl:template>

  <xsl:template match="DetailSubRecord">
    <DetailSubRecord>
      <CustomerNumber>
        <xsl:value-of select="../CustomerNumber"/>
      </CustomerNumber>
      <Address>
        <xsl:value-of select="Address"/>
      </Address>
    </DetailSubRecord>
  </xsl:template>
</xsl:stylesheet>
