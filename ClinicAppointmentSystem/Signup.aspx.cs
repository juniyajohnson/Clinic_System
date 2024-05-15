using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace ClinicAppointmentSystem
{
    public partial class Signup : System.Web.UI.Page
    {
        public string pwd, to, from, pass, messageBody;

        static string projectconnection = ConfigurationManager.ConnectionStrings["ClinicApp"].ConnectionString;
        SqlConnection con = new SqlConnection(projectconnection);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            if(ddl_gender.SelectedValue != "-1")
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("sp_register", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("@fname", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = txt_fname.Text;
                    SqlParameter p2 = new SqlParameter("@lname", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = txt_lname.Text;
                    SqlParameter p3 = new SqlParameter("@gender", SqlDbType.VarChar);
                    cmd.Parameters.Add(p3).Value = ddl_gender.SelectedValue.ToString();
                    SqlParameter p4 = new SqlParameter("@age", SqlDbType.Int);
                    cmd.Parameters.Add(p4).Value = txt_age.Text;
                    SqlParameter p5 = new SqlParameter("@address", SqlDbType.VarChar);
                    cmd.Parameters.Add(p5).Value = txt_address.Text;
                    SqlParameter p6 = new SqlParameter("@mobile", SqlDbType.BigInt);
                    cmd.Parameters.Add(p6).Value = txt_mob.Text;
                    SqlParameter p7 = new SqlParameter("@email", SqlDbType.VarChar);
                    cmd.Parameters.Add(p7).Value = txt_email.Text;
                    SqlParameter p8 = new SqlParameter("@dob", SqlDbType.VarChar);
                    cmd.Parameters.Add(p8).Value = txt_dob.Text.ToString();

                    int i = cmd.ExecuteNonQuery();
                    con.Close();
                    if (i > 0)
                    {
                        Response.Write("Registered successfully");

                        pwd = "Change@123";
                        MailMessage message = new MailMessage();
                        to = (txt_email.Text).ToString();
                        from = "itsmejuniyajohnson@gmail.com";
                        pass = "ljlr foee mviz dskp";
                        messageBody = "Your username: "+to+" and password: " + pwd;
                        message.To.Add(to);
                        message.From = new MailAddress(from);
                        message.Body = messageBody;
                        message.Subject = "Registered Successfully";
                        SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                        smtp.EnableSsl = true;
                        smtp.Port = 587;
                        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                        smtp.Credentials = new NetworkCredential(from, pass);
                        try
                        {
                            smtp.Send(message);
                            Response.Redirect("Login.aspx");
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Failed");
                        }
                    }

                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
            else
            {
                Response.Write("Provide values for mandatory fields");
            }

        }
    }
}