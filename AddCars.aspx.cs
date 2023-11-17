using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ArabaSatışSitesi.Classes;
using System.ComponentModel.Design;

namespace ArabaSatışSitesi
{
	public partial class AddCars : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
			{
				if (Page.IsPostBack == false)       // Sayfayı tekrardan yükleyen işlemleri dvre dışı bırakmak için	PostBack false
				{

					SqlCommand commandListBrands = new SqlCommand("select * from TableBrand", SqlConnectionClass.connection);

					SqlConnectionClass.CheckConnection();

					SqlDataReader dr = commandListBrands.ExecuteReader();

					combobox.DataTextField = "BrandName";

					combobox.DataValueField = "BrandID";

					combobox.DataSource = dr;

					combobox.DataBind();

					dr.Close();
				}

			}
			else
			{
				Response.Redirect("Login.aspx");
			}


		}

		protected void btnSend_Click(object sender, EventArgs e)
		{
			SqlCommand commandAdd = new SqlCommand("Insert into TableCar (CarModel,CarBrandID,CarFuelType,CarDescription, CarContact,CarSeller,CarPhoto,CarPrice) values (@pmodel,@pbrand,@pfuel,@pdes,@pcontact,@pseller,@pphoto,@pprice)",
				SqlConnectionClass.connection);

			SqlConnectionClass.CheckConnection();

			commandAdd.Parameters.AddWithValue("@pmodel", tboxModel.Text);
			commandAdd.Parameters.AddWithValue("@pbrand", Convert.ToInt32(combobox.SelectedValue));
			commandAdd.Parameters.AddWithValue("@pfuel", tboxFuel.Text);
			commandAdd.Parameters.AddWithValue("@pdes", tboxDescription.Text);
			commandAdd.Parameters.AddWithValue("@pcontact", tboxContact.Text);
			commandAdd.Parameters.AddWithValue("@pseller", tboxSeller.Text);
			commandAdd.Parameters.AddWithValue("@pphoto", tBoxPhoto.Text);
			commandAdd.Parameters.AddWithValue("@pprice", tboxPrice.Text);


			commandAdd.ExecuteNonQuery();

		}

		protected void TextBox4_TextChanged(object sender, EventArgs e)
		{

		}
	}
}