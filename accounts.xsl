<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1 style="text-align:center">Daily Mall Transactions</h1>
				<xsl:apply-templates select = "Accounts/Transaction" /> 
				<table border="2" align="center">
					<tr>
						<th>Date</th>
		                <th>Type</th>
		                <th>Particulars</th>
		                <th>Amount</th>
		                <th>Description</th>
		                <th>Status</th>
		            </tr>
		            <xsl:for-each select="Accounts/Transaction">
		            	<xsl:sort select="date" order="ascending"/>
		            	<xsl:if test="amount &lt; 1000">
		                	<tr>
		                		<td>
		                			<xsl:value-of select="date"/>
		                		</td>
		                		<td>
		                			<xsl:value-of select="type"/>
		                        <td>
		                            <xsl:value-of select="particulars"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="amount"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="description"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="status"/>
		                        </td>
		                        <td>
		                        	<xsl:choose>
		                        		<xsl:when test="amount &gt; 2000">To be verified.</xsl:when>
									    <xsl:otherwise>Good to go.</xsl:otherwise>
							        </xsl:choose>
						        </td>
					        </td>
					    </tr>
		                </xsl:if>
		            </xsl:for-each>
		        </table>
		    </body>
		</html>
</xsl:template>
        <xsl:template match = "date"> 
        	<span style = "font-size = 22px;"> <xsl:value-of select = "." />     </span> <br/> 
        </xsl:template>  
</xsl:stylesheet>