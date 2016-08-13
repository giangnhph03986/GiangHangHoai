<%@ Page Title="Liên hệ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <section class="contact">
        <p>Số điện thoại: 04 7305 9886</p>
        <p>
            Địa chỉ: Đường Hàm Nghi, khu đô thị Mỹ Đình 1, Phường Mỹ Đình 2, Nam Từ Liêm, Hà Nội, 100000, Việt Nam
        </p>

        <form action="" method="get">
            <table width="642" height="309" border="0">
                <tr>
                    <td width="30%">Họ tên:</td>
                    <td width="70%"><input name="hoten" type="text" id="hoten" size="35" max="35" required="required" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input name="email" type="text" id="email" size="35" required="required" /></td>
                </tr>
                <tr>
                    <td>Nội dung:</td>
                    <td><textarea name="noidung" id="noidung" cols="40" rows="8"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2"><button>Gửi</button> <button type="reset">Nhập lại</button></td>
                </tr>
            </table>
        </form>
    </section>
    <section>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9642194853395!2d105.76313076643449!3d21.034117622878984!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x53cefc99d6b0bf6f!2zQ2FvIMSR4bqzbmcgdGjhu7FjIGjDoG5oIEZQVCBQb2x5dGVjaG5pYw!5e0!3m2!1svi!2s!4v1471087855279" width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
    </section>
</asp:Content>
