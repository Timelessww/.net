using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class weishengjiancha_updt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {

                string sql;
                sql = "select * from weishengjiancha where id=" + Request.QueryString["id"].ToString().Trim();
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
                    loufangbianhao.Text = result.Tables[0].Rows[0]["loufangbianhao"].ToString().Trim(); fangjianbianhao.Text = result.Tables[0].Rows[0]["fangjianbianhao"].ToString().Trim(); weishengdefen.Text = result.Tables[0].Rows[0]["weishengdefen"].ToString().Trim(); jianchariqi.Text = result.Tables[0].Rows[0]["jianchariqi"].ToString().Trim(); beizhu.Text = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();

                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql;

            sql = "update weishengjiancha set loufangbianhao='" + loufangbianhao.Text.ToString().Trim() + "',fangjianbianhao='" + fangjianbianhao.Text.ToString().Trim() + "',weishengdefen='" + weishengdefen.Text.ToString().Trim() + "',jianchariqi='" + jianchariqi.Text.ToString().Trim() + "',beizhu='" + beizhu.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
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