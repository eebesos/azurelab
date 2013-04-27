<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Guestbook" generation="1" functional="0" release="0" Id="dd272576-f43c-4948-8c99-7f99b398a3f2" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="GuestbookGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="Guestbook_WebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/Guestbook/GuestbookGroup/LB:Guestbook_WebRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Guestbook_WebRole:DataConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Guestbook/GuestbookGroup/MapGuestbook_WebRole:DataConnectionString" />
          </maps>
        </aCS>
        <aCS name="Guestbook_WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Guestbook/GuestbookGroup/MapGuestbook_WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="Guestbook_WebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/Guestbook/GuestbookGroup/MapGuestbook_WebRoleInstances" />
          </maps>
        </aCS>
        <aCS name="Guestbook_WorkerRole:DataConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Guestbook/GuestbookGroup/MapGuestbook_WorkerRole:DataConnectionString" />
          </maps>
        </aCS>
        <aCS name="Guestbook_WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Guestbook/GuestbookGroup/MapGuestbook_WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="Guestbook_WorkerRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/Guestbook/GuestbookGroup/MapGuestbook_WorkerRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:Guestbook_WebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/Guestbook/GuestbookGroup/Guestbook_WebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapGuestbook_WebRole:DataConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Guestbook/GuestbookGroup/Guestbook_WebRole/DataConnectionString" />
          </setting>
        </map>
        <map name="MapGuestbook_WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Guestbook/GuestbookGroup/Guestbook_WebRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapGuestbook_WebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/Guestbook/GuestbookGroup/Guestbook_WebRoleInstances" />
          </setting>
        </map>
        <map name="MapGuestbook_WorkerRole:DataConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Guestbook/GuestbookGroup/Guestbook_WorkerRole/DataConnectionString" />
          </setting>
        </map>
        <map name="MapGuestbook_WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Guestbook/GuestbookGroup/Guestbook_WorkerRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapGuestbook_WorkerRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/Guestbook/GuestbookGroup/Guestbook_WorkerRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Guestbook_WebRole" generation="1" functional="0" release="0" software="C:\source\Ex1-BuildingYourFirstWindowsAzureApp\Begin\Guestbook\csx\Release\roles\Guestbook_WebRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="DataConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Guestbook_WebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Guestbook_WebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;Guestbook_WorkerRole&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/Guestbook/GuestbookGroup/Guestbook_WebRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/Guestbook/GuestbookGroup/Guestbook_WebRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/Guestbook/GuestbookGroup/Guestbook_WebRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="Guestbook_WorkerRole" generation="1" functional="0" release="0" software="C:\source\Ex1-BuildingYourFirstWindowsAzureApp\Begin\Guestbook\csx\Release\roles\Guestbook_WorkerRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="1792" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="DataConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Guestbook_WorkerRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Guestbook_WebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;Guestbook_WorkerRole&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/Guestbook/GuestbookGroup/Guestbook_WorkerRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/Guestbook/GuestbookGroup/Guestbook_WorkerRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/Guestbook/GuestbookGroup/Guestbook_WorkerRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="Guestbook_WebRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="Guestbook_WorkerRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="Guestbook_WebRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="Guestbook_WorkerRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="Guestbook_WebRoleInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="Guestbook_WorkerRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="844ca7ca-a4a7-4747-b5c2-938de271ecff" ref="Microsoft.RedDog.Contract\ServiceContract\GuestbookContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="d6f72301-ab7c-4adf-9086-4039ed3eb4b2" ref="Microsoft.RedDog.Contract\Interface\Guestbook_WebRole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Guestbook/GuestbookGroup/Guestbook_WebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>