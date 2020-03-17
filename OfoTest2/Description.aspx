<%@ Page Title="Description Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Description.aspx.cs" Inherits="OfoTest2.Description" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


<div class="container-contact100">
		<div class="wrap-contact100">
				<span class="contact100-form-title">
					Description Search
				</span>
                
                <span class="contact100-form-small">
					Major Group
				</span>
                <div class="wrap-input100 validate-input" data-validate = "Please Select a Major Group">					                 
                    <asp:DropDownList class="wrap-input100" ID="DropDownList1" runat="server" AutoPostBack = "true" OnSelectedIndexChanged = "DropDownList1_OnSelectedIndexChanged" ></asp:DropDownList>                 
				</div>

                 <span class="contact100-form-small">
					Sub Major Group
				</span>
                <div class="wrap-input100 validate-input" data-validate = "Please Select a Sub Major Group">					                 
                    <asp:DropDownList class="wrap-input100" ID="DropDownList2" runat="server" AutoPostBack = "true" OnSelectedIndexChanged = "DropDownList2_OnSelectedIndexChanged" ></asp:DropDownList>                 
				</div>

                 <span class="contact100-form-small">
					Minor Group
				</span>
                <div class="wrap-input100 validate-input" data-validate = "Please Select a Minor Group">					                 
                    <asp:DropDownList class="wrap-input100" ID="DropDownList3" runat="server" AutoPostBack = "true"></asp:DropDownList>                 
				</div>

            
                <div class="wrap-input100 validate-input" data-validate = "Please enter your Search Keywords">
					<textarea class="input100" name="description" placeholder="Search Description" required="required"></textarea>
					<span class="focus-input100"></span>
				</div>

            	<div class="container-contact100-form-btn">	
                  <asp:Button class="contact100-form-btn" ID="Submit" runat="server" Text="Search" onclick="Button1_Click" />  							
			    </div>
			
		</div>
	</div>
      
       <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
     
 
    <div>  
    <p>
        <asp:GridView OnSelectedIndexChanging="SelectButton" AutoGenerateSelectButton="true" DataKeyNames="OFOCode" OnPageIndexChanging="GridView1_PageIndexChanging" ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="False" AllowSorting="True" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="RANK" HeaderText="RANK" SortExpression="RANK" Visible="false"/>
                <asp:BoundField DataField="OFOCode" HeaderText="OFOCode" SortExpression="OFOCode" />
                <asp:BoundField DataField="Occupations" HeaderText="Occupations" SortExpression="Occupations" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="MajorGroups" HeaderText="MajorGroups" SortExpression="MajorGroups" />
                <asp:BoundField DataField="SubMajorGroup" HeaderText="SubMajorGroup" SortExpression="SubMajorGroup" />
                <asp:BoundField DataField="MinorGroups" HeaderText="MinorGroups" SortExpression="MinorGroups" />
                <asp:BoundField DataField="UnitGroups" HeaderText="UnitGroups" SortExpression="UnitGroups" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" Visible="false"/>
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
    </p>
    </div>
</asp:Content>
