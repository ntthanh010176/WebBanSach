<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ThemSach.aspx.cs" Inherits="WebBanSach.ThemSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table cellpadding="5" cellspacing="0" class="w-100">
        <tr>
            <td style="width: 329px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 329px" class="text-right">Tên sách</td>
            <td>
                <asp:TextBox ID="txtTen" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 329px" class="text-right">Giá bán</td>
            <td>
                <asp:TextBox ID="txtGia" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 329px" class="text-right">Ảnh bìa</td>
            <td>
                <asp:FileUpload ID="FAnhBia" runat="server" /></td>
        </tr>
        <tr>
            <td style="width: 329px" class="text-right">Chủ đề</td>
            <td>
                <asp:DropDownList ID="dlChuDe" CssClass="form-control" runat="server" DataSourceID="dsChuDe" DataTextField="Tenchude" DataValueField="MaCD">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 329px" class="text-right">Nhà xuất bản</td>
            <td>
                <asp:DropDownList ID="dlNXB" CssClass="form-control" runat="server" DataSourceID="dsNXB" DataTextField="TenNXB" DataValueField="MaNXB">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 329px" class="text-right">Ngày cập nhật</td>
            <td>
                <asp:TextBox ID="txtNgayCapNhat" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 329px">&nbsp;</td>
            <td>
                <asp:Button ID="btThem" runat="server" Text="Thêm" />
            </td>
        </tr>
        <tr>
            <td style="width: 329px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
   
    <asp:SqlDataSource ID="dsChuDe" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT * FROM [ChuDe]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsNXB" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT [MaNXB], [TenNXB] FROM [NhaXuatBan]"></asp:SqlDataSource>
</asp:Content>
