<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--
<xsl:key name="List-of-sites" match="Drawings" use="Site" />
<xsl:key name="List-of-buildings" match="Drawings" use="Building" />
<xsl:key name="List-of-floors" match="Drawings" use="Floor" />
<xsl:key name="List-of-disciplines" match="Drawings" use="Discipline" />
<xsl:key name="List-of-subjects" match="Drawings" use="Subject" />
-->

<xsl:template match="/">
  <html>  
  <body>

	List of: <xsl:value-of select="$varElem" />| |<xsl:value-of select="$varName" /><br />
	<table border="1" id="tb01"><tbody>

<!--	<xsl:variable name="varTest" select="concat('CouncilDrawings/Drawings[', $varElem, '=', $varName, ']')" />
	<xsl:value-of select="$varTest" /> <br />
	<xsl:value-of select="concat('CouncilDrawings/Drawings[', $varElem, '=', $varName, ']')" /> -->

	<xsl:choose>
	<xsl:when test="$varElem = 'Site'">
  	<xsl:for-each select="//Drawings[Site = $varName]">
	<xsl:sort select="Building" /> 	
	
		<xsl:variable name="LinktoLocation"><xsl:value-of select="FileLocation" /></xsl:variable>
		<xsl:variable name="LinktoJPG"><xsl:value-of select="JPGFile" /></xsl:variable>
		<xsl:variable name="LinktoThumbnail"><xsl:value-of select="concat($LinktoLocation,$LinktoJPG)" /></xsl:variable>
		<xsl:variable name="LinktoPDF"><xsl:value-of select="PDFFile" /></xsl:variable>
		<tr><td>	
			
<!--			Site: <xsl:value-of select="Site" /><br /> -->
			Building: <strong> <xsl:value-of select="Building" /></strong><br />
			Floor: <xsl:value-of select="Floor" /><br />
			Consultant: <xsl:value-of select="Consultant" /><br />
			<br />
			Drawing Title: <xsl:value-of select="DrawingDescription" /><br />
			Drawing Number: <xsl:value-of select="DrawingNumber" /><br />
			Revision: <xsl:value-of select="RevisionNumber" /><br />
			Scale: <xsl:value-of select="Scale" /><br />
			Date Drawn: <xsl:value-of select="FirstDate" /><br />
			Date Approved: <xsl:value-of select="LastDate" /><br />
			<br />
			PDF Filename: <xsl:copy-of select="$LinktoLocation" /><xsl:copy-of select="$LinktoPDF" /><br />
			File Location: <xsl:value-of select="FileLocation" /><br />
			<br />			
		</td>
		<td><a class='imagepic' target="_blank" href="{$LinktoPDF}"><img src="{$LinktoThumbnail}" width="500" /><!-- <span><img src="{$LinktoThumbnail}" /></span> --></a></td></tr>

	</xsl:for-each>

	</xsl:when>
	
	<xsl:when test="$varElem = 'Building'">
  	<xsl:for-each select="//Drawings[Building = $varName]">
	<xsl:sort select="LastDate" /> 	
	
		<xsl:variable name="LinktoLocation"><xsl:value-of select="FileLocation" /></xsl:variable>
		<xsl:variable name="LinktoJPG"><xsl:value-of select="JPGFile" /></xsl:variable>
		<xsl:variable name="LinktoThumbnail"><xsl:value-of select="concat($LinktoLocation,$LinktoJPG)" /></xsl:variable>
		<xsl:variable name="LinktoPDF"><xsl:value-of select="PDFFile" /></xsl:variable>
		<tr><td>	
			
			Building: <xsl:value-of select="Building" /><br />
			Floor: <strong><xsl:value-of select="Floor" /></strong><br />
			Drawing Title: <xsl:value-of select="DrawingDescription" /><br />
			Author: <xsl:value-of select="Consultant" /><br />
			Site: <xsl:value-of select="Site" /><br />
			PDF Filename: <xsl:copy-of select="$LinktoLocation" /><xsl:copy-of select="$LinktoPDF" /><br />
			Location: <xsl:value-of select="FileLocation" /><br />
			<br />			
			Drawing Number: <xsl:value-of select="DrawingNumber" /><br />
			Revision: <xsl:value-of select="RevisionNumber" /><br />
			Scale: <xsl:value-of select="Scale" /><br />
			Date Drawn: <xsl:value-of select="FirstDate" /><br />
			Date Approved: <xsl:value-of select="LastDate" /><br />
		
		</td>
		<td><a class='imagepic' target="_blank" href="{$LinktoPDF}"><img src="{$LinktoThumbnail}" width="500" /><!-- <span><img src="{$LinktoThumbnail}" /></span> --></a></td>

		</tr>
	</xsl:for-each>
	</xsl:when>
	
	<xsl:when test="$varElem = 'Floor'">
  	<xsl:for-each select="//Drawings[Floor = $varName]">
	<xsl:sort select="Building" /> 	
	
		<xsl:variable name="LinktoLocation"><xsl:value-of select="FileLocation" /></xsl:variable>
		<xsl:variable name="LinktoJPG"><xsl:value-of select="JPGFile" /></xsl:variable>
		<xsl:variable name="LinktoThumbnail"><xsl:value-of select="concat($LinktoLocation,$LinktoJPG)" /></xsl:variable>
		<xsl:variable name="LinktoPDF"><xsl:value-of select="PDFFile" /></xsl:variable>
		<tr><td>	
			
