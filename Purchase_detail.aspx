<%@ Page Title="Chi tiết đơn hàng" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Purchase_detail.aspx.cs" Inherits="Purchase_detail" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
            </hgroup>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="purchase_ID" HeaderText="purchase_ID" SortExpression="purchase_ID" />
                    <asp:BoundField DataField="product_ID" HeaderText="product_ID" SortExpression="product_ID" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INF205_GIANGNHPH03986_ASSConnectionString %>" SelectCommand="SELECT [purchase_ID], [product_ID], [amount] FROM [purchase_detail]"></asp:SqlDataSource>
        </div>
    </section>
</asp:Content>