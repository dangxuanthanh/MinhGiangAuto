<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="block_s-4" id="landingpage-5">
			<div class="container">
				<xsl:apply-templates select="Zone[5]"></xsl:apply-templates>
				<div class="row">
					<div class="col-xl-4 df_ai-center">
						<div class="block_option">
							<ul>
								<xsl:apply-templates select="Zone[5]/News" mode="MenuNav"></xsl:apply-templates>
							</ul>
						</div>
					</div>
					<xsl:apply-templates select="Zone[5]/News" mode="Content"></xsl:apply-templates>
					
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="block_title column-center">
			<div class="title">
				<h2 class="text-white"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="MenuNav">
		<li>
			<xsl:attribute name="data-tab-5">
				<xsl:text disable-output-escaping="yes">ldp-5-</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="option"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
		</li>
	</xsl:template>
	<xsl:template match="News" mode="Content">
		<div class="col-xl-4 df_ai-center">
			<xsl:attribute name="data-content-5">
				<xsl:text disable-output-escaping="yes">ldp-content-5-</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="position()&gt;1">
				<xsl:attribute name="style">
					<xsl:text disable-output-escaping="yes">display: none</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<div class="card-img">
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
		<div class="col-xl-4 df_ai-center">
			<xsl:attribute name="data-content-5">
				<xsl:text disable-output-escaping="yes">ldp-content-5-</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="position()&gt;1">
				<xsl:attribute name="style">
					<xsl:text disable-output-escaping="yes">display: none</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<div class="block_content">
				<div class="title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
				<div class="title-content">
					<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					<div class="flow"><img src="/Data/Sites/1/skins/landingpage/img/flow.png" alt=""/></div>
				</div>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
