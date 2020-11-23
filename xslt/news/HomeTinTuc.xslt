<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-tintuc" setBackground="/Data/Sites/1/media/home/home-tintuc-banner.png">
            <div class="container">
                <div class="tintuc-title">
                    <h2><xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of></h2>
                </div>
                <div class="slide">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
                <figure>
                    <div class="img">
                         <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </a>
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
                        <time><a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="CreatedDate"></xsl:value-of>
                        </a></time>
                        <h3>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Title"></xsl:value-of>
                            </a>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </h3>
                        <a class="button-more">
                             <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        <xsl:value-of select="/NewsList/ViewMoreText"></xsl:value-of><em class="fas fa-plus"></em></a>
                    </figcaption>
                </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>