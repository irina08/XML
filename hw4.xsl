<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- This is a comment purpose: 
HW 4 CNIT 131A XML and XPath
student: CNIT 131A Irina Golovko
date: 16/09/2018 
file: hw4.xsl -->

<xsl:template match="/">
  
	<html>
		<head>
			<title>An informational page for the ABC</title>
			<style type="text/css">
			body {
				text-align:center;
			}
			#logo {
				width:220px;
				height:170px;
			}
			.left {
				text-align:left;
				text-indent: 50px;
				font-size:18px;
			}
			</style>
		</head>
		
		<body>
			<br></br>
			<h1>ABC Financial Startup</h1>
			<img id="logo" src="financialstartup.jpg" alt="Image" />
			<p class="left">We are very young financial manager company and we are proud 
			of our clients.</p> 
			
			<p class="left">We have started with 1 client a little bit more than 10 
			years ago and now we have 
				<xsl:value-of select="count(//Client)"/>
			clients!</p>
			
			<p class="left">These are our clients:
				<xsl:for-each select="Accounts/Client/Name">
					<xsl:value-of select="."/>
					<xsl:choose>
						<xsl:when test="position()=last()">.</xsl:when>
						<xsl:when test="position()=last()-1">, and</xsl:when>
						<xsl:otherwise>, </xsl:otherwise>
					</xsl:choose>		
				</xsl:for-each>
			</p>
			
			<p class="left">
				<xsl:value-of select="count(//Years[. &gt; 7])"/>
			<!--
				<xsl:value-of select="count(//Client[Years>7]/Years)"/>
			-->
			of our clients are with us for more than 7 years!</p>
					
		</body>
	</html>

</xsl:template>
</xsl:stylesheet>