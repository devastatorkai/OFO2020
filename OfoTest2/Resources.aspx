<%@ Page Title="Resources" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Resources.aspx.cs" Inherits="OfoTest2.Resources" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
   
    <p>OFO Tool User Manual <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="Blue" Font-Bold="false" NavigateUrl="docs/user-manual.pdf" Target="_blank">Download Here</asp:HyperLink></p>
    <p>DHET OFO Guideline <asp:HyperLink ID="hplStandard" runat="server" ForeColor="Blue" Font-Bold="false" NavigateUrl="http://www.dhet.gov.za/Publications/OFO%20Guideline%20-%202013.pdf" Target="_blank">Download Here</asp:HyperLink></p>
    <p>Latest version of OFO 2019 spreadsheet <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" Font-Bold="false" NavigateUrl="http://www.etdpseta.org.za/education/sites/default/files/2020-01/OFO%20%28ORGANISING%20FRAMEWORK%20FOR%20OCCUPATIONS%29%20VERSION%202019.xlsx" Target="_blank">Download Here</asp:HyperLink></p>
    <p>OFO Mapping Guide <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Blue" Font-Bold="false" NavigateUrl="docs/mapping-guide.pdf" Target="_blank">Download Here</asp:HyperLink></p>
    <p>OFO Jobs to Occupation Guide <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Blue" Font-Bold="false" NavigateUrl="docs/job-occupation.pdf" Target="_blank">Download Here</asp:HyperLink></p>
</asp:Content>
