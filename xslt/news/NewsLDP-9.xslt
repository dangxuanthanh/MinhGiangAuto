<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="block_s-8" id="landingpage-9">
			<div class="container">
				<xsl:apply-templates select="Zone[9]"></xsl:apply-templates>
				
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="block_title column-center">
			<div class="title">
				<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
			</div>
		</div>
		<div class="row">
			<xsl:apply-templates select="News"></xsl:apply-templates>
			
		</div>
		<div class="column-center"><a class="read-more" href="#">Xem thêm<img class="arrow" src="/Data/Sites/1/skins/landingpage/img/banner/arrow.png"/></a></div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-3 col-sm-6 col-xs-6">
			<div class="about-figure">
				<div class="img-wrapper">
					<a class=" " data-fancybox="">
						<xsl:attribute name="href">
							<xsl:value-of select="SubTitle"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<img class=" ">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="content">
					<div class="date"><span class="lnr lnr-film-play"></span>
						<time><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></time>
					</div>
					<p >
						<xsl:attribute name="href">
							<xsl:value-of select="SubTitle"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
