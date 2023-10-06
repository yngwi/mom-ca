<xsl:stylesheet xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:xrx="http://www.monasterium.net/NS/xrx" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/" xmlns="http://www.openarchives.org/OAI/2.0/" xmlns:cei="http://www.monasterium.net/NS/cei" xmlns:europeana="http://www.europeana.eu/schemas/ese/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0" id="cei2oaiheader">
    <xsl:param name="platform-id" />
    <xsl:template match="/">
        <header>
            <identifier>
                <xsl:choose>
                    <xsl:when test="$platform-id = 'mom'">
                        <xsl:text>MoM:</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>VdU:</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:value-of select=".//atom:id" />
            </identifier>
            <datestamp>
                <xsl:value-of select="concat(substring-before(.//atom:updated, '+'), 'Z')" />
            </datestamp>
        </header>
    </xsl:template>
</xsl:stylesheet>
