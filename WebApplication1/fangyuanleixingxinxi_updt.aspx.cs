﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class fangyuanleixingxinxi_updt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // xingbie.Items.Add("male"); 
                // xingbie.Items.Add("female");
                string sql;
                sql = "select * from fangyuanleixingxinxi where id=" + Request.QueryString["id"].ToString().Trim();
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
                    fangyuanleixing.Text = result.Tables[0].Rows[0]["fangyuanleixing"].ToString().Trim();

                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql;

            sql = "update fangyuanleixingxinxi set fangyuanleixing='" + fangyuanleixing.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
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