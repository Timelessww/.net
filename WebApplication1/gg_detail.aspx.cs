using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class gg_detail : System.Web.UI.Page
    {
        public string ntitle, ncontent;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)  //该页意思与 gg_updt.aspx.cs中的完全相似
            {
                string sql;
                sql = "select * from allgonggao where id=" + Request.QueryString["id"].ToString().Trim();
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
                    ntitle = result.Tables[0].Rows[0]["title"].ToString().Trim();
                    ncontent = result.Tables[0].Rows[0]["content"].ToString();
                }
            }
        }
    }
}