using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class packageview : System.Web.UI.Page
{
	public string id = "";
	public string packageimage = "";
	public string itenary = "";
	public string pdffile = "";
	public string packagetitle = "";
	public string tourid = "";
	public string rate = "";
	public string description = "";
	public string daynight = "";
	public string destination = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["id"] != null){
        	object[] datarow = oper.DBOperation.getRow("select * from package where id = " + Request.QueryString["id"]);
			id = datarow[0].ToString();
            tourid = datarow[1].ToString();
            packagetitle = datarow[2].ToString();
            rate = datarow[3].ToString();
            description = datarow[4].ToString();
            packageimage = "resourcefile/packages/" + id + "/" + datarow[5].ToString();
            pdffile = "resourcefile/packages/" + id + "/" + datarow[6].ToString();
			daynight = datarow[7].ToString();
			destination = datarow[8].ToString();
            itenary = "resourcefile/packages/packages/" + id + "/" + datarow[9].ToString();
    	}
    	else{
    		Response.Redirect("/home.aspx",false);
    	}
    }
}