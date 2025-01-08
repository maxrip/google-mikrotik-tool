<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:x="http://www.arin.net/whoisrws/core/v1">
    <xsl:output method="text" encoding="utf-8" indent="yes"/>
    <xsl:template match="/">
	<xsl:for-each select="x:nets/x:netRef">
	    <xsl:if test="substring(@handle,1,4) != 'NET6'">
		<xsl:value-of select="@startAddress"/>
		<xsl:text>-</xsl:text>
		<xsl:value-of select="@endAddress"/>
		<xsl:text>&#xA;</xsl:text>
	    </xsl:if>
	</xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
