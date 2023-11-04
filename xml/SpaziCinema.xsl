<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Elenco Cinema</title>
        <style>

          table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-family: Arial, sans-serif;
          }

          th {
            background-color: #3498db;
            color: #fff;
            font-weight: bold;
            text-align: left;
            padding: 12px;
            border: 1px solid #3498db;
          }

          td {
            text-align: left;
            padding: 10px;
            border: 1px solid #ddd;
          }

          tr:nth-child(even) {
            background-color: #f2f2f2;
          }

          tr:hover {
            background-color: #e0e0e0;
          }

          h1 {
            font-size: 30px;
            font-weight: bold;
            font-family: sans-serif;
            color: #3498db;
            margin: 0 auto;
          }

          body {
            margin: 0;
            padding: 20px;
            background-color: #f7f7f7;
          }

          table, th, td {
            border: none;
          }d

          td, th {
            padding: 10px 15px;
          }

          #titolo {
            text-align: center;
          }

        </style>
      </head>
      <body>
        <div id="titolo">
          <h1>Elenco Cinema</h1>
        </div>
        <table>
          <tr>
            <th>Comune</th>
            <th>Provincia</th>
            <th>Sigla</th>
            <th>Nome</th>
            <th>Tipo Sala</th>
            <th>Posti</th>
            <th>Indirizzo</th>
            <th>Telefono</th>
            <th>Longitudine</th>
            <th>Latitudine</th>
            <th>Classe</th>
          </tr>
          <xsl:apply-templates select="SpaziCinema/cinema"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cinema">
    <tr>
      <td><xsl:value-of select="comune"/></td>
      <td><xsl:value-of select="provincia/NOME"/></td>
      <td><xsl:value-of select="provincia/@sigla"/></td>
      <td><xsl:value-of select="nome"/></td>
      <td><xsl:value-of select="tipo_sala"/></td>
      <td><xsl:value-of select="posti"/></td>
      <td><xsl:value-of select="indirizzo"/></td>
      <td><xsl:value-of select="telefono"/></td>
      <td><xsl:value-of select="longitudine"/></td>
      <td><xsl:value-of select="latitudine"/></td>
      <td><xsl:value-of select="provincia/classe/@nome"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>