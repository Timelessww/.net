using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class databack : System.Web.UI.Page
    {
        SqlConnection myConnection = new SqlConnection(ConfigurationSettings.AppSettings["cn"]);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["cx"].ToString().Trim() != "超级管理员")
            {
                Response.Write("<script>javascript:alert('对不起,您没有这个权限');history.back();</script>");
                Response.End();
            }
            SqlCommand mycmd = new SqlCommand();
            string myExecuteQuery = "backup database netgerencaiwupc to disk='C:/netgerencaiwupc.dat'";
            SqlCommand myCommand = new SqlCommand(myExecuteQuery, myConnection);
            myCommand.Connection.Open();
            myCommand.ExecuteNonQuery();
            myConnection.Close();
            Response.Write("<script>javascript:alert('数据成功备份于C:/netgerencaiwupc.dat');location.href='sy.aspx';</script>");
            Response.End();
        }
    }
}