<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin girişi.aspx.cs" Inherits="deneme.admin_girişi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kaydol</title>

    <link href="/stil.css" rel="stylesheet" />
    <style type="text/css">
        .btnArama {}
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div style="width:285px; margin: 0 auto; margin-top:50px; ">



            <div class="sol-taraf">

                <asp:Panel ID="pnlKayit" runat="server">

                    <div class="hizli-kayit">
                        <div class="üst">
                            Admin Giriş
                        </div>
                        <div class="alt">
                            <div class="kullanici">

                                <span>Admin ID</span>
                                <asp:TextBox ID="txtkullaniciAdi" CssClass="textbox" runat="server" />
                            </div>
                            <div class="sifre">
                                <span>Şifre</span>
                                <asp:TextBox ID="txtSifre" CssClass="textbox" runat="server" TextMode="Password" />

                            </div>
                            
                            <asp:Button ID="btnArama" CssClass="btnAdminG" Text="Giriş Yap" runat="server" OnClick="btnArama_Click" Height="36px" Width="76px" />

                        </div>

                        <asp:Label ID="lblSonuc" runat="server" Text="" />

                    </div>

                </asp:Panel>

                

                    

                </div>
            </div>
    
    </form>
</body>
</html>
