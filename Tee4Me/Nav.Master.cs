using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Tee4Me
{
    public partial class Nav : System.Web.UI.MasterPage
    {
        string connDB = ConfigurationManager.ConnectionStrings["MAINDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegisterCX_Click(object sender, EventArgs e)
        {
            var fname = txtFname.Text;
            var lname = txtLname.Text;
            var mname = txtMname.Text;
            var dob = txtDOB.Text;
            var contactno = txtcontactno.Text;
            var address = txtaddress.Text;
            var email = txtEmail.Text;
            var username = txtUname.Text;
            var pass = txtUname.Text;
            var role = 0;
            try
            {
                using (var db = new SqlConnection(connDB))
                {
                    db.Open();
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "INSERT INTO [USER](fname, lname, mname, dob, phonenum, address, email, username, password, role)"
                            + " VALUES("
                            + "@fname,"
                            + "@lname,"
                            + "@mname,"
                            + "@dob,"
                            + "@contact,"
                            + "@address,"
                            + "@email,"
                            + "@user,"
                            + "@pass,"
                            + "@role)";
                        cmd.Parameters.AddWithValue("@fname", fname);
                        cmd.Parameters.AddWithValue("@lname", lname);
                        cmd.Parameters.AddWithValue("@mname", mname);
                        cmd.Parameters.AddWithValue("@dob", dob);
                        cmd.Parameters.AddWithValue("@contact", contactno);
                        cmd.Parameters.AddWithValue("@address", address);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@user", username);
                        cmd.Parameters.AddWithValue("@pass", pass);
                        cmd.Parameters.AddWithValue("@role", role);
                        var ctr = cmd.ExecuteNonQuery();
                        if (ctr >= 1)
                        {
                            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "test", "signupSuccess()", true);
                            Response.Write("<script>alert ('Default Password:" + pass + "')</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert ('Under Maintenance')</script><pre>" + ex.ToString() + "</pre>");
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "test", "error()", true);
                
            }
        }
    }
}