<xsl:stylesheet version = "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match= "/">
	<h1> Ingrédients</h1>
		<h2>
			<xsl:apply-templates select="//ingredients/ing">
				<xsl:sort select="nom"/>
			</xsl:apply-templates>
		</h2>
			
</xsl:template>

<xsl:template match="cuisine/ingredients/ing/nom">
		<xsl:value-of select="."/><br/>
		<xsl:variable name="name" select="."/>
		<xsl:choose>
			 <xsl:when test="//@ref[contains(text(),name)]">
			 		<h3>ehehehehehe</h3>
			 </xsl:when>
		</xsl:choose>
</xsl:template>
</xsl:stylesheet>