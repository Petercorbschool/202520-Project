﻿<%@ Page Title="Landing Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="quiz.LandingPage" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="cphNavBar" runat="server">
    <link href="/Content/LandingPage.css" rel="stylesheet" type="text/css"/>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMainBody" runat="server">  
    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="landingPageTitle">Landing Page</h1>
            <table align="center">
                <tr>
                    <td>Term: <asp:Label ID="TermLabel" runat="server" /></td>
                </tr>
                <tr>
                    <td>User: <input type="text" placeholder="A########"/></td>
                </tr>
                <tr>
                    <td>Time: <asp:Label ID="TimeLabel" runat="server" /></td>
                </tr>
                <tr align="center">
                    <td>
                        <asp:Button ID="StartButton" runat="server" CssClass="start-button" Text="Start" OnClick="StartButton_Click" />
                    </td>
                </tr>
            </table>
        </section>
    </main>
</asp:Content>
