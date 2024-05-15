using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ClinicAppointmentSystem
{
    public partial class HomePage : System.Web.UI.Page
    {
        static string projectconnection = ConfigurationManager.ConnectionStrings["ClinicApp"].ConnectionString;
        SqlConnection con = new SqlConnection(projectconnection);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_count", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lbl_count.Text = dr["total_bookings"].ToString();
                lbl_date.Text = dr["next_appdate"].ToString();
            }
            con.Close();
        }
    }
}