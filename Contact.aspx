<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your contact page.</h2>
    </hgroup>

    <section class="contact">
       	<form action="" method="get">
 	  <table width="642" height="309" border="0">
 	    <tr>
     <td width="278" height="24"><p>Họ & Tên</p></td>
    <td width="354">
      <input name="hoten" type="text" id="hoten" size="35" max="35" required="required" /></td>
  </tr>
  <tr>
     <td height="26"><p>Mật khẩu:</p></td>
    <td> <input name="matkhau" type="password" id="password" size="35"  required="required" /></td>
  </tr>
  <tr>
   <td height="27"><p>Email:</p></td>
    <td> <input name="email" type="text" id="email" size="35"   required="required"/></td>
  </tr>
  <tr>
   <td height="24"><p>Tỉnh thành :</p></td>
    <td><select name="tinhthanh">
      <option>"nhập tỉnh thành....."</option>
      <option id="H"> Hà Nội</option>
      <option id="Đ"> Huế</option>
      <option id="T"> TPHCM</option>
      </select>
    </td>
    
  </tr>

  <tr>
  <td height="140"><p>Nội Dung:</p></td>
    <td><label for="noidung"></label>
      <textarea name="noidung" id="noidung" cols="40" rows="8"></textarea></td>
  </tr>
  <tr>
    <td><p> <input type="submit" name="nhập vào " id="nhập vào " value="Nhâp vào" onclick="return checkform()" /></p></td>
  </tr>
 
</table>

    </form>
    <section class="contact">
      
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.96301807789!2d105.80194392195179!3d21.022773135625275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSMOgIE7hu5lpLCBIb8OgbiBLaeG6v20sIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1471058371501" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </p>
    </section>
</asp:Content>