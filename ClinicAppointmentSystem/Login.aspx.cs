using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Diagnostics.Eventing.Reader;

namespace ClinicAppointmentSystem
{
    public partial class Login : System.Web.UI.Page
    {
        static string projectconnection = ConfigurationManager.ConnectionStrings["ClinicApp"].ConnectionString;
        SqlConnection con = new SqlConnection(projectconnection);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_login", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@email", SqlDbType.VarChar);
                cmd.Parameters.Add(p1).Value = txt_email.Text;
                SqlParameter p2 = new SqlParameter("@pwd", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = txt_pwd.Text;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["FirstName"] = dr["fname"].ToString();
                        Session["LastName"] = dr["lname"].ToString();
                        Session["Gender"] = dr["gender"].ToString();
                        Session["DOB"] = dr["dob"].ToString();
                        Session["Age"] = Convert.ToInt32(dr["age"]);
                    }
                    con.Close();
                    Response.Redirect("HomePage.aspx");
                }

                else
                {
                    Response.Write(lbl_login.Text = "Enter valid maild id & password");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Not Valid");
            }                                                
           
        }
    }
}