using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data.OleDb;
//using Microsoft.Office.Core;
//using Excel1 = Microsoft.Office.Interop.Excel;
/// <summary>
/// Summary description for DBOperation
/// </summary>
/// 
namespace oper
{
    public class DBOperation
    {
        public static String cnstr = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;

        public static SqlConnection getCn()
        {
            try
            {
                return new SqlConnection(cnstr);
            }
            catch (SqlException se)
            {
                se.GetBaseException();
                return new SqlConnection(cnstr);
            }
            catch (Exception e)
            {
                e.GetBaseException();
                return new SqlConnection(cnstr);
            }
        }
        public static SqlCommand getCmd(string str)
        {
            return new SqlCommand(str, getCn());
        }
        public static int execute(string str)
        {
            int i;
            SqlCommand cmd = getCmd(str);
            cmd.Connection.Open();
            try
            {

                i = cmd.ExecuteNonQuery();
                cmd.Connection.Close();
            }
            catch (Exception e)
            {
                cmd.Connection.Close();
                return 0;
            }
            return i;
        }
        public static object scaler(string str)
        {
            SqlCommand cmd = getCmd(str);
            cmd.Connection.Open();
            object obj = cmd.ExecuteScalar();
            cmd.Connection.Close();
            return obj;
        }
        public static object[] getRow(string str)
        {
            SqlCommand cmd = getCmd(str);
            cmd.Connection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            object[] v = null;
            if (dr.Read())
            {
                v = new object[dr.FieldCount];
                dr.GetValues(v);
            }
            dr.Close();
            cmd.Connection.Close();
            return v;
        }
        public static DataTable getTable(string str)
        {
            SqlDataAdapter da = new SqlDataAdapter(str, getCn());
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public static DataSet getDataSet(string str)
        {
            SqlDataAdapter da = new SqlDataAdapter(str, getCn());
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
        public static int setBulkData(string fileName, string Sheetname)
        {
            OleDbCommand cmd;
            OleDbConnection cn;
            OleDbDataReader dr;

            int i = 0;

            string strcn = @"Provider=Microsoft.Jet.OleDb.4.0;Excel 8.0; Extended Properties=HDR=No; IMEX=1;Data Source=" + fileName + ";";
            cn = new OleDbConnection(strcn);
            try
            {
                cn.Open();
                cmd = new OleDbCommand("Select * from [" + Sheetname + "$]", cn);
                dr = cmd.ExecuteReader();
                SqlBulkCopy sqlBulk = new SqlBulkCopy(cnstr);
                sqlBulk.DestinationTableName = "tblQuestion";
                sqlBulk.WriteToServer(dr);
                sqlBulk.Close();
                cn.Close();
                getCn().Close();
            }
            catch (Exception e)
            {
                return 0;
            }
            i = 1;
            return i;
        }
        /*public static int ExportTo(string Path, DataTable ds)
        {
            Excel1.Application myExcelApp;
            Excel1.Workbooks myExcelWorkbooks;
            Excel1.Workbook myExcelWorkbook;
            object misValue = System.Reflection.Missing.Value;
            myExcelApp = new Excel1.ApplicationClass();
            myExcelApp.Visible = true;
            myExcelWorkbooks = myExcelApp.Workbooks;
            //String fileName = @"D:\GEB Data\09-10.xls";//set this to your file you want
            String fileName = Path;//set this to your file you want
            myExcelWorkbook = myExcelWorkbooks.Open(fileName, misValue, misValue, misValue, misValue, misValue, misValue, misValue, misValue, misValue, misValue, misValue, misValue, misValue, misValue);
            Excel1.Worksheet myExcelWorksheet = (Excel1.Worksheet)myExcelWorkbook.ActiveSheet;

            for (int i = 0; i < ds.Rows.Count; i++)
            {
                try
                {

                    for (int j = 1; j <= 4; j++)
                    {
                        if (j == 1)
                        {
                            myExcelApp.Cells[i + 10, j] = i + 1;
                        }
                        myExcelApp.Cells[i + 10, j + 1] = ds.Rows[i].ItemArray[j].ToString();
                    }
                }
                catch (Exception ex)
                {
                    //MessageBox.Show(ex.ToString());
                }
            }

            //myExcelWorkbook.Close();
            return 0;
            //MessageBox.Show("Inserted Sucessfully.....");
        }*/
        public DBOperation()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}