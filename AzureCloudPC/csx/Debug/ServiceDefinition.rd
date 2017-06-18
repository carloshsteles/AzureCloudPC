<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AzureCloudPC" generation="1" functional="0" release="0" Id="9780cb2e-71c4-4d56-b4c1-5aa14ef92454" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureCloudPCGroup" generation="1" functional="0" release="0">
      <settings>
        <aCS name="WorkerRolePC:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudPC/AzureCloudPCGroup/MapWorkerRolePC:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WorkerRolePCInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureCloudPC/AzureCloudPCGroup/MapWorkerRolePCInstances" />
          </maps>
        </aCS>
      </settings>
      <maps>
        <map name="MapWorkerRolePC:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudPC/AzureCloudPCGroup/WorkerRolePC/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWorkerRolePCInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureCloudPC/AzureCloudPCGroup/WorkerRolePCInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WorkerRolePC" generation="1" functional="0" release="0" software="C:\Users\carloshsteles\Documents\Visual Studio 2017\Projects\AzureCloudPC\AzureCloudPC\csx\Debug\roles\WorkerRolePC" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WorkerRolePC&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WorkerRolePC&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureCloudPC/AzureCloudPCGroup/WorkerRolePCInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureCloudPC/AzureCloudPCGroup/WorkerRolePCUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureCloudPC/AzureCloudPCGroup/WorkerRolePCFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="WorkerRolePCUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="WorkerRolePCFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="WorkerRolePCInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
</serviceModel>