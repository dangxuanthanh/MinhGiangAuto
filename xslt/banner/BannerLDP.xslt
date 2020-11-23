<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="block_banner">
			<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
			
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="card-img"> 
			<div class="img"> 
				<img class=" ">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="block_text-banner">
				<div class="container">
					<div class="text-banner">
						<div class="title-banner">
							<h1><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h1>
						</div>
						<div class="content">
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<a class="read-more" href="#">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:value-of select="Target"></xsl:value-of>
								</xsl:attribute>
							Xem thêm
							<img class="arrow" src="/Data/Sites/1/skins/landingpage/img/banner/arrow.png"/>
						</a>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
