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
        addfiles.Visible = false;
    }
    protected void save_Click(object sender, EventArgs e)
    {
        string price = "0.0";

        int o = oper.DBOperation.execute("insert into package values(" + tourid.Text + ",'" + packagetitle.Text + "','" + price + "','" + Description.Text + "','" + packageimage.FileName + "','" + pdffile.FileName + "','" + daynight.Text + "','" + Destination.Text + "','" + itenary.FileName + "')");
        if (o != 0)
        {
            uploadfile(oper.DBOperation.getRow("select max(id) from package")[0].ToString());

            int rat = 0;
            if(ratetitle1.Text.Trim() != "")
                rat = oper.DBOperation.execute("insert into packagerate values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + ratetitle1.Text + "','" + rate1.Text + "')");
            if(ratetitle2.Text.Trim() != "")
                rat = oper.DBOperation.execute("insert into packagerate values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + ratetitle2.Text + "','" + rate2.Text + "')");
            if(ratetitle3.Text.Trim() != "")
                rat = oper.DBOperation.execute("insert into packagerate values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + ratetitle3.Text + "','" + rate3.Text + "')");
            if(ratetitle4.Text.Trim() != "")
                rat = oper.DBOperation.execute("insert into packagerate values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + ratetitle4.Text + "','" + rate4.Text + "')");
            if(ratetitle5.Text.Trim() != "")
                rat = oper.DBOperation.execute("insert into packagerate values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + ratetitle5.Text + "','" + rate5.Text + "')");

            int inc = 0;
            if(inclusiontitle1.Text.Trim() != "")
                inc = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + inclusiontitle1.Text + "',1)");
            if(inclusiontitle2.Text.Trim() != "")
                inc = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + inclusiontitle2.Text + "',1)");
            if(inclusiontitle3.Text.Trim() != "")
                inc = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + inclusiontitle3.Text + "',1)");
            if(inclusiontitle4.Text.Trim() != "")
                inc = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + inclusiontitle4.Text + "',1)");
            if(inclusiontitle5.Text.Trim() != "")                
                inc = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + inclusiontitle5.Text + "',1)");

            int inc2 = 0;
            if(exclusiontitle1.Text.Trim() != "")            
                inc2 = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + exclusiontitle1.Text + "',0)");
            if(exclusiontitle2.Text.Trim() != "")
                inc2 = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + exclusiontitle2.Text + "',0)");
            if(exclusiontitle3.Text.Trim() != "")
                inc2 = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + exclusiontitle3.Text + "',0)");
            if(exclusiontitle4.Text.Trim() != "")
                inc2 = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + exclusiontitle4.Text + "',0)");
            if(exclusiontitle5.Text.Trim() != "")
                inc2 = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + exclusiontitle5.Text + "',0)");

            int monres = 0;            
            monres = oper.DBOperation.execute("insert into packagedays values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + month1.Text + "','" + month2.Text + "','" + month3.Text + "','" + month4.Text + "','" + month5.Text + "','" + month6.Text + "','" + month7.Text + "','" + month8.Text + "','" + month9.Text + "','" + month10.Text + "','" + month11.Text + "','" + month12.Text + "')");

            bindGrid();
            packagetitle.Text = "";
            Description.Text = "";
            daynight.Text = "";
            Destination.Text ="";
            ratetitle1.Text = "";
            rate1.Text = "";
            ratetitle2.Text = "";
            rate2.Text = "";
            ratetitle3.Text = "";
            rate3.Text = "";
            ratetitle4.Text = "";
            rate4.Text = "";
            ratetitle5.Text = "";
            rate5.Text = "";
            inclusiontitle1.Text = "";
            inclusiontitle2.Text = "";
            inclusiontitle3.Text = "";
            inclusiontitle4.Text = "";
            inclusiontitle5.Text = "";
            exclusiontitle1.Text = "";
            exclusiontitle2.Text = "";
            exclusiontitle3.Text = "";
            exclusiontitle4.Text = "";
            exclusiontitle5.Text = "";
            month1.Text = "";
            month2.Text = "";
            month3.Text = "";
            month4.Text = "";
            month5.Text = "";
            month6.Text = "";
            month7.Text = "";
            month8.Text = "";
            month9.Text = "";
            month10.Text = "";
            month11.Text = "";
            month12.Text = "";

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

        int o = oper.DBOperation.execute("Update package set packagetitle= '" + packagetitle.Text + "',tourid='" + tourid.Text + "',rate = '0.0',description = '" + Description.Text.ToString().Replace("'","\"") + "',daynight = '" + daynight.Text + "',destination= '" + Destination.Text + "' where id = " + id.Value + "");
        if (o != 0)
        {
            bindGrid();
            int delrat = oper.DBOperation.execute("delete packagerate where packageid = '" + id.Value + "'");
            int delinc = oper.DBOperation.execute("delete pacakgeinexclusions where packageid = '" + id.Value + "'");
            int delmon = oper.DBOperation.execute("delete packagedays where packageid = '" + id.Value + "'");

            uploadfile(id.Value.ToString());
            int rat = 0;
            if(ratetitle1.Text.Trim() != "")
                rat = oper.DBOperation.execute("insert into packagerate values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + ratetitle1.Text + "','" + rate1.Text + "')");
            if(ratetitle2.Text.Trim() != "")
                rat = oper.DBOperation.execute("insert into packagerate values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + ratetitle2.Text + "','" + rate2.Text + "')");
            if(ratetitle3.Text.Trim() != "")
                rat = oper.DBOperation.execute("insert into packagerate values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + ratetitle3.Text + "','" + rate3.Text + "')");
            if(ratetitle4.Text.Trim() != "")
                rat = oper.DBOperation.execute("insert into packagerate values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + ratetitle4.Text + "','" + rate4.Text + "')");
            if(ratetitle5.Text.Trim() != "")
                rat = oper.DBOperation.execute("insert into packagerate values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + ratetitle5.Text + "','" + rate5.Text + "')");

            int inc = 0;
            if(inclusiontitle1.Text.Trim() != "")
                inc = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + inclusiontitle1.Text + "',1)");
            if(inclusiontitle2.Text.Trim() != "")
                inc = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + inclusiontitle2.Text + "',1)");
            if(inclusiontitle3.Text.Trim() != "")
                inc = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + inclusiontitle3.Text + "',1)");
            if(inclusiontitle4.Text.Trim() != "")
                inc = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + inclusiontitle4.Text + "',1)");
            if(inclusiontitle5.Text.Trim() != "")                
                inc = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + inclusiontitle5.Text + "',1)");

            int inc2 = 0;
            if(exclusiontitle1.Text.Trim() != "")            
                inc2 = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + exclusiontitle1.Text + "',0)");
            if(exclusiontitle2.Text.Trim() != "")
                inc2 = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + exclusiontitle2.Text + "',0)");
            if(exclusiontitle3.Text.Trim() != "")
                inc2 = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + exclusiontitle3.Text + "',0)");
            if(exclusiontitle4.Text.Trim() != "")
                inc2 = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + exclusiontitle4.Text + "',0)");
            if(exclusiontitle5.Text.Trim() != "")
                inc2 = oper.DBOperation.execute("insert into pacakgeinexclusions values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + exclusiontitle5.Text + "',0)");
            
            int monres = 0;            
            monres = oper.DBOperation.execute("insert into packagedays values(" + oper.DBOperation.getRow("select max(id) from package")[0].ToString() + ",'" + month1.Text + "','" + month2.Text + "','" + month3.Text + "','" + month4.Text + "','" + month5.Text + "','" + month6.Text + "','" + month7.Text + "','" + month8.Text + "','" + month9.Text + "','" + month10.Text + "','" + month11.Text + "','" + month12.Text + "')");

            packagetitle.Text = "";
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
            ratetitle1.Text = "";
            rate1.Text = "";
            ratetitle2.Text = "";
            rate2.Text = "";
            ratetitle3.Text = "";
            rate3.Text = "";
            ratetitle4.Text = "";
            rate4.Text = "";
            ratetitle5.Text = "";
            rate5.Text = "";
            inclusiontitle1.Text = "";
            inclusiontitle2.Text = "";
            inclusiontitle3.Text = "";
            inclusiontitle4.Text = "";
            inclusiontitle5.Text = "";
            exclusiontitle1.Text = "";
            exclusiontitle2.Text = "";
            exclusiontitle3.Text = "";
            exclusiontitle4.Text = "";
            exclusiontitle5.Text = "";
            month1.Text = "";
            month2.Text = "";
            month3.Text = "";
            month4.Text = "";
            month5.Text = "";
            month6.Text = "";
            month7.Text = "";
            month8.Text = "";
            month9.Text = "";
            month10.Text = "";
            month11.Text = "";
            month12.Text = "";
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
            int inc = oper.DBOperation.execute("delete pacakgeinexclusions where packageid = '" + id.Value + "'");
            int delmon = oper.DBOperation.execute("delete packagedays where packageid = '" + id.Value + "'");

            packagetitle.Text = "";
            Description.Text = "";
            daynight.Text = "";
            Destination.Text = "";
            ratetitle1.Text = "";
            rate1.Text = "";
            ratetitle2.Text = "";
            rate2.Text = "";
            ratetitle3.Text = "";
            rate3.Text = "";
            ratetitle4.Text = "";
            rate4.Text = "";
            ratetitle5.Text = "";
            rate5.Text = "";
            inclusiontitle1.Text = "";
            inclusiontitle2.Text = "";
            inclusiontitle3.Text = "";
            inclusiontitle4.Text = "";
            inclusiontitle5.Text = "";
            exclusiontitle1.Text = "";
            exclusiontitle2.Text = "";
            exclusiontitle3.Text = "";
            exclusiontitle4.Text = "";
            exclusiontitle5.Text = "";
            month1.Text = "";
            month2.Text = "";
            month3.Text = "";
            month4.Text = "";
            month5.Text = "";
            month6.Text = "";
            month7.Text = "";
            month8.Text = "";
            month9.Text = "";
            month10.Text = "";
            month11.Text = "";
            month12.Text = "";
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
        daynight.Text = datarow[7].ToString();
        Destination.Text = datarow[8].ToString();
        Description.Text = datarow[4].ToString();
        DataTable getRateTable = oper.DBOperation.getTable("select * from packagerate where packageid = " + grdPackage.Rows[grdPackage.SelectedIndex].Cells[1].Text + " order by id");
        if (getRateTable.Rows.Count > 0)
        {
            if (getRateTable.Rows.Count >= 1)
            {
                ratetitle1.Text = getRateTable.Rows[0]["ratetitle"].ToString();
                rate1.Text = getRateTable.Rows[0]["rate"].ToString();
            }
            if (getRateTable.Rows.Count >= 2)
            {
                ratetitle2.Text = getRateTable.Rows[1]["ratetitle"].ToString();
                rate2.Text = getRateTable.Rows[1]["rate"].ToString();
            }
            if (getRateTable.Rows.Count >= 3)
            {
                ratetitle3.Text = getRateTable.Rows[2]["ratetitle"].ToString();
                rate3.Text = getRateTable.Rows[2]["rate"].ToString();
            }
            if (getRateTable.Rows.Count >= 4)
            {
                ratetitle4.Text = getRateTable.Rows[3]["ratetitle"].ToString();
                rate4.Text = getRateTable.Rows[3]["rate"].ToString();
            }
            if (getRateTable.Rows.Count >= 5)
            {
                ratetitle5.Text = getRateTable.Rows[4]["ratetitle"].ToString();
                rate5.Text = getRateTable.Rows[4]["rate"].ToString();
            }            
        }

        DataTable getIncSet = oper.DBOperation.getTable("select * from pacakgeinexclusions where packageid = " + grdPackage.Rows[grdPackage.SelectedIndex].Cells[1].Text + " and togglefield = 1 order by id");
        if (getIncSet.Rows.Count >= 1)
            inclusiontitle1.Text = getIncSet.Rows[0]["inclusiontitle"].ToString();
        if (getIncSet.Rows.Count >= 2)
            inclusiontitle2.Text = getIncSet.Rows[1]["inclusiontitle"].ToString();
        if (getIncSet.Rows.Count >= 3)
            inclusiontitle3.Text = getIncSet.Rows[2]["inclusiontitle"].ToString();
        if (getIncSet.Rows.Count >= 4)
            inclusiontitle4.Text = getIncSet.Rows[3]["inclusiontitle"].ToString();
        if (getIncSet.Rows.Count >= 5)
            inclusiontitle5.Text = getIncSet.Rows[4]["inclusiontitle"].ToString();

        DataTable getExcSet = oper.DBOperation.getTable("select * from pacakgeinexclusions where packageid = " + grdPackage.Rows[grdPackage.SelectedIndex].Cells[1].Text + " and togglefield = 0 order by id");
        if (getExcSet.Rows.Count >= 1)
            exclusiontitle1.Text = getIncSet.Rows[0]["inclusiontitle"].ToString();
        if (getExcSet.Rows.Count >= 2)
            exclusiontitle2.Text = getIncSet.Rows[1]["inclusiontitle"].ToString();
        if (getExcSet.Rows.Count >= 3)
            exclusiontitle3.Text = getIncSet.Rows[2]["inclusiontitle"].ToString();
        if (getExcSet.Rows.Count >= 4)
            exclusiontitle4.Text = getIncSet.Rows[3]["inclusiontitle"].ToString();
        if (getExcSet.Rows.Count >= 5)
            exclusiontitle5.Text = getIncSet.Rows[4]["inclusiontitle"].ToString();

        object[] dayrow = oper.DBOperation.getRow("select [month1],[month2],[month3],[month4],[month5],[month6],[month7],[month8],[month9],[month10],[month11],[month12] from packagedays where packageid = '" + grdPackage.Rows[grdPackage.SelectedIndex].Cells[1].Text + "'");
        if(dayrow != null){
            month1.Text = dayrow[0].ToString();
            month2.Text = dayrow[1].ToString();
            month3.Text = dayrow[2].ToString();
            month4.Text = dayrow[3].ToString();
            month5.Text = dayrow[4].ToString();
            month6.Text = dayrow[5].ToString();
            month7.Text = dayrow[6].ToString();
            month8.Text = dayrow[7].ToString();
            month9.Text = dayrow[8].ToString();
            month10.Text = dayrow[9].ToString();
            month11.Text = dayrow[10].ToString();
            month12.Text = dayrow[11].ToString();
        }

        Save.Visible = false;
        Delete.Visible = true;
        Update.Visible = true;
        lblStatus.Visible = false;
        addfiles.Visible = true;
        string fileurl = "~/adminarea/packagefiles.aspx?id=";
        addfiles.NavigateUrl = fileurl + grdPackage.Rows[grdPackage.SelectedIndex].Cells[1].Text;
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