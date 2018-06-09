<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_top.aspx.cs" Inherits="学生宿舍管理系统.admin_top" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<script language=JavaScript>
    function logout() {
        if (confirm("您确定要退出控制面板吗？"))
            top.location = "logout.aspx";
        return false;
    }
</script>
<script language=JavaScript1.2>
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<script language=JavaScript1.2>
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<base target="main">
<link href="images/skin.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE5 {color: #72AC27;
	font-size: 26pt;
}
.STYLE6 {color: #CCCCCC}
-->
</style>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="61%" height="64"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="9%" background="images/logo.gif">&nbsp;</td>
        <td width="91%"><table width="72%" height="51" border="0" align="left">
          <tr>
            <td><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; font-WEIGHT: bold; font-SIZE: 19pt; margin-top:5pt">
                <div align="center" class="STYLE5">
                  <div align="left" class="STYLE6">学生宿舍管理系统</div>
                </div>
            </div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
    <td width="39%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="74%" height="38" class="admin_txt">当前用户：<b><%=Session["username"].ToString().Trim() %></b>，您的权限：<%=Session["cx"].ToString().Trim() %> 您好,感谢登陆使用！</td>
        <td width="22%"><a href="#" target="_self" onClick="logout();"><img src="images/out.gif" alt="安全退出" width="46" height="20" border="0"></a></td>
        <td width="4%">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="3">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
