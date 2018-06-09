<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xueshengziliao_updt.aspx.cs" Inherits="学生宿舍管理系统.xueshengziliao_updt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
						<div align="center"><font color="#ffffff">修改学生资料</font></div>
					</td>
				</tr>
				<tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>学号:</font></td><td width='79%'><asp:textbox id='xuehao' runat='server'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorxuehao" runat="server" ControlToValidate="xuehao" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>姓名:</font></td><td width='79%'><asp:textbox id='xingming' runat='server'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorxingming" runat="server" ControlToValidate="xingming" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>电话:</font></td><td width='79%'><asp:textbox id='dianhua' runat='server'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatordianhua" runat="server" ControlToValidate="dianhua" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>性别:</font></td><td width='79%'><asp:DropDownList ID='xingbie' runat='server'></asp:DropDownList></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>班级:</font></td><td width='79%'><asp:textbox id='banji' runat='server'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorbanji" runat="server" ControlToValidate="banji" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>出生年月:</font></td><td width='79%'><asp:TextBox ID='chushengnianyue' runat='server' onclick="getDate(Form1.chushengnianyue,'2')" need="1"></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>籍贯:</font></td><td width='79%'><asp:textbox id='jiguan' runat='server'></asp:textbox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>照片:</font></td><td width='79%'><asp:textbox id='zhaopian' Width='395px' runat='server'></asp:textbox>&nbsp;<a href="javaScript:OpenScript('hsgupfile.aspx?Result=zhaopian',500,30)"><img src='Images/Upload.gif' width='30' height='16' border='0' align='absmiddle' /></a></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>身份证:</font></td><td width='79%'><asp:textbox id='shenfenzheng' Width='395px' runat='server'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorshenfenzheng" runat="server" ControlToValidate="shenfenzheng" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>院系:</font></td><td width='79%'><asp:DropDownList ID='yuanxi' runat='server'></asp:DropDownList></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>类别:</font></td><td width='79%'><asp:DropDownList ID='leibie' runat='server'></asp:DropDownList></td></tr>
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><font face="宋体"></font>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="修改" OnClick="Button1_Click"></asp:button><font face="宋体">&nbsp;</font>
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

