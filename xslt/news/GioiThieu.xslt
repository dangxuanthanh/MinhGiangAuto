<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="gioi-thieu-3 mg-section" setBackground="/Data/Sites/1/media/gioi-thieu/bg-2.png">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone" mode="GT-2"></xsl:apply-templates>
			</div>
		</section>
		<section class="gioi-thieu-4 mg-section" setBackground="/Data/Sites/1/media/home-tintuc-banner.png">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone" mode="GT-3"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="GT-2">
		<xsl:if test="position() = 2">
			<h2 class="mg-title white">
				<xsl:value-of select="Title"></xsl:value-of>
			</h2>
			<div class="row" style="justify-content: center">
				<div class="col-lg-10">
					<xsl:apply-templates select="News" mode="GT-2-News"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="GT-2-News">
		<div class="video-wrapper">
			<a data-fancybox="">
				<xsl:attribute name="href">
					<xsl:value-of select="SubTitle"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<div class="play">
					<img src="/Data/Sites/1/media/gioi-thieu/play.png" alt="" />
				</div>
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
			</a>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="GT-3">
		<xsl:if test="position() = 3">
			<h2 class="mg-title">
				<xsl:value-of select="Title"></xsl:value-of>
			</h2>
			<div class="row figure-wrapper">
				<xsl:apply-templates select="News" mode="GT-3-News"></xsl:apply-templates>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="GT-3-News">
		<div class="col-sm-6 col-lg-3">
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
				<div class="content">
					<h5>
						<xsl:value-of select="Title"></xsl:value-of>
					</h5>
					<p>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>