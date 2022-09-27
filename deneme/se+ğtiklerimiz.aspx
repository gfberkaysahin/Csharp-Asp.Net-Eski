<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="seçtiklerimiz.aspx.cs" Inherits="deneme.seçtiklerimiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID ="lstSecilen" runat ="server" >
                            <ItemTemplate>
                                <div class="secilen-wrap">
                                    <asp:Label Text='<%#Eval("seçilen") %>' runat="server" /><br />
                                    

                                </div>

                            </ItemTemplate>
                        </asp:ListView>
</asp:Content>
