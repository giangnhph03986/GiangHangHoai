<%@ Page Title="Sản phẩm" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper" style="background-color:#ff6a00">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
            </hgroup>
           
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="500px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="product_ID" DataSourceID="SqlDataSource1">
                    <Fields>
                        <asp:BoundField DataField="product_ID" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="product_ID" />
                        <asp:BoundField DataField="name" HeaderText="Tên sản phẩm" SortExpression="name" />
                        <asp:BoundField DataField="price" HeaderText="Giá" SortExpression="price" />
                        <asp:BoundField DataField="description" HeaderText="Mô tả" SortExpression="description" />
                        <asp:ImageField DataImageUrlField="img" ControlStyle-CssClass="product-small-image"></asp:ImageField>
                        <asp:BoundField DataField="cate_ID" HeaderText="Mã loại SP" SortExpression="cate_ID" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INF205_GIANGNHPH03986_ASSConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [product_ID] = @product_ID" InsertCommand="INSERT INTO [product] ([product_ID], [name], [price], [description], [img], [cate_ID]) VALUES (@product_ID, @name, @price, @description, @img, @cate_ID)" SelectCommand="SELECT [product_ID], [name], [price], [description], [img], [cate_ID] FROM [product]" UpdateCommand="UPDATE [product] SET [name] = @name, [price] = @price, [description] = @description, [img] = @img, [cate_ID] = @cate_ID WHERE [product_ID] = @product_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="product_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="product_ID" Type="Int32" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="img" Type="String" />
                        <asp:Parameter Name="cate_ID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="img" Type="String" />
                        <asp:Parameter Name="cate_ID" Type="Int32" />
                        <asp:Parameter Name="product_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
          




        </div>
    </section>
</asp:Content>