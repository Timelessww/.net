using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class mygo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cx"].ToString().Trim() == "超级管理员" || Session["cx"].ToString().Trim() == "普通管理员")
            {
                Response.Redirect("left.aspx");
            }

            if (Session["cx"].ToString().Trim() == "普通用户")
            {
                Response.Redirect("left2.aspx");
            }
            //if (Session["cx"].ToString().Trim() == "学生")
            //{
            //    Response.Redirect("left3.aspx");
            //}
        }
    }
}