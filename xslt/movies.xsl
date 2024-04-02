<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>My Movie Collection</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Title</th>
        <th>Genre</th>
      </tr>
      <xsl:for-each select="movies/movie">
        <xsl:sort select="name" />
            <xsl:if test="release-date &gt; 2000">
                <tr>
                <td><xsl:value-of select="name"/></td>
                <xsl:choose>
                    <xsl:when test="release-date = 2024 ">
                        <td bgcolor="blue"><xsl:value-of select="genre"/></td>
                    </xsl:when>
                    <xsl:otherwise>
                        <td bgcolor="red"><xsl:value-of select="genre"/></td>
                    </xsl:otherwise>
                </xsl:choose>
                </tr>
            </xsl:if>
        </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>