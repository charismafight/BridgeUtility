﻿<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <pkg:package xmlns:pkg="http://schemas.microsoft.com/office/2006/xmlPackage">
      <pkg:part pkg:name="/_rels/.rels" pkg:contentType="application/vnd.openxmlformats-package.relationships+xml" pkg:padding="512">
        <pkg:xmlData>
          <Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
            <Relationship Id="rId3" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties" Target="docProps/app.xml"/>
            <Relationship Id="rId2" Type="http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties" Target="docProps/core.xml"/>
            <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="word/document.xml"/>
            <Relationship Id="rId4" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/custom-properties" Target="docProps/custom.xml"/>
          </Relationships>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/word/_rels/document.xml.rels" pkg:contentType="application/vnd.openxmlformats-package.relationships+xml" pkg:padding="256">
        <pkg:xmlData>
          <Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
            <Relationship Id="rId8" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/endnotes" Target="endnotes.xml"/>
            <Relationship Id="rId3" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/numbering" Target="numbering.xml"/>
            <Relationship Id="rId7" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/footnotes" Target="footnotes.xml"/>
            <Relationship Id="rId2" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/customXml" Target="../customXml/item2.xml"/>
            <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/customXml" Target="../customXml/item1.xml"/>
            <Relationship Id="rId6" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/webSettings" Target="webSettings.xml"/>
            <Relationship Id="rId5" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/settings" Target="settings.xml"/>
            <Relationship Id="rId10" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme" Target="theme/theme1.xml"/>
            <Relationship Id="rId4" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles" Target="styles.xml"/>
            <Relationship Id="rId9" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/fontTable" Target="fontTable.xml"/>
          </Relationships>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/word/document.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml">
        <pkg:xmlData>
          <w:document mc:Ignorable="w14 w15 wp14" xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape">
            <w:body>
              <xsl:for-each select="ArrayOfRound/Round">
                <w:p w:rsidR="00317A1D" w:rsidRDefault="007359FD" w:rsidP="006A2081">
                  <w:pPr>
                    <w:pStyle w:val="1"/>
                  </w:pPr>
                  <w:r w:rsidRPr="006354E9">
                    <w:rPr>
                      <w:rFonts w:hint="eastAsia"/>
                    </w:rPr>
                    <w:t>
                      <xsl:value-of select="RoundNo"></xsl:value-of>
                    </w:t>
                  </w:r>
                  <w:r w:rsidR="006A2081" w:rsidRPr="006354E9">
                    <w:t>:</w:t>
                  </w:r>
                </w:p>
                <w:p w:rsidR="00543E7E" w:rsidRDefault="008B5955" w:rsidP="006354E9">
                  <w:pPr>
                    <w:pStyle w:val="2"/>
                  </w:pPr>
                  <w:r>
                    <w:t xml:space="preserve"><xsl:value-of select="Boards/BoardInfo/Table/Table/HomeTeamName"/> </w:t>
                  </w:r>
                  <w:r w:rsidR="006A2081" w:rsidRPr="006354E9">
                    <w:t xml:space="preserve">vs </w:t>
                  </w:r>
                  <w:r>
                    <w:t>
                      <xsl:value-of select="Boards/BoardInfo/Table/Table/VisitingTeamName"/>
                    </w:t>
                  </w:r>
                  <w:r w:rsidR="006A2081" w:rsidRPr="006354E9">
                    <w:t xml:space="preserve"> </w:t>
                  </w:r>
                  <w:r>
                    <w:t>
                      <xsl:value-of select="Boards/BoardInfo/Table/Table/HomeRoundImp"/>:<xsl:value-of select="Boards/BoardInfo/Table/Table/VisitingRoundImp"/>
                    </w:t>
                  </w:r>
                </w:p>
                <xsl:for-each select="Boards/BoardInfo">
                  <w:tbl>
                    <w:tblPr>
                      <w:tblW w:w="5099" w:type="dxa"/>
                      <w:tblBorders>
                        <w:top w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                        <w:left w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                        <w:bottom w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                        <w:right w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                        <w:insideH w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                        <w:insideV w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                      </w:tblBorders>
                      <w:tblLayout w:type="fixed"/>
                      <w:tblLook w:val="04A0" w:firstRow="1" w:lastRow="0" w:firstColumn="1" w:lastColumn="0" w:noHBand="0" w:noVBand="1"/>
                    </w:tblPr>
                    <w:tblGrid>
                      <w:gridCol w:w="1244"/>
                      <w:gridCol w:w="429"/>
                      <w:gridCol w:w="856"/>
                      <w:gridCol w:w="857"/>
                      <w:gridCol w:w="428"/>
                      <w:gridCol w:w="1285"/>
                    </w:tblGrid>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              Board <xsl:value-of select="BoardNumber"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♠ <xsl:value-of select="N/Spades"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00397939" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <!--Vul-->
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              Dlr:<xsl:value-of select="Dlr"/>
                            </w:t>
                          </w:r>
                          <w:bookmarkStart w:id="0" w:name="_GoBack"/>
                          <w:bookmarkEnd w:id="0"/>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0000"/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♥ <xsl:value-of select="N/Hearts"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00397939" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <!--Vul-->
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              Vul:<xsl:value-of select="Vul"/>
                            </w:t>
                          </w:r>
                          <w:bookmarkStart w:id="0" w:name="_GoBack"/>
                          <w:bookmarkEnd w:id="0"/>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0000"/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♦ <xsl:value-of select="N/Diamonds"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="269"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♣ <xsl:value-of select="N/Clubs"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="287"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♠ <xsl:value-of select="W/Spades"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♠ <xsl:value-of select="E/Spades"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0000"/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♥ <xsl:value-of select="W/Hearts"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0000"/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♥ <xsl:value-of select="E/Hearts"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="269"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0000"/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♦ <xsl:value-of select="W/Diamonds"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0000"/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♦ <xsl:value-of select="E/Diamonds"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♣ <xsl:value-of select="W/Clubs"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♣ <xsl:value-of select="E/Clubs"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♠ <xsl:value-of select="S/Spades"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0000"/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♥ <xsl:value-of select="S/Hearts"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="269"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0000"/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♦ <xsl:value-of select="S/Diamonds"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1673" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="CCCCFF"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                              <w:kern w:val="0"/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                            <w:t>
                              ♣ <xsl:value-of select="S/Clubs"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1713" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="33CC33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:sz w:val="22"/>
                              <w:szCs w:val="22"/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <!--修改意见：方位注释-->
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1244" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[1]/WPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[1]/NPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[1]/EPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[1]/SPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <!--<w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="269"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1244" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00D34B1B" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[1]/WPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00D34B1B" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[1]/NPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00D34B1B" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[1]/EPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00D34B1B" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[1]/SPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>-->
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="269"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1244" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1244" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1244" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <!--约定叫-->
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="5099" w:type="dxa"/>
                          <w:gridSpan w:val="6"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="C6D9F1" w:themeFill="text2" w:themeFillTint="33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRPr="008F30B0" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman" w:hint="eastAsia"/>
                              <w:b/>
                            </w:rPr>
                            <w:t>约定叫</w:t>
                          </w:r>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                            </w:rPr>
                            <w:t>：</w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <!--过程-->
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="5099" w:type="dxa"/>
                          <w:gridSpan w:val="6"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                          <w:r w:rsidRPr="008F30B0">
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                            <w:t>打牌过程：</w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <!--结果-->
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="269"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="5099" w:type="dxa"/>
                          <w:gridSpan w:val="6"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="C6D9F1" w:themeFill="text2" w:themeFillTint="33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRPr="00F0007D" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:b/>
                            </w:rPr>
                          </w:pPr>
                          <w:r w:rsidRPr="00F0007D">
                            <w:rPr>
                              <w:rFonts w:hint="eastAsia"/>
                              <w:b/>
                            </w:rPr>
                            <w:t>
                              结果： <xsl:value-of select="Table/Table[1]/Decl"/>&#160;<xsl:value-of select="Table/Table[1]/Cont"/><xsl:value-of select="Table/Table[1]/Result"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <!--方位注释2-->
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1244" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[2]/WPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[2]/NPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[2]/EPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[2]/SPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <!--<w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="269"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1244" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00D34B1B" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[2]/WPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00D34B1B" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[2]/NPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00D34B1B" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[2]/EPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00D34B1B" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Table/Table[2]/SPlayer"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>-->
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1244" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1244" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1244" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:gridSpan w:val="2"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="1285" w:type="dxa"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="center"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <!--约定叫-->
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="5099" w:type="dxa"/>
                          <w:gridSpan w:val="6"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="C6D9F1" w:themeFill="text2" w:themeFillTint="33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRPr="008F30B0" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman" w:hint="eastAsia"/>
                              <w:b/>
                            </w:rPr>
                            <w:t>约定叫</w:t>
                          </w:r>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                            </w:rPr>
                            <w:t>：</w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <!--过程-->
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="279"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="5099" w:type="dxa"/>
                          <w:gridSpan w:val="6"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFF99"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                          </w:pPr>
                          <w:r w:rsidRPr="008F30B0">
                            <w:rPr>
                              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                            </w:rPr>
                            <w:t>打牌过程：</w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <!--结果-->
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="269"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="5099" w:type="dxa"/>
                          <w:gridSpan w:val="6"/>
                          <w:shd w:val="clear" w:color="auto" w:fill="C6D9F1" w:themeFill="text2" w:themeFillTint="33"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRPr="00F0007D" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:b/>
                            </w:rPr>
                          </w:pPr>
                          <w:r w:rsidRPr="00F0007D">
                            <w:rPr>
                              <w:rFonts w:hint="eastAsia"/>
                              <w:b/>
                            </w:rPr>
                            <w:t>
                              结果：<xsl:value-of select="Table/Table[2]/Decl"/>&#160;<xsl:value-of select="Table/Table[2]/Cont"/><xsl:value-of select="Table/Table[2]/Result"/>
                            </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="263"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="5099" w:type="dxa"/>
                          <w:gridSpan w:val="6"/>
                          <w:tcBorders>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:spacing w:line="240" w:lineRule="atLeast"/>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:color w:val="0000FF"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="宋体" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="0000FF"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Wplayer"/>
                            </w:t>
                          </w:r>
                          <w:r>
                            <w:rPr>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="0000FF"/>
                            </w:rPr>
                            <w:t xml:space="preserve">: </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="260"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="5099" w:type="dxa"/>
                          <w:gridSpan w:val="6"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRPr="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:spacing w:line="240" w:lineRule="atLeast"/>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="C00000"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="宋体" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="C00000"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Nplayer"/>
                            </w:t>
                          </w:r>
                          <w:r>
                            <w:rPr>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="C00000"/>
                            </w:rPr>
                            <w:t xml:space="preserve">: </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="260"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="5099" w:type="dxa"/>
                          <w:gridSpan w:val="6"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:spacing w:line="240" w:lineRule="atLeast"/>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:color w:val="FF0000"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="宋体" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="660066"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Eplayer"/>
                            </w:t>
                          </w:r>
                          <w:r>
                            <w:rPr>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="660066"/>
                            </w:rPr>
                            <w:t xml:space="preserve">: </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="260"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="5099" w:type="dxa"/>
                          <w:gridSpan w:val="6"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                            <w:bottom w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:spacing w:line="240" w:lineRule="atLeast"/>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:color w:val="0000FF"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="宋体" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0066"/>
                            </w:rPr>
                            <w:t>
                              <xsl:value-of select="Splayer"/>
                            </w:t>
                          </w:r>
                          <w:r>
                            <w:rPr>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0066"/>
                            </w:rPr>
                            <w:t xml:space="preserve">: </w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                    <w:tr w:rsidR="00B306F6" w:rsidTr="00B306F6">
                      <w:trPr>
                        <w:trHeight w:val="70"/>
                      </w:trPr>
                      <w:tc>
                        <w:tcPr>
                          <w:tcW w:w="5099" w:type="dxa"/>
                          <w:gridSpan w:val="6"/>
                          <w:tcBorders>
                            <w:top w:val="nil"/>
                          </w:tcBorders>
                          <w:shd w:val="clear" w:color="auto" w:fill="FFFFCC"/>
                        </w:tcPr>
                        <w:p w:rsidR="00B306F6" w:rsidRDefault="00B306F6" w:rsidP="00B306F6">
                          <w:pPr>
                            <w:spacing w:line="240" w:lineRule="atLeast"/>
                            <w:jc w:val="left"/>
                            <w:rPr>
                              <w:rFonts w:cs="Times New Roman"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="17365D"/>
                            </w:rPr>
                          </w:pPr>
                          <w:r>
                            <w:rPr>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0000"/>
                            </w:rPr>
                            <w:t>JJ</w:t>
                          </w:r>
                          <w:r>
                            <w:rPr>
                              <w:rFonts w:cs="宋体" w:hint="eastAsia"/>
                              <w:b/>
                              <w:bCs/>
                              <w:color w:val="FF0000"/>
                            </w:rPr>
                            <w:t>：</w:t>
                          </w:r>
                        </w:p>
                      </w:tc>
                    </w:tr>
                  </w:tbl>
                  <!--分隔符-->
                  <w:bookmarkEnd/>
                  <w:p w:rsidR="00DD62DB" w:rsidRDefault="00DD62DB">
                    <w:r>
                      <w:br w:type="column"/>
                    </w:r>
                  </w:p>
                </xsl:for-each>
              </xsl:for-each>
              <w:p w:rsidR="00B306F6" w:rsidRPr="00DF0D55" w:rsidRDefault="00B306F6" w:rsidP="00E43B7D">
                <w:bookmarkStart w:id="0" w:name="_GoBack"/>
                <w:bookmarkEnd w:id="0"/>
              </w:p>
              <w:sectPr w:rsidR="00B306F6" w:rsidRPr="00DF0D55" w:rsidSect="007D3B54">
                <w:pgSz w:w="11906" w:h="16838"/>
                <w:pgMar w:top="720" w:right="720" w:bottom="1021" w:left="720" w:header="851" w:footer="992" w:gutter="0"/>
                <w:cols w:num="2" w:space="425"/>
                <w:docGrid w:type="lines" w:linePitch="312"/>
              </w:sectPr>
            </w:body>
          </w:document>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/word/footnotes.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.footnotes+xml">
        <pkg:xmlData>
          <w:footnotes mc:Ignorable="w14 w15 wp14" xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape">
            <w:footnote w:type="separator" w:id="-1">
              <w:p w:rsidR="0045659E" w:rsidRDefault="0045659E" w:rsidP="00B06EA9">
                <w:r>
                  <w:separator/>
                </w:r>
              </w:p>
            </w:footnote>
            <w:footnote w:type="continuationSeparator" w:id="0">
              <w:p w:rsidR="0045659E" w:rsidRDefault="0045659E" w:rsidP="00B06EA9">
                <w:r>
                  <w:continuationSeparator/>
                </w:r>
              </w:p>
            </w:footnote>
          </w:footnotes>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/word/endnotes.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.endnotes+xml">
        <pkg:xmlData>
          <w:endnotes mc:Ignorable="w14 w15 wp14" xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape">
            <w:endnote w:type="separator" w:id="-1">
              <w:p w:rsidR="0045659E" w:rsidRDefault="0045659E" w:rsidP="00B06EA9">
                <w:r>
                  <w:separator/>
                </w:r>
              </w:p>
            </w:endnote>
            <w:endnote w:type="continuationSeparator" w:id="0">
              <w:p w:rsidR="0045659E" w:rsidRDefault="0045659E" w:rsidP="00B06EA9">
                <w:r>
                  <w:continuationSeparator/>
                </w:r>
              </w:p>
            </w:endnote>
          </w:endnotes>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/word/theme/theme1.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.theme+xml">
        <pkg:xmlData>
          <a:theme name="Office Theme" xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main">
            <a:themeElements>
              <a:clrScheme name="Office">
                <a:dk1>
                  <a:sysClr val="windowText" lastClr="000000"/>
                </a:dk1>
                <a:lt1>
                  <a:sysClr val="window" lastClr="FFFFFF"/>
                </a:lt1>
                <a:dk2>
                  <a:srgbClr val="1F497D"/>
                </a:dk2>
                <a:lt2>
                  <a:srgbClr val="EEECE1"/>
                </a:lt2>
                <a:accent1>
                  <a:srgbClr val="4F81BD"/>
                </a:accent1>
                <a:accent2>
                  <a:srgbClr val="C0504D"/>
                </a:accent2>
                <a:accent3>
                  <a:srgbClr val="9BBB59"/>
                </a:accent3>
                <a:accent4>
                  <a:srgbClr val="8064A2"/>
                </a:accent4>
                <a:accent5>
                  <a:srgbClr val="4BACC6"/>
                </a:accent5>
                <a:accent6>
                  <a:srgbClr val="F79646"/>
                </a:accent6>
                <a:hlink>
                  <a:srgbClr val="0000FF"/>
                </a:hlink>
                <a:folHlink>
                  <a:srgbClr val="800080"/>
                </a:folHlink>
              </a:clrScheme>
              <a:fontScheme name="Office">
                <a:majorFont>
                  <a:latin typeface="Cambria"/>
                  <a:ea typeface=""/>
                  <a:cs typeface=""/>
                  <a:font script="Jpan" typeface="ＭＳ ゴシック"/>
                  <a:font script="Hang" typeface="맑은 고딕"/>
                  <a:font script="Hans" typeface="宋体"/>
                  <a:font script="Hant" typeface="新細明體"/>
                  <a:font script="Arab" typeface="Times New Roman"/>
                  <a:font script="Hebr" typeface="Times New Roman"/>
                  <a:font script="Thai" typeface="Angsana New"/>
                  <a:font script="Ethi" typeface="Nyala"/>
                  <a:font script="Beng" typeface="Vrinda"/>
                  <a:font script="Gujr" typeface="Shruti"/>
                  <a:font script="Khmr" typeface="MoolBoran"/>
                  <a:font script="Knda" typeface="Tunga"/>
                  <a:font script="Guru" typeface="Raavi"/>
                  <a:font script="Cans" typeface="Euphemia"/>
                  <a:font script="Cher" typeface="Plantagenet Cherokee"/>
                  <a:font script="Yiii" typeface="Microsoft Yi Baiti"/>
                  <a:font script="Tibt" typeface="Microsoft Himalaya"/>
                  <a:font script="Thaa" typeface="MV Boli"/>
                  <a:font script="Deva" typeface="Mangal"/>
                  <a:font script="Telu" typeface="Gautami"/>
                  <a:font script="Taml" typeface="Latha"/>
                  <a:font script="Syrc" typeface="Estrangelo Edessa"/>
                  <a:font script="Orya" typeface="Kalinga"/>
                  <a:font script="Mlym" typeface="Kartika"/>
                  <a:font script="Laoo" typeface="DokChampa"/>
                  <a:font script="Sinh" typeface="Iskoola Pota"/>
                  <a:font script="Mong" typeface="Mongolian Baiti"/>
                  <a:font script="Viet" typeface="Times New Roman"/>
                  <a:font script="Uigh" typeface="Microsoft Uighur"/>
                </a:majorFont>
                <a:minorFont>
                  <a:latin typeface="Calibri"/>
                  <a:ea typeface=""/>
                  <a:cs typeface=""/>
                  <a:font script="Jpan" typeface="ＭＳ 明朝"/>
                  <a:font script="Hang" typeface="맑은 고딕"/>
                  <a:font script="Hans" typeface="宋体"/>
                  <a:font script="Hant" typeface="新細明體"/>
                  <a:font script="Arab" typeface="Arial"/>
                  <a:font script="Hebr" typeface="Arial"/>
                  <a:font script="Thai" typeface="Cordia New"/>
                  <a:font script="Ethi" typeface="Nyala"/>
                  <a:font script="Beng" typeface="Vrinda"/>
                  <a:font script="Gujr" typeface="Shruti"/>
                  <a:font script="Khmr" typeface="DaunPenh"/>
                  <a:font script="Knda" typeface="Tunga"/>
                  <a:font script="Guru" typeface="Raavi"/>
                  <a:font script="Cans" typeface="Euphemia"/>
                  <a:font script="Cher" typeface="Plantagenet Cherokee"/>
                  <a:font script="Yiii" typeface="Microsoft Yi Baiti"/>
                  <a:font script="Tibt" typeface="Microsoft Himalaya"/>
                  <a:font script="Thaa" typeface="MV Boli"/>
                  <a:font script="Deva" typeface="Mangal"/>
                  <a:font script="Telu" typeface="Gautami"/>
                  <a:font script="Taml" typeface="Latha"/>
                  <a:font script="Syrc" typeface="Estrangelo Edessa"/>
                  <a:font script="Orya" typeface="Kalinga"/>
                  <a:font script="Mlym" typeface="Kartika"/>
                  <a:font script="Laoo" typeface="DokChampa"/>
                  <a:font script="Sinh" typeface="Iskoola Pota"/>
                  <a:font script="Mong" typeface="Mongolian Baiti"/>
                  <a:font script="Viet" typeface="Arial"/>
                  <a:font script="Uigh" typeface="Microsoft Uighur"/>
                </a:minorFont>
              </a:fontScheme>
              <a:fmtScheme name="Office">
                <a:fillStyleLst>
                  <a:solidFill>
                    <a:schemeClr val="phClr"/>
                  </a:solidFill>
                  <a:gradFill rotWithShape="1">
                    <a:gsLst>
                      <a:gs pos="0">
                        <a:schemeClr val="phClr">
                          <a:tint val="50000"/>
                          <a:satMod val="300000"/>
                        </a:schemeClr>
                      </a:gs>
                      <a:gs pos="35000">
                        <a:schemeClr val="phClr">
                          <a:tint val="37000"/>
                          <a:satMod val="300000"/>
                        </a:schemeClr>
                      </a:gs>
                      <a:gs pos="100000">
                        <a:schemeClr val="phClr">
                          <a:tint val="15000"/>
                          <a:satMod val="350000"/>
                        </a:schemeClr>
                      </a:gs>
                    </a:gsLst>
                    <a:lin ang="16200000" scaled="1"/>
                  </a:gradFill>
                  <a:gradFill rotWithShape="1">
                    <a:gsLst>
                      <a:gs pos="0">
                        <a:schemeClr val="phClr">
                          <a:shade val="51000"/>
                          <a:satMod val="130000"/>
                        </a:schemeClr>
                      </a:gs>
                      <a:gs pos="80000">
                        <a:schemeClr val="phClr">
                          <a:shade val="93000"/>
                          <a:satMod val="130000"/>
                        </a:schemeClr>
                      </a:gs>
                      <a:gs pos="100000">
                        <a:schemeClr val="phClr">
                          <a:shade val="94000"/>
                          <a:satMod val="135000"/>
                        </a:schemeClr>
                      </a:gs>
                    </a:gsLst>
                    <a:lin ang="16200000" scaled="0"/>
                  </a:gradFill>
                </a:fillStyleLst>
                <a:lnStyleLst>
                  <a:ln w="9525" cap="flat" cmpd="sng" algn="ctr">
                    <a:solidFill>
                      <a:schemeClr val="phClr">
                        <a:shade val="95000"/>
                        <a:satMod val="105000"/>
                      </a:schemeClr>
                    </a:solidFill>
                    <a:prstDash val="solid"/>
                  </a:ln>
                  <a:ln w="25400" cap="flat" cmpd="sng" algn="ctr">
                    <a:solidFill>
                      <a:schemeClr val="phClr"/>
                    </a:solidFill>
                    <a:prstDash val="solid"/>
                  </a:ln>
                  <a:ln w="38100" cap="flat" cmpd="sng" algn="ctr">
                    <a:solidFill>
                      <a:schemeClr val="phClr"/>
                    </a:solidFill>
                    <a:prstDash val="solid"/>
                  </a:ln>
                </a:lnStyleLst>
                <a:effectStyleLst>
                  <a:effectStyle>
                    <a:effectLst>
                      <a:outerShdw blurRad="40000" dist="20000" dir="5400000" rotWithShape="0">
                        <a:srgbClr val="000000">
                          <a:alpha val="38000"/>
                        </a:srgbClr>
                      </a:outerShdw>
                    </a:effectLst>
                  </a:effectStyle>
                  <a:effectStyle>
                    <a:effectLst>
                      <a:outerShdw blurRad="40000" dist="23000" dir="5400000" rotWithShape="0">
                        <a:srgbClr val="000000">
                          <a:alpha val="35000"/>
                        </a:srgbClr>
                      </a:outerShdw>
                    </a:effectLst>
                  </a:effectStyle>
                  <a:effectStyle>
                    <a:effectLst>
                      <a:outerShdw blurRad="40000" dist="23000" dir="5400000" rotWithShape="0">
                        <a:srgbClr val="000000">
                          <a:alpha val="35000"/>
                        </a:srgbClr>
                      </a:outerShdw>
                    </a:effectLst>
                    <a:scene3d>
                      <a:camera prst="orthographicFront">
                        <a:rot lat="0" lon="0" rev="0"/>
                      </a:camera>
                      <a:lightRig rig="threePt" dir="t">
                        <a:rot lat="0" lon="0" rev="1200000"/>
                      </a:lightRig>
                    </a:scene3d>
                    <a:sp3d>
                      <a:bevelT w="63500" h="25400"/>
                    </a:sp3d>
                  </a:effectStyle>
                </a:effectStyleLst>
                <a:bgFillStyleLst>
                  <a:solidFill>
                    <a:schemeClr val="phClr"/>
                  </a:solidFill>
                  <a:gradFill rotWithShape="1">
                    <a:gsLst>
                      <a:gs pos="0">
                        <a:schemeClr val="phClr">
                          <a:tint val="40000"/>
                          <a:satMod val="350000"/>
                        </a:schemeClr>
                      </a:gs>
                      <a:gs pos="40000">
                        <a:schemeClr val="phClr">
                          <a:tint val="45000"/>
                          <a:shade val="99000"/>
                          <a:satMod val="350000"/>
                        </a:schemeClr>
                      </a:gs>
                      <a:gs pos="100000">
                        <a:schemeClr val="phClr">
                          <a:shade val="20000"/>
                          <a:satMod val="255000"/>
                        </a:schemeClr>
                      </a:gs>
                    </a:gsLst>
                    <a:path path="circle">
                      <a:fillToRect l="50000" t="-80000" r="50000" b="180000"/>
                    </a:path>
                  </a:gradFill>
                  <a:gradFill rotWithShape="1">
                    <a:gsLst>
                      <a:gs pos="0">
                        <a:schemeClr val="phClr">
                          <a:tint val="80000"/>
                          <a:satMod val="300000"/>
                        </a:schemeClr>
                      </a:gs>
                      <a:gs pos="100000">
                        <a:schemeClr val="phClr">
                          <a:shade val="30000"/>
                          <a:satMod val="200000"/>
                        </a:schemeClr>
                      </a:gs>
                    </a:gsLst>
                    <a:path path="circle">
                      <a:fillToRect l="50000" t="50000" r="50000" b="50000"/>
                    </a:path>
                  </a:gradFill>
                </a:bgFillStyleLst>
              </a:fmtScheme>
            </a:themeElements>
            <a:objectDefaults/>
            <a:extraClrSchemeLst/>
          </a:theme>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/word/settings.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.settings+xml">
        <pkg:xmlData>
          <w:settings mc:Ignorable="w14 w15" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:sl="http://schemas.openxmlformats.org/schemaLibrary/2006/main">
            <w:zoom w:percent="160"/>
            <w:embedSystemFonts/>
            <w:bordersDoNotSurroundHeader/>
            <w:bordersDoNotSurroundFooter/>
            <w:formsDesign/>
            <w:defaultTabStop w:val="420"/>
            <w:doNotHyphenateCaps/>
            <w:drawingGridHorizontalSpacing w:val="105"/>
            <w:drawingGridVerticalSpacing w:val="156"/>
            <w:displayHorizontalDrawingGridEvery w:val="0"/>
            <w:displayVerticalDrawingGridEvery w:val="2"/>
            <w:characterSpacingControl w:val="compressPunctuation"/>
            <w:doNotValidateAgainstSchema/>
            <w:doNotDemarcateInvalidXml/>
            <w:hdrShapeDefaults>
              <o:shapedefaults v:ext="edit" spidmax="2049"/>
            </w:hdrShapeDefaults>
            <w:footnotePr>
              <w:footnote w:id="-1"/>
              <w:footnote w:id="0"/>
            </w:footnotePr>
            <w:endnotePr>
              <w:endnote w:id="-1"/>
              <w:endnote w:id="0"/>
            </w:endnotePr>
            <w:compat>
              <w:spaceForUL/>
              <w:balanceSingleByteDoubleByteWidth/>
              <w:doNotLeaveBackslashAlone/>
              <w:ulTrailSpace/>
              <w:doNotExpandShiftReturn/>
              <w:adjustLineHeightInTable/>
              <w:useFELayout/>
              <w:compatSetting w:name="compatibilityMode" w:uri="http://schemas.microsoft.com/office/word" w:val="14"/>
              <w:compatSetting w:name="overrideTableStyleFontSizeAndJustification" w:uri="http://schemas.microsoft.com/office/word" w:val="1"/>
              <w:compatSetting w:name="enableOpenTypeFeatures" w:uri="http://schemas.microsoft.com/office/word" w:val="1"/>
              <w:compatSetting w:name="doNotFlipMirrorIndents" w:uri="http://schemas.microsoft.com/office/word" w:val="1"/>
            </w:compat>
            <w:rsids>
              <w:rsidRoot w:val="004A7705"/>
              <w:rsid w:val="000019B3"/>
              <w:rsid w:val="000074B0"/>
              <w:rsid w:val="00034158"/>
              <w:rsid w:val="00037F7A"/>
              <w:rsid w:val="000420D9"/>
              <w:rsid w:val="000448F5"/>
              <w:rsid w:val="000459C7"/>
              <w:rsid w:val="00074370"/>
              <w:rsid w:val="000831DE"/>
              <w:rsid w:val="00087224"/>
              <w:rsid w:val="00096828"/>
              <w:rsid w:val="000A0135"/>
              <w:rsid w:val="000B1FCE"/>
              <w:rsid w:val="000B2813"/>
              <w:rsid w:val="000C4AD3"/>
              <w:rsid w:val="000D3DC1"/>
              <w:rsid w:val="000D6069"/>
              <w:rsid w:val="000F3254"/>
              <w:rsid w:val="000F5FBF"/>
              <w:rsid w:val="00110B2F"/>
              <w:rsid w:val="00114FC3"/>
              <w:rsid w:val="001241AE"/>
              <w:rsid w:val="001535FC"/>
              <w:rsid w:val="0016688A"/>
              <w:rsid w:val="001747CE"/>
              <w:rsid w:val="001C1ACE"/>
              <w:rsid w:val="001D1FCF"/>
              <w:rsid w:val="001D7996"/>
              <w:rsid w:val="001E4DFA"/>
              <w:rsid w:val="001F6F56"/>
              <w:rsid w:val="002309D1"/>
              <w:rsid w:val="002526C6"/>
              <w:rsid w:val="002527DD"/>
              <w:rsid w:val="00253FBB"/>
              <w:rsid w:val="002701D7"/>
              <w:rsid w:val="002775F9"/>
              <w:rsid w:val="00277B9F"/>
              <w:rsid w:val="00285B51"/>
              <w:rsid w:val="002946A6"/>
              <w:rsid w:val="002975F5"/>
              <w:rsid w:val="002C25C5"/>
              <w:rsid w:val="002C30A9"/>
              <w:rsid w:val="002D7942"/>
              <w:rsid w:val="002E7A5F"/>
              <w:rsid w:val="002F70C8"/>
              <w:rsid w:val="0030179D"/>
              <w:rsid w:val="0030183C"/>
              <w:rsid w:val="0030379A"/>
              <w:rsid w:val="00306681"/>
              <w:rsid w:val="003131E9"/>
              <w:rsid w:val="00316030"/>
              <w:rsid w:val="00317A1D"/>
              <w:rsid w:val="003318A4"/>
              <w:rsid w:val="00334360"/>
              <w:rsid w:val="00342436"/>
              <w:rsid w:val="00346F42"/>
              <w:rsid w:val="00352E43"/>
              <w:rsid w:val="003561ED"/>
              <w:rsid w:val="00362B27"/>
              <w:rsid w:val="0037022F"/>
              <w:rsid w:val="003818EA"/>
              <w:rsid w:val="00386157"/>
              <w:rsid w:val="00391881"/>
              <w:rsid w:val="003A0766"/>
              <w:rsid w:val="003A29BB"/>
              <w:rsid w:val="003B0DFF"/>
              <w:rsid w:val="003C4D20"/>
              <w:rsid w:val="003D0734"/>
              <w:rsid w:val="003D2ADC"/>
              <w:rsid w:val="003E3E7C"/>
              <w:rsid w:val="003E513E"/>
              <w:rsid w:val="004240F3"/>
              <w:rsid w:val="00432009"/>
              <w:rsid w:val="00432A08"/>
              <w:rsid w:val="00434351"/>
              <w:rsid w:val="00435951"/>
              <w:rsid w:val="00436139"/>
              <w:rsid w:val="004524FA"/>
              <w:rsid w:val="004539C4"/>
              <w:rsid w:val="00455387"/>
              <w:rsid w:val="0045659E"/>
              <w:rsid w:val="0047099C"/>
              <w:rsid w:val="004734F6"/>
              <w:rsid w:val="004777D5"/>
              <w:rsid w:val="00482E24"/>
              <w:rsid w:val="0048408B"/>
              <w:rsid w:val="00487A40"/>
              <w:rsid w:val="00496DAD"/>
              <w:rsid w:val="004A5F81"/>
              <w:rsid w:val="004A7705"/>
              <w:rsid w:val="004D173B"/>
              <w:rsid w:val="004D33C1"/>
              <w:rsid w:val="004E1323"/>
              <w:rsid w:val="0050569A"/>
              <w:rsid w:val="00512F5F"/>
              <w:rsid w:val="005141FF"/>
              <w:rsid w:val="0051469E"/>
              <w:rsid w:val="00532723"/>
              <w:rsid w:val="005369DC"/>
              <w:rsid w:val="00543E7E"/>
              <w:rsid w:val="00553EB2"/>
              <w:rsid w:val="00567A74"/>
              <w:rsid w:val="005703D3"/>
              <w:rsid w:val="00572525"/>
              <w:rsid w:val="00592390"/>
              <w:rsid w:val="005A659A"/>
              <w:rsid w:val="005B6900"/>
              <w:rsid w:val="005C36A7"/>
              <w:rsid w:val="005C443A"/>
              <w:rsid w:val="005C44BC"/>
              <w:rsid w:val="005C5F24"/>
              <w:rsid w:val="005C63B5"/>
              <w:rsid w:val="005D1135"/>
              <w:rsid w:val="005F26F9"/>
              <w:rsid w:val="006064C9"/>
              <w:rsid w:val="006068C9"/>
              <w:rsid w:val="00611EEB"/>
              <w:rsid w:val="00614AF3"/>
              <w:rsid w:val="00617378"/>
              <w:rsid w:val="00617DC5"/>
              <w:rsid w:val="0062092D"/>
              <w:rsid w:val="006246EF"/>
              <w:rsid w:val="00625F8D"/>
              <w:rsid w:val="00630FF9"/>
              <w:rsid w:val="006354E9"/>
              <w:rsid w:val="00637469"/>
              <w:rsid w:val="0065252C"/>
              <w:rsid w:val="00661585"/>
              <w:rsid w:val="00661AE7"/>
              <w:rsid w:val="006653CB"/>
              <w:rsid w:val="0066632F"/>
              <w:rsid w:val="006777A4"/>
              <w:rsid w:val="00685D7D"/>
              <w:rsid w:val="00686428"/>
              <w:rsid w:val="00692E6D"/>
              <w:rsid w:val="006A05D8"/>
              <w:rsid w:val="006A2081"/>
              <w:rsid w:val="006B219B"/>
              <w:rsid w:val="006D0F5F"/>
              <w:rsid w:val="006D464F"/>
              <w:rsid w:val="006D4BA6"/>
              <w:rsid w:val="006E06F0"/>
              <w:rsid w:val="006F0F61"/>
              <w:rsid w:val="007222AD"/>
              <w:rsid w:val="00725B04"/>
              <w:rsid w:val="007349AC"/>
              <w:rsid w:val="007359FD"/>
              <w:rsid w:val="00746063"/>
              <w:rsid w:val="00746591"/>
              <w:rsid w:val="0076626D"/>
              <w:rsid w:val="00767481"/>
              <w:rsid w:val="00770020"/>
              <w:rsid w:val="007752A3"/>
              <w:rsid w:val="007928E1"/>
              <w:rsid w:val="00796E4E"/>
              <w:rsid w:val="007A7C4A"/>
              <w:rsid w:val="007B5E08"/>
              <w:rsid w:val="007C35D8"/>
              <w:rsid w:val="007C5FBE"/>
              <w:rsid w:val="007D16E8"/>
              <w:rsid w:val="007D3B54"/>
              <w:rsid w:val="007E7C94"/>
              <w:rsid w:val="007F2E37"/>
              <w:rsid w:val="00813979"/>
              <w:rsid w:val="0081494A"/>
              <w:rsid w:val="00837C3F"/>
              <w:rsid w:val="0084775A"/>
              <w:rsid w:val="00886C79"/>
              <w:rsid w:val="00891A83"/>
              <w:rsid w:val="008A1FBE"/>
              <w:rsid w:val="008B5955"/>
              <w:rsid w:val="008B68E7"/>
              <w:rsid w:val="008D0EAD"/>
              <w:rsid w:val="008D4141"/>
              <w:rsid w:val="008F30B0"/>
              <w:rsid w:val="008F459E"/>
              <w:rsid w:val="00902749"/>
              <w:rsid w:val="00917D5A"/>
              <w:rsid w:val="00926F35"/>
              <w:rsid w:val="009312B7"/>
              <w:rsid w:val="00942B06"/>
              <w:rsid w:val="0095732C"/>
              <w:rsid w:val="00961BA5"/>
              <w:rsid w:val="00962004"/>
              <w:rsid w:val="0097306A"/>
              <w:rsid w:val="00977470"/>
              <w:rsid w:val="009939AF"/>
              <w:rsid w:val="009A41F0"/>
              <w:rsid w:val="009B319E"/>
              <w:rsid w:val="009C4DB9"/>
              <w:rsid w:val="009E266F"/>
              <w:rsid w:val="009F0C6A"/>
              <w:rsid w:val="009F24DF"/>
              <w:rsid w:val="00A21A76"/>
              <w:rsid w:val="00A32CC1"/>
              <w:rsid w:val="00A64978"/>
              <w:rsid w:val="00A87372"/>
              <w:rsid w:val="00AA2291"/>
              <w:rsid w:val="00AC1021"/>
              <w:rsid w:val="00AC4C90"/>
              <w:rsid w:val="00AC54A8"/>
              <w:rsid w:val="00AD22FF"/>
              <w:rsid w:val="00AD62FA"/>
              <w:rsid w:val="00AD6621"/>
              <w:rsid w:val="00AE716B"/>
              <w:rsid w:val="00B06EA9"/>
              <w:rsid w:val="00B12887"/>
              <w:rsid w:val="00B306F6"/>
              <w:rsid w:val="00B310E2"/>
              <w:rsid w:val="00B568C0"/>
              <w:rsid w:val="00B5735D"/>
              <w:rsid w:val="00B57696"/>
              <w:rsid w:val="00B607CB"/>
              <w:rsid w:val="00B64101"/>
              <w:rsid w:val="00B941CF"/>
              <w:rsid w:val="00B95A6F"/>
              <w:rsid w:val="00BA1CB1"/>
              <w:rsid w:val="00BA27CF"/>
              <w:rsid w:val="00BA6FD3"/>
              <w:rsid w:val="00BC31D7"/>
              <w:rsid w:val="00BC39E3"/>
              <w:rsid w:val="00BD4382"/>
              <w:rsid w:val="00BF1C20"/>
              <w:rsid w:val="00C03B6A"/>
              <w:rsid w:val="00C1042B"/>
              <w:rsid w:val="00C12B94"/>
              <w:rsid w:val="00C214B5"/>
              <w:rsid w:val="00C23D87"/>
              <w:rsid w:val="00C34FF1"/>
              <w:rsid w:val="00C46B20"/>
              <w:rsid w:val="00C510A5"/>
              <w:rsid w:val="00C6619B"/>
              <w:rsid w:val="00C83AFF"/>
              <w:rsid w:val="00C850DA"/>
              <w:rsid w:val="00CB0F7D"/>
              <w:rsid w:val="00CB314C"/>
              <w:rsid w:val="00CB4A97"/>
              <w:rsid w:val="00CC3805"/>
              <w:rsid w:val="00CC4A57"/>
              <w:rsid w:val="00CD5D26"/>
              <w:rsid w:val="00D057AA"/>
              <w:rsid w:val="00D05B99"/>
              <w:rsid w:val="00D128B7"/>
              <w:rsid w:val="00D131D3"/>
              <w:rsid w:val="00D22CDC"/>
              <w:rsid w:val="00D34B1B"/>
              <w:rsid w:val="00D540E1"/>
              <w:rsid w:val="00D5671F"/>
              <w:rsid w:val="00D570EB"/>
              <w:rsid w:val="00D6192C"/>
              <w:rsid w:val="00D6378B"/>
              <w:rsid w:val="00D667BB"/>
              <w:rsid w:val="00D7060B"/>
              <w:rsid w:val="00D70865"/>
              <w:rsid w:val="00D73D4D"/>
              <w:rsid w:val="00D835C8"/>
              <w:rsid w:val="00DB0F68"/>
              <w:rsid w:val="00DD74C5"/>
              <w:rsid w:val="00DE086A"/>
              <w:rsid w:val="00DF0D55"/>
              <w:rsid w:val="00DF3ACB"/>
              <w:rsid w:val="00DF746F"/>
              <w:rsid w:val="00E26BAB"/>
              <w:rsid w:val="00E34869"/>
              <w:rsid w:val="00E37D5E"/>
              <w:rsid w:val="00E413A6"/>
              <w:rsid w:val="00E43B7D"/>
              <w:rsid w:val="00E47324"/>
              <w:rsid w:val="00E523DD"/>
              <w:rsid w:val="00E53291"/>
              <w:rsid w:val="00E61175"/>
              <w:rsid w:val="00E6391B"/>
              <w:rsid w:val="00E814E6"/>
              <w:rsid w:val="00E8228D"/>
              <w:rsid w:val="00EB4F77"/>
              <w:rsid w:val="00ED7833"/>
              <w:rsid w:val="00EE450A"/>
              <w:rsid w:val="00EF1E76"/>
              <w:rsid w:val="00EF6490"/>
              <w:rsid w:val="00F0007D"/>
              <w:rsid w:val="00F050BD"/>
              <w:rsid w:val="00F065AD"/>
              <w:rsid w:val="00F07AFF"/>
              <w:rsid w:val="00F21013"/>
              <w:rsid w:val="00F211EA"/>
              <w:rsid w:val="00F24A17"/>
              <w:rsid w:val="00F26233"/>
              <w:rsid w:val="00F57FFA"/>
              <w:rsid w:val="00F606F7"/>
              <w:rsid w:val="00F721C0"/>
              <w:rsid w:val="00F730AD"/>
              <w:rsid w:val="00F76258"/>
              <w:rsid w:val="00F80E75"/>
              <w:rsid w:val="00F82C1B"/>
              <w:rsid w:val="00F90D8D"/>
              <w:rsid w:val="00FF2E4F"/>
              <w:rsid w:val="00FF3B3F"/>
              <w:rsid w:val="00FF4D45"/>
              <w:rsid w:val="00FF789B"/>
              <w:rsid w:val="2CF57952"/>
              <w:rsid w:val="454C693D"/>
              <w:rsid w:val="4B427308"/>
              <w:rsid w:val="603C422D"/>
              <w:rsid w:val="6BB211B8"/>
              <w:rsid w:val="6CDC3224"/>
              <w:rsid w:val="728124EA"/>
              <w:rsid w:val="7BE372CE"/>
              <w:rsid w:val="7F9F516C"/>
            </w:rsids>
            <m:mathPr>
              <m:mathFont m:val="Cambria Math"/>
              <m:brkBin m:val="before"/>
              <m:brkBinSub m:val="--"/>
              <m:smallFrac m:val="0"/>
              <m:dispDef/>
              <m:lMargin m:val="0"/>
              <m:rMargin m:val="0"/>
              <m:defJc m:val="centerGroup"/>
              <m:wrapIndent m:val="1440"/>
              <m:intLim m:val="subSup"/>
              <m:naryLim m:val="undOvr"/>
            </m:mathPr>
            <w:themeFontLang w:val="en-US" w:eastAsia="zh-CN"/>
            <w:clrSchemeMapping w:bg1="light1" w:t1="dark1" w:bg2="light2" w:t2="dark2" w:accent1="accent1" w:accent2="accent2" w:accent3="accent3" w:accent4="accent4" w:accent5="accent5" w:accent6="accent6" w:hyperlink="hyperlink" w:followedHyperlink="followedHyperlink"/>
            <w:doNotIncludeSubdocsInStats/>
            <w:doNotAutoCompressPictures/>
            <w:shapeDefaults>
              <o:shapedefaults v:ext="edit" spidmax="2049"/>
              <o:shapelayout v:ext="edit">
                <o:idmap v:ext="edit" data="1"/>
              </o:shapelayout>
            </w:shapeDefaults>
            <w:decimalSymbol w:val="."/>
            <w:listSeparator w:val=","/>
            <w15:docId w15:val="{D4BB0C96-EBD3-4CC7-8C2C-E64A75B3B658}"/>
          </w:settings>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/customXml/item2.xml" pkg:contentType="application/xml" pkg:padding="32">
        <pkg:xmlData>
          <b:Sources SelectedStyle="\APASixthEditionOfficeOnline.xsl" StyleName="APA" Version="6" xmlns:b="http://schemas.openxmlformats.org/officeDocument/2006/bibliography" xmlns="http://schemas.openxmlformats.org/officeDocument/2006/bibliography"/>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/customXml/itemProps1.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.customXmlProperties+xml" pkg:padding="32">
        <pkg:xmlData pkg:originalXmlStandalone="no">
          <ds:datastoreItem ds:itemID="{B1977F7D-205B-4081-913C-38D41E755F92}" xmlns:ds="http://schemas.openxmlformats.org/officeDocument/2006/customXml">
            <ds:schemaRefs>
              <ds:schemaRef ds:uri="http://www.wps.cn/officeDocument/2013/wpsCustomData"/>
            </ds:schemaRefs>
          </ds:datastoreItem>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/customXml/_rels/item1.xml.rels" pkg:contentType="application/vnd.openxmlformats-package.relationships+xml" pkg:padding="256">
        <pkg:xmlData>
          <Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
            <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/customXmlProps" Target="itemProps1.xml"/>
          </Relationships>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/customXml/_rels/item2.xml.rels" pkg:contentType="application/vnd.openxmlformats-package.relationships+xml" pkg:padding="256">
        <pkg:xmlData>
          <Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
            <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/customXmlProps" Target="itemProps2.xml"/>
          </Relationships>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/docProps/custom.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.custom-properties+xml" pkg:padding="256">
        <pkg:xmlData>
          <Properties xmlns="http://schemas.openxmlformats.org/officeDocument/2006/custom-properties" xmlns:vt="http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes">
            <property fmtid="{D5CDD505-2E9C-101B-9397-08002B2CF9AE}" pid="2" name="KSOProductBuildVer">
              <vt:lpwstr>2052-10.1.0.5400</vt:lpwstr>
            </property>
          </Properties>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/customXml/item1.xml" pkg:contentType="application/xml" pkg:padding="32">
        <pkg:xmlData>
          <s:customData xmlns="http://www.wps.cn/officeDocument/2013/wpsCustomData" xmlns:s="http://www.wps.cn/officeDocument/2013/wpsCustomData">
            <customSectProps>
              <customSectPr/>
              <customSectPr/>
              <customSectPr/>
            </customSectProps>
          </s:customData>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/docProps/core.xml" pkg:contentType="application/vnd.openxmlformats-package.core-properties+xml" pkg:padding="256">
        <pkg:xmlData>
          <cp:coreProperties xmlns:cp="http://schemas.openxmlformats.org/package/2006/metadata/core-properties" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dcmitype="http://purl.org/dc/dcmitype/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <dc:title>Brigde</dc:title>
            <dc:subject/>
            <dc:creator>李黎</dc:creator>
            <cp:keywords/>
            <dc:description/>
          </cp:coreProperties>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/word/numbering.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.numbering+xml">
        <pkg:xmlData>
          <w:numbering mc:Ignorable="w14 w15 wp14" xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape">
            <w:abstractNum w:abstractNumId="0" w15:restartNumberingAfterBreak="0">
              <w:nsid w:val="3F502700"/>
              <w:multiLevelType w:val="hybridMultilevel"/>
              <w:tmpl w:val="E548BB48"/>
              <w:lvl w:ilvl="0" w:tplc="0409000F">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%1."/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="420" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="1" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%2)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="840" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="2" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%3."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="1260" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="3" w:tplc="0409000F" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%4."/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="1680" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="4" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%5)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="2100" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="5" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%6."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="2520" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="6" w:tplc="0409000F" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%7."/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="2940" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="7" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%8)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="3360" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="8" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%9."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="3780" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
            </w:abstractNum>
            <w:abstractNum w:abstractNumId="1" w15:restartNumberingAfterBreak="0">
              <w:nsid w:val="56507D18"/>
              <w:multiLevelType w:val="hybridMultilevel"/>
              <w:tmpl w:val="6D6E9978"/>
              <w:lvl w:ilvl="0" w:tplc="9A32E4E0">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%1、"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="360" w:hanging="360"/>
                </w:pPr>
                <w:rPr>
                  <w:rFonts w:hint="default"/>
                </w:rPr>
              </w:lvl>
              <w:lvl w:ilvl="1" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%2)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="840" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="2" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%3."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="1260" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="3" w:tplc="0409000F" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%4."/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="1680" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="4" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%5)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="2100" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="5" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%6."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="2520" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="6" w:tplc="0409000F" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%7."/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="2940" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="7" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%8)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="3360" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="8" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%9."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="3780" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
            </w:abstractNum>
            <w:abstractNum w:abstractNumId="2" w15:restartNumberingAfterBreak="0">
              <w:nsid w:val="5E867B7C"/>
              <w:multiLevelType w:val="hybridMultilevel"/>
              <w:tmpl w:val="BB36B9B2"/>
              <w:lvl w:ilvl="0" w:tplc="07EAD994">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%1、"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="360" w:hanging="360"/>
                </w:pPr>
                <w:rPr>
                  <w:rFonts w:hint="default"/>
                </w:rPr>
              </w:lvl>
              <w:lvl w:ilvl="1" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%2)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="840" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="2" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%3."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="1260" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="3" w:tplc="0409000F" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%4."/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="1680" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="4" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%5)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="2100" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="5" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%6."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="2520" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="6" w:tplc="0409000F" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%7."/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="2940" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="7" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%8)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="3360" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="8" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%9."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="3780" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
            </w:abstractNum>
            <w:abstractNum w:abstractNumId="3" w15:restartNumberingAfterBreak="0">
              <w:nsid w:val="62837882"/>
              <w:multiLevelType w:val="hybridMultilevel"/>
              <w:tmpl w:val="1CC04206"/>
              <w:lvl w:ilvl="0" w:tplc="FD0A10D4">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%1、"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="360" w:hanging="360"/>
                </w:pPr>
                <w:rPr>
                  <w:rFonts w:hint="default"/>
                </w:rPr>
              </w:lvl>
              <w:lvl w:ilvl="1" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%2)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="840" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="2" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%3."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="1260" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="3" w:tplc="0409000F" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%4."/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="1680" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="4" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%5)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="2100" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="5" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%6."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="2520" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="6" w:tplc="0409000F" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="decimal"/>
                <w:lvlText w:val="%7."/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="2940" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="7" w:tplc="04090019" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerLetter"/>
                <w:lvlText w:val="%8)"/>
                <w:lvlJc w:val="left"/>
                <w:pPr>
                  <w:ind w:left="3360" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
              <w:lvl w:ilvl="8" w:tplc="0409001B" w:tentative="1">
                <w:start w:val="1"/>
                <w:numFmt w:val="lowerRoman"/>
                <w:lvlText w:val="%9."/>
                <w:lvlJc w:val="right"/>
                <w:pPr>
                  <w:ind w:left="3780" w:hanging="420"/>
                </w:pPr>
              </w:lvl>
            </w:abstractNum>
            <w:num w:numId="1">
              <w:abstractNumId w:val="2"/>
            </w:num>
            <w:num w:numId="2">
              <w:abstractNumId w:val="0"/>
            </w:num>
            <w:num w:numId="3">
              <w:abstractNumId w:val="3"/>
            </w:num>
            <w:num w:numId="4">
              <w:abstractNumId w:val="1"/>
            </w:num>
          </w:numbering>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/word/styles.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml">
        <pkg:xmlData>
          <w:styles mc:Ignorable="w14 w15" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml">
            <w:docDefaults>
              <w:rPrDefault>
                <w:rPr>
                  <w:rFonts w:ascii="Calibri" w:eastAsia="宋体" w:hAnsi="Calibri" w:cs="Times New Roman"/>
                  <w:lang w:val="en-US" w:eastAsia="zh-CN" w:bidi="ar-SA"/>
                </w:rPr>
              </w:rPrDefault>
              <w:pPrDefault/>
            </w:docDefaults>
            <w:latentStyles w:defLockedState="0" w:defUIPriority="99" w:defSemiHidden="0" w:defUnhideWhenUsed="0" w:defQFormat="0" w:count="371">
              <w:lsdException w:name="Normal" w:uiPriority="0" w:qFormat="1"/>
              <w:lsdException w:name="heading 1" w:locked="1" w:uiPriority="0" w:qFormat="1"/>
              <w:lsdException w:name="heading 2" w:locked="1" w:semiHidden="1" w:uiPriority="0" w:unhideWhenUsed="1" w:qFormat="1"/>
              <w:lsdException w:name="heading 3" w:locked="1" w:semiHidden="1" w:uiPriority="0" w:unhideWhenUsed="1" w:qFormat="1"/>
              <w:lsdException w:name="heading 4" w:locked="1" w:semiHidden="1" w:uiPriority="0" w:unhideWhenUsed="1" w:qFormat="1"/>
              <w:lsdException w:name="heading 5" w:locked="1" w:semiHidden="1" w:uiPriority="0" w:unhideWhenUsed="1" w:qFormat="1"/>
              <w:lsdException w:name="heading 6" w:locked="1" w:semiHidden="1" w:uiPriority="0" w:unhideWhenUsed="1" w:qFormat="1"/>
              <w:lsdException w:name="heading 7" w:locked="1" w:semiHidden="1" w:uiPriority="0" w:unhideWhenUsed="1" w:qFormat="1"/>
              <w:lsdException w:name="heading 8" w:locked="1" w:semiHidden="1" w:uiPriority="0" w:unhideWhenUsed="1" w:qFormat="1"/>
              <w:lsdException w:name="heading 9" w:locked="1" w:semiHidden="1" w:uiPriority="0" w:unhideWhenUsed="1" w:qFormat="1"/>
              <w:lsdException w:name="index 1" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="index 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="index 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="index 4" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="index 5" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="index 6" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="index 7" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="index 8" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="index 9" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="toc 1" w:locked="1" w:uiPriority="0"/>
              <w:lsdException w:name="toc 2" w:locked="1" w:uiPriority="0"/>
              <w:lsdException w:name="toc 3" w:locked="1" w:uiPriority="0"/>
              <w:lsdException w:name="toc 4" w:locked="1" w:uiPriority="0"/>
              <w:lsdException w:name="toc 5" w:locked="1" w:uiPriority="0"/>
              <w:lsdException w:name="toc 6" w:locked="1" w:uiPriority="0"/>
              <w:lsdException w:name="toc 7" w:locked="1" w:uiPriority="0"/>
              <w:lsdException w:name="toc 8" w:locked="1" w:uiPriority="0"/>
              <w:lsdException w:name="toc 9" w:locked="1" w:uiPriority="0"/>
              <w:lsdException w:name="Normal Indent" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="footnote text" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="annotation text" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="header" w:qFormat="1"/>
              <w:lsdException w:name="index heading" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="caption" w:locked="1" w:semiHidden="1" w:uiPriority="0" w:unhideWhenUsed="1" w:qFormat="1"/>
              <w:lsdException w:name="table of figures" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="envelope address" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="envelope return" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="footnote reference" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="annotation reference" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="line number" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="page number" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="endnote reference" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="endnote text" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="table of authorities" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="macro" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="toa heading" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Bullet" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Number" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List 4" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List 5" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Bullet 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Bullet 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Bullet 4" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Bullet 5" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Number 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Number 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Number 4" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Number 5" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Title" w:locked="1" w:uiPriority="0" w:qFormat="1"/>
              <w:lsdException w:name="Closing" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Signature" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Default Paragraph Font" w:semiHidden="1"/>
              <w:lsdException w:name="Body Text" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Body Text Indent" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Continue" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Continue 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Continue 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Continue 4" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="List Continue 5" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Message Header" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Subtitle" w:locked="1" w:uiPriority="0" w:qFormat="1"/>
              <w:lsdException w:name="Salutation" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Date" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Body Text First Indent" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Body Text First Indent 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Note Heading" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Body Text 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Body Text 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Body Text Indent 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Body Text Indent 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Block Text" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Hyperlink" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="FollowedHyperlink" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Strong" w:locked="1" w:uiPriority="0" w:qFormat="1"/>
              <w:lsdException w:name="Emphasis" w:locked="1" w:uiPriority="0" w:qFormat="1"/>
              <w:lsdException w:name="Document Map" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Plain Text" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="E-mail Signature" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Top of Form" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Bottom of Form" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Normal (Web)" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Acronym" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Address" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Cite" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Code" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Definition" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Keyboard" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Preformatted" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Sample" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Typewriter" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="HTML Variable" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Normal Table" w:semiHidden="1" w:unhideWhenUsed="1" w:qFormat="1"/>
              <w:lsdException w:name="annotation subject" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="No List" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Outline List 1" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Outline List 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Outline List 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Simple 1" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Simple 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Simple 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Classic 1" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Classic 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Classic 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Classic 4" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Colorful 1" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Colorful 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Colorful 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Columns 1" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Columns 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Columns 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Columns 4" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Columns 5" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Grid 1" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Grid 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Grid 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Grid 4" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Grid 5" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Grid 6" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Grid 7" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Grid 8" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table List 1" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table List 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table List 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table List 4" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table List 5" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table List 6" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table List 7" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table List 8" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table 3D effects 1" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table 3D effects 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table 3D effects 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Contemporary" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Elegant" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Professional" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Subtle 1" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Subtle 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Web 1" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Web 2" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Web 3" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Balloon Text" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Table Grid" w:qFormat="1"/>
              <w:lsdException w:name="Table Theme" w:semiHidden="1" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="Placeholder Text" w:semiHidden="1"/>
              <w:lsdException w:name="Light Shading" w:uiPriority="60"/>
              <w:lsdException w:name="Light List" w:uiPriority="61"/>
              <w:lsdException w:name="Light Grid" w:uiPriority="62"/>
              <w:lsdException w:name="Medium Shading 1" w:uiPriority="63"/>
              <w:lsdException w:name="Medium Shading 2" w:uiPriority="64"/>
              <w:lsdException w:name="Medium List 1" w:uiPriority="65"/>
              <w:lsdException w:name="Medium List 2" w:uiPriority="66"/>
              <w:lsdException w:name="Medium Grid 1" w:uiPriority="67"/>
              <w:lsdException w:name="Medium Grid 2" w:uiPriority="68"/>
              <w:lsdException w:name="Medium Grid 3" w:uiPriority="69"/>
              <w:lsdException w:name="Dark List" w:uiPriority="70"/>
              <w:lsdException w:name="Colorful Shading" w:uiPriority="71"/>
              <w:lsdException w:name="Colorful List" w:uiPriority="72"/>
              <w:lsdException w:name="Colorful Grid" w:uiPriority="73"/>
              <w:lsdException w:name="Light Shading Accent 1" w:uiPriority="60"/>
              <w:lsdException w:name="Light List Accent 1" w:uiPriority="61"/>
              <w:lsdException w:name="Light Grid Accent 1" w:uiPriority="62"/>
              <w:lsdException w:name="Medium Shading 1 Accent 1" w:uiPriority="63"/>
              <w:lsdException w:name="Medium Shading 2 Accent 1" w:uiPriority="64"/>
              <w:lsdException w:name="Medium List 1 Accent 1" w:uiPriority="65"/>
              <w:lsdException w:name="Revision" w:semiHidden="1"/>
              <w:lsdException w:name="Medium List 2 Accent 1" w:uiPriority="66"/>
              <w:lsdException w:name="Medium Grid 1 Accent 1" w:uiPriority="67"/>
              <w:lsdException w:name="Medium Grid 2 Accent 1" w:uiPriority="68"/>
              <w:lsdException w:name="Medium Grid 3 Accent 1" w:uiPriority="69"/>
              <w:lsdException w:name="Dark List Accent 1" w:uiPriority="70"/>
              <w:lsdException w:name="Colorful Shading Accent 1" w:uiPriority="71"/>
              <w:lsdException w:name="Colorful List Accent 1" w:uiPriority="72"/>
              <w:lsdException w:name="Colorful Grid Accent 1" w:uiPriority="73"/>
              <w:lsdException w:name="Light Shading Accent 2" w:uiPriority="60"/>
              <w:lsdException w:name="Light List Accent 2" w:uiPriority="61"/>
              <w:lsdException w:name="Light Grid Accent 2" w:uiPriority="62"/>
              <w:lsdException w:name="Medium Shading 1 Accent 2" w:uiPriority="63"/>
              <w:lsdException w:name="Medium Shading 2 Accent 2" w:uiPriority="64"/>
              <w:lsdException w:name="Medium List 1 Accent 2" w:uiPriority="65"/>
              <w:lsdException w:name="Medium List 2 Accent 2" w:uiPriority="66"/>
              <w:lsdException w:name="Medium Grid 1 Accent 2" w:uiPriority="67"/>
              <w:lsdException w:name="Medium Grid 2 Accent 2" w:uiPriority="68"/>
              <w:lsdException w:name="Medium Grid 3 Accent 2" w:uiPriority="69"/>
              <w:lsdException w:name="Dark List Accent 2" w:uiPriority="70"/>
              <w:lsdException w:name="Colorful Shading Accent 2" w:uiPriority="71"/>
              <w:lsdException w:name="Colorful List Accent 2" w:uiPriority="72"/>
              <w:lsdException w:name="Colorful Grid Accent 2" w:uiPriority="73"/>
              <w:lsdException w:name="Light Shading Accent 3" w:uiPriority="60"/>
              <w:lsdException w:name="Light List Accent 3" w:uiPriority="61"/>
              <w:lsdException w:name="Light Grid Accent 3" w:uiPriority="62"/>
              <w:lsdException w:name="Medium Shading 1 Accent 3" w:uiPriority="63"/>
              <w:lsdException w:name="Medium Shading 2 Accent 3" w:uiPriority="64"/>
              <w:lsdException w:name="Medium List 1 Accent 3" w:uiPriority="65"/>
              <w:lsdException w:name="Medium List 2 Accent 3" w:uiPriority="66"/>
              <w:lsdException w:name="Medium Grid 1 Accent 3" w:uiPriority="67"/>
              <w:lsdException w:name="Medium Grid 2 Accent 3" w:uiPriority="68"/>
              <w:lsdException w:name="Medium Grid 3 Accent 3" w:uiPriority="69"/>
              <w:lsdException w:name="Dark List Accent 3" w:uiPriority="70"/>
              <w:lsdException w:name="Colorful Shading Accent 3" w:uiPriority="71"/>
              <w:lsdException w:name="Colorful List Accent 3" w:uiPriority="72"/>
              <w:lsdException w:name="Colorful Grid Accent 3" w:uiPriority="73"/>
              <w:lsdException w:name="Light Shading Accent 4" w:uiPriority="60"/>
              <w:lsdException w:name="Light List Accent 4" w:uiPriority="61"/>
              <w:lsdException w:name="Light Grid Accent 4" w:uiPriority="62"/>
              <w:lsdException w:name="Medium Shading 1 Accent 4" w:uiPriority="63"/>
              <w:lsdException w:name="Medium Shading 2 Accent 4" w:uiPriority="64"/>
              <w:lsdException w:name="Medium List 1 Accent 4" w:uiPriority="65"/>
              <w:lsdException w:name="Medium List 2 Accent 4" w:uiPriority="66"/>
              <w:lsdException w:name="Medium Grid 1 Accent 4" w:uiPriority="67"/>
              <w:lsdException w:name="Medium Grid 2 Accent 4" w:uiPriority="68"/>
              <w:lsdException w:name="Medium Grid 3 Accent 4" w:uiPriority="69"/>
              <w:lsdException w:name="Dark List Accent 4" w:uiPriority="70"/>
              <w:lsdException w:name="Colorful Shading Accent 4" w:uiPriority="71"/>
              <w:lsdException w:name="Colorful List Accent 4" w:uiPriority="72"/>
              <w:lsdException w:name="Colorful Grid Accent 4" w:uiPriority="73"/>
              <w:lsdException w:name="Light Shading Accent 5" w:uiPriority="60"/>
              <w:lsdException w:name="Light List Accent 5" w:uiPriority="61"/>
              <w:lsdException w:name="Light Grid Accent 5" w:uiPriority="62"/>
              <w:lsdException w:name="Medium Shading 1 Accent 5" w:uiPriority="63"/>
              <w:lsdException w:name="Medium Shading 2 Accent 5" w:uiPriority="64"/>
              <w:lsdException w:name="Medium List 1 Accent 5" w:uiPriority="65"/>
              <w:lsdException w:name="Medium List 2 Accent 5" w:uiPriority="66"/>
              <w:lsdException w:name="Medium Grid 1 Accent 5" w:uiPriority="67"/>
              <w:lsdException w:name="Medium Grid 2 Accent 5" w:uiPriority="68"/>
              <w:lsdException w:name="Medium Grid 3 Accent 5" w:uiPriority="69"/>
              <w:lsdException w:name="Dark List Accent 5" w:uiPriority="70"/>
              <w:lsdException w:name="Colorful Shading Accent 5" w:uiPriority="71"/>
              <w:lsdException w:name="Colorful List Accent 5" w:uiPriority="72"/>
              <w:lsdException w:name="Colorful Grid Accent 5" w:uiPriority="73"/>
              <w:lsdException w:name="Light Shading Accent 6" w:uiPriority="60"/>
              <w:lsdException w:name="Light List Accent 6" w:uiPriority="61"/>
              <w:lsdException w:name="Light Grid Accent 6" w:uiPriority="62"/>
              <w:lsdException w:name="Medium Shading 1 Accent 6" w:uiPriority="63"/>
              <w:lsdException w:name="Medium Shading 2 Accent 6" w:uiPriority="64"/>
              <w:lsdException w:name="Medium List 1 Accent 6" w:uiPriority="65"/>
              <w:lsdException w:name="Medium List 2 Accent 6" w:uiPriority="66"/>
              <w:lsdException w:name="Medium Grid 1 Accent 6" w:uiPriority="67"/>
              <w:lsdException w:name="Medium Grid 2 Accent 6" w:uiPriority="68"/>
              <w:lsdException w:name="Medium Grid 3 Accent 6" w:uiPriority="69"/>
              <w:lsdException w:name="Dark List Accent 6" w:uiPriority="70"/>
              <w:lsdException w:name="Colorful Shading Accent 6" w:uiPriority="71"/>
              <w:lsdException w:name="Colorful List Accent 6" w:uiPriority="72"/>
              <w:lsdException w:name="Colorful Grid Accent 6" w:uiPriority="73"/>
              <w:lsdException w:name="Subtle Emphasis" w:uiPriority="19" w:qFormat="1"/>
              <w:lsdException w:name="Intense Emphasis" w:uiPriority="21" w:qFormat="1"/>
              <w:lsdException w:name="Subtle Reference" w:uiPriority="31" w:qFormat="1"/>
              <w:lsdException w:name="Intense Reference" w:uiPriority="32" w:qFormat="1"/>
              <w:lsdException w:name="Book Title" w:uiPriority="33" w:qFormat="1"/>
              <w:lsdException w:name="Bibliography" w:semiHidden="1" w:uiPriority="37" w:unhideWhenUsed="1"/>
              <w:lsdException w:name="TOC Heading" w:semiHidden="1" w:uiPriority="39" w:unhideWhenUsed="1" w:qFormat="1"/>
              <w:lsdException w:name="Plain Table 1" w:uiPriority="41"/>
              <w:lsdException w:name="Plain Table 2" w:uiPriority="42"/>
              <w:lsdException w:name="Plain Table 3" w:uiPriority="43"/>
              <w:lsdException w:name="Plain Table 4" w:uiPriority="44"/>
              <w:lsdException w:name="Plain Table 5" w:uiPriority="45"/>
              <w:lsdException w:name="Grid Table Light" w:uiPriority="40"/>
              <w:lsdException w:name="Grid Table 1 Light" w:uiPriority="46"/>
              <w:lsdException w:name="Grid Table 2" w:uiPriority="47"/>
              <w:lsdException w:name="Grid Table 3" w:uiPriority="48"/>
              <w:lsdException w:name="Grid Table 4" w:uiPriority="49"/>
              <w:lsdException w:name="Grid Table 5 Dark" w:uiPriority="50"/>
              <w:lsdException w:name="Grid Table 6 Colorful" w:uiPriority="51"/>
              <w:lsdException w:name="Grid Table 7 Colorful" w:uiPriority="52"/>
              <w:lsdException w:name="Grid Table 1 Light Accent 1" w:uiPriority="46"/>
              <w:lsdException w:name="Grid Table 2 Accent 1" w:uiPriority="47"/>
              <w:lsdException w:name="Grid Table 3 Accent 1" w:uiPriority="48"/>
              <w:lsdException w:name="Grid Table 4 Accent 1" w:uiPriority="49"/>
              <w:lsdException w:name="Grid Table 5 Dark Accent 1" w:uiPriority="50"/>
              <w:lsdException w:name="Grid Table 6 Colorful Accent 1" w:uiPriority="51"/>
              <w:lsdException w:name="Grid Table 7 Colorful Accent 1" w:uiPriority="52"/>
              <w:lsdException w:name="Grid Table 1 Light Accent 2" w:uiPriority="46"/>
              <w:lsdException w:name="Grid Table 2 Accent 2" w:uiPriority="47"/>
              <w:lsdException w:name="Grid Table 3 Accent 2" w:uiPriority="48"/>
              <w:lsdException w:name="Grid Table 4 Accent 2" w:uiPriority="49"/>
              <w:lsdException w:name="Grid Table 5 Dark Accent 2" w:uiPriority="50"/>
              <w:lsdException w:name="Grid Table 6 Colorful Accent 2" w:uiPriority="51"/>
              <w:lsdException w:name="Grid Table 7 Colorful Accent 2" w:uiPriority="52"/>
              <w:lsdException w:name="Grid Table 1 Light Accent 3" w:uiPriority="46"/>
              <w:lsdException w:name="Grid Table 2 Accent 3" w:uiPriority="47"/>
              <w:lsdException w:name="Grid Table 3 Accent 3" w:uiPriority="48"/>
              <w:lsdException w:name="Grid Table 4 Accent 3" w:uiPriority="49"/>
              <w:lsdException w:name="Grid Table 5 Dark Accent 3" w:uiPriority="50"/>
              <w:lsdException w:name="Grid Table 6 Colorful Accent 3" w:uiPriority="51"/>
              <w:lsdException w:name="Grid Table 7 Colorful Accent 3" w:uiPriority="52"/>
              <w:lsdException w:name="Grid Table 1 Light Accent 4" w:uiPriority="46"/>
              <w:lsdException w:name="Grid Table 2 Accent 4" w:uiPriority="47"/>
              <w:lsdException w:name="Grid Table 3 Accent 4" w:uiPriority="48"/>
              <w:lsdException w:name="Grid Table 4 Accent 4" w:uiPriority="49"/>
              <w:lsdException w:name="Grid Table 5 Dark Accent 4" w:uiPriority="50"/>
              <w:lsdException w:name="Grid Table 6 Colorful Accent 4" w:uiPriority="51"/>
              <w:lsdException w:name="Grid Table 7 Colorful Accent 4" w:uiPriority="52"/>
              <w:lsdException w:name="Grid Table 1 Light Accent 5" w:uiPriority="46"/>
              <w:lsdException w:name="Grid Table 2 Accent 5" w:uiPriority="47"/>
              <w:lsdException w:name="Grid Table 3 Accent 5" w:uiPriority="48"/>
              <w:lsdException w:name="Grid Table 4 Accent 5" w:uiPriority="49"/>
              <w:lsdException w:name="Grid Table 5 Dark Accent 5" w:uiPriority="50"/>
              <w:lsdException w:name="Grid Table 6 Colorful Accent 5" w:uiPriority="51"/>
              <w:lsdException w:name="Grid Table 7 Colorful Accent 5" w:uiPriority="52"/>
              <w:lsdException w:name="Grid Table 1 Light Accent 6" w:uiPriority="46"/>
              <w:lsdException w:name="Grid Table 2 Accent 6" w:uiPriority="47"/>
              <w:lsdException w:name="Grid Table 3 Accent 6" w:uiPriority="48"/>
              <w:lsdException w:name="Grid Table 4 Accent 6" w:uiPriority="49"/>
              <w:lsdException w:name="Grid Table 5 Dark Accent 6" w:uiPriority="50"/>
              <w:lsdException w:name="Grid Table 6 Colorful Accent 6" w:uiPriority="51"/>
              <w:lsdException w:name="Grid Table 7 Colorful Accent 6" w:uiPriority="52"/>
              <w:lsdException w:name="List Table 1 Light" w:uiPriority="46"/>
              <w:lsdException w:name="List Table 2" w:uiPriority="47"/>
              <w:lsdException w:name="List Table 3" w:uiPriority="48"/>
              <w:lsdException w:name="List Table 4" w:uiPriority="49"/>
              <w:lsdException w:name="List Table 5 Dark" w:uiPriority="50"/>
              <w:lsdException w:name="List Table 6 Colorful" w:uiPriority="51"/>
              <w:lsdException w:name="List Table 7 Colorful" w:uiPriority="52"/>
              <w:lsdException w:name="List Table 1 Light Accent 1" w:uiPriority="46"/>
              <w:lsdException w:name="List Table 2 Accent 1" w:uiPriority="47"/>
              <w:lsdException w:name="List Table 3 Accent 1" w:uiPriority="48"/>
              <w:lsdException w:name="List Table 4 Accent 1" w:uiPriority="49"/>
              <w:lsdException w:name="List Table 5 Dark Accent 1" w:uiPriority="50"/>
              <w:lsdException w:name="List Table 6 Colorful Accent 1" w:uiPriority="51"/>
              <w:lsdException w:name="List Table 7 Colorful Accent 1" w:uiPriority="52"/>
              <w:lsdException w:name="List Table 1 Light Accent 2" w:uiPriority="46"/>
              <w:lsdException w:name="List Table 2 Accent 2" w:uiPriority="47"/>
              <w:lsdException w:name="List Table 3 Accent 2" w:uiPriority="48"/>
              <w:lsdException w:name="List Table 4 Accent 2" w:uiPriority="49"/>
              <w:lsdException w:name="List Table 5 Dark Accent 2" w:uiPriority="50"/>
              <w:lsdException w:name="List Table 6 Colorful Accent 2" w:uiPriority="51"/>
              <w:lsdException w:name="List Table 7 Colorful Accent 2" w:uiPriority="52"/>
              <w:lsdException w:name="List Table 1 Light Accent 3" w:uiPriority="46"/>
              <w:lsdException w:name="List Table 2 Accent 3" w:uiPriority="47"/>
              <w:lsdException w:name="List Table 3 Accent 3" w:uiPriority="48"/>
              <w:lsdException w:name="List Table 4 Accent 3" w:uiPriority="49"/>
              <w:lsdException w:name="List Table 5 Dark Accent 3" w:uiPriority="50"/>
              <w:lsdException w:name="List Table 6 Colorful Accent 3" w:uiPriority="51"/>
              <w:lsdException w:name="List Table 7 Colorful Accent 3" w:uiPriority="52"/>
              <w:lsdException w:name="List Table 1 Light Accent 4" w:uiPriority="46"/>
              <w:lsdException w:name="List Table 2 Accent 4" w:uiPriority="47"/>
              <w:lsdException w:name="List Table 3 Accent 4" w:uiPriority="48"/>
              <w:lsdException w:name="List Table 4 Accent 4" w:uiPriority="49"/>
              <w:lsdException w:name="List Table 5 Dark Accent 4" w:uiPriority="50"/>
              <w:lsdException w:name="List Table 6 Colorful Accent 4" w:uiPriority="51"/>
              <w:lsdException w:name="List Table 7 Colorful Accent 4" w:uiPriority="52"/>
              <w:lsdException w:name="List Table 1 Light Accent 5" w:uiPriority="46"/>
              <w:lsdException w:name="List Table 2 Accent 5" w:uiPriority="47"/>
              <w:lsdException w:name="List Table 3 Accent 5" w:uiPriority="48"/>
              <w:lsdException w:name="List Table 4 Accent 5" w:uiPriority="49"/>
              <w:lsdException w:name="List Table 5 Dark Accent 5" w:uiPriority="50"/>
              <w:lsdException w:name="List Table 6 Colorful Accent 5" w:uiPriority="51"/>
              <w:lsdException w:name="List Table 7 Colorful Accent 5" w:uiPriority="52"/>
              <w:lsdException w:name="List Table 1 Light Accent 6" w:uiPriority="46"/>
              <w:lsdException w:name="List Table 2 Accent 6" w:uiPriority="47"/>
              <w:lsdException w:name="List Table 3 Accent 6" w:uiPriority="48"/>
              <w:lsdException w:name="List Table 4 Accent 6" w:uiPriority="49"/>
              <w:lsdException w:name="List Table 5 Dark Accent 6" w:uiPriority="50"/>
              <w:lsdException w:name="List Table 6 Colorful Accent 6" w:uiPriority="51"/>
              <w:lsdException w:name="List Table 7 Colorful Accent 6" w:uiPriority="52"/>
            </w:latentStyles>
            <w:style w:type="paragraph" w:default="1" w:styleId="a">
              <w:name w:val="Normal"/>
              <w:qFormat/>
              <w:rsid w:val="00891A83"/>
              <w:pPr>
                <w:widowControl w:val="0"/>
                <w:jc w:val="both"/>
              </w:pPr>
              <w:rPr>
                <w:rFonts w:cs="Calibri"/>
                <w:kern w:val="2"/>
                <w:sz w:val="21"/>
                <w:szCs w:val="21"/>
              </w:rPr>
            </w:style>
            <w:style w:type="paragraph" w:styleId="1">
              <w:name w:val="heading 1"/>
              <w:basedOn w:val="a"/>
              <w:next w:val="a"/>
              <w:link w:val="1Char"/>
              <w:qFormat/>
              <w:locked/>
              <w:rsid w:val="00942B06"/>
              <w:pPr>
                <w:keepNext/>
                <w:keepLines/>
                <w:spacing w:line="480" w:lineRule="auto"/>
                <w:outlineLvl w:val="0"/>
              </w:pPr>
              <w:rPr>
                <w:b/>
                <w:bCs/>
                <w:kern w:val="44"/>
                <w:sz w:val="44"/>
                <w:szCs w:val="44"/>
              </w:rPr>
            </w:style>
            <w:style w:type="paragraph" w:styleId="2">
              <w:name w:val="heading 2"/>
              <w:basedOn w:val="a"/>
              <w:next w:val="a"/>
              <w:link w:val="2Char"/>
              <w:unhideWhenUsed/>
              <w:qFormat/>
              <w:locked/>
              <w:rsid w:val="00942B06"/>
              <w:pPr>
                <w:keepNext/>
                <w:keepLines/>
                <w:spacing w:line="480" w:lineRule="auto"/>
                <w:outlineLvl w:val="1"/>
              </w:pPr>
              <w:rPr>
                <w:rFonts w:asciiTheme="majorHAnsi" w:eastAsiaTheme="majorEastAsia" w:hAnsiTheme="majorHAnsi" w:cstheme="majorBidi"/>
                <w:b/>
                <w:bCs/>
                <w:sz w:val="32"/>
                <w:szCs w:val="32"/>
              </w:rPr>
            </w:style>
            <w:style w:type="character" w:default="1" w:styleId="a0">
              <w:name w:val="Default Paragraph Font"/>
              <w:uiPriority w:val="1"/>
              <w:semiHidden/>
              <w:unhideWhenUsed/>
            </w:style>
            <w:style w:type="table" w:default="1" w:styleId="a1">
              <w:name w:val="Normal Table"/>
              <w:uiPriority w:val="99"/>
              <w:semiHidden/>
              <w:unhideWhenUsed/>
              <w:tblPr>
                <w:tblInd w:w="0" w:type="dxa"/>
                <w:tblCellMar>
                  <w:top w:w="0" w:type="dxa"/>
                  <w:left w:w="108" w:type="dxa"/>
                  <w:bottom w:w="0" w:type="dxa"/>
                  <w:right w:w="108" w:type="dxa"/>
                </w:tblCellMar>
              </w:tblPr>
            </w:style>
            <w:style w:type="numbering" w:default="1" w:styleId="a2">
              <w:name w:val="No List"/>
              <w:uiPriority w:val="99"/>
              <w:semiHidden/>
              <w:unhideWhenUsed/>
            </w:style>
            <w:style w:type="paragraph" w:styleId="a3">
              <w:name w:val="footer"/>
              <w:basedOn w:val="a"/>
              <w:link w:val="Char"/>
              <w:uiPriority w:val="99"/>
              <w:rsid w:val="00C83AFF"/>
              <w:pPr>
                <w:tabs>
                  <w:tab w:val="center" w:pos="4153"/>
                  <w:tab w:val="right" w:pos="8306"/>
                </w:tabs>
                <w:snapToGrid w:val="0"/>
                <w:jc w:val="left"/>
              </w:pPr>
              <w:rPr>
                <w:kern w:val="0"/>
                <w:sz w:val="18"/>
                <w:szCs w:val="18"/>
              </w:rPr>
            </w:style>
            <w:style w:type="paragraph" w:styleId="a4">
              <w:name w:val="header"/>
              <w:basedOn w:val="a"/>
              <w:link w:val="Char0"/>
              <w:uiPriority w:val="99"/>
              <w:qFormat/>
              <w:rsid w:val="00C83AFF"/>
              <w:pPr>
                <w:pBdr>
                  <w:bottom w:val="single" w:sz="6" w:space="1" w:color="auto"/>
                </w:pBdr>
                <w:tabs>
                  <w:tab w:val="center" w:pos="4153"/>
                  <w:tab w:val="right" w:pos="8306"/>
                </w:tabs>
                <w:snapToGrid w:val="0"/>
                <w:jc w:val="center"/>
              </w:pPr>
              <w:rPr>
                <w:kern w:val="0"/>
                <w:sz w:val="18"/>
                <w:szCs w:val="18"/>
              </w:rPr>
            </w:style>
            <w:style w:type="table" w:styleId="a5">
              <w:name w:val="Table Grid"/>
              <w:basedOn w:val="a1"/>
              <w:uiPriority w:val="99"/>
              <w:qFormat/>
              <w:rsid w:val="00C83AFF"/>
              <w:rPr>
                <w:rFonts w:cs="Calibri"/>
              </w:rPr>
              <w:tblPr>
                <w:tblBorders>
                  <w:top w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                  <w:left w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                  <w:bottom w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                  <w:right w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                  <w:insideH w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                  <w:insideV w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                </w:tblBorders>
              </w:tblPr>
            </w:style>
            <w:style w:type="character" w:customStyle="1" w:styleId="Char">
              <w:name w:val="页脚 Char"/>
              <w:link w:val="a3"/>
              <w:uiPriority w:val="99"/>
              <w:qFormat/>
              <w:locked/>
              <w:rsid w:val="00C83AFF"/>
              <w:rPr>
                <w:sz w:val="18"/>
                <w:szCs w:val="18"/>
              </w:rPr>
            </w:style>
            <w:style w:type="character" w:customStyle="1" w:styleId="Char0">
              <w:name w:val="页眉 Char"/>
              <w:link w:val="a4"/>
              <w:uiPriority w:val="99"/>
              <w:qFormat/>
              <w:locked/>
              <w:rsid w:val="00C83AFF"/>
              <w:rPr>
                <w:sz w:val="18"/>
                <w:szCs w:val="18"/>
              </w:rPr>
            </w:style>
            <w:style w:type="paragraph" w:styleId="a6">
              <w:name w:val="Balloon Text"/>
              <w:basedOn w:val="a"/>
              <w:link w:val="Char1"/>
              <w:uiPriority w:val="99"/>
              <w:semiHidden/>
              <w:unhideWhenUsed/>
              <w:rsid w:val="005B6900"/>
              <w:rPr>
                <w:sz w:val="18"/>
                <w:szCs w:val="18"/>
              </w:rPr>
            </w:style>
            <w:style w:type="character" w:customStyle="1" w:styleId="Char1">
              <w:name w:val="批注框文本 Char"/>
              <w:basedOn w:val="a0"/>
              <w:link w:val="a6"/>
              <w:uiPriority w:val="99"/>
              <w:semiHidden/>
              <w:rsid w:val="005B6900"/>
              <w:rPr>
                <w:rFonts w:cs="Calibri"/>
                <w:kern w:val="2"/>
                <w:sz w:val="18"/>
                <w:szCs w:val="18"/>
              </w:rPr>
            </w:style>
            <w:style w:type="character" w:customStyle="1" w:styleId="1Char">
              <w:name w:val="标题 1 Char"/>
              <w:basedOn w:val="a0"/>
              <w:link w:val="1"/>
              <w:rsid w:val="00942B06"/>
              <w:rPr>
                <w:rFonts w:cs="Calibri"/>
                <w:b/>
                <w:bCs/>
                <w:kern w:val="44"/>
                <w:sz w:val="44"/>
                <w:szCs w:val="44"/>
              </w:rPr>
            </w:style>
            <w:style w:type="character" w:customStyle="1" w:styleId="2Char">
              <w:name w:val="标题 2 Char"/>
              <w:basedOn w:val="a0"/>
              <w:link w:val="2"/>
              <w:rsid w:val="00942B06"/>
              <w:rPr>
                <w:rFonts w:asciiTheme="majorHAnsi" w:eastAsiaTheme="majorEastAsia" w:hAnsiTheme="majorHAnsi" w:cstheme="majorBidi"/>
                <w:b/>
                <w:bCs/>
                <w:kern w:val="2"/>
                <w:sz w:val="32"/>
                <w:szCs w:val="32"/>
              </w:rPr>
            </w:style>
            <w:style w:type="paragraph" w:styleId="a7">
              <w:name w:val="List Paragraph"/>
              <w:basedOn w:val="a"/>
              <w:uiPriority w:val="99"/>
              <w:rsid w:val="006A05D8"/>
              <w:pPr>
                <w:ind w:firstLineChars="200" w:firstLine="420"/>
              </w:pPr>
            </w:style>
          </w:styles>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/word/webSettings.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.webSettings+xml">
        <pkg:xmlData>
          <w:webSettings mc:Ignorable="w14 w15" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml"/>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/word/fontTable.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.wordprocessingml.fontTable+xml">
        <pkg:xmlData>
          <w:fonts mc:Ignorable="w14 w15" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml">
            <w:font w:name="Times New Roman">
              <w:panose1 w:val="02020603050405020304"/>
              <w:charset w:val="00"/>
              <w:family w:val="roman"/>
              <w:pitch w:val="variable"/>
              <w:sig w:usb0="E0002EFF" w:usb1="C0007843" w:usb2="00000009" w:usb3="00000000" w:csb0="000001FF" w:csb1="00000000"/>
            </w:font>
            <w:font w:name="Calibri">
              <w:panose1 w:val="020F0502020204030204"/>
              <w:charset w:val="00"/>
              <w:family w:val="swiss"/>
              <w:pitch w:val="variable"/>
              <w:sig w:usb0="E00002FF" w:usb1="4000ACFF" w:usb2="00000001" w:usb3="00000000" w:csb0="0000019F" w:csb1="00000000"/>
            </w:font>
            <w:font w:name="宋体">
              <w:altName w:val="SimSun"/>
              <w:panose1 w:val="02010600030101010101"/>
              <w:charset w:val="86"/>
              <w:family w:val="auto"/>
              <w:pitch w:val="variable"/>
              <w:sig w:usb0="00000003" w:usb1="288F0000" w:usb2="00000016" w:usb3="00000000" w:csb0="00040001" w:csb1="00000000"/>
            </w:font>
            <w:font w:name="Cambria">
              <w:panose1 w:val="02040503050406030204"/>
              <w:charset w:val="00"/>
              <w:family w:val="roman"/>
              <w:pitch w:val="variable"/>
              <w:sig w:usb0="E00002FF" w:usb1="400004FF" w:usb2="00000000" w:usb3="00000000" w:csb0="0000019F" w:csb1="00000000"/>
            </w:font>
            <w:font w:name="Arial">
              <w:panose1 w:val="020B0604020202020204"/>
              <w:charset w:val="00"/>
              <w:family w:val="swiss"/>
              <w:pitch w:val="variable"/>
              <w:sig w:usb0="E0002AFF" w:usb1="C0007843" w:usb2="00000009" w:usb3="00000000" w:csb0="000001FF" w:csb1="00000000"/>
            </w:font>
          </w:fonts>
        </pkg:xmlData>
      </pkg:part>
      <pkg:part pkg:name="/docProps/app.xml" pkg:contentType="application/vnd.openxmlformats-officedocument.extended-properties+xml" pkg:padding="256">
        <pkg:xmlData>
          <Properties xmlns="http://schemas.openxmlformats.org/officeDocument/2006/extended-properties" xmlns:vt="http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes">
            <Template>Normal.dotm</Template>
            <TotalTime>4</TotalTime>
            <Pages>1</Pages>
            <Words>42</Words>
            <Characters>242</Characters>
            <Application>Microsoft Office Word</Application>
            <DocSecurity>0</DocSecurity>
            <Lines>2</Lines>
            <Paragraphs>1</Paragraphs>
            <ScaleCrop>false</ScaleCrop>
            <Company>MC SYSTEM</Company>
            <LinksUpToDate>false</LinksUpToDate>
            <CharactersWithSpaces>283</CharactersWithSpaces>
            <SharedDoc>false</SharedDoc>
            <HyperlinksChanged>false</HyperlinksChanged>
            <AppVersion>15.0000</AppVersion>
          </Properties>
        </pkg:xmlData>
      </pkg:part>
    </pkg:package>

  </xsl:template>
</xsl:stylesheet>
