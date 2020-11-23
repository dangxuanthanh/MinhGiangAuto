<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="block_s-1" id="landingpage-1">
			<div class="container">
				<xsl:apply-templates select="Zone[1]/News[1]"></xsl:apply-templates>
				
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="row">
			<div class="col-lg-2"></div>
			<div class="col-lg-8">
				<div class="block_title column-center">
					<div class="title">
						<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
					</div>
					<div class="content">
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></div>
					<div class="content-detail">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<a class="read-more" href="#">Xem thêm
						<img class="arrow" src="/Data/Sites/1/skins/landingpage/img/banner/arrow.png"/>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
