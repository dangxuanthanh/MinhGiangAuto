<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="block_s-3" id="landingpage-4">
			<div class="container">
				<xsl:apply-templates select="Zone[4]"></xsl:apply-templates>
				
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="block_title column-center">
			<div class="title">
				<h2><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></h2>
			</div>
		</div>
		<div class="block_timeline">
			<xsl:apply-templates select="News"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="timeline">
			<div class="timeline-content">
				<div class="date">
					<time><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></time><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
			<div class="timeline-content">
				<div class="block_content">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
