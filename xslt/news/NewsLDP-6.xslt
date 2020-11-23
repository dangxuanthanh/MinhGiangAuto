<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="block_s-5" id="landingpage-6">
			<div class="container">
				<xsl:apply-templates select="Zone[6]/News[1]"></xsl:apply-templates>
				
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="block_title column-center">
			<div class="title">
				<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
			</div>
		</div>
		<div class="x-auto mb-3">
			<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="x-auto">
			<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>
