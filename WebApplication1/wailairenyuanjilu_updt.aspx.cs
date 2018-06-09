using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class wailairenyuanjilu_updt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                // xingbie.Items.Add("male"); 
                // xingbie.Items.Add("female");
                string sql;
                sql = "select * from wailairenyuanjilu where id=" + Request.QueryString["id"].ToString().Trim();
                getdata(sql);
            }
        }



        private void getdata(string sql)
        {
            DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    xingming.Text = result.Tables[0].Rows[0]["xingming"].ToString().Trim(); shenfenzheng.Text = result.Tables[0].Rows[0]["shenfenzheng"].ToString().Trim(); beifangrenxingming.Text = result.Tables[0].Rows[0]["beifangrenxingming"].ToString().Trim(); laifangshijian.Text = result.Tables[0].Rows[0]["laifangshijian"].ToString().Trim(); laifangshiyou.Text = result.Tables[0].Rows[0]["laifangshiyou"].ToString().Trim();

                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql;

            sql = "update wailairenyuanjilu set xingming='" + xingming.Text.ToString().Trim() + "',shenfenzheng='" + shenfenzheng.Text.ToString().Trim() + "',beifangrenxingming='" + beifangrenxingming.Text.ToString().Trim() + "',laifangshijian='" + laifangshijian.Text.ToString().Trim() + "',laifangshiyou='" + laifangshiyou.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
            int result;
            result = new Class1().hsgexucute(sql);
            if (result == 1)
            {
                Response.Write("<script>javascript:alert('修改成功');</script>");
            }
            else
            {
                Response.Write("<script>javascript:alert('系统错误');</script>");
            }
        }
    }
}