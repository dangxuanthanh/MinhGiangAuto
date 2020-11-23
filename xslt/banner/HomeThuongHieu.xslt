<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-thuonghieu">
            <div class="container">
                <div class="title">
                    <h2><xsl:value-of select="/BannerList/ModuleTitle"></xsl:value-of></h2>
                </div>
                <div class="thuonghieu-wrap">
                    <xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="col-6 col-sm-4 col-md-3 col-lg-20" data-aos="fade-up">
            <xsl:attribute name="data-aos-delay">
                <xsl:value-of select="position() * 100"></xsl:value-of>
            </xsl:attribute>
            <div class="item">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
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
        </div>
    </xsl:template>
</xsl:stylesheet>