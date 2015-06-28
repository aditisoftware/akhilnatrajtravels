using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using oper;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Username"] != null){
            Response.Redirect("default.aspx");
        }
    }
    protected void signin_Click(object sender, EventArgs e)
    {
        string str = "select * from usermaster where email = '" + username.Text + "' and password = '" + password.Text + "'";
        object[] data = oper.DBOperation.getRow(str);
        
        
        if (data != null)
        {
            if (data[3].ToString().Trim() == "admin")
            {
                Session["UserType"] = data[3].ToString();
                Session["Username"] = username.Text;

                Response.Redirect("default.aspx");
            }
            Session["Username"] = username.Text;
            Session["Name"] = data[1].ToString();
            object msg = oper.procDBOperation.checkTbl("tbl" + Session["Username"].ToString());
            if (msg.ToString() == "tablename exists.")
            {
                oper.procDBOperation.droptbl("tbl" + Session["Username"].ToString());
            }
            Response.Redirect("default.aspx");
        }
        else
        {
            //lblError.Visible = true;
            Response.Write("<script> alert('Invalid Username/Password')</script>");
        }
    }
}