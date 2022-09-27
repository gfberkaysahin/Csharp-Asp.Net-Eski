<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kaydol.aspx.cs" Inherits="deneme.Kaydol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kaydol</title>

    <link href="/stil.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div style="width:285px; margin: 0 auto; margin-top:50px; ">



            <div class="sol-taraf">

                <asp:Panel ID="pnlKayit" runat="server">

                    <div class="hizli-kayit">
                        <div class="üst">
                            Hızlı Kayıt Ol
                        </div>
                        <div class="alt">
                            <div class="kullanici">

                                <span>Kullanıcı adı</span>
                                <asp:TextBox ID="txtkullaniciAdi" CssClass="textbox" runat="server" />
                            </div>
                            <div class="sifre">
                                <span>Şifre</span>
                                <asp:TextBox ID="txtSifre" CssClass="textbox" runat="server" TextMode="Password" />

                            </div>
                            <a href="/" class="btnGiris">İptal</a>
                            <asp:Button ID="btnKayit" CssClass="btnKayit" Text="Kaydet" runat="server" OnClick="btnKayit_Click1" />
                            <asp:Label ID="lblSonuc" Text="" runat="server" />

                        </div>

                    </div>

                </asp:Panel>

                <asp:Panel ID="pnlDurum" runat="server" style="background-color:#fff; padding:10px;">
                    <asp:Label ID="lblDurum" Text="" runat="server" />
                    <br />
                    <a href="/">Canlı Dinleye git</a>

                </asp:Panel>

                    

                </div>
            </div>
    
    </form>
</body>
</html>
