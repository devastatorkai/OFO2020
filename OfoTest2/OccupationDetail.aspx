<%@ Page Title="Occupation Profile" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="OccupationDetail.aspx.cs" Inherits="OfoTest2.OccupationDetail" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    
    <h3>Occupation:&nbsp;
         <asp:Label ID="OccupationLabel" runat="server" Text="Label"></asp:Label>
    </h3>
    
    <h3>OFO Code:&nbsp;
        <asp:Label ID="OFOLabel" runat="server" Text="Label"></asp:Label>
    </h3>


    <h3>Occupational Purpose "Descriptor"</h3>
   <div style="overflow:auto; width: auto; Height: auto;">
      <asp:GridView    ID="JobDescriptionGrid" runat="server" ForeColor="#333333" GridLines="None" AutoGenerateColumns="true"  HeaderStyle-Width="100%" HeaderStyle-Wrap="true" CellPadding="2" CellSpacing="2" HorizontalAlign="Left" ShowHeader="False" >       
            <Columns>       
            </Columns>         
        </asp:GridView>
  </div>


        <h3>Tasks (At Unit Level)</h3>
     <div style="overflow:auto; width: auto; Height: auto;">
      <asp:GridView    ID="TasksGrid" runat="server" ForeColor="#333333" GridLines="None" AutoGenerateColumns="true"  HeaderStyle-Width="100%" HeaderStyle-Wrap="true" CellPadding="2" CellSpacing="2" HorizontalAlign="Left" ShowHeader="False" >       
            <Columns>       
            </Columns>         
        </asp:GridView>
       </div>

    <h3>Specialisations / Alternate Titles:</h3>
       <div style="overflow:auto; width: auto; Height: auto;">
      <asp:GridView    ID="SpecialisationsGrid" runat="server" ForeColor="#333333" GridLines="None" AutoGenerateColumns="true"  HeaderStyle-Width="100%" HeaderStyle-Wrap="true" CellPadding="2" CellSpacing="2" HorizontalAlign="Left" ShowHeader="False" >       
            <Columns>       
            </Columns> 
        </asp:GridView>
</div>

    <h3>Group Information</h3>
    <div style="overflow:auto; width: auto; Height: auto;">
        <asp:GridView    ID="GroupsGrid" runat="server" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false"  HeaderStyle-Width="100%" CellPadding="4" HorizontalAlign="Left" >       
            <Columns> 
                  <asp:BoundField DataField="MajorGroups" HeaderText="MajorGroups" SortExpression="MajorGroups" ItemStyle-Width="6%" />
                <asp:BoundField DataField="SubMajorGroup" HeaderText="SubMajorGroup" SortExpression="SubMajorGroup" ItemStyle-Width="6%" />
                <asp:BoundField DataField="MinorGroups" HeaderText="MinorGroups" SortExpression="MinorGroups"  ItemStyle-Width="6%"/>
                <asp:BoundField DataField="UnitGroups" HeaderText="UnitGroups" SortExpression="UnitGroups"  ItemStyle-Width="6%"/>
            </Columns>           
        </asp:GridView>
        </div>

    <br />
    <p>
     Green Skill <asp:Label ID="GreenSkill" runat="server" Text="Label" Font-Bold="True"></asp:Label>
    Trade <asp:Label ID="Trade" runat="server" Text="Label" Font-Bold="True"></asp:Label>
        </p>

    
</asp:Content>
