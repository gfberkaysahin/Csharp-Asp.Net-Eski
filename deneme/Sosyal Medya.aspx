<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Sosyal Medya.aspx.cs" Inherits="deneme.Sosyal_Medya" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:ListView ID ="lstSosyal" runat ="server" >
                            <ItemTemplate>
                                <div class="sosyal-wrap">
                                    <asp:Label Text='<%#Eval("uygulama") %>' runat="server" /><br />
                                    <asp:Label Text='<%#Eval("kadi") %>' runat="server" />

                                </div>

                            </ItemTemplate>
                        </asp:ListView>
    
    
    
    
    
    <p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
    
    
    
    
    
    
    
</asp:Content>
