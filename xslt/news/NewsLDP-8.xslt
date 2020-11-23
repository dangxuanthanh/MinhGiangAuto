<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="block_s-7" id="landingpage-8">
			<div class="container">
				<xsl:apply-templates select="Zone[8]"></xsl:apply-templates>
				
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="block_title column-center">
			<div class="title">
				<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
			</div>
		</div>
		<div class="news_slide">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="News"></xsl:apply-templates>
					
				</div>
			</div>
			<xsl:if test="count(News)&gt;1">
				<div class="nav-arrow">
					<div class="nav-arrow-prev"><img class="arrow" src="/Data/Sites/1/skins/landingpage/img/banner/arrow-left.png"/></div>
					<div class="nav-arrow-next"><img class="arrow" src="/Data/Sites/1/skins/landingpage/img/banner/arrow.png"/></div>
				</div>
			</xsl:if>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="news-card">
				<div class="new-img">
					<div class="img opacity">
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
				<div class="content-news">
					<div class="date"><span class="lnr lnr-calendar-full"></span>
						<time><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></time>
					</div>
					<div class="caption">
						<a class=" ">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
						<a class="readmore-news" href="#">
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
							<span class="lnr lnr-arrow-right"></span>
						</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
