﻿<%@ Page Title="Tài khoản" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Account" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
            </hgroup>
            
           
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="username" DataSourceID="SqlDataSource1">
                    <Fields>
                        <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INF205_GIANGNHPH03986_ASSConnectionString2 %>" DeleteCommand="DELETE FROM [account] WHERE [username] = @username" InsertCommand="INSERT INTO [account] ([username], [password], [email], [address], [full_name], [phone]) VALUES (@username, @password, @email, @address, @full_name, @phone)" SelectCommand="SELECT [username], [password], [email], [address], [full_name], [phone] FROM [account]" UpdateCommand="UPDATE [account] SET [password] = @password, [email] = @email, [address] = @address, [full_name] = @full_name, [phone] = @phone WHERE [username] = @username">
                    <DeleteParameters>
                        <asp:Parameter Name="username" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="full_name" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="full_name" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>






        </div>
    </section>
</asp:Content>
