using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class weixiujilu_updt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                // xingbie.Items.Add("male"); 
                // xingbie.Items.Add("female");
                string sql;
                sql = "select * from weixiujilu where id=" + Request.QueryString["id"].ToString().Trim();
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
                    bianhao.Text = result.Tables[0].Rows[0]["bianhao"].ToString().Trim(); mingcheng.Text = result.Tables[0].Rows[0]["mingcheng"].ToString().Trim(); guzhangmiaoshu.Text = result.Tables[0].Rows[0]["guzhangmiaoshu"].ToString().Trim(); weixiuriqi.Text = result.Tables[0].Rows[0]["weixiuriqi"].ToString().Trim(); weixiufeiyong.Text = result.Tables[0].Rows[0]["weixiufeiyong"].ToString().Trim(); beizhu.Text = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();

                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql;

            sql = "update weixiujilu set bianhao='" + bianhao.Text.ToString().Trim() + "',mingcheng='" + mingcheng.Text.ToString().Trim() + "',guzhangmiaoshu='" + guzhangmiaoshu.Text.ToString().Trim() + "',weixiuriqi='" + weixiuriqi.Text.ToString().Trim() + "',weixiufeiyong='" + weixiufeiyong.Text.ToString().Trim() + "',beizhu='" + beizhu.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
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