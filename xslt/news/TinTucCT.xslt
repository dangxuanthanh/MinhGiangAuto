<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="news-detail mg-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="heading">
                            <time><xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of></time>
                            <h2 class="tt-title"><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></h2>
                        </div>
                        <div class="full-content">
                            <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                        <div class="social-share"></div>
                    </div>
                    <div class="col-lg-4">
                        <div class="news-other-heading">
                            <h3 class="tt-title"><xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of></h3>
                        </div>
                        <div class="news-other-list row">
                            <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="col-sm-6 col-lg-12 news-other-item">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
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
                    <time><xsl:value-of select="CreatedDate"></xsl:value-of></time>
                    <h5><xsl:value-of select="Title"></xsl:value-of></h5>
                </figcaption>
            </figure>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>