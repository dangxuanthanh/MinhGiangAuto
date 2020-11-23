<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="block_s-2" id="landingpage-3">
			<div class="container">
				<xsl:apply-templates select="Zone[3]/News[1]" mode="News1"></xsl:apply-templates>
				<xsl:apply-templates select="Zone[3]/News[2]" mode="News2"></xsl:apply-templates>
				
				
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="News1">
		<div class="row">
			<div class="col-lg-6">
				<div class="block_title">
					<div class="title">
						<h2 class="text-white"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
					</div>
				</div>
				<div class="block_content-circle">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					<a class="read-more_white" href="#">Xem thêm
						<img class="arrow" src="/Data/Sites/1/skins/landingpage/img/banner/arrow.png"/>
					</a>
				</div>
			</div>
			<div class="col-lg-6"></div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="News2">
		<div class="row">
			<div class="col-lg-6 pt-30">
				<div class="block_title">
					<div class="title">
						<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
					</div>
				</div>
				<div class="block_content">
					
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					<a class="read-more" href="#">Xem thêm
						<img class="arrow" src="/Data/Sites/1/skins/landingpage/img/banner/arrow.png"/>
					</a>
				</div>
			</div>
			<div class="col-lg-6"></div>
		</div>
	</xsl:template>
</xsl:stylesheet>
