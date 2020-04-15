<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- Creat a key (index) for each of the nodes that need listings -->
<xsl:key name="List-of-sites" match="Drawings" use="Site" />
<xsl:key name="List-of-buildings" match="Drawings" use="Building" />
<xsl:key name="List-of-floors" match="Drawings" use="Floor" />
<xsl:key name="List-of-disciplines" match="Drawings" use="Discipline" />
<xsl:key name="List-of-subjects" match="Drawings" use="Subject" />
<!-- Match the xsl file with the xml using the root node as the template -->
<xsl:template match="/">
  <html>
 
 
  <body>
	<h3>Sites</h3>
	<select name="SiteId" class="dropdown-btn" size="10">
		<option>All sites</option>
		<!--  For 1st instance of each new Site element in the key index that matches the first occurance of the Site value to the list -->
		<xsl:for-each select="//Drawings[count(. | key('List-of-sites', Site)[1]) = 1]">
			<!-- Sort the list on Site -->
			<xsl:sort select="Site" /> 
			<xsl:variable name="SiteId"><xsl:value-of select="Site" /></xsl:variable>
			<option onclick="RightNavList('{$SiteId}','Site')" > 
				<xsl:value-of select="Site" /> (<xsl:value-of select="count(key('List-of-sites', Site)[.]) "/>)
			</option>
			
			<!-- Add the current node value to the list (count the number of occurences of this value and make it clickable to pass the variable value back to the calling page  -->
		<!--	<p onclick="RightListing('{$SiteId}')"> <xsl:value-of select="Site" /> (<xsl:value-of select="count(key('List-of-sites', Site)[.]) "/>)</p> -->

		</xsl:for-each>
	</select>

	    
	<h3>Buildings</h3>
	<select name="BuildingId" class="dropdown-btn" size="10">
		<option>All building</option>
		<xsl:for-each select="//Drawings[count(. | key('List-of-buildings', Building)[1]) = 1]">
			<xsl:sort select="Building" />
			<xsl:variable name="BuildingId"><xsl:value-of select="Building" /></xsl:variable>
			<option onclick="RightNavList('{$BuildingId}','Building')" > 
				<xsl:value-of select="Building" /> (<xsl:value-of select="count(key('List-of-buildings', Building)[.]) "/>)

			</option>
			
			
		</xsl:for-each>
	</select>		

	
	<h3>List of Floors</h3>
	<select name="FloorId" class="dropdown-btn" size="10">
	<option>All floors</option>
	<xsl:for-each select="//Drawings[count(. | key('List-of-floors', Floor)[1]) = 1]">
		<xsl:sort select="Floor" />
			<xsl:variable name="FloorId"><xsl:value-of select="Floor" /></xsl:variable>
			<option onclick="RightNavList('{$FloorId}','Floor')" > 
				<xsl:value-of select="Floor" /> (<xsl:value-of select="count(key('List-of-floors', Floor)[.]) "/>)

			</option>
<!--
		<xsl:variable name="FloorId"><xsl:value-of select="Floor" /></xsl:variable>
		<p onclick="RightListing('{$FloorId}')"> <xsl:value-of select="Floor" /> (<xsl:value-of select="count(key('List-of-floors', Floor)[.]) "/>)</p>
-->
	</xsl:for-each>
	</select>

	
	<h3>List of Disciplines</h3>
	<select name="DisciplineId" class="dropdown-btn" size="10">
	<option>All disciplines</option>
	<xsl:for-each select="//Drawings[count(. | key('List-of-disciplines', Discipline)[1]) = 1]">
		<xsl:sort select="Discipline" />
			<xsl:variable name="DisciplineId"><xsl:value-of select="Discipline" /></xsl:variable>
			<option onclick="RightNavList('{$DisciplineId}','Discipline')" > 
				<xsl:value-of select="Discipline" /> (<xsl:value-of select="count(key('List-of-disciplines', Discipline)[.]) "/>)

			</option>
	
<!--		<xsl:variable name="DisciplineId"><xsl:value-of select="Discipline" /></xsl:variable>
		<p onclick="RightListing('{$DisciplineId}')"> <xsl:value-of select="Discipline" /> (<xsl:value-of select="count(key('List-of-disciplines', Discipline)[.]) "/>)</p>
-->	
	</xsl:for-each>
	</select>

	
	<h3>List of Subjects</h3>
	<select name="SubjectId" class="dropdown-btn" size="10">
	<option>All subjects</option>
	<xsl:for-each select="//Drawings[count(. | key('List-of-subjects', Subject)[1]) = 1]">
		<xsl:sort select="Subject" />
			<xsl:variable name="SubjectId"><xsl:value-of select="Subject" /></xsl:variable>
			<option onclick="RightNavList('{$SubjectId}','Subject')" > 
				<xsl:value-of select="Subject" /> (<xsl:value-of select="count(key('List-of-subjects', Subject)[.]) "/>)

			</option>
			
<!--
		<xsl:variable name="SubjectId"><xsl:value-of select="Subject" /></xsl:variable>
		<p onclick="RightListing('{$SubjectId}')"> <xsl:value-of select="Subject" /> (<xsl:value-of select="count(key('List-of-subjects', Subject)[.]) "/>)</p>
-->	
	</xsl:for-each>
	</select>


<br />
<br />

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>