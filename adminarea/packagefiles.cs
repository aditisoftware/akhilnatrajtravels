using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class packagefiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Username"] == null  ){

            Response.Redirect("login.aspx");
            if( Request.QueryString["id"] != null){
                Response.Redirect("packagemaster.aspx");
            }
        }
        Save.Visible = true;
        lblStatus.Visible = false;
    }
    protected void save_Click(object sender, EventArgs e)
    {
        uploadfile(Request.QueryString["id"].ToString());
        lblStatus.Visible = true;
        lblStatus.ForeColor = System.Drawing.Color.Green;
        lblStatus.Text = "Inserted Sucessfully";
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