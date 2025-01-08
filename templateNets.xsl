<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:x="http://www.arin.net/whoisrws/core/v1">
<xsl:output method="text" encoding="utf-8" indent="yes"/>
<xsl:template match="/">
<xsl:text>
echo '/ip firewall address-list' > list
</xsl:text>
<xsl:for-each select="x:orgs/x:orgRef">
<xsl:text>echo "get nets by network: </xsl:text>
<xsl:value-of select="@handle"/>
<xsl:text>"
</xsl:text>
<xsl:text>curl  --fail -s  http://whois.arin.net/rest/org/</xsl:text><xsl:value-of select="@handle"/><xsl:text>/nets | xsltproc templateIpRange.xsl "/dev/stdin" | xargs -I {} ipcalc {} | grep -v deaggregate | awk '{print "add address="$0"  list=VPN";}' >> list
</xsl:text>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>