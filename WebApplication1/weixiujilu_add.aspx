﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="weixiujilu_add.aspx.cs" Inherits="学生宿舍管理系统.weixiujilu_add" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="head1" runat="server">
    <title>无标题页</title><script language="javascript" src="js/Calendar.js"></script>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</head>
<script language="javascript">
    function OpenScript(url, width, height) {
        var win = window.open(url, "SelectToSort", 'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes');
    }
    function OpenDialog(sURL, iWidth, iHeight) {
        var oDialog = window.open(sURL, "_EditorDialog", "width=" + iWidth.toString() + ",height=" + iHeight.toString() + ",resizable=no,left=0,top=0,scrollbars=no,status=no,titlebar=no,toolbar=no,menubar=no,location=no");
        oDialog.focus();
    }
</script>
	<body>
		<form id="Form1" method="post" runat="server">
			<table cellspacing="0" borderColorDark="#9cc7ef" cellpadding="4" width="100%" align="center"
				borderColorLight="#145aa0" border="1">
				<tr bgcolor="#4296e7">
					<td colspan="2">
						<div align="center"><font color="#ffffff">添加维修记录</font></div>
					</td>
				</tr>
				
			<tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>编号:</font></td><td width='79%'><asp:DropDownList ID='bianhao' runat='server' AutoPostBack="True" OnSelectedIndexChanged="bianhao_SelectedIndexChanged"></asp:DropDownList>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorbianhao" runat="server" ControlToValidate="bianhao" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>名称:</font></td><td width='79%'><asp:TextBox ID='mingcheng' runat='server'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatormingcheng" runat="server" ControlToValidate="mingcheng" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>故障描述:</font></td><td width='79%'><asp:TextBox ID='guzhangmiaoshu' Width='400px' Height='100px' TextMode='MultiLine' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>维修日期:</font></td><td width='79%'><asp:TextBox ID='weixiuriqi' runat='server' onclick="getDate(Form1.weixiuriqi,'2')" need="1"></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>维修费用:</font></td><td width='79%'><asp:TextBox ID='weixiufeiyong' runat='server'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorweixiufeiyong" runat="server" ControlToValidate="weixiufeiyong" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>备注:</font></td><td width='79%'><asp:TextBox ID='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server'></asp:TextBox></td></tr>
				
				
				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><font face="宋体"></font>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="添加" onclick="Button1_Click"></asp:button><font face="宋体">&nbsp;</font>
                        <input id="Reset1" type="reset" value="重置" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="center"></div>
					</td>
				</tr>
				<tr bgcolor="#4296e7">
					<td colspan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</html>

