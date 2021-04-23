<xsl:stylesheet  version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:exsl="http://exslt.org/common" extension-element-prefixes="exsl">
<xsl:template match= "/">
	<h1 style="color:#0066cc"> Tu veux bien aller  me chercher ca?</h1>
		<xsl:for-each select="//cuisine/ingredients/ing/@ref">
			<xsl:variable name="name_ing" select="."/>
			<li>
				<xsl:apply-templates select="//../../../recettes/recette/ingredients_utiles/ingredient/@ref[contains(text(), $nam_ing)]">
					
				</xsl:apply-templates>
				<xsl:value-of select="$name_ing"/>
				<xsl:value-of select="$quantity"/>
			</li>
		</xsl:for-each>
	
		
			
</xsl:template>

<xsl:template match="">
	<xsl:variable name="quantity" select="sum(exsl:node-set(number(/following-sibling::*)))"/>
	<h3>test entre</h3>
</xsl:template>

</xsl:stylesheet>