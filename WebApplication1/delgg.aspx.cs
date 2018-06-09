using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class delgg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["delid"].ToString().Trim() != "")
            {
                string sql;


                sql = "delete from " + Request["tablename"].ToString().Trim() + " where id=" + int.Parse(Request["delid"].ToString().Trim()) + "";
                new Class1().hsgexucute(sql);
                Response.Redirect(Request.QueryString["npage"].ToString().Trim() + "?lb=" + Request.QueryString["lb"].ToString().Trim());
            }

        }
    }
}