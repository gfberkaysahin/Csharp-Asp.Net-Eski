using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme
{
    public partial class admin_girişi : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnArama_Click(object sender, EventArgs e)
        {
            string sorgu = "Select * from Admin where KullaniciAdi =@kullaniciadi AND Sifre =@sifre";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);

            cmd.Parameters.AddWithValue("@kullaniciadi", txtkullaniciAdi.Text);
            cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

            cnn.Open();


            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session.Timeout = 300;
                Session.Add("kullaniciadi", dr["KullaniciAdi"].ToString());
                Response.Redirect("adminyayıncı.aspx");
            }
            else
            {
                lblSonuc.Text = "Kullanıcı adı veya şifre yanlış";
            }


            
            cnn.Close();

        }


    }
}