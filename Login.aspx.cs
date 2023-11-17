using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ArabaSatışSitesi.Classes;
using System.Data;

namespace ArabaSatışSitesi
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnLogin_Click(object sender, EventArgs e)
        {
			SqlCommand commandLogin = new SqlCommand("Select * from TableUser where UserMail=@pmail and UserPassword=@ppass",SqlConnectionClass.connection);

			SqlConnectionClass.CheckConnection();

			string shaPass=Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

			commandLogin.Parameters.AddWithValue("@pmail", tboxMail.Text);
			commandLogin.Parameters.AddWithValue("@ppass", shaPass);

			DataTable dt = new DataTable();

			SqlDataAdapter da = new SqlDataAdapter(commandLogin);

			da.Fill(dt);        // Boş olan DataTableyi SqlDataAdapter ile doldurur.

			if (dt.Rows.Count>0)			// İçi dolu ise
			{
				if (tboxMail.Text=="furkanyilmaz1771@gmail.com")		// Bu mail ile girilirse admine yönlendirecek.
				{
					Session["IsUserAdmin"] = true;
					Session["UserMail"] = true;
					Response.Redirect("furkanyilmaz1771@gmail.com");
				}
				else
				{
					Session["IsUserOnline"] = true;
					Session["UserMail"] = dt.Rows[0].ToString();
					Response.Redirect("ListCars.aspx");
				}
			}
			else
			{
				Response.Write("Mail adresi veya şifre hatalı");
			}
		}
    }
}