<%@ Page Title="Tasks Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="OfoTest2.Tasks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-contact100">
		<div class="wrap-contact100">
				<span class="contact100-form-title">
					Tasks Search
				</span>

				<div class="wrap-input100 validate-input" data-validate="Please enter your Task to search">
					<input class="input100" type="text" name="tasks" placeholder="Search Tasks" required="required">
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">	
                  <asp:Button class="contact100-form-btn" ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />  							
				</div>
			
		</div>
	</div>
       
 
    <p>
        <asp:GridView  OnSelectedIndexChanging="SelectTask"  OnPageIndexChanging="GridView1_PageIndexChanging" ID="GridView1" runat="server" ForeColor="#333333" GridLines="None" AllowPaging="False" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" HeaderStyle-Width="100%" HeaderStyle-Wrap="true" AutoGenerateSelectButton="True"  DataKeyNames="OFOCode" PagerSettings-PageButtonCount="10" PageSize="25" >
           
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="OFOCode" HeaderText="OFO Code" SortExpression="OFOCode"  HeaderStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10%">

                </asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ItemStyle-Width="85%"  >

                </asp:BoundField>
               
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="Black" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"  Font-Size="17px" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

        <asp:GridView  OnSelectedIndexChanging="SelectButton"  OnPageIndexChanging="GridView2_PageIndexChanging" ID="GridView2" runat="server" ForeColor="#333333" GridLines="None" AllowPaging="False" AllowSorting="True" AutoGenerateColumns="False" CellSpacing="20" CellPadding="20" HeaderStyle-Width="100%" HeaderStyle-Wrap="true" AutoGenerateSelectButton="true"  DataKeyNames="OFOCode"  PageSize="15">
           
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
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
            <FooterStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="Black" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"  Font-Size="17px" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </p>
    <p>&nbsp;</p>
</asp:Content>


