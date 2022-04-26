<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemSach.aspx.cs" Inherits="WebBanSach.XemSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Xem sách</h2>
    <hr />
    <div class="row">
        <div class="col-md-3">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col-md-9">
            
        </div>

    </div>

</asp:Content>
