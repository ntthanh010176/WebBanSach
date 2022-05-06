<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="QTSach.aspx.cs" Inherits="WebBanSach.QTSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Quản trị sách</h2>
    <hr />
    <div class="row">
        <div class="col-md-8">
            <div class="form-inline">
                Tên sách <asp:TextBox ID="txtTen" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btTraCuu" runat="server" Text="Tra cứu" CssClass="btn btn-secondary" />
            </div>
        </div>
        <div class="col-md-4 text-right">
            <asp:HyperLink ID="HyperLink1" NavigateUrl="ThemSach.aspx" CssClass="btn btn-info" runat="server">Thêm sách mới</asp:HyperLink>
        </div>
    </div>
    <br />
    <asp:GridView ID="gvSach" Width="100%" runat="server" DataSourceID="dsSach" DataKeyNames="MaSach" AllowPaging="True" PageSize="5" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
               <asp:BoundField DataField="Tensach" HeaderText="Tên sách" /> 
               <asp:ImageField DataImageUrlField="anhbia" DataImageUrlFormatString="~/bia_sach/{0}" ControlStyle-Width="100px" HeaderText="Ảnh bìa">
<ControlStyle Width="100px"></ControlStyle>
               </asp:ImageField>
               <asp:BoundField DataField="dongia" HeaderText="Đơn giá" DataFormatString="{0:#,##0} đồng" />
               <asp:BoundField DataField="NgayCapNhat" HeaderText="Ngày cập nhật" DataFormatString="{0:dd/MM/yyyy}" />
               <asp:TemplateField>
                   <ItemTemplate>
                       <asp:Button ID="Button1" runat="server" CommandName="Delete" OnClientClick="return confirm('Bạn có muốn xoá sách?')" CssClass="btn btn-warning" Text="Xoá" />    
                   </ItemTemplate>
               </asp:TemplateField>
         </Columns>
         <EditRowStyle BackColor="#7C6F57" />
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#E3EAEB" />
         <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F8FAFA" />
         <SortedAscendingHeaderStyle BackColor="#246B61" />
         <SortedDescendingCellStyle BackColor="#D4DFE1" />
         <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>

    <asp:SqlDataSource ID="dsSach" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" DeleteCommand="DELETE FROM [Sach] WHERE [MaSach] = @MaSach" InsertCommand="INSERT INTO [Sach] ([TenSach], [MaCD], [MaNXB], [Dongia], [AnhBia], [Ngaycapnhat], [Soluotxem]) VALUES (@TenSach, @MaCD, @MaNXB, @Dongia, @AnhBia, @Ngaycapnhat, @Soluotxem)" SelectCommand="SELECT * FROM [Sach] WHERE ([TenSach] LIKE '%' + @TenSach + '%')" UpdateCommand="UPDATE [Sach] SET [TenSach] = @TenSach, [MaCD] = @MaCD, [MaNXB] = @MaNXB, [Dongia] = @Dongia, [AnhBia] = @AnhBia, [Ngaycapnhat] = @Ngaycapnhat, [Soluotxem] = @Soluotxem WHERE [MaSach] = @MaSach">
        <DeleteParameters>
            <asp:Parameter Name="MaSach" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenSach" Type="String" />
            <asp:Parameter Name="MaCD" Type="Int32" />
            <asp:Parameter Name="MaNXB" Type="Int32" />
            <asp:Parameter Name="Dongia" Type="Decimal" />
            <asp:Parameter Name="AnhBia" Type="String" />
            <asp:Parameter Name="Ngaycapnhat" Type="DateTime" />
            <asp:Parameter Name="Soluotxem" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtTen" DefaultValue=" " Name="TenSach" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSach" Type="String" />
            <asp:Parameter Name="MaCD" Type="Int32" />
            <asp:Parameter Name="MaNXB" Type="Int32" />
            <asp:Parameter Name="Dongia" Type="Decimal" />
            <asp:Parameter Name="AnhBia" Type="String" />
            <asp:Parameter Name="Ngaycapnhat" Type="DateTime" />
            <asp:Parameter Name="Soluotxem" Type="Int32" />
            <asp:Parameter Name="MaSach" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
