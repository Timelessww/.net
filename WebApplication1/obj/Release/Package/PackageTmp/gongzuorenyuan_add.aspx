<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gongzuorenyuan_add.aspx.cs" Inherits="学生宿舍管理系统.gongzuorenyuan_add" %>

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
						<div align="center"><font color="#ffffff">添加工作人员</font></div>
					</td>
				</tr>
				
			<tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>工号:</font></td><td width='79%'><asp:TextBox ID='gonghao' runat='server'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorgonghao" runat="server" ControlToValidate="gonghao" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>姓名:</font></td><td width='79%'><asp:TextBox ID='xingming' runat='server'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorxingming" runat="server" ControlToValidate="xingming" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>性别:</font></td><td width='79%'><asp:DropDownList ID='xingbie' runat='server'></asp:DropDownList></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>部门:</font></td><td width='79%'><asp:DropDownList ID='bumen' runat='server'></asp:DropDownList></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>岗位:</font></td><td width='79%'><asp:TextBox ID='gangwei' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>月薪:</font></td><td width='79%'><asp:TextBox ID='yuexin' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>电话:</font></td><td width='79%'><asp:TextBox ID='dianhua' runat='server'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatordianhua" runat="server" ControlToValidate="dianhua" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>身份证:</font></td><td width='79%'><asp:TextBox ID='shenfenzheng' Width='395px' runat='server'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorshenfenzheng" runat="server" ControlToValidate="shenfenzheng" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>照片:</font></td><td width='79%'><asp:textbox id='zhaopian' Width='395px' runat='server'></asp:textbox>&nbsp;<a href="javaScript:OpenScript('hsgupfile.aspx?Result=zhaopian',500,30)"><img src='Images/Upload.gif' width='30' height='16' border='0' align='absmiddle' /></a></td></tr>
				
				
				
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
