<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Occupations.aspx.cs" Inherits="OfoTest2.Occupations" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
 
<div class="container-contact100">
		<div class="wrap-contact100">
				<span class="contact100-form-title">
					Occupation and OFO Code Search
				</span>

				<div class="wrap-input100 validate-input" data-validate="Please Enter an Occupation or OFO Code">
					<input class="input100" type="text" name="occupation" placeholder="Occupation or OFO Code" required="required" />

					<span class="focus-input100"></span>
				</div>


				<div class="container-contact100-form-btn">	
                  <asp:Button class="contact100-form-btn" ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />  							
				</div>
			
		</div>
	</div>

    <div>

        <asp:GridView  OnSelectedIndexChanging="SelectButton"  OnPageIndexChanging="GridView1_PageIndexChanging" ID="GridView1" runat="server" ForeColor="#333333" GridLines="None" AllowPaging="False" AllowSorting="True" AutoGenerateColumns="False" CellSpacing="20" CellPadding="20" HeaderStyle-Width="100%" HeaderStyle-Wrap="true" AutoGenerateSelectButton="true"  DataKeyNames="OFOCode">
           
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="RANK" HeaderText="Rank" SortExpression="RANK" Visible="True" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="OFOCode" HeaderText="OFO Code" SortExpression="OFOCode" ItemStyle-Width="8%" >
<ItemStyle Width="8%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Occupations" HeaderText="Occupation" SortExpression="Occupations" ItemStyle-Width="25%" ItemStyle-Wrap="true"  >
<ItemStyle Wrap="True" Width="25%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="MajorGroups" HeaderText="Major Group" SortExpression="MajorGroups" ItemStyle-Width="15%" ItemStyle-Wrap="true" >
<ItemStyle Wrap="True" Width="15%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="SubMajorGroup" HeaderText="Sub Major Group" SortExpression="SubMajorGroup"  ItemStyle-Width="15%" ItemStyle-Wrap="true" >
<ItemStyle Wrap="True" Width="15%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="MinorGroups" HeaderText="Minor Group" SortExpression="MinorGroups"  ItemStyle-Width="15%" ItemStyle-Wrap="true" >
<ItemStyle Wrap="True" Width="15%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="UnitGroups" HeaderText="Unit Group" SortExpression="UnitGroups"  ItemStyle-Width="15%" ItemStyle-Wrap="true" >
<ItemStyle Wrap="True" Width="15%"></ItemStyle>                     
                </asp:BoundField> 
                    
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="black" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="black" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
    <p>&nbsp;</p>
</asp:Content>
