using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class gongzuorenyuan_updt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                xingbie.Items.Add("male");
                xingbie.Items.Add("female");
                addxiala("bumenxinxi", "bumen", "kehubianhao");
                string sql;
                sql = "select * from gongzuorenyuan where id=" + Request.QueryString["id"].ToString().Trim();
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
                    gonghao.Text = result.Tables[0].Rows[0]["gonghao"].ToString().Trim(); xingming.Text = result.Tables[0].Rows[0]["xingming"].ToString().Trim(); xingbie.Text = result.Tables[0].Rows[0]["xingbie"].ToString().Trim(); bumen.Text = result.Tables[0].Rows[0]["bumen"].ToString().Trim(); gangwei.Text = result.Tables[0].Rows[0]["gangwei"].ToString().Trim(); yuexin.Text = result.Tables[0].Rows[0]["yuexin"].ToString().Trim(); dianhua.Text = result.Tables[0].Rows[0]["dianhua"].ToString().Trim(); shenfenzheng.Text = result.Tables[0].Rows[0]["shenfenzheng"].ToString().Trim(); zhaopian.Text = result.Tables[0].Rows[0]["zhaopian"].ToString().Trim();

                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql;

            sql = "update gongzuorenyuan set gonghao='" + gonghao.Text.ToString().Trim() + "',xingming='" + xingming.Text.ToString().Trim() + "',xingbie='" + xingbie.Text.ToString().Trim() + "',bumen='" + bumen.Text.ToString().Trim() + "',gangwei='" + gangwei.Text.ToString().Trim() + "',yuexin='" + yuexin.Text.ToString().Trim() + "',dianhua='" + dianhua.Text.ToString().Trim() + "',shenfenzheng='" + shenfenzheng.Text.ToString().Trim() + "',zhaopian='" + zhaopian.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
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
                        bumen.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
                    }
                }
            }
        }
    }
}