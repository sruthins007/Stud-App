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
    public partial class Edit_Student : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["stud"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand sql = new SqlCommand("select * from tbl_stud where  admission_no='" + txtname.Text.Trim() + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(sql);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                hdempid.Value = dt.Rows[0][0].ToString();
                txtdob.Text = dt.Rows[0][5].ToString();
                txtage.Text = dt.Rows[0][6].ToString();
                txtmail.Text = dt.Rows[0][8].ToString();
                txtcourse.Text = dt.Rows[0][1].ToString();
            }

           
            SqlCommand sql3 = new SqlCommand("select * from tbl_login where stud_id='" + hdempid.Value + "' ", con);
            SqlDataAdapter da3 = new SqlDataAdapter(sql3);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            if (dt3.Rows.Count > 0)
            {

                txtusername.Text = dt3.Rows[0][1].ToString();
                txtpass.Text = dt3.Rows[0][2].ToString();

            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No Data Found ')", true);
            }
            con.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            string sql = "delete from tbl_stud where stud_id='" + hdempid.Value + "'";
            //Response.Write(sql);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            string sql3 = "delete from tbl_login where stud_id='" + hdempid.Value + "'";
            //Response.Write(sql);
            SqlCommand cmd3 = new SqlCommand(sql3, con);
            cmd3.ExecuteNonQuery();

            Response.Redirect("Edit Student.aspx");
            con.Close();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Open();
            string sql = "update tbl_stud set age = '" + txtage.Text + "', email = '" + txtmail.Text + "'  where stud_id='" + hdempid.Value + "'"; // Updating tbl_stud
            //Response.Write(sql);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            string sql3 = "update tbl_login set username = '" + txtusername.Text + "', password = '" + txtpass.Text + "'  where stud_id='" + hdempid.Value + "'"; // Updating tbl_login
            //Response.Write(sql);
            SqlCommand cmd3 = new SqlCommand(sql3, con);
            cmd3.ExecuteNonQuery();

            Response.Redirect("Edit Student.aspx");
            con.Close();
        }
    }
}