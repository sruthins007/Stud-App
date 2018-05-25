using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace ssss
{
    public partial class New_Student : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["stud"].ConnectionString);
        public string gender;      
        string SD;                 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
                con.Open();
                if (upld_photo.HasFile)
                {
                    //string time = DateTime.Now.ToString("yyyy_MM_dd_HH_mm_ss");

                    upld_photo.PostedFile.SaveAs(Server.MapPath("~/Images/") + "/" + upld_photo.FileName);
                    SD = "~/ Images/" + upld_photo.FileName;

                    // Response.Write(SD);
                    if (male.Checked)
                    {
                        gender = "M";
                    }
                    else if (female.Checked)
                    {
                        gender = "F";
                    }

                    string file_name = upld_photo.FileName.ToString();



                    string sql = "insert into tbl_stud (admission_no,first_name,last_name,dob,age,gender,email,image) values('" + txtadno.Text + "','" + txtfname.Text + "','" + txtlname.Text + "','" + txtdob.Text + "','" + txtage.Text + "','" + gender + "','" + txtmail.Text + "', '" + SD + "')";
                    //Response.Write(sql);
                    SqlDataAdapter adptt = new SqlDataAdapter(sql, con);
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.ExecuteNonQuery();

                    string display = "Registration Successful ";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);  // Allert Box
                    con.Close();

                    Response.Redirect("Student Registration.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Not Inserted";
                }

            
        }
    }
}