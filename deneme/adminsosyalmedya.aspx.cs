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
    public partial class adminsosyalmedya : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {

                string sorgu = "Insert into sosyal (uygulama,kadi) Values (@Pt, @Ka)";

                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();


                cmd.Parameters.AddWithValue("@Pt", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Ka", TextBox2.Text);

                cmd.ExecuteNonQuery();

                cnn.Close();

            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {

                string sil = "DELETE FROM sosyal WHERE uygulama=@Pt";
                SqlCommand cmd = new SqlCommand(sil, cnn);
                cnn.Open();
                cmd.Parameters.AddWithValue("@Pt", TextBox1.Text);


                cmd.ExecuteNonQuery();

                cnn.Close();


            }
        }
    }
}