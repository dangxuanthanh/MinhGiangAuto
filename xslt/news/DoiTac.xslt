<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="doi-tac mg-section">
            <div class="container">
                <h2 class="mg-title"><xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of></h2>
                <div class="partner-slider">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-navigation">
                        <div class="swiper-btn swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
                        <div class="swiper-btn swiper-next"><em class="mdi mdi-arrow-right"></em></div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
            <div class="partner-item">
                <figure>
                    <div class="image">
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <figcaption>
                        <div class="logo">
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>