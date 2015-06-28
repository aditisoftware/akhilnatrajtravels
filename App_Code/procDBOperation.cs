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
/*using Microsoft.Office.Core;
using Excel1 = Microsoft.Office.Interop.Excel;*/
/// <summary>
/// Summary description for procDBOperation
/// </summary>
/// 
namespace oper
{
    public class procDBOperation
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
        public static int createUserTbl(string tblName, string flag)
        {
            int i;
            SqlCommand cmd = getCmd("createUserTbl");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tblName", tblName);
            cmd.Parameters.AddWithValue("flag", flag);
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

        public static int updateAnswer(string tblName, string useranswer, string questionId)
        {
            int i;
            SqlCommand cmd = getCmd("updateAnswer");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tblName", tblName);
            cmd.Parameters.AddWithValue("Useranswer", useranswer);
            cmd.Parameters.AddWithValue("QuestionId", questionId);
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

        public static int droptbl(string tblName)
        {
            int i;
            SqlCommand cmd = getCmd("dropTbl");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tblName", tblName);
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

        public static int insertResult(string username, string examName, string name, string classDiv, string obtainMarks, string maxMarks)
        {
            int i;
            SqlCommand cmd = getCmd("insertResult");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("username", username);
            cmd.Parameters.AddWithValue("examName", examName);
            cmd.Parameters.AddWithValue("name", name);
            cmd.Parameters.AddWithValue("classDiv", classDiv);
            cmd.Parameters.AddWithValue("obtainMarks", obtainMarks);
            cmd.Parameters.AddWithValue("totalMarks", maxMarks);
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
        public static int execProc(string tblName, string totalQuestion)
        {
            int i;
            SqlCommand cmd = getCmd("insertQuestion");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tblName", tblName);
            cmd.Parameters.AddWithValue("noOfQuestion", totalQuestion);
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
        public static object checkTbl(string tblName)
        {
            SqlCommand cmd = getCmd("checkTbl");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tblName", tblName);
            cmd.Parameters.AddWithValue("msg", "");
            cmd.Connection.Open();
            object obj = cmd.ExecuteScalar().ToString();
            cmd.Connection.Close();
            return obj;

        }
        public static object getScalerData(string tblName)
        {
            SqlCommand cmd = getCmd("getScalerData");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tblName", tblName);
            cmd.Parameters.AddWithValue("result", "");
            cmd.Connection.Open();
            object obj = cmd.ExecuteScalar();
            cmd.Connection.Close();
            return obj;
        }
        public static object scaler(string str)
        {
            SqlCommand cmd = getCmd(str);
            cmd.Connection.Open();
            object obj = cmd.ExecuteScalar();
            cmd.Connection.Close();
            return obj;
        }
        public static object[] getLogindata(string Username, string Password)
        {
            SqlCommand cmd = getCmd("getLoginData");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Username", Username);
            cmd.Parameters.AddWithValue("Password", Password);
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
        public static DataTable procDataTable(string tblName)
        {
            SqlCommand cmd = getCmd("getTable");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tblName", tblName);
            cmd.Connection.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public static DataTable getTable(string str)
        {
            SqlDataAdapter da = new SqlDataAdapter(str, getCn());
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public static DataSet procDataSet(string tblName)
        {
            SqlCommand cmd = getCmd("getTableSet");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tblName", tblName);
            cmd.Connection.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public static DataSet getDataSet(string str)
        {
            SqlDataAdapter da = new SqlDataAdapter(str, getCn());
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
    }
}