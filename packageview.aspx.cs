using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
    public string inclusion = "";
    public string exclusion = "";
    public string rates = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["id"] != null){
            object[] datarow = oper.DBOperation.getRow("select * from package where id = " + Request.QueryString["id"]);
            id = datarow[0].ToString();
            tourid = datarow[1].ToString();

            lblPackageTitle.Text = datarow[2].ToString();

            description = datarow[4].ToString();
            packageimage = "resourcefile/packages/" + id + "/" + datarow[5].ToString();
            pdffile = "resourcefile/packages/" + id + "/" + datarow[6].ToString();
            daynight = datarow[7].ToString();
            destination = datarow[8].ToString();
            itenary = "resourcefile/packages/" + id + "/" + datarow[9].ToString();

            DataTable getIncSet = oper.DBOperation.getTable("select * from pacakgeinexclusions where packageid = " + Request.QueryString["id"] + " and togglefield = 1 order by id");
            if (getIncSet.Rows.Count >= 1) inclusion = inclusion + "<li>" + getIncSet.Rows[0]["inclusiontitle"].ToString() + "</li>";
            if (getIncSet.Rows.Count >= 2) inclusion = inclusion + "<li>" + getIncSet.Rows[1]["inclusiontitle"].ToString() + "</li>";
            if (getIncSet.Rows.Count >= 3) inclusion = inclusion + "<li>" + getIncSet.Rows[2]["inclusiontitle"].ToString() + "</li>";
            if (getIncSet.Rows.Count >= 4) inclusion = inclusion + "<li>" + getIncSet.Rows[3]["inclusiontitle"].ToString() + "</li>";
            if (getIncSet.Rows.Count >= 5) inclusion = inclusion + "<li>" + getIncSet.Rows[4]["inclusiontitle"].ToString() + "</li>";
            if(inclusion.Length > 0){
                inclusion = "<div class='text-success'><ul style='list-style-type: none;padding: 0;'>" + inclusion + "</ul></div>";
            }
            DataTable getExcSet = oper.DBOperation.getTable("select * from pacakgeinexclusions where packageid = " + Request.QueryString["id"] + " and togglefield = 0 order by id");
            if (getExcSet.Rows.Count >= 1) exclusion = exclusion + "<li>" + getExcSet.Rows[0]["inclusiontitle"].ToString() + "</li>";
            if (getExcSet.Rows.Count >= 2) exclusion = exclusion + "<li>" + getExcSet.Rows[1]["inclusiontitle"].ToString() + "</li>";
            if (getExcSet.Rows.Count >= 3) exclusion = exclusion + "<li>" + getExcSet.Rows[2]["inclusiontitle"].ToString() + "</li>";
            if (getExcSet.Rows.Count >= 4) exclusion = exclusion + "<li>" + getExcSet.Rows[3]["inclusiontitle"].ToString() + "</li>";
            if (getExcSet.Rows.Count >= 5) exclusion = exclusion + "<li>" + getExcSet.Rows[4]["inclusiontitle"].ToString() + "</li>";
            if(exclusion.Length  > 0){
                exclusion = "<div class='text-danger'><ul style='list-style-type: none;padding: 0;'>" + exclusion + "</ul></div>";
            }
            DataTable getRateTable = oper.DBOperation.getTable("select * from packagerate where packageid = " + Request.QueryString["id"] + " order by id");
            if (getRateTable.Rows.Count >= 1){rates = rates + "<div class='col-md-6 text-right'>" +  getRateTable.Rows[0]["ratetitle"].ToString() + "</div> <div class='col-md-6 text-left'>" + getRateTable.Rows[0]["rate"].ToString() + "</div>";}
            if (getRateTable.Rows.Count >= 2){rates = rates + "<div class='col-md-6 text-right'>" +  getRateTable.Rows[1]["ratetitle"].ToString() + "</div> <div class='col-md-6 text-left'>" + getRateTable.Rows[1]["rate"].ToString() + "</div>";}
            if (getRateTable.Rows.Count >= 3){rates = rates + "<div class='col-md-6 text-right'>" +  getRateTable.Rows[2]["ratetitle"].ToString() + "</div> <div class='col-md-6 text-left'>" + getRateTable.Rows[2]["rate"].ToString() + "</div>";}
            if (getRateTable.Rows.Count >= 4){rates = rates + "<div class='col-md-6 text-right'>" +  getRateTable.Rows[3]["ratetitle"].ToString() + "</div> <div class='col-md-6 text-left'>" + getRateTable.Rows[3]["rate"].ToString() + "</div>";}
            if (getRateTable.Rows.Count >= 5){rates = rates + "<div class='col-md-6 text-right'>" +  getRateTable.Rows[4]["ratetitle"].ToString() + "</div> <div class='col-md-6 text-left'>" + getRateTable.Rows[4]["rate"].ToString() + "</div>";}
            if(rates.Length  > 0){
                rates = "<div><ul style='list-style-type: none;padding: 0;'>" + rates + "</ul></div>";
            }
            object[] dayrow = oper.DBOperation.getRow("select [month1],[month2],[month3],[month4],[month5],[month6],[month7],[month8],[month9],[month10],[month11],[month12] from packagedays where packageid = '" + Request.QueryString["id"] + "'");
            if(dayrow != null){
                month1.Text = dayrow[0].ToString() + "&nbsp;";
                month2.Text = dayrow[1].ToString() + "&nbsp;";
                month3.Text = dayrow[2].ToString() + "&nbsp;";
                month4.Text = dayrow[3].ToString() + "&nbsp;";
                month5.Text = dayrow[4].ToString() + "&nbsp;";
                month6.Text = dayrow[5].ToString() + "&nbsp;";
                month7.Text = dayrow[6].ToString() + "&nbsp;";
                month8.Text = dayrow[7].ToString() + "&nbsp;";
                month9.Text = dayrow[8].ToString() + "&nbsp;";
                month10.Text = dayrow[9].ToString() + "&nbsp;";
                month11.Text = dayrow[10].ToString() + "&nbsp;";
                month12.Text = dayrow[11].ToString() + "&nbsp;";
            }
        }
        else{
            Response.Redirect("/home.aspx",false);
        }
    }
}