using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace ArabaSatışSitesi.Classes
{
	public class SqlConnectionClass
	{
		public static SqlConnection connection = new SqlConnection("Data Source=DESKTOP-21SM367;Initial Catalog=ArabaSatış;Integrated Security=True"); 
	
		public static void CheckConnection()
		{
			if(connection.State==System.Data.ConnectionState.Closed) {		// Bağlantı kapalıysa
				connection.Open();
			}
			else
			{

			}
		}
	}
}