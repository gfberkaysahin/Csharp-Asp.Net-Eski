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
    public partial class adminseçtiklerimiz : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {

                string sorgu = "Insert into seçtiklerimiz (seçilen) Values(@Sç)";

                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();


                cmd.Parameters.AddWithValue("@Sç", TextBox1.Text);
                

                cmd.ExecuteNonQuery();

                cnn.Close();

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {

                string sil = "DELETE FROM seçtiklerimiz WHERE seçilen=@Sç";
                SqlCommand cmd = new SqlCommand(sil, cnn);
                cnn.Open();
                cmd.Parameters.AddWithValue("@Sç", TextBox1.Text);


                cmd.ExecuteNonQuery();

                cnn.Close();


            }
        }
    }
}