<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="yayıncı bilgileri.aspx.cs" Inherits="deneme.yayıncı_bilgileri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID ="lstYayinci" runat ="server" >
                            <ItemTemplate>
                                <div class="yayinci-wrap">
                                    <asp:Label Text='<%#Eval("Yayıncı Adı") %>' runat="server" /><br />
                                    <asp:Label Text='<%#Eval("Yayın Türü") %>' runat="server" /><br />
                                    <asp:Label Text='<%#Eval("Yayın Saati") %>' runat="server" />

                                </div>

                            </ItemTemplate>
                        </asp:ListView>
</asp:Content>
