<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="gioi-thieu-1 mg-section">
            <div class="container">
                <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
               
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
         <h2 class="mg-title"><xsl:value-of select="Title"></xsl:value-of></h2>
            <div class="row">
               <xsl:apply-templates select="News"></xsl:apply-templates>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News">
         <div class="col-lg-6">
            <div class="video">
                <a data-fancybox="">
                    <xsl:attribute name="href">
                        <xsl:value-of select="SubTitle"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <div class="background">
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="play">
                        <img src="/Data/Sites/1/media/gioi-thieu/play.png" alt="" />
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-5" style="margin-left: auto">
            <div class="content">
                <h3><xsl:value-of select="Title"></xsl:value-of></h3>
                <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>