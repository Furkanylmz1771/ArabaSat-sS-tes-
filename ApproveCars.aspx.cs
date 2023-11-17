using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ArabaSatışSitesi.Classes;

namespace ArabaSatışSitesi
{
	public partial class ApproveCars : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			int selectedID = Convert.ToInt32(Request.QueryString["carid"]);

			SqlCommand commandApprove = new SqlCommand("Update TableCar set CarConfirmation=@pcon where CarID=@pid",SqlConnectionClass.connection);

			SqlConnectionClass.CheckConnection();

			commandApprove.Parameters.AddWithValue("@pcon", true);
			commandApprove.Parameters.AddWithValue("@pid", selectedID);

			commandApprove.ExecuteNonQuery();   // Sorguyu çalıştırır.

			Response.Redirect("AdminAddCars.aspx");

		}
	}
}