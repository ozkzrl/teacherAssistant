<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="teacherAssistant._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style4 {
        text-align: center;
        font-size: large;
            color: #000099;
            text-decoration: underline;
        }
    .auto-style5 {
        border-style: solid;
        border-width: 1px;
    }
        .auto-style7 {
            background-color: #000099;
        }
        .auto-style8 {
            font-size: small;
            text-align: right;
            border-style: solid;
            border-width: 1px;
            color: #000099;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="46px">
    <div class="auto-style4">
        <strong>ÖĞRENCİ BİLGİLERİ GİRİŞ</strong></div>
</asp:Panel>
<asp:Panel ID="Panel2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8" style="background-color: #C0C0C0">Eğitim Yılı</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="125px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:TextBox ID="TextBox13" runat="server" Visible="False" Width="16px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Doğum Yeri</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Veli Tel</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox8" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Yeni Kayıt" Width="150px" CssClass="auto-style7" style="color: #FFFFFF" OnClick="Button1_Click" BackColor="#000099" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8" style="background-color: #C0C0C0">Öğrenci Adı</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Doğum&nbsp; Tarihi</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged" TextMode="Date" ></asp:TextBox>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Veli E-Posta</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox11" runat="server" AutoPostBack="True" OnTextChanged="TextBox11_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Kayıt Güncelle " Width="150px" CssClass="auto-style7" style="color: #FFFFFF" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8" style="background-color: #C0C0C0">Öğrenci Soyadı</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Dersin Yapıldığı Okul</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:DropDownList ID="DropDownList4" runat="server" Width="175px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Öğrenci Vatandaşlık</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:DropDownList ID="DropDownList9" runat="server" Width="75px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Kayıt Sil" Width="150px" CssClass="auto-style7" style="color: #FFFFFF" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8" style="background-color: #C0C0C0">Cinsiyet</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="125px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Kayıtlı Bulunulan Okul</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:DropDownList ID="DropDownList5" runat="server" Width="175px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Öğretmen Adı Soyadı</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox9" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text=" Kayıt Göster" Width="150px" CssClass="auto-style7" style="color: #FFFFFF" OnClick="Button4_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8" style="background-color: #C0C0C0">Baba Adı</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Alman Sınıfı</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:DropDownList ID="DropDownList10" runat="server" Width="75px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Öğretmen Kimlik No</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox10" runat="server" AutoPostBack="True" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" style="background-color: #C0C0C0">Anne Adı</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Türk Sınıfı</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:DropDownList ID="DropDownList7" runat="server" Width="75px" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Öğrencinin Adresi</td>
            <td class="auto-style5" rowspan="2" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox12" runat="server" Height="62px" AutoPostBack="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" style="background-color: #C0C0C0">Ders Günü<br /> </td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:DropDownList ID="DropDownList3" runat="server" Width="150px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">Velinin Adı Soyadı</td>
            <td class="auto-style5" style="background-color: #C0C0C0">
                <asp:TextBox ID="TextBox7" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style8" style="background-color: #C0C0C0">
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="Panel3" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Kayıt Numarası" InsertVisible="False" ReadOnly="True" SortExpression="id" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="EgitimYili" HeaderText="Eğitim Yılı" SortExpression="EgitimYili" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="OgrAd" HeaderText="Öğrenci Adı" SortExpression="OgrAd" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="OgrSoyad" HeaderText="Öğrenci Soyadı" SortExpression="OgrSoyad" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="BabaAd" HeaderText="Baba Adı" SortExpression="BabaAd" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="AnneAd" HeaderText="Anne Adı" SortExpression="AnneAd" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="DersGunu" HeaderText="Ders Günü" SortExpression="DersGunu" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="DogumYeri" HeaderText="Doğum Yeri" SortExpression="DogumYeri" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="DogumTarihi" HeaderText="Doğum Tarihi" SortExpression="DogumTarihi" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="OgrDersYapOkul" HeaderText="Ders Yapılan Okul" SortExpression="OgrDersYapOkul" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="OgrKayitliOkul" HeaderText="Öğrencinin Kayıtlı Okulu" SortExpression="OgrKayitliOkul" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="AlmanSinifi" HeaderText="Alman Sınıfı" SortExpression="AlmanSinifi" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="TurkSinifi" HeaderText="Türk Sınıfı" SortExpression="TurkSinifi" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="VeliAdSoyad" HeaderText="Veli Ad-Soyad" SortExpression="VeliAdSoyad" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="VeliTel" HeaderText="Veli Telefon" SortExpression="VeliTel" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="VeliEmail" HeaderText="Veli E-Posta" SortExpression="VeliEmail" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="OgrVatandaslik" HeaderText="Öğrenci Vatandaşlık" SortExpression="OgrVatandaslik" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="OgrAdres" HeaderText="Öğrenci Adres" SortExpression="OgrAdres" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="OgrtAdSoyad" HeaderText="Öğretmen Ad-Soyad" SortExpression="OgrtAdSoyad" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="OgrtKimlikNo" HeaderText="Öğretmen Kimlik Numarası" SortExpression="OgrtKimlikNo" >
            <HeaderStyle Font-Size="Small" />
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <br />
    <br />
</asp:Panel>
<p>
</p>
</asp:Content>
