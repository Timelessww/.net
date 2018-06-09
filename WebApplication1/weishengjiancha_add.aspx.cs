using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class weishengjiancha_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // xingbie.Items.Add("male"); 
                // xingbie.Items.Add("female");
                loufangbianhao.Items.Add("请选择");
                addxiala("fangyuanku", "loufangbianhao", "kehubianhao");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql;
            sql = "insert into weishengjiancha(loufangbianhao,fangjianbianhao,weishengdefen,jianchariqi,beizhu) values('" + loufangbianhao.Text.ToString().Trim() + "','" + fangjianbianhao.Text.ToString().Trim() + "','" + weishengdefen.Text.ToString().Trim() + "','" + jianchariqi.Text.ToString().Trim() + "','" + beizhu.Text.ToString().Trim() + "') ";
            int result;
            result = new Class1().hsgexucute(sql);
            if (result == 1)
            {
                Response.Write("<script>javascript:alert('添加成功');</script>");
            }
            else
            {
                Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
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
                        loufangbianhao.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
                    }
                }
            }
        }
        protected void loufangbianhao_SelectedIndexChanged(object sender, EventArgs e)
        {
            fangjianbianhao.Items.Clear();
            string sql = "select fangjianbianhao from zhusufenpei where loufangbianhao='" + loufangbianhao.Text.ToString().Trim() + "'";
            DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    int i = 0;
                    for (i = 0; i < result.Tables[0].Rows.Count; i++)
                    {
                        fangjianbianhao.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
                    }
                }
            }
        }
    }
}