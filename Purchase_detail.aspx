<%@ Page Title="Chi tiết đơn hàng" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Purchase_detail.aspx.cs" Inherits="Purchase_detail" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
            </hgroup>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="500px" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="purchase_ID" HeaderText="ID đơn hàng" SortExpression="purchase_ID" />
                    <asp:BoundField DataField="product_ID" HeaderText="ID Sản phẩm" SortExpression="product_ID" />
                    <asp:BoundField DataField="amount" HeaderText="Số lượng" SortExpression="amount" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INF205_GIANGNHPH03986_ASSConnectionString %>" SelectCommand="SELECT [purchase_ID], [product_ID], [amount] FROM [purchase_detail]" UpdateCommand="UPDATE [purchase_detail] SET [product_ID]=@product_ID, [amount]=@amount WHERE [purchase_ID] = @purchase_ID" DeleteCommand="DELETE FROM [purchase_detail] WHERE [purchase_ID] = purchase_ID" InsertCommand="INSERT INTO [purchase_detail] ([purchase_ID], [product_ID], [amount]) VALUES (@purchase_ID, @product_ID, @amount)"></asp:SqlDataSource>
        </div>
    </section>
</asp:Content>