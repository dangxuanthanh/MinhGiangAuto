<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">	
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		
	</xsl:template>
	<xsl:template match="Zone">
		<p><span style="font-family: Tahoma; font-size: 24px;"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></span></p>
		<xsl:apply-templates select="News"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News">
		<div class="main-slide-bottom">
			<xsl:attribute name="class">
				<xsl:text disable-output-escaping="yes">main-slide-bottom-</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<div class="image">
				<img class=" ">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
