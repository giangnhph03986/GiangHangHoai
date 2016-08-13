<%@ Page Title="Loại sản phẩm" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
            </hgroup>
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="cate_ID" DataSourceID="SqlDataSource1">
                    <Fields>
                        <asp:BoundField DataField="cate_ID" HeaderText="cate_ID" ReadOnly="True" SortExpression="cate_ID" />
                        <asp:BoundField DataField="cate_name" HeaderText="cate_name" SortExpression="cate_name" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INF205_GIANGNHPH03986_ASSConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [cate_ID] = @cate_ID" InsertCommand="INSERT INTO [category] ([cate_ID], [cate_name]) VALUES (@cate_ID, @cate_name)" SelectCommand="SELECT [cate_ID], [cate_name] FROM [category]" UpdateCommand="UPDATE [category] SET [cate_name] = @cate_name WHERE [cate_ID] = @cate_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="cate_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cate_ID" Type="Int32" />
                        <asp:Parameter Name="cate_name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cate_name" Type="String" />
                        <asp:Parameter Name="cate_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>





        </div>
    </section>
</asp:Content>