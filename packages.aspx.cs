using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class packages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    	string str = "SELECT [packagetitle], [packageimage], [description], [rate], [DayNight], [id] FROM [package]";
		if(Request.QueryString["id"] != null){
    		str = str + " where tourid = " + Request.QueryString["id"].ToString() + " order by id desc";
    	}
        dbtourlist.SelectCommand = str;
    }
}