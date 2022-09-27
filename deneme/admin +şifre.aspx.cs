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
    public partial class admin_şifre : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {

                string sorgu = "Insert into Admin (KullaniciAdi,Sifre) Values(@kullanicia, @sifrea)";

                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();


                cmd.Parameters.AddWithValue("@kullanicia", TextBox1.Text);
                cmd.Parameters.AddWithValue("@sifrea", TextBox2.Text);

                cmd.ExecuteNonQuery();

                cnn.Close();

            }
        }
    }
}