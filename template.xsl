<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:x="http://www.arin.net/whoisrws/core/v1">
<xsl:output method="text" encoding="utf-8" indent="yes"/>
<xsl:template match="/">
<xsl:for-each select="x:nets/x:netRef">
<xsl:text>
add address=</xsl:text>
<xsl:value-of select="@startAddress"/><xsl:text>-</xsl:text><xsl:value-of select="@endAddress"/><xsl:text> list=VPN</xsl:text>					    
</xsl:for-each>	
</xsl:template>
</xsl:stylesheet>