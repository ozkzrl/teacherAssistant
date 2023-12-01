using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace teacherAssistant
{
    public partial class _default : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-UQPST9J;Initial Catalog=teacherAsistant;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            PopulateGridview();
             Gunler();
             almansinifi();
             turksinifi();
             vatandaslik();
             cinsiyet();
             egitimyili();
             okullar();
             okullar1();

        }

        void PopulateGridview()
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "Select * from OgrenciBilgi";
            cmd.ExecuteNonQuery();
            conn.Close();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }
        void Gunler()
        {
            conn.Open();
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = conn;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "Select * from Gunler";
            SqlDataReader dr;
            dr = kmt.ExecuteReader();
            while (dr.Read())
            {
                DropDownList3.Items.Add(dr["gunler"].ToString());

            }
            conn.Close();

        }

        void almansinifi()
        {
            conn.Open();
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = conn;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "Select * from siniflar";
            SqlDataReader dr;
            dr = kmt.ExecuteReader();
            while (dr.Read())
            {
                DropDownList10.Items.Add(dr["Sinif"].ToString());

            }
            conn.Close();

        }

        void turksinifi()
        {

            conn.Open();
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = conn;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "Select * from Siniflar";
            SqlDataReader dr;
            dr = kmt.ExecuteReader();
            while (dr.Read())
            {
                DropDownList7.Items.Add(dr["Sinif"].ToString());

            }
            conn.Close();

        }

        void vatandaslik()
        {

            conn.Open();
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = conn;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "Select * from vatandaslik";
            SqlDataReader dr;
            dr = kmt.ExecuteReader();
            while (dr.Read())
            {
                DropDownList9.Items.Add(dr["vatandaslik"].ToString());

            }
            conn.Close();
        }
        void cinsiyet()
        {   
            conn.Open();
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = conn;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "Select * from cins";
            SqlDataReader dr;
            dr = kmt.ExecuteReader();
            while (dr.Read())
            {
                DropDownList2.Items.Add(dr["cinsiyet"].ToString());

            }
            conn.Close();
        }

        void egitimyili()
        {
            conn.Open();
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = conn;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "Select * from egitimyili";
            SqlDataReader dr;
            dr = kmt.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr["egitimyili"].ToString());

            }
            conn.Close();

        }
        void okullar()
        {
            conn.Open();
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = conn;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "Select * from Okul";
            SqlDataReader dr;
            dr = kmt.ExecuteReader();
            while (dr.Read())
            {
                DropDownList4.Items.Add(dr["Okul"].ToString());

            }
            conn.Close();
        }

        void okullar1()
        {
            conn.Open();
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = conn;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "Select * from Okul";
            SqlDataReader dr;
            dr = kmt.ExecuteReader();
            while (dr.Read())
            {
                DropDownList5.Items.Add(dr["Okul"].ToString());

            }
            conn.Close();

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text=="" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || TextBox8.Text == "" || TextBox9.Text == "" || TextBox10.Text == "" || TextBox11.Text == "" || TextBox12.Text == "" || DropDownList1.SelectedIndex== -1 || DropDownList2.SelectedIndex == -1 || DropDownList3.SelectedIndex == -1 || DropDownList4.SelectedIndex == -1 || DropDownList5.SelectedIndex == -1 || DropDownList10.SelectedIndex == -1 || DropDownList7.SelectedIndex == -1 || DropDownList9.SelectedIndex == -1  )
            {

                Response.Write("<script LANGUAGE='JavaScript' >alert('Boş bırakılan bir alan mevcuttur.')</script>");
            }
            else 
            {
               
                
                    conn.Open();
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = "insert into OgrenciBilgi values (@EgitimYili, @OgrAd, @OgrSoyad, @Cinsiyet, @BabaAd, @AnneAd, @DersGunu, @DogumYeri, @DogumTarihi, @OgrDersYapOkul, @OgrKayitliOkul, @AlmanSinifi, @TurkSinifi, @VeliAdSoyad, @VeliTel, @VeliEmail, @OgrVatandaslik, @OgrAdres, @OgrtAdSoyad, @OgrtKimlikNo)";
                    cmd.Parameters.AddWithValue("EgitimYili", DropDownList1.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("OgrAd", TextBox1.Text);
                    cmd.Parameters.AddWithValue("OgrSoyad", TextBox2.Text);
                    cmd.Parameters.AddWithValue("Cinsiyet", DropDownList2.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("BabaAd", TextBox3.Text);
                    cmd.Parameters.AddWithValue("AnneAd", TextBox4.Text);
                    cmd.Parameters.AddWithValue("DersGunu", DropDownList3.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("DogumYeri", TextBox6.Text);
                    cmd.Parameters.AddWithValue("DogumTarihi", TextBox5.Text);
                    cmd.Parameters.AddWithValue("OgrDersYapOkul", DropDownList4.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("OgrKayitliOkul", DropDownList5.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("AlmanSinifi", DropDownList10.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("Turksinifi", DropDownList7.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("VeliAdSoyad", TextBox7.Text);
                    cmd.Parameters.AddWithValue("VeliTel", TextBox8.Text);
                    cmd.Parameters.AddWithValue("VeliEmail", TextBox11.Text);
                    cmd.Parameters.AddWithValue("OgrVatandaslik", DropDownList9.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("OgrAdres", TextBox12.Text);
                    cmd.Parameters.AddWithValue("OgrtAdSoyad", TextBox9.Text);
                    cmd.Parameters.AddWithValue("OgrtKimlikNo", TextBox10.Text);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    PopulateGridview();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    TextBox12.Text = "";
                DropDownList1.SelectedIndex = 0;
                DropDownList2.SelectedIndex = 0;
                DropDownList3.SelectedIndex = 0;
                DropDownList4.SelectedIndex = 0;
                DropDownList5.SelectedIndex = 0;
                DropDownList10.SelectedIndex = 0;
                DropDownList7.SelectedIndex = 0;
                DropDownList9.SelectedIndex = 0;

                Response.Write("<script LANGUAGE='JavaScript' >alert('Kayıt işlemi gerçekleşmiştir.')</script>");
            }
        }
        



        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            PopulateGridview();
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            TextBox13.Text = HttpUtility.HtmlDecode(row.Cells[1].Text);
            DropDownList1.SelectedValue = HttpUtility.HtmlDecode(row.Cells[2].Text);
            TextBox1.Text = HttpUtility.HtmlDecode(row.Cells[3].Text);
            TextBox2.Text = HttpUtility.HtmlDecode(row.Cells[4].Text);
            DropDownList2.SelectedValue = HttpUtility.HtmlDecode(row.Cells[5].Text);
            TextBox3.Text = HttpUtility.HtmlDecode(row.Cells[6].Text);
            TextBox4.Text = HttpUtility.HtmlDecode(row.Cells[7].Text);
            DropDownList3.SelectedValue = HttpUtility.HtmlDecode(row.Cells[8].Text);
            TextBox6.Text = HttpUtility.HtmlDecode(row.Cells[9].Text);
            TextBox5.Text = HttpUtility.HtmlDecode(row.Cells[10].Text);
            DropDownList4.SelectedValue = HttpUtility.HtmlDecode(row.Cells[11].Text);
            DropDownList5.SelectedValue = HttpUtility.HtmlDecode(row.Cells[12].Text);
            DropDownList10.SelectedValue = HttpUtility.HtmlDecode(row.Cells[13].Text);
            DropDownList7.SelectedValue = HttpUtility.HtmlDecode(row.Cells[14].Text);
            TextBox7.Text = HttpUtility.HtmlDecode(row.Cells[15].Text);
            TextBox8.Text = HttpUtility.HtmlDecode(row.Cells[16].Text);
            TextBox11.Text = HttpUtility.HtmlDecode(row.Cells[17].Text);
            DropDownList9.SelectedValue = HttpUtility.HtmlDecode(row.Cells[18].Text);
            TextBox12.Text = HttpUtility.HtmlDecode(row.Cells[19].Text);
            TextBox9.Text = HttpUtility.HtmlDecode(row.Cells[20].Text);
            TextBox10.Text = HttpUtility.HtmlDecode(row.Cells[21].Text);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();

            string cinsiyet = "";
            if (RadioButton1.Checked == true)
            {
                cinsiyet = RadioButton1.Text;
            }
            else if (RadioButton2.Checked == true)
            {
                cinsiyet = RadioButton2.Text;
            }
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "Update OgrenciBilgi  set EgitimYili='"+ DropDownList1.SelectedValue +"', OgrAd='"+TextBox1.Text+ "', OgrSoyad='" + TextBox2.Text + "', Cinsiyet='" + DropDownList2.SelectedValue + "', BabaAd='" + TextBox3.Text + "', AnneAd='" + TextBox4.Text + "', DersGunu='" + DropDownList3.SelectedValue + "', DogumYeri='" + TextBox6.Text + "', DogumTarihi='" + TextBox5.Text + "', OgrDersYapOkul='" + DropDownList4.SelectedValue + "', OgrKayitliOkul='" + DropDownList5.SelectedValue + "', AlmanSinifi='" + DropDownList10.SelectedValue + "', TurkSinifi='" + DropDownList7.SelectedValue + "', VeliAdSoyad='" + TextBox7.Text + "', VeliTel='" + TextBox8.Text + "', VeliEmail='" + TextBox11.Text + "', OgrVatandaslik='" + DropDownList9.SelectedValue + "', OgrAdres='" + TextBox12.Text + "', OgrtAdSoyad='" + TextBox9.Text + "', OgrtKimlikNo='" + TextBox10.Text + "' where id='"+TextBox13.Text +"'";
            cmd.ExecuteNonQuery();
            conn.Close();
            PopulateGridview();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            DropDownList4.SelectedIndex = 0;
            DropDownList5.SelectedIndex = 0;
            DropDownList10.SelectedIndex = 0;
            DropDownList7.SelectedIndex = 0;
            DropDownList9.SelectedIndex = 0;
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}