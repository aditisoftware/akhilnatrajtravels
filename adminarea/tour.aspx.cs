using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class tour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Username"] == null){
            Response.Redirect("login.aspx");
        }
        Save.Visible = true;
        Delete.Visible = false;
        Update.Visible = false;
        bindGrid();
    }
    protected void save_Click(object sender, EventArgs e)
    {
        int o = oper.DBOperation.execute("insert into tourmaster values('" + title.Text + "','" + description.Text + "', '')");
        if (o != 0)
        {
            uploadfile(oper.DBOperation.getRow("select max(id) from tourmaster")[0].ToString());
            bindGrid();
            title.Text = "";
            description.Text = "";
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
    protected void bindGrid()
    {
        DataSet ds = new DataSet();
        ds = oper.DBOperation.getDataSet("select * from tourmaster order by id desc");
        grdTour.DataSource = ds;
        grdTour.DataBind();
    }
    protected void grdTour_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdTour.PageIndex = e.NewPageIndex;
        bindGrid();
    }
    protected void grdTour_SelectedIndexChanged(object sender, EventArgs e)
    {
        object[] datarow = oper.DBOperation.getRow("select * from tourmaster where id = " + grdTour.Rows[grdTour.SelectedIndex].Cells[2].Text);
        id.Value = datarow[0].ToString();
        title.Text = datarow[1].ToString();
        description.Text = datarow[2].ToString();
        Save.Visible = false;
        Delete.Visible = true;
        Update.Visible = true;
        lblStatus.Visible = false;
    }
    protected void Update_Click(object sender, EventArgs e)
    {
        int o = oper.DBOperation.execute("Update tourmaster set tourname = '" + title.Text + "',description = '" + description.Text + "' where id = '"+ id.Value +"'");
        if (o != 0)
        {
            uploadfile(id.Value.ToString());
            bindGrid();
            title.Text = "";
            description.Text = "";
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
        object[] datarow = oper.DBOperation.getRow("select tourimage from tourmaster where id = " + id.Value);
        int o = oper.DBOperation.execute("delete tourmaster where id = '" + id.Value + "'");
        if (o != 0)
        {
            bool isdeleted = deleteFiles(datarow);
            bindGrid();
            title.Text = "";
            description.Text = "";
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
    protected bool uploadfile(string id)
    {
        object[] files = oper.DBOperation.getRow("select tourimage from tourmaster where id = " + id);

        if (System.IO.Directory.Exists(Server.MapPath("~/resourcefile/tour/") + id.ToString() + "\\") == false)
        {
            System.IO.Directory.CreateDirectory(Server.MapPath("~/resourcefile/tour/") + id.ToString() + "\\");
        }

        string tourmasterfilename = "tourimage = '" + files[0] + "'";
        if (tourimage.HasFile)
        {
            if (System.IO.File.Exists(Server.MapPath("~/resourcefile/tour/") + id.ToString() + "\\" + files[0]))
            {
                System.IO.File.Delete(Server.MapPath("~/resourcefile/tour/") + id.ToString() + "\\" + files[0]);
            }
            HttpPostedFile imgFile = null;
            imgFile = tourimage.PostedFile;
            imgFile.SaveAs(Server.MapPath("~/resourcefile/tour/") + id.ToString() + "\\" + imgFile.FileName);
            tourmasterfilename = "tourimage = '" + imgFile.FileName + "'";
        }

        int o = oper.DBOperation.execute("Update tourmaster set " + tourmasterfilename + " where id = " + id);
        return true;
    }
    protected bool deleteFiles(object[] files)
    {
        if (System.IO.Directory.Exists(Server.MapPath("~/resourcefile/tour/") + id.Value + "\\"))
        {
            if (System.IO.File.Exists(Server.MapPath("~/resourcefile/tour/") + id.Value + "\\" + files[0]))
            {
                System.IO.File.Delete(Server.MapPath("~/resourcefile/tour/") + id.Value + "\\" + files[0]);
            }
        }
        if (System.IO.Directory.GetFiles(Server.MapPath("~/resourcefile/tour/") + id.Value + "\\").Length == 0)
        {
            System.IO.Directory.Delete(Server.MapPath("~/resourcefile/tour/") + id.Value + "\\");
        }
        return true;
    }
}