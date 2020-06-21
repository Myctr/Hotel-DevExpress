<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="HotelDevExpress.Admin" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="MID" Theme="Office365">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                <Columns>
                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="MID" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="AD" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SOYAD" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MAIL" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TARIH" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CINSIYET" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TELEFON" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDxDBConnectionString %>" SelectCommand="SELECT [MID], [AD], [SOYAD], [MAIL], [TARIH], [CINSIYET], [TELEFON] FROM [TBLMUSTERI]" DeleteCommand="DELETE FROM TBLMUSTERI WHERE MID=@MID" InsertCommand="insert into TBLMUSTERI (AD,SOYAD,MAIL,TARIH,CINSIYET,TELEFON) VALUES (@AD,@SOYAD,@MAIL,@TARIH,@CINSIYET,@TELEFON)" UpdateCommand="UPDATE TBLMUSTERI SET AD=@AD,SOYAD=@SOYAD,MAIL=@MAIL,TARIH=@TARIH,CINSIYET=@CINSIYET,TELEFON=@TELEFON WHERE MID=@MID">
                <DeleteParameters>
                    <asp:Parameter Name="MID" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AD" />
                    <asp:Parameter Name="SOYAD" />
                    <asp:Parameter Name="MAIL" />
                    <asp:Parameter Name="TARIH" />
                    <asp:Parameter Name="CINSIYET" />
                    <asp:Parameter Name="TELEFON" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AD" />
                    <asp:Parameter Name="SOYAD" />
                    <asp:Parameter Name="MAIL" />
                    <asp:Parameter Name="TARIH" />
                    <asp:Parameter Name="CINSIYET" />
                    <asp:Parameter Name="TELEFON" />
                    <asp:Parameter Name="MID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
