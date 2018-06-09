<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="left.aspx.cs" Inherits="学生宿舍管理系统.left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
   <script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}
#container {
	width: 182px;
}
H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;	
}
H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(images/menu_bgS.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 182px;
	height: 26px;
	
}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}
.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
</head>
<body background="images/pic_leftb_client.gif" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div>
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr>
    <td width="182" valign="top"><div id="container">
      <h1 class="type"><a href="javascript:void(0)">系统用户管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="edituser.aspx" target="hsgmain">管理员添加</a></li>
		  <li><a href="listuser.aspx" target="hsgmain">管理员查询</a></li>
        
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">个人资料管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="mod.aspx" target="hsgmain">修改密码</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">参数设计</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="fangyuanleixingxinxi_list.aspx" target="hsgmain">房源类型</a></li>
          <li><a href="xueshengleibiexinxi_list.aspx" target="hsgmain">学生类别</a></li>
          <li><a href="bumenxinxi_list.aspx" target="hsgmain">部门</a></li>
          <li><a href="yuanxixinxi_list.aspx" target="hsgmain">院系</a></li>

        </ul>
      </div>

      <h1 class="type"><a href="javascript:void(0)">基本数据</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
		  <li><a href="fangyuanku_list.aspx" target="hsgmain">房源库</a></li>
		  <li><a href="xueshengziliao_list.aspx" target="hsgmain">学生资料库</a></li>
		 
          
        </ul>
      </div>
      
    <h1 class="type"><a href="javascript:void(0)">房屋分配</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
		  <li><a href="zhusufenpei_add.aspx" target="hsgmain">住宿分配</a></li>
		  <li><a href="zhusufenpei_list.aspx" target="hsgmain">分配查询</a></li>
		 
          
        </ul>
      </div>
	
      
      <h1 class="type"><a href="javascript:void(0)">住宿管理</a></h1>
      <div class="content">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
            </tr>
          </table>
        <ul class="MM">
         
          <li><a href="wailairenyuanjilu_list.aspx" target="hsgmain">外来人员登记</a></li>
          <li><a href="weishengjiancha_list.aspx" target="hsgmain">卫生管理</a></li>
          <li><a href="weijijilu_list.aspx" target="hsgmain">违纪记录</a></li>
          
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">工作人员管理</a></h1>
      <div class="content">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
            </tr>
          </table>
        <ul class="MM">
         
          <li><a href="gongzuorenyuan_add.aspx" target="hsgmain">工作人员添加</a></li>
          <li><a href="gongzuorenyuan_list.aspx" target="hsgmain">工作人员修改</a></li>
          
          
        </ul>
      </div>
      
       <h1 class="type"><a href="javascript:void(0)">物品财务管理</a></h1>
      <div class="content">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
            </tr>
          </table>
        <ul class="MM">
         
          <li><a href="wupinxinxi_add.aspx" target="hsgmain">物品信息添加</a></li>
          <li><a href="wupinxinxi_list.aspx" target="hsgmain">物品信息查询</a></li>
          <li><a href="weixiujilu_add.aspx" target="hsgmain">维修记录添加</a></li>
          <li><a href="weixiujilu_list.aspx" target="hsgmain">维修记录管理</a></li>
          
        </ul>
      </div>
      
       <h1 class="type"><a href="javascript:void(0)">公寓管理制度</a></h1>
      <div class="content">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
            </tr>
          </table>
        <ul class="MM">
         
          <li><a href="gg_add.aspx?lb=1" target="hsgmain">管理制度添加</a></li>
          <li><a href="gg_list.aspx?lb=1" target="hsgmain">管理制度查询</a></li>
          
        </ul>
      </div>
      
      
        <script type="text/javascript">
            var contents = document.getElementsByClassName('content');
            var toggles = document.getElementsByClassName('type');

            var myAccordion = new fx.Accordion(
                toggles, contents, { opacity: true, duration: 400 }
            );
            myAccordion.showThisHideOpen(contents[0]);
	</script>
        </td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
