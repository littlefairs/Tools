<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml">
  <xsl:output method="xml" indent="yes" />
  <xsl:template match="/">
    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Word.Document"</xsl:text>
    </xsl:processing-instruction>
    <w:wordDocument>
      <w:body>
        <w:p>
          <w:r>
            <w:rPr>
              <w:b/>
              <w:u/>
            </w:rPr>
            <w:t>
              <w:br w:type="text-wrapping"/>
              SharePoint Farm Documentation
              <w:br w:type="text-wrapping"/>
            </w:t>
          </w:r>
        </w:p>
        
        <xsl:apply-templates select="Farm" />
      </w:body>
    </w:wordDocument>
  </xsl:template>
  <xsl:template match="Farm">
    <w:sectPr>
          <w:pgMar w:top="1040" w:right="800" w:bottom="1340" w:left="800"
    w:header="220" w:footer="720" w:gutter="0"/>
          <w:ftr>
            <w:p>
              <w:r>
                <w:t>
                  Documentation Generated by Sezai.SPDocGen on - <xsl:value-of select="@GenerationTime"/>
                </w:t>
              </w:r>
            </w:p>
          </w:ftr>
        </w:sectPr>
    <w:p>
      <w:r>
        <w:t>
          Generated by Sezai.SPDocGen on <xsl:value-of select="@GenerationTime"/><w:br w:type="text-wrapping"/>http://spdocgen.codeplex.com<w:br w:type="text-wrapping"/>
        </w:t>
      </w:r>
    </w:p>
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
          Farm SharePoint Version: <xsl:value-of select="FarmVersion" />
          <w:br w:type="text-wrapping"/>
          <w:br w:type="text-wrapping"/>Servers
        </w:t>
      </w:r>
    </w:p>
    <xsl:apply-templates select="FarmServers" />
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
          <w:br w:type="text-wrapping"/>
          Farm Services
        </w:t>
      </w:r>
    </w:p>
    <xsl:apply-templates select="FarmServices" />    
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
          <w:br w:type="text-wrapping"/>
          Farm Web Applications
        </w:t>
      </w:r>
    </w:p>
    <xsl:apply-templates select="FarmWebApplications" />
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
          <w:br w:type="text-wrapping"/>
          Site Collections         
        </w:t>
      </w:r>
    </w:p>    
      <xsl:apply-templates select="FarmSiteCollections" />
        
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
          <w:br w:type="text-wrapping"/><w:br w:type="text-wrapping"/>
          Farm Application Pools
        </w:t>
      </w:r>
    </w:p>
    <xsl:apply-templates select="FarmApplicationPools" />
  <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
          <w:br w:type="text-wrapping"/>
          Farm Solutions
        </w:t>
      </w:r>
    </w:p>
    <xsl:apply-templates select="FarmSolutions" />
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
          <w:br w:type="text-wrapping"/>
          Farm Feature Definitions
        </w:t>
      </w:r>
    </w:p>
    <xsl:apply-templates select="FarmFeatureDefinitions" />
  </xsl:template>
  <xsl:template match="FarmSolutions">
    <w:tbl>
      <w:tblPr>
        <w:tblBorders>
          <w:tblW w:w="10500" w:type="dxa"/>
          <w:top w:val="single" w:sz="1" />
          <w:left w:val="single" w:sz="1" />
          <w:bottom w:val="single" w:sz="1" />
          <w:right w:val="single" w:sz="1" />
          <w:insideH w:val="single" w:sz="1" />
          <w:insideV w:val="single" w:sz="1" />
        </w:tblBorders>
        <w:tblLayout w:type="Fixed"/>
      </w:tblPr>
      <w:tblGrid>
        <w:gridCol w:w="600"/>
        <w:gridCol w:w="500"/>
        <w:gridCol w:w="700"/>
        <w:gridCol w:w="300"/>
        <w:gridCol w:w="400"/>
      </w:tblGrid>
      <w:tr>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="500" />
          </w:tcPr>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Name</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="500" />
          </w:tcPr>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Deployed</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="500" />
          </w:tcPr>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Last Operation Details</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="500" />
          </w:tcPr>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Deployed Servers</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="500" />
          </w:tcPr>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Deployed Web Applications</w:t>
            </w:r>
          </w:p>
        </w:tc>
      </w:tr>
      <xsl:apply-templates select="Solution" />
    </w:tbl>
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
          Number of Solutions: <xsl:value-of select="@Count"/>
          <w:br w:type="text-wrapping"/>
        </w:t>
      </w:r>
    </w:p>
  </xsl:template>
  <xsl:template match="Solution">
    <w:tr>      
      <w:tc>
        <w:tcPr>
          <w:tcW w:w="500" />
        </w:tcPr>
        <w:p>
          <w:r>
            <w:t>
        <xsl:value-of select="@Name" />
        <w:br w:type="text-wrapping"/>
        <w:br w:type="text-wrapping"/>
        <xsl:value-of select="@Id" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:tcPr>
          <w:tcW w:w="500" />
        </w:tcPr>
        <w:p>
          <w:r>
            <w:t>
     <xsl:value-of select="@Deployed" />
              <w:br w:type="text-wrapping"/>
              <xsl:value-of select="@DeploymentState" />
              <w:br w:type="text-wrapping"/>
              <xsl:value-of select="@LastOperationEndTime" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:tcPr>
          <w:tcW w:w="500" />
        </w:tcPr>
        <w:p>
          <w:r>
            <w:t>
    <xsl:value-of select="@LastOperationDetails" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:tcPr>
          <w:tcW w:w="500" />
        </w:tcPr>
        <w:p>
          <w:r>
            <w:t>
              <xsl:apply-templates select="DeployedServers/Server" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:tcPr>
          <w:tcW w:w="500" />
        </w:tcPr>
        <w:p>
          <w:r>
            <w:t>
              <xsl:apply-templates select="DeployedWebApplications/WebApplication" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
    </w:tr>
  </xsl:template>
  <xsl:template match="DeployedServers/Server">
    <xsl:value-of select="@Name"/>
    <w:br w:type="text-wrapping"/>
  </xsl:template>
  <xsl:template match="DeployedWebApplications/WebApplication">
    <xsl:value-of select="@Name"/>
    <w:br w:type="text-wrapping"/>
  </xsl:template>
  <xsl:template match="FarmFeatureDefinitions">
    <w:tbl>
      <w:tblPr>
        <w:tblBorders>
          <w:tblW w:w="10500" w:type="dxa"/>
          <w:top w:val="single" w:sz="1" />
          <w:left w:val="single" w:sz="1" />
          <w:bottom w:val="single" w:sz="1" />
          <w:right w:val="single" w:sz="1" />
          <w:insideH w:val="single" w:sz="1" />
          <w:insideV w:val="single" w:sz="1" />
        </w:tblBorders>
        <w:tblLayout w:type="Fixed"/>
      </w:tblPr>
      <w:tblGrid>
        <w:gridCol w:w="750"/>
        <w:gridCol w:w="200"/>
        <w:gridCol w:w="400"/>
        <w:gridCol w:w="500"/>
        <w:gridCol w:w="550"/>
      </w:tblGrid>
      <w:tr>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Feature</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Scope</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Root Directory</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Solution ID</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Receiver Assembly and Class</w:t>
            </w:r>
          </w:p>
        </w:tc>
      </w:tr>
      <xsl:apply-templates select="FeatureDefinition" />
    </w:tbl>
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>    
          Number of Feature Definitions: <xsl:value-of select="@Count"/>
          <w:br w:type="text-wrapping"/>
        </w:t>
      </w:r>
    </w:p>
  </xsl:template>
  <xsl:template match="FeatureDefinition">
    <w:tr>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@DisplayName" />
              <w:br w:type="text-wrapping"/>
              <xsl:value-of select="@Id" />
            </w:t>
            </w:r>
          </w:p>
        </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t><xsl:value-of select="@Scope" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t><xsl:value-of select="@RootDirectory" /></w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@SolutionId" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@ReceiverAssembly" />
              <w:br w:type="text-wrapping"/>
              <w:br w:type="text-wrapping"/>
              <xsl:value-of select="@ReceiverClass" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      </w:tr>    
  </xsl:template>
  <xsl:template match="FarmWebApplications">
    <w:tbl>
      <w:tblPr>
        <w:tblBorders>
          <w:tblW w:w="10500" w:type="dxa"/>
          <w:top w:val="single" w:sz="1" />
          <w:left w:val="single" w:sz="1" />
          <w:bottom w:val="single" w:sz="1" />
          <w:right w:val="single" w:sz="1" />
          <w:insideH w:val="single" w:sz="1" />
          <w:insideV w:val="single" w:sz="1" />
        </w:tblBorders>
        <w:tblLayout w:type="Fixed"/>
      </w:tblPr>
      <w:tblGrid>
        <w:gridCol w:w="400"/>
        <w:gridCol w:w="600"/>
        <w:gridCol w:w="600"/>
        <w:gridCol w:w="650"/>
        <w:gridCol w:w="600"/>
      </w:tblGrid>
      <w:tr>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Web Application</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Site Collections</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Content Databases</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Application Pool</w:t>
            </w:r>
          </w:p>
        </w:tc>
      </w:tr>
      <xsl:apply-templates select="WebApplication" />
    </w:tbl>
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>  
          Number of Web Applications: <xsl:value-of select="@Count"/>
          <w:br w:type="text-wrapping"/>
        </w:t>
      </w:r>
    </w:p>
  </xsl:template>
  <xsl:template match="WebApplication">
    <w:tr>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@Name" />
              <w:br w:type="text-wrapping"/>
              <w:br w:type="text-wrapping"/>
              <xsl:value-of select="@Id"/>
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:apply-templates select="SiteCollections/SiteCollection" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:apply-templates select="ContentDatabases/ContentDatabase" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:apply-templates select="ApplicationPool" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
    </w:tr>    
  </xsl:template>
  <xsl:template match="FarmSiteCollections">
    <w:tbl>
      <w:tblPr>
        <w:tblBorders>
          <w:tblW w:w="10500" w:type="dxa"/>
          <w:top w:val="single" w:sz="1" />
          <w:left w:val="single" w:sz="1" />
          <w:bottom w:val="single" w:sz="1" />
          <w:right w:val="single" w:sz="1" />
          <w:insideH w:val="single" w:sz="1" />
          <w:insideV w:val="single" w:sz="1" />
        </w:tblBorders>
        <w:tblLayout w:type="Fixed"/>
      </w:tblPr>
      <w:tblGrid>
        <w:gridCol w:w="500"/>
        <w:gridCol w:w="500"/>
        <w:gridCol w:w="200"/>
        <w:gridCol w:w="200"/>
        <w:gridCol w:w="200"/>
        <w:gridCol w:w="700"/>
      </w:tblGrid>
      <w:tr>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Title</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>URL and Web Application</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Web Count</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Users Count</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Disk Space Used</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Owners and Administrators</w:t>
            </w:r>
          </w:p>
        </w:tc>
      </w:tr>
      <xsl:apply-templates select="SiteCollection" />
    </w:tbl>
    </xsl:template>
  <xsl:template match="SiteCollection">
    <w:tr>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@Title" />
              <w:br w:type="text-wrapping"/>
              <w:br w:type="text-wrapping"/>
              <xsl:value-of select="@Id" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@Url" />
              <w:br w:type="text-wrapping"/>
              <w:br w:type="text-wrapping"/>
              <xsl:value-of select="@WebApplication" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@WebCount" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@UsersCount" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@DiskUsed" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>Owner: <xsl:value-of select="@Owner" />
              <w:br w:type="text-wrapping"/>Owner Email:<xsl:value-of select="@OwnerEmail" /><w:br w:type="text-wrapping"/>
              <w:br w:type="text-wrapping"/>Secondary Contact:<xsl:value-of select="@SecondaryContact" />
              <w:br w:type="text-wrapping"/>Site Collection Administrators:<xsl:apply-templates select="SiteCollectionAdministrators/SiteCollectionAdministrator" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
    </w:tr>
  </xsl:template>
  <xsl:template match="SiteCollectionAdministrators/SiteCollectionAdministrator">
    <w:br w:type="text-wrapping"/>
    <xsl:value-of select="@Name" />
    <w:br w:type="text-wrapping"/>
    <xsl:value-of select="@LoginName" />
    <w:br w:type="text-wrapping"/>
    <xsl:value-of select="@Email" />
  </xsl:template>
  
  <xsl:template match="SiteCollections/SiteCollection">
    <xsl:value-of select="@Title" />    
    <w:br w:type="text-wrapping"/>
    <xsl:value-of select="@Url" />
    <w:br w:type="text-wrapping"/>
    <w:br w:type="text-wrapping"/>
  </xsl:template>
  
  <xsl:template match="ContentDatabases/ContentDatabase">
    <xsl:value-of select="@DisplayName" />  (<xsl:value-of select="@Server" />)
    <w:br w:type="text-wrapping"/>Size (for backup): <xsl:value-of select="@DiskSizeRequired" />
    <w:br w:type="text-wrapping"/>Site Collections: <xsl:value-of select="@CurrentSiteCount" />
    <w:br w:type="text-wrapping"/><w:br w:type="text-wrapping"/>
  </xsl:template>
  <xsl:template match="FarmApplicationPools">
    <w:tbl>
      <w:tblPr>
        <w:tblBorders>
          <w:tblW w:w="10500" w:type="dxa"/>
          <w:top w:val="single" w:sz="1" />
          <w:left w:val="single" w:sz="1" />
          <w:bottom w:val="single" w:sz="1" />
          <w:right w:val="single" w:sz="1" />
          <w:insideH w:val="single" w:sz="1" />
          <w:insideV w:val="single" w:sz="1" />
        </w:tblBorders>
        <w:tblLayout w:type="Fixed"/>
      </w:tblPr>
      <w:tblGrid>
        <w:gridCol w:w="800"/>
        <w:gridCol w:w="700"/>
        <w:gridCol w:w="500"/>
      </w:tblGrid>
      <w:tr>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Application Pool Name</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Account</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Password</w:t>
            </w:r>
          </w:p>
        </w:tc>
      </w:tr>
          <xsl:apply-templates select="FarmApplicationPool" />
      </w:tbl>   
    <w:p>
      <w:r><w:rPr>
      <w:b/>
    </w:rPr>
        <w:t>
          Number of Application Pools: <xsl:value-of select="@Count"/>
          <w:br w:type="text-wrapping"/>
        </w:t>
      </w:r>
    </w:p>
    </xsl:template>
  <xsl:template match="ApplicationPool">
    <xsl:value-of select="@Name" />
    <w:br w:type="text-wrapping"/>
    <xsl:value-of select="@UserName" />
    <w:br w:type="text-wrapping"/>
    <xsl:value-of select="@Password" />
    <w:br w:type="text-wrapping"/>
  </xsl:template>
  <xsl:template match="FarmApplicationPool">
    <w:tr>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@Name" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@UserName" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@Password" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
    </w:tr>
  </xsl:template>
  <xsl:template match="FarmServices">
    <w:tbl>
      <w:tblPr>
        <w:tblBorders>
          <w:tblW w:w="10500" w:type="dxa"/>
          <w:top w:val="single" w:sz="1" />
          <w:left w:val="single" w:sz="1" />
          <w:bottom w:val="single" w:sz="1" />
          <w:right w:val="single" w:sz="1" />
          <w:insideH w:val="single" w:sz="1" />
          <w:insideV w:val="single" w:sz="1" />
        </w:tblBorders>
        <w:tblLayout w:type="Fixed"/>
      </w:tblPr>
      <w:tblGrid>
        <w:gridCol w:w="700"/>
        <w:gridCol w:w="1000"/>
      </w:tblGrid>
      <w:tr>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Service Name</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Service Job Definitions</w:t>
            </w:r>
          </w:p>
        </w:tc>
      </w:tr>
     <xsl:apply-templates select="FarmService" />
    </w:tbl>
      <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
          Number of Services: <xsl:value-of select="@Count"/>
          <w:br w:type="text-wrapping"/>
        </w:t>
      </w:r>
    </w:p>
  </xsl:template>
  <xsl:template match="FarmService">
    <w:tr>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@TypeName"/>
              <w:br w:type="text-wrapping"/>
              <w:br w:type="text-wrapping"/>
              <xsl:value-of select="@Id"/>
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:apply-templates select="ServiceJobDefinitions/JobDefinition" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>      
    </w:tr>
  </xsl:template>
  <xsl:template match="ServiceJobDefinitions/JobDefinition">
    <xsl:value-of select="@Title"/>
    <w:br w:type="text-wrapping"/>
    Schedule: <xsl:value-of select="@Schedule"/>
    <w:br w:type="text-wrapping"/>
    Last Time Run: <xsl:value-of select="@LastTimeRun"/>
    <w:br w:type="text-wrapping"/>
    <w:br w:type="text-wrapping"/>
  </xsl:template>
  <xsl:template match="FarmServers">
    <w:tbl>
      <w:tblPr>
        <w:tblBorders>
          <w:tblW w:w="10500" w:type="dxa"/>
          <w:top w:val="single" w:sz="1" />
          <w:left w:val="single" w:sz="1" />
          <w:bottom w:val="single" w:sz="1" />
          <w:right w:val="single" w:sz="1" />
          <w:insideH w:val="single" w:sz="1" />
          <w:insideV w:val="single" w:sz="1" />
        </w:tblBorders>
        <w:tblLayout w:type="Fixed"/>
      </w:tblPr>
      <w:tblGrid>
        <w:gridCol w:w="1370"/>
        <w:gridCol w:w="300"/>
        <w:gridCol w:w="1550"/>
      </w:tblGrid>
      <w:tr>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Server</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Status</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Server Services</w:t>
            </w:r>
          </w:p>
        </w:tc>
      </w:tr>
      <xsl:apply-templates select="Server" />
    </w:tbl>
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
          Number of Servers: <xsl:value-of select="@Count"/>
          <w:br w:type="text-wrapping"/><w:br w:type="text-wrapping"/>
        </w:t>
      </w:r>
    </w:p>
    <xsl:apply-templates select="DatabaseServiceInstances" />
  </xsl:template>
  <xsl:template match="Server">
    <w:tr>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@Name"/>
              <w:br w:type="text-wrapping"/>
              <w:br w:type="text-wrapping"/>
              <xsl:value-of select="@Id"/>
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@Status"/>
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:apply-templates select="ServerServices/Service" />
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
    </w:tr>
  </xsl:template>
  <xsl:template match="ServerServices/Service">
    <w:p>
      <w:r>
        <w:pPr>
          <w:tabs>
            <w:tab w:val="left" w:pos="2000"/>
          </w:tabs>
        </w:pPr>
        <w:t>
          <xsl:value-of select="@TypeName"/>
          <xsl:apply-templates select="DatabaseServiceInstances" />
        </w:t>
      </w:r>
    </w:p>
  </xsl:template>  
  <xsl:template match="DatabaseServiceInstances/DatabaseServiceInstance">
    <xsl:apply-templates select="Databases" />
  </xsl:template>
  <xsl:template match="Databases">
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
          Databases
        </w:t>
      </w:r>
    </w:p>    
    <w:tbl>
      <w:tblPr>
        <w:tblBorders>
          <w:tblW w:w="10500" w:type="dxa"/>
          <w:top w:val="single" w:sz="1" />
          <w:left w:val="single" w:sz="1" />
          <w:bottom w:val="single" w:sz="1" />
          <w:right w:val="single" w:sz="1" />
          <w:insideH w:val="single" w:sz="1" />
          <w:insideV w:val="single" w:sz="1" />
        </w:tblBorders>
        <w:tblLayout w:type="Fixed"/>
      </w:tblPr>
      <w:tblGrid>
        <w:gridCol w:w="1700"/>
        <w:gridCol w:w="700"/>
        <w:gridCol w:w="600"/>
      </w:tblGrid>
      <w:tr>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Name</w:t>
            </w:r>
          </w:p>
        </w:tc>        
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Server</w:t>
            </w:r>
          </w:p>
        </w:tc>
        <w:tc>
          <w:p>
            <w:r>
              <w:rPr>
                <w:b/>
              </w:rPr>
              <w:t>Disk Size<w:br w:type="text-wrapping"/>(Required for backup)</w:t>
            </w:r>
          </w:p>
        </w:tc>
      </w:tr>
      <xsl:apply-templates select="Database" />
    </w:tbl>
    <w:p>
      <w:r>
        <w:rPr>
          <w:b/>
        </w:rPr>
        <w:t>
    Number of Databases: <xsl:value-of select="@Count"/><w:br w:type="text-wrapping"/>
        </w:t>
      </w:r>
    </w:p>
  </xsl:template>
  <xsl:template match="Database">
    <w:tr>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@Name"/>
              <w:br w:type="text-wrapping"/>
              <w:br w:type="text-wrapping"/>
              <xsl:value-of select="@Id"/>
            </w:t>
          </w:r>
        </w:p>
      </w:tc>      
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@Server"/>
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
      <w:tc>
        <w:p>
          <w:r>
            <w:t>
              <xsl:value-of select="@DiskSizeRequired"/>
            </w:t>
          </w:r>
        </w:p>
      </w:tc>
    </w:tr>
  </xsl:template>
</xsl:stylesheet>