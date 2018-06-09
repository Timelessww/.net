using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                cx.Items.Add("管理员");
                cx.Items.Add("普通用户");

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text.ToString().Trim() == "" || TextBox1.Text.ToString().Trim() == "")
            {
                Response.Write("<script>javascript:alert('请输入完整');history.back();</script>");
                Response.End();
            }
            string sql = "";
            if (cx.Text.ToString().Trim() == "管理员")
            {
                sql = "select * from allusers where username='" + TextBox1.Text.ToString().Trim() + "' and pwd='" + TextBox2.Text.ToString().Trim() + "' ";
            }
            if (cx.Text.ToString().Trim() == "普通用户")
            {
                sql = "select * from yonghuxinxi where yonghuming='" + TextBox1.Text.ToString().Trim() + "' and mima='" + TextBox2.Text.ToString().Trim() + "'";
            }
            //if (cx.Text.ToString().Trim() == "学生")
            //{
            //    sql = "select * from xueshengxinxi where xuehao='" + TextBox1.Text.ToString().Trim() + "' and mima='" + TextBox2.Text.ToString().Trim() + "' ";
            //}
            DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            // result = new TestOnline.Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    if (cx.Text.ToString().Trim() == "管理员")
                    {
                        new Class1().hsgcaozuojilu(TextBox1.Text.ToString().Trim(), "登陆", "allusers");
                    }
                    if (cx.Text.ToString().Trim() == "普通用户")
                    {
                        new Class1().hsgcaozuojilu(TextBox1.Text.ToString().Trim(), "登陆", "yonghuxinxi");
                    }
                    Session["username"] = TextBox1.Text.ToString().Trim();

                    if (cx.Text.ToString().Trim() == "管理员")
                    {
                        Session["cx"] = result.Tables[0].Rows[0]["cx"].ToString().Trim();
                    }
                    else
                    {
                        Session["cx"] = "普通用户";
                        Session["xm"] = result.Tables[0].Rows[0]["xingming"].ToString().Trim();
                        //Session["jb"] = result.Tables[0].Rows[0]["xinyongdengji"].ToString().Trim();
                    }


                    Response.Redirect("main.aspx");
                }
                else
                {
                    Response.Write("<script>javascript:alert('对不起，用户名或密码不正确，或您的帐号未经审核!');</script>");
                }
            }
            else
            {
                Response.Write("<script>javascript:alert('对不起，系统错误，请不要越权操作!');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("yonghuzhuce_add.aspx");
        }
    }
}