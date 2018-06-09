<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="weishengjiancha_add.aspx.cs" Inherits="学生宿舍管理系统.weishengjiancha_add" %>

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
						<div align="center"><font color="#ffffff">添加卫生检查</font></div>
					</td>
				</tr>
				
			<tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>楼房编号:</font></td><td width='79%'><asp:DropDownList ID='loufangbianhao' runat='server' AutoPostBack="True" OnSelectedIndexChanged="loufangbianhao_SelectedIndexChanged"></asp:DropDownList>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorloufangbianhao" runat="server" ControlToValidate="loufangbianhao" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>房间编号:</font></td><td width='79%'><asp:DropDownList ID='fangjianbianhao' runat='server'></asp:DropDownList>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorfangjianbianhao" runat="server" ControlToValidate="fangjianbianhao" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>卫生得分:</font></td><td width='79%'><asp:TextBox ID='weishengdefen' runat='server'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorweishengdefen" runat="server" ControlToValidate="weishengdefen" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>检查日期:</font></td><td width='79%'><asp:TextBox ID='jianchariqi' runat='server' onclick="getDate(Form1.jianchariqi,'2')" need="1"></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorjianchariqi" runat="server" ControlToValidate="jianchariqi" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>备注:</font></td><td width='79%'><asp:TextBox ID='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server'></asp:TextBox></td></tr>
				
				
				
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
