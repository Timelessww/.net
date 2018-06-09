﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class wailairenyuanjilu_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string sql;
                sql = "select * from wailairenyuanjilu order by id desc";
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
                    DataGrid1.DataSource = result.Tables[0];
                    DataGrid1.DataBind();
                    Label1.Text = "以上数据中共" + result.Tables[0].Rows.Count + "条";
                }
                else
                {
                    DataGrid1.DataSource = null;
                    DataGrid1.DataBind();
                    Label1.Text = "暂无任何数据";
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql;
            sql = "select * from wailairenyuanjilu where 1=1";
            if (bh.Text.ToString().Trim() != "")
            {
                sql = sql + " and xingming like '%" + bh.Text.ToString().Trim() + "%'";
            }
            if (mc.Text.ToString().Trim() != "")
            {
                sql = sql + " and shenfenzheng like '%" + mc.Text.ToString().Trim() + "%'";
            }

            sql = sql + " order by id desc";

            getdata(sql);
        }

        protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            string sql;
            sql = "select * from wailairenyuanjilu order by id desc";
            getdata(sql);
            DataGrid1.CurrentPageIndex = e.NewPageIndex;
            DataGrid1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("wailairenyuanjilu_add.aspx");
        }
    }
}