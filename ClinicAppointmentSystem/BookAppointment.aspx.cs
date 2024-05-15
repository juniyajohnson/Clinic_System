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
    public partial class BookAppointment : System.Web.UI.Page
    {
        static string projectconnection = ConfigurationManager.ConnectionStrings["ClinicApp"].ConnectionString;
        SqlConnection con = new SqlConnection(projectconnection);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txt_fname.Text = Session["FirstName"].ToString();
                txt_lname.Text = Session["LastName"].ToString();
                txt_gender.Text = Session["Gender"].ToString();
                txt_dob.Text = Session["DOB"].ToString();
                txt_age.Text = Session["Age"].ToString();
            }
            
        }

        protected void btn_book_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_appointment", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@fname", SqlDbType.VarChar);
                cmd.Parameters.Add(p1).Value = txt_fname.Text;
                SqlParameter p2 = new SqlParameter("@lname", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = txt_lname.Text;
                SqlParameter p3 = new SqlParameter("@gender", SqlDbType.VarChar);
                cmd.Parameters.Add(p3).Value = txt_gender.Text;
                SqlParameter p4 = new SqlParameter("@dob", SqlDbType.VarChar);
                cmd.Parameters.Add(p4).Value = txt_dob.Text;
                SqlParameter p5 = new SqlParameter("@age", SqlDbType.Int);
                cmd.Parameters.Add(p5).Value = txt_age.Text;             
                SqlParameter p6 = new SqlParameter("@app_date", SqlDbType.VarChar);
                cmd.Parameters.Add(p6).Value = txt_appdate.Text.ToString();
                SqlParameter p7 = new SqlParameter("@app_time", SqlDbType.VarChar);
                cmd.Parameters.Add(p7).Value = txt_time.Text.ToString();
                SqlParameter p8 = new SqlParameter("@doc_name", SqlDbType.VarChar);
                cmd.Parameters.Add(p8).Value = ddl_doctor.SelectedValue.ToString();
                SqlParameter p9 = new SqlParameter("@purpose", SqlDbType.VarChar);
                cmd.Parameters.Add(p9).Value = txt_purpose.Text;

                int i = cmd.ExecuteNonQuery();
                con.Close();
                if (i > 0)
                {
                    //Response.Write("Submitted Successfully");
                    txt_appdate.Text = "";
                    txt_time.Text = "";
                    ddl_doctor.SelectedValue = "-1";
                    txt_purpose.Text = "";
                    Response.Redirect("Bookappointment.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Write("Enter value for Mandatory fields");
            }
        }
    }
}