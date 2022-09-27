using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace deneme
{
    public partial class Kaydol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            pnlDurum.Visible = false;

        }

        

        protected void btnKayit_Click1(object sender, EventArgs e)
        {
            if (txtkullaniciAdi.Text != "" && txtSifre.Text != "")
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
                string sorgu = "Insert into Kullanicilar (KullaniciAdi,Sifre) Values(@kullaniciadi, @sifre)";

                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();

                try
                {
                    cmd.Parameters.AddWithValue("@kullaniciadi", txtkullaniciAdi.Text);
                    cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

                    cmd.ExecuteNonQuery();

                    cnn.Close();

                    
                    pnlKayit.Visible = false;
                    pnlDurum.Visible = true;

                    Session.Add("kullaniciadi", txtkullaniciAdi.Text);
                    lblDurum.Text = "Başarıyla kayıt yapılmıştır";
                }
                catch (Exception)
                {
                    lblSonuc.Text = "Kaydınız yapılamamıştır";

                }
            }
            else
            {
                lblSonuc.Text = "Boş alanları doldurmanız gerekmektedir.";
            }

        }
    }
}