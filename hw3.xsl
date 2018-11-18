<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- This is a comment purpose: 
HW 3 CNIT 131A Creating XSL file
student: CNIT 131A Irina Golovko
date: 08/09/2018 
file: hw3.xsl -->

<xsl:template match="/">
  
	<html>
	<body style="background-color: #e6fff5;">
	<h1 style="text-align:center;">List of Clients</h1>
	<table style="margin-left:auto; margin-right:auto; width:60%; 
		border:1px solid green; background-color:white;">
		<tr style="background-color:#53c653;">
        	<th>Name</th>
        	<th>Phone</th>
			<th>Email</th>
			<th>Account_total</th>
		</tr>
		<xsl:for-each select="Accounts/Client">
		<tr>
			<td style="border:1px dotted green;">
				<xsl:value-of select="Name"/></td>
			<td style="border:1px dotted green;">
				<xsl:value-of select="Phone"/></td>
			<td style="border:1px dotted green;">
				<xsl:value-of select="E-mail"/></td>
			<xsl:choose>
				<xsl:when test="Account_Total &lt;= 80000">	
					<td style="border:1px dotted green; text-align:right; 
						color:red; font-weight:bold;">
						<xsl:value-of select="Account_Total"/></td>
				</xsl:when>
				<xsl:otherwise>
					<td style="border:1px dotted green; text-align:right;">
						<xsl:value-of select="Account_Total"/></td>
				</xsl:otherwise>
			</xsl:choose>						
		</tr>
		</xsl:for-each>
	</table>
	</body>
	</html>
</xsl:template>

</xsl:stylesheet>