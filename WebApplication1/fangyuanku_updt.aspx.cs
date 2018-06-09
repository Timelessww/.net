using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class fangyuanku_updt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                addxiala("fangyuanleixingxinxi", "fangyuanleixing", "kehubianhao");
                string sql;
                sql = "select * from fangyuanku where id=" + Request.QueryString["id"].ToString().Trim();
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
                    loufangbianhao.Text = result.Tables[0].Rows[0]["loufangbianhao"].ToString().Trim(); leixing.Text = result.Tables[0].Rows[0]["leixing"].ToString().Trim();

                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql;

            sql = "update fangyuanku set loufangbianhao='" + loufangbianhao.Text.ToString().Trim() + "',leixing='" + leixing.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
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
        private void addxiala(string ntable, string nzd, string nxlk)
        {
            string sql;
            sql = "select " + nzd + " from " + ntable + " order by id desc";
            DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    int i = 0;
                    for (i = 0; i < result.Tables[0].Rows.Count; i++)
                    {
                        leixing.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
                    }
                }
            }
        }
    }
}