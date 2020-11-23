<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="list-item">
            <div class="row">
                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-lg-4 col-sm-6 item">
            <div class="image">
                <div class="active">
                    <a>
                            <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">gallery-</xsl:text>
                            <xsl:value-of select="position()"></xsl:value-of>
                        </xsl:attribute>
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="play"><img src="/Data/Sites/1/media/image-icon.png" alt="" /></div>
                <div class="gallery-hidden" style='display: none'>
                    <xsl:apply-templates select="NewsImages">
                        <xsl:with-param select="position()" name="NewsPosition"></xsl:with-param>
                    </xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="NewsImages">
		<xsl:param name="NewsPosition"></xsl:param>
        <xsl:if test="position() &gt; 1">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="data-fancybox">
                    <xsl:text disable-output-escaping="yes">gallery-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="$NewsPosition"></xsl:value-of>
                </xsl:attribute>
            </a>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>