<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OfoTest2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-contact100">
		<div class="wrap-contact100">
				<span class="contact100-form-title">
					Contact
				</span>

				<div class="wrap-input100 validate-input" data-validate="Please enter your first name">
					<input class="input100" type="text" name="fname" placeholder="First Name" required="required">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input" data-validate="Please enter your name">
					<input class="input100" type="text" name="sname" placeholder="Surname" required="required">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input" data-validate="Please enter your role/position">
					<input class="input100" type="text" name="role" placeholder="Role/Position" required="required">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input" data-validate="Please enter your Company">
					<input class="input100" type="text" name="company" placeholder="Company" required="required">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Please enter your email: e@a.x">
					<input class="input100" type="text" name="email" placeholder="E-mail" required="required">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Please Select a SETA">					
                     <select class="wrap-input100" name="seta">
                        <option class="wrap-input100" value="default">Select a SETA</option>
                        <option class="wrap-input100" value="AGRISETA">AGRISETA</option>
                        <option class="wrap-input100" value="BANKSETA">BANKSETA</option>
                        <option class="wrap-input100" value="CETA">CETA (Construction SETA)</option>
                        <option class="wrap-input100" value="CATHSETA">CATHSETA (Culture Arts, Tourism, Hospitality and Sports SETA)</option>
                        <option class="wrap-input100" value="CHIETA">CHIETA (Chemical Industries SETA)</option>
                        <option class="wrap-input100" value="EWSETA">EWSETA (Energy and Water SETA)</option>
                        <option class="wrap-input100" value="ETDPSETA">ETDPSETA (Education Training and Development Practices SETA)</option>
                        <option class="wrap-input100" value="FPMSETA">FPMSETA (Fibre, Processing & Manufacturing SETA)</option>
                        <option class="wrap-input100" value="FOODBEV">FOODBEV (Food and Beverage Manufacturing Industry SETA)</option>
                        <option class="wrap-input100" value="FASSET">FASSET SETA (Financial and Accounting Services SETA)</option>
                        <option class="wrap-input100" value="HWSETA">HWSETA (Health and Welfare SETA)</option>
                        <option class="wrap-input100" value="INSETA">INSETA (Insurance SETA)</option>
                        <option class="wrap-input100" value="LGSETA">LGSETA (Local Government SETA)</option>
                        <option class="wrap-input100" value="MERSETA">MERSETA (Manufacturing, Engineering and Related Services SETA)</option>
                        <option class="wrap-input100" value="MICTSETA">MICTSETA (Media, Advertising, Information and Communication Technologies SETA)</option>
                        <option class="wrap-input100" value="MQASETA">MQASETA (Mining Qualifications Authority SETA)</option>
                        <option class="wrap-input100" value="PSETA">PSETA (Public Service SETA)</option>
                        <option class="wrap-input100" value="SASSETA">SASSETA (Safety and Security SETA)</option>
                        <option class="wrap-input100" value="SERVICES SETA">SERVICES SETA</option>
                        <option class="wrap-input100" value="TETA">TETA (Transport SETA)</option>
                        <option class="wrap-input100" value="W&RSETA">W&RSETA (Wholesale and Retail SETA)</option>
                      </select>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Please enter your message">
					<textarea class="input100" name="message" placeholder="Your Message" required="required"></textarea>
					<span class="focus-input100"></span>
				</div>


				<div class="container-contact100-form-btn">	
                  <asp:Button class="contact100-form-btn" ID="Submit" runat="server" Text="Submit" onclick="Button1_Click" />  							
				   <asp:Label ID="returntohometext" runat="server" Text="Thank you for your submission. Click below to Return to the Homepage " Visible="false"></asp:Label><br />
                   <asp:Button  class="contact100-form-btn"  ID="returntohome" runat="server" OnClick="RetToHome" Text="Return to Homepage" Visible="false" />
                </div>
			
		</div>
	</div>
</asp:Content>
