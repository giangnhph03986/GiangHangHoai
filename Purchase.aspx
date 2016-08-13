<%@ Page Title="Đơn hàng" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="Purchase" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
            </hgroup>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="purchase_ID" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="purchase_ID" HeaderText="purchase_ID" ReadOnly="True" SortExpression="purchase_ID" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INF205_GIANGNHPH03986_ASSConnectionString %>" DeleteCommand="DELETE FROM [purchase] WHERE [purchase_ID] = @purchase_ID" InsertCommand="INSERT INTO [purchase] ([purchase_ID], [username]) VALUES (@purchase_ID, @username)" SelectCommand="SELECT [purchase_ID], [username] FROM [purchase]" UpdateCommand="UPDATE [purchase] SET [username] = @username WHERE [purchase_ID] = @purchase_ID">
                <DeleteParameters>
                    <asp:Parameter Name="purchase_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="purchase_ID" Type="Int32" />
                    <asp:Parameter Name="username" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="purchase_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </section>
</asp:Content>