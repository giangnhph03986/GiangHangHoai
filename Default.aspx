<%@ Page Title="Giang Hằng Hoài Mobile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <!--<h1><%: Title %>.</h1>-->
            </hgroup>
            <asp:Image ImageUrl="~/Images/iphone6.jpg" runat="server" CssClass="" />
        </div>
    </section>
</asp:Content>