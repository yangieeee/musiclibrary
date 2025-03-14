<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Music Library</title>
                <style>
                    body {
                        background-color: #f0f8ff; /* Light blue background */
                        font-family: Arial, sans-serif;
                        text-align: center;
                    }
                    h1 {
                        font-family: Georgia, serif;
                        font-size: 36px;
                        text-shadow: 2px 2px 5px gray;
                        color: #333;
                    }
                    table {
                        width: 80%;
                        margin: auto;
                        border-collapse: collapse;
                        font-size: 18px;
                        background-color: white;
                        table-layout: fixed; /* Ensures the table does not shift */
                    }
                    th, td {
                        padding: 10px;
                        border: 1px solid #ddd;
                        min-height: 50px; /* Ensures uniform cell height */
                        transition: background-color 0.3s, color 0.3s; /* Smooth hover effect */
                        box-sizing: border-box;
                    }
                    th {
                        background-color: #333;
                        color: white;
                    }
                    ul {
                        padding-left: 20px;
                        text-align: left;
                        margin: 0;
                        list-style-position: inside; /* Ensures bullet points don't shift content */
                    }
                    tr:hover td {
                        background-color: hotpink !important;
                        color: white !important;
                    }
                </style>
            </head>
            <body>
                <h1>My Music Library</h1>
                <table>
                    <tr>
                        <th>Song Title</th>
                        <th>Artist</th>
                        <th>Albums</th>
                        <th>Debut Year</th>
                    </tr>
                    <xsl:for-each select="music/song">
                        <tr>
                            <td><xsl:value-of select="songTitle"/></td>
                            <td><xsl:value-of select="artist"/></td>
                            <td>
                                <ul>
                                    <xsl:for-each select="albums/album">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                            <td><xsl:value-of select="debutYear"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
