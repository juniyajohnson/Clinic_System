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
    public partial class MyAppointments : System.Web.UI.Page
    {
        static string projectconnection = ConfigurationManager.ConnectionStrings["ClinicApp"].ConnectionString;
        SqlConnection con = new SqlConnection(projectconnection);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            { 
            txt_fname.Text = Session["FirstName"].ToString();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_fetchappointment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@fname", SqlDbType.VarChar);
            cmd.Parameters.Add(p1).Value=txt_fname.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grid_app.DataSource = ds.Tables[0];
            grid_app.DataBind();
            con.Close();
        }

        protected void grid_app_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_appdate.Text = grid_app.SelectedRow.Cells[6].Text.ToString();
            txt_time.Text = grid_app.SelectedRow.Cells[7].Text.ToString();
            ddl_doctor.SelectedValue = grid_app.SelectedRow.Cells[8].Text.ToString();
            txt_purpose.Text = grid_app.SelectedRow.Cells[9].Text.ToString();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            try
            {
                if(txt_appdate.Text!="" && txt_time.Text!="" && txt_purpose.Text!="" && ddl_doctor.SelectedValue != "-1")
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("sp_update", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("@fname", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = txt_fname.Text;
                    SqlParameter p2 = new SqlParameter("@app_date", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = txt_appdate.Text.ToString();
                    SqlParameter p3 = new SqlParameter("@app_time", SqlDbType.VarChar);
                    cmd.Parameters.Add(p3).Value = txt_time.Text.ToString();
                    SqlParameter p4 = new SqlParameter("@doc_name", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = ddl_doctor.SelectedValue.ToString();
                    SqlParameter p5 = new SqlParameter("@purpose", SqlDbType.VarChar);
                    cmd.Parameters.Add(p5).Value = txt_purpose.Text;
                    int i = cmd.ExecuteNonQuery();
                    con.Close();
                    if (i > 0)
                    {
                       // Response.Write("Updated Successfully");
                        Response.Redirect("MyAppointments.aspx");
                    }
                }
                else
                {
                    Response.Write("Empty fields are not allowed");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            if (txt_fname.Text != "")
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("sp_delete", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("@fname", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = txt_fname.Text;
                    int i = cmd.ExecuteNonQuery();
                    con.Close();
                    if (i > 0)
                    {
                       // Response.Write("Appointment details deleted");
                        txt_appdate.Text = "";
                        txt_time.Text = "";
                        ddl_doctor.SelectedValue = "-!";
                        txt_purpose.Text = "";
                        Response.Redirect("MyAppointments.aspx");
                    }
                }
                catch(Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
            else
            {
                Response.Write("First Name not empty");
            }
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            txt_appdate.Text = "";
            txt_time.Text = "";
            ddl_doctor.SelectedValue = "-1";
            txt_purpose.Text = "";
        }
    }
}