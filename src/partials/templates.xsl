<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="reel">
		<div class="view" data-click="open-app">
			<xsl:for-each select="./View">
				<xsl:call-template name="view" />
			</xsl:for-each>
		</div>
	</xsl:template>


	<xsl:template name="view">
		<xsl:for-each select="./*">
			<xsl:call-template name="icon" />
		</xsl:for-each>
	</xsl:template>


	<xsl:template name="icon-group">
		<span class="slot group">
			<span class="slot" style="--icon: url(/app/ant/icons/app-icon-textedit.png);"></span>
		</span>
	</xsl:template>


	<xsl:template name="icon">
		<span class="slot">
			<xsl:attribute name="style">--icon: url(/app/<xsl:value-of select="@ns" />/icons/app-icon-<xsl:value-of select="@id" />.png);</xsl:attribute>
			<xsl:attribute name="data-name"><xsl:value-of select="@name" /></xsl:attribute>
			<xsl:attribute name="data-ns"><xsl:value-of select="@ns" /></xsl:attribute>
			<xsl:attribute name="data-id"><xsl:value-of select="@id" /></xsl:attribute>
		</span>
	</xsl:template>

</xsl:stylesheet>