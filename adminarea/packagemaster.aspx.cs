using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class packagemaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Username"] == null){
            Response.Redirect("login.aspx");
        }
        bindGrid();
        Save.Visible = true;
        Delete.Visible = false;
        Update.Visible = false;
        lblStatus.Visible = false;
    }
    protected void save_Click(object sender, EventArgs e)
    {
        string price = "0.0";

        if(rate.Text.Trim() != "") 
            price = rate.Text;

        int o = oper.DBOperation.execute("insert into package values(" + tourid.Text + ",'" + packagetitle.Text + "','" + price + "','" + Description.Text + "','" + packageimage.FileName + "','" + pdffile.FileName + "','" + daynight.Text + "','" + Destination.Text + "','" + itenary.FileName + "')");
        if (o != 0)
        {
            uploadfile(oper.DBOperation.getRow("select max(id) from package")[0].ToString());
            for(int i=1;i<=5;i++){
                int rat = oper.DBOperation.execute("insert into packagerate values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + ratetitle1.Text + "','" + rate.Text + "')");
                int inc = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + pacakgeinexclusions.Text + "'," + togglefield.Text + ")");
            }
            bindGrid();
            packagetitle.Text = "";
            rate.Text = "0.0";
            Description.Text = "";
            daynight.Text = "";
            Destination.Text ="";
            lblStatus.Visible = true;
            lblStatus.ForeColor = System.Drawing.Color.Green;
            lblStatus.Text = "Inserted Sucessfully";
        }
        else
        {
            lblStatus.Visible = true;
            lblStatus.ForeColor = System.Drawing.Color.Red;
            lblStatus.Text = "Insertion Fail";
        }

    }
    protected void Update_Click(object sender, EventArgs e)
    {

        int o = oper.DBOperation.execute("Update package set packagetitle= '" + packagetitle.Text + "',tourid='" + tourid.Text + "',rate = '" + rate.Text + "',description = '" + Description.Text + "',daynight = '" + daynight.Text + "',destination= '" + Destination.Text + "' where id = " + id.Value + "");
        if (o != 0)
        {
            bindGrid();
            int rat = oper.DBOperation.execute("delete packagerate where packageid = '" + id.Value + "'");
            int rat = oper.DBOperation.execute("delete pacakgeinexclusions where packageid = '" + id.Value + "'");

            uploadfile(id.Value.ToString());
            packagetitle.Text = "";
            rate.Text = "0.0";
            Description.Text = "";
            daynight.Text = "";
            Destination.Text = "";
            lblStatus.Visible = true;
            lblStatus.ForeColor = System.Drawing.Color.Green;
            lblStatus.Text = "Updated Sucessfully";
            Save.Visible = true;
            Delete.Visible = false;
            Update.Visible = false;
            lblStatus.Visible = true;
        }
        else
        {
            lblStatus.Visible = true;
            lblStatus.ForeColor = System.Drawing.Color.Red;
            lblStatus.Text = "Update Fail";
        }
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        object[] datarow = oper.DBOperation.getRow("select packageimage,pdffile,itenary from package where id = " + id.Value);
        int o = oper.DBOperation.execute("delete package where id = '" + id.Value + "'");
        if (o != 0)
        {
            bool isdeleted = deleteFiles(datarow);
            bindGrid();
            int rat = oper.DBOperation.execute("delete packagerate where packageid = '" + id.Value + "'");
            int rat = oper.DBOperation.execute("delete pacakgeinexclusions where packageid = '" + id.Value + "'");
            packagetitle.Text = "";
            rate.Text = "0.0";
            Description.Text = "";
            daynight.Text = "";
            Destination.Text = "";
            lblStatus.Visible = true;
            lblStatus.ForeColor = System.Drawing.Color.Green;
            lblStatus.Text = "Delete Sucessfully";
            Save.Visible = true;
            Delete.Visible = false;
            Update.Visible = false;
            lblStatus.Visible = true;
        }
        else
        {
            lblStatus.Visible = true;
            lblStatus.ForeColor = System.Drawing.Color.Red;
            lblStatus.Text = "Update Fail";
        }
    }
    protected void grdPackage_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdPackage.PageIndex = e.NewPageIndex;
        bindGrid();
    }
    protected void grdPackage_SelectedIndexChanged(object sender, EventArgs e)
    {
        object[] datarow = oper.DBOperation.getRow("select * from package where id = '" + grdPackage.Rows[grdPackage.SelectedIndex].Cells[1].Text + "'");
        id.Value = datarow[0].ToString();
        tourid.Text = datarow[1].ToString();
        packagetitle.Text = datarow[2].ToString();
        rate.Text = datarow[3].ToString();
        daynight.Text = datarow[7].ToString();
        Destination.Text = datarow[8].ToString();
        DataSet getRateSet = oper.DBOperation.getDataSet("select * from packagerate where packageid = '" + grdPackage.Rows[grdPackage.SelectedIndex].Cells[1].Text + "'");
        DataSet getIncSet = oper.DBOperation.getDataSet("select * from pacakgeinexclusions where packageid = '" + grdPackage.Rows[grdPackage.SelectedIndex].Cells[1].Text + "'");
        Save.Visible = false;
        Delete.Visible = true;
        Update.Visible = true;
        lblStatus.Visible = false;
    }
    protected void bindGrid()
    {
        DataSet ds = new DataSet();
        ds = oper.DBOperation.getDataSet("select *,(select tourname from tourmaster where id = tourid) as tourname from package order by tourid desc");
        grdPackage.DataSource = ds;
        grdPackage.DataBind();
    }
    protected bool uploadfile(string id)
    {
        object[] files = oper.DBOperation.getRow("select packageimage,pdffile,itenary from package where id = " + id);

        if (System.IO.Directory.Exists(Server.MapPath("~/resourcefile/packages/") + id.ToString() + "\\") == false)
        {
            System.IO.Directory.CreateDirectory(Server.MapPath("~/resourcefile/packages/") + id.ToString() + "\\");
        }

        string packagefilename = "packageimage = '" + files[0] + "',";
        if (packageimage.HasFile)
        {
            if (System.IO.File.Exists(Server.MapPath("~/resourcefile/packages/") + id.ToString() + "\\" + files[0]))
            {
                System.IO.File.Delete(Server.MapPath("~/resourcefile/packages/") + id.ToString() + "\\" + files[0]);
            }
            HttpPostedFile imgFile = null;
            imgFile = packageimage.PostedFile;
            imgFile.SaveAs(Server.MapPath("~/resourcefile/packages/") + id.ToString() + "\\" + imgFile.FileName);
            packagefilename = "packageimage = '" + imgFile.FileName + "',";
        }

        string pdffilename = "pdffile = '" + files[1] + "',";
        if (pdffile.HasFile)
        {
            if (System.IO.File.Exists(Server.MapPath("~/resourcefile/packages/") + id.ToString() + "\\" + files[1]))
            {
                System.IO.File.Delete(Server.MapPath("~/resourcefile/packages/") + id.ToString() + "\\" + files[1]);
            }
            HttpPostedFile pdfdoc = null;
            pdfdoc = pdffile.PostedFile;
            pdfdoc.SaveAs(Server.MapPath("~/resourcefile/packages/") + id.ToString() + "\\" + pdfdoc.FileName);
            pdffilename = "pdffile = '" + pdfdoc.FileName + "',";
        }

        string itenaryfilename = "itenary = '" + files[2] + "'";
        if (itenary.HasFile)
        {
            if (System.IO.File.Exists(Server.MapPath("~/resourcefile/packages/") + id.ToString() + "\\" + files[2]))
            {
                System.IO.File.Delete(Server.MapPath("~/resourcefile/packages/") + id.ToString() + "\\" + files[2]);
            }
            HttpPostedFile itenaryfile = null;
            itenaryfile = itenary.PostedFile;
            itenaryfile.SaveAs(Server.MapPath("~/resourcefile/packages/") + id.ToString() + "\\" + itenaryfile.FileName);
            itenaryfilename = "itenary = '" + itenaryfile.FileName + "'";
        }

        int o = oper.DBOperation.execute("Update package set " + packagefilename + pdffilename + itenaryfilename + " where id = " + id + "");
        return true;
    }
    protected bool deleteFiles(object[] files){
        if (System.IO.Directory.Exists(Server.MapPath("~/resourcefile/packages/") + id.Value + "\\"))
        {
            if (System.IO.File.Exists(Server.MapPath("~/resourcefile/packages/") + id.Value + "\\" + files[0]))
            {
                System.IO.File.Delete(Server.MapPath("~/resourcefile/packages/") + id.Value + "\\" + files[0]);
            }
            if (System.IO.File.Exists(Server.MapPath("~/resourcefile/packages/") + id.Value + "\\" + files[1]))
            {
                System.IO.File.Delete(Server.MapPath("~/resourcefile/packages/") + id.Value + "\\" + files[1]);
            }
            if (System.IO.File.Exists(Server.MapPath("~/resourcefile/packages/") + id.Value + "\\" + files[2]))
            {
                System.IO.File.Delete(Server.MapPath("~/resourcefile/packages/") + id.Value + "\\" + files[2]);
            }
        }
        if(System.IO.Directory.GetFiles(Server.MapPath("~/resourcefile/packages/") + id.Value + "\\").Length == 0)
        {
            System.IO.Directory.Delete(Server.MapPath("~/resourcefile/packages/") + id.Value + "\\");
        }
        return true;
    }

}