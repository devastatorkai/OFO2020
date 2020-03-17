<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OfoTest2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
  <div class="jumbotron" style="padding-left:250px">
    <h1 >OFO Code Mapping Tool</h1>
    
  </div>
  
</div>

    <div class="row">
        <div class="col-md-4">
            <h2>Tasks Search</h2>
            <p>
                Use this Section to Search for a Specfic Task for an occupation, this will eventually show a list of Occupations. 
            </p>
            <p>
                <a class="btn btn-default" href="Tasks.aspx">Search &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Occupation & OFO Code Search</h2>
            <p>
               Search for an Occupation using the OFO Code or by entering a Keyword for an Occupation.
            </p>
            <p>
                <a class="btn btn-default" href="Occupations.aspx">Search &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Jobs to Description Search</h2>
            <p>
                Using the Drop down boxes Search using All Levels of the OFO code.
            </p>
            <p>
                <a class="btn btn-default" href="description.aspx">Search &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
