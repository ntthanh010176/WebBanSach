<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemSach.aspx.cs" Inherits="WebBanSach.XemSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Xem sách</h2>
    <hr />
    <div class="row">
        <div class="col-md-3">
         <div class="list-group">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                        <a href="#" class="list-group-item list-group-item-action">First item</a>                                   
                </ItemTemplate>
            </asp:Repeater>
         </div>
        </div>
        <div class="col-md-9">
            <asp:ListView ID="lvSach" runat="server"></asp:ListView>
        </div>

    </div>
    <asp:SqlDataSource ID="dsChuDe" runat="server"></asp:SqlDataSource>
</asp:Content>
