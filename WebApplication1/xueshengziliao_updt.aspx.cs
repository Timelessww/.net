using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class xueshengziliao_updt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                xingbie.Items.Add("male");
                xingbie.Items.Add("female");
                addxiala("yuanxixinxi", "yuanxi", "kehubianhao");
                addxiala2("xueshengleibiexinxi", "xueshengleibie", "kehubianhao");
                string sql;
                sql = "select * from xueshengziliao where id=" + Request.QueryString["id"].ToString().Trim();
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
                    xuehao.Text = result.Tables[0].Rows[0]["xuehao"].ToString().Trim(); xingming.Text = result.Tables[0].Rows[0]["xingming"].ToString().Trim(); dianhua.Text = result.Tables[0].Rows[0]["dianhua"].ToString().Trim(); xingbie.Text = result.Tables[0].Rows[0]["xingbie"].ToString().Trim(); banji.Text = result.Tables[0].Rows[0]["banji"].ToString().Trim(); chushengnianyue.Text = result.Tables[0].Rows[0]["chushengnianyue"].ToString().Trim(); jiguan.Text = result.Tables[0].Rows[0]["jiguan"].ToString().Trim(); zhaopian.Text = result.Tables[0].Rows[0]["zhaopian"].ToString().Trim(); shenfenzheng.Text = result.Tables[0].Rows[0]["shenfenzheng"].ToString().Trim(); yuanxi.Text = result.Tables[0].Rows[0]["yuanxi"].ToString().Trim(); leibie.Text = result.Tables[0].Rows[0]["leibie"].ToString().Trim();

                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql;

            sql = "update xueshengziliao set xuehao='" + xuehao.Text.ToString().Trim() + "',xingming='" + xingming.Text.ToString().Trim() + "',dianhua='" + dianhua.Text.ToString().Trim() + "',xingbie='" + xingbie.Text.ToString().Trim() + "',banji='" + banji.Text.ToString().Trim() + "',chushengnianyue='" + chushengnianyue.Text.ToString().Trim() + "',jiguan='" + jiguan.Text.ToString().Trim() + "',zhaopian='" + zhaopian.Text.ToString().Trim() + "',shenfenzheng='" + shenfenzheng.Text.ToString().Trim() + "',yuanxi='" + yuanxi.Text.ToString().Trim() + "',leibie='" + leibie.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
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
                        yuanxi.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
                    }
                }
            }
        }
        private void addxiala2(string ntable, string nzd, string nxlk)
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
                        leibie.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
                    }
                }
            }
        }
    }
}