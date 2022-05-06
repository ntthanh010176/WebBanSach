<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemSach.aspx.cs" Inherits="WebBanSach.XemSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Xem sách</h2>
    <hr />
    <div class="row">
        <div class="col-md-3">
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action active">Chủ đề sách</a>
                <asp:Repeater ID="rptChuDe" runat="server" DataSourceID="dsChuDe">
                    <ItemTemplate>
                        <a href='<%# Eval("MaCD","XemSach.aspx?MaCD={0}") %>' class="list-group-item list-group-item-action"><%# Eval("Tenchude") %></a>
                    </ItemTemplate>
                </asp:Repeater>    
            </div>
        </div>
        <div class="col-md-9">
            <asp:ListView ID="lvSach" runat="server" DataSourceID="dsSach">
                <LayoutTemplate>
                     <div class="row">
                         <div runat="server" id="itemPlaceholder"></div>
                     </div>
                </LayoutTemplate>
                <ItemTemplate>
                     <div class="col-md-3 text-center" style="padding:20px">
                         <asp:Image ID="Image1" Width="100%" ImageUrl='<%# Eval("anhbia","~/bia_sach/{0}") %>' runat="server" /> <br /> <br />
                         <asp:Button ID="Button1" runat="server" Text="Đặt mua" CssClass="btn btn-success" /> <br />
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tensach") %>'></asp:Label> <br />
                         Giá bán: <asp:Label ID="Label2" runat="server" ForeColor="#cc3300" Text='<%# Eval("dongia","{0:#,##0} đồng") %>'></asp:Label> <br />
                     </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>

    <asp:SqlDataSource ID="dsChuDe" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT * FROM [ChuDe]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSach" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT * FROM [Sach] WHERE ([MaCD] = @MaCD)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="5" Name="MaCD" QueryStringField="MaCD" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
