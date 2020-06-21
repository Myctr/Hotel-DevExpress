<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kayit.aspx.cs" Inherits="HotelDevExpress.Kayit" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Kayıt Ol!</title>
</head>

<body style="background-image:url(/resimler/sahil.jpg)">

    <form id="form1" runat="server">
        <div>           
            <table>
                <tr>
                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="*Adınızı Giriniz" Theme="Office365" ForeColor="White"></dx:ASPxLabel>
                    <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px" Theme="Office365"></dx:ASPxTextBox>
                </tr>
                <tr>
                    <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="*Soyadınızı Giriniz" Theme="Office365" ForeColor="White"></dx:ASPxLabel>
                    <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Width="170px" Theme="Office365"></dx:ASPxTextBox>
                </tr>
                <tr>
                    <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="*Mail Adresinizi Giriniz" Theme="Office365" ForeColor="White"></dx:ASPxLabel>
                    <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" Width="170px" Theme="Office365"></dx:ASPxTextBox>
                </tr>
                <tr>
                <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Doğum Tarihinizi Giriniz" Theme="Office365" ForeColor="White"></dx:ASPxLabel>
                <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" Theme="Office365"></dx:ASPxDateEdit>
                </tr>
                <tr>   
                    <br />
                    <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server" Theme="Office365" ForeColor="White">
                        <Items>
                            <dx:ListEditItem Text="Erkek" Value="Erkek" />
                            <dx:ListEditItem Text="Kadın" Value="Kadın" />
                        </Items>
                    </dx:ASPxRadioButtonList>
                </tr>
                <tr>
                    <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="*Telefon Numaranızı Giriniz" Theme="Office365" ForeColor="White"></dx:ASPxLabel>
                    <dx:ASPxTextBox ID="ASPxTextBox4" runat="server" Width="170px" MaxLength="11"></dx:ASPxTextBox>
                </tr>
                <tr>
                    <br />
                    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Kaydet" Theme="Office365" OnClick="ASPxButton1_Click"></dx:ASPxButton>
                </tr>
                <tr>
                    <br />
                    <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="" Theme="Office365" ForeColor="Red"></dx:ASPxLabel>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