<!--			Site: <xsl:value-of select="Site" /><br /> -->
			Building: <strong> <xsl:value-of select="Building" /></strong><br />
			Floor: <xsl:value-of select="Floor" /><br />
			Consultant: <xsl:value-of select="Consultant" /><br />
			<br />
			Drawing Title: <xsl:value-of select="DrawingDescription" /><br />
			Drawing Number: <xsl:value-of select="DrawingNumber" /><br />
			Revision: <xsl:value-of select="RevisionNumber" /><br />
			Scale: <xsl:value-of select="Scale" /><br />
			Date Drawn: <xsl:value-of select="FirstDate" /><br />
			Date Approved: <xsl:value-of select="LastDate" /><br />
			<br />
			PDF Filename: <xsl:copy-of select="$LinktoLocation" /><xsl:copy-of select="$LinktoPDF" /><br />
			File Location: <xsl:value-of select="FileLocation" /><br />
			<br />			
		</td>
		<td><a class='imagepic' target="_blank" href="{$LinktoPDF}"><img src="{$LinktoThumbnail}" width="500" /><!-- <span><img src="{$LinktoThumbnail}" /></span> --></a></td></tr>

	</xsl:for-each>

	</xsl:when>

	<xsl:when test="$varElem = 'Discipline'">
  	<xsl:for-each select="//Drawings[Discipline = $varName]">
	
		<xsl:variable name="LinktoLocation"><xsl:value-of select="FileLocation" /></xsl:variable>
		<xsl:variable name="LinktoThumbnail"><xsl:value-of select="JPGFile" /></xsl:variable>
		<xsl:variable name="LinktoPDF"><xsl:value-of select="PDFFile" /></xsl:variable>
		<tr><td><a class='imagepic' target="_blank" href="{$LinktoPDF}"><img src="{$LinktoThumbnail}" width="150" /><span><img src="{$LinktoThumbnail}" /></span></a></td>
		<td>	
			
			Drawing Title: <xsl:value-of select="DrawingDescription" /><br />
			Author: <xsl:value-of select="Consultant" /><br />
			Building: <xsl:value-of select="Building" /><br />
			Floor: <xsl:value-of select="Floor" /><br />
			Site: <xsl:value-of select="Site" /><br />
			PDF Filename: <xsl:copy-of select="$LinktoLocation" /><xsl:copy-of select="$LinktoPDF" /><br />
			Location: <xsl:value-of select="FileLocation" /><br />
			
		</td>
		<td>
			
			Drawing Number: <xsl:value-of select="DrawingNumber" /><br />
			Revision: <xsl:value-of select="RevisionNumber" /><br />
			Scale: <xsl:value-of select="Scale" /><br />
			Date Drawn: <xsl:value-of select="FirstDate" /><br />
			Date Approved: <xsl:value-of select="LastDate" /><br />
		
		</td>
		</tr>
	</xsl:for-each>
	</xsl:when>

	<xsl:when test="$varElem = 'Subject'">
  	<xsl:for-each select="//Drawings[Subject = $varName]">
	<xsl:sort select="Building" /> 	
	
		<xsl:variable name="LinktoLocation"><xsl:value-of select="FileLocation" /></xsl:variable>
		<xsl:variable name="LinktoThumbnail"><xsl:value-of select="JPGFile" /></xsl:variable>
		<xsl:variable name="LinktoPDF"><xsl:value-of select="PDFFile" /></xsl:variable>
		<tr><td><a class='imagepic' target="_blank" href="{$LinktoPDF}"><img src="{$LinktoThumbnail}" width="150" /><span><img src="{$LinktoThumbnail}" /></span></a></td>
		<td>	
			
			<strong> Building: <xsl:value-of select="Building" /></strong><br />
			Drawing Title: <xsl:value-of select="DrawingDescription" /><br />
			Author: <xsl:value-of select="Consultant" /><br />
			Floor: <xsl:value-of select="Floor" /><br />
			Site: <xsl:value-of select="Site" /><br />
			PDF Filename: <xsl:copy-of select="$LinktoLocation" /><xsl:copy-of select="$LinktoPDF" /><br />
			Location: <xsl:value-of select="FileLocation" /><br />
			
		</td>
		<td>
			
			Drawing Number: <xsl:value-of select="DrawingNumber" /><br />
			Revision: <xsl:value-of select="RevisionNumber" /><br />
			Scale: <xsl:value-of select="Scale" /><br />
			Date Drawn: <xsl:value-of select="FirstDate" /><br />
			Date Approved: <xsl:value-of select="LastDate" /><br />
		
		</td>
		</tr>
	</xsl:for-each>
	</xsl:when>
	
	</xsl:choose>
	</tbody></table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>