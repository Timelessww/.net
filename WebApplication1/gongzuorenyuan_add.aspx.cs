﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class gongzuorenyuan_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                xingbie.Items.Add("male");
                xingbie.Items.Add("female");
                addxiala("bumenxinxi", "bumen", "kehubianhao");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql;
            sql = "insert into gongzuorenyuan(gonghao,xingming,xingbie,bumen,gangwei,yuexin,dianhua,shenfenzheng,zhaopian) values('" + gonghao.Text.ToString().Trim() + "','" + xingming.Text.ToString().Trim() + "','" + xingbie.Text.ToString().Trim() + "','" + bumen.Text.ToString().Trim() + "','" + gangwei.Text.ToString().Trim() + "','" + yuexin.Text.ToString().Trim() + "','" + dianhua.Text.ToString().Trim() + "','" + shenfenzheng.Text.ToString().Trim() + "','" + zhaopian.Text.ToString().Trim() + "') ";
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
                        bumen.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
                    }
                }
            }
        }
    }
}