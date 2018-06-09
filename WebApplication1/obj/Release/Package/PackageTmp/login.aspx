<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="学生宿舍管理系统.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生宿舍管理系统</title>
<style type="text/css">
/*
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #1D3647;
}
*/
</style>
<link href="images/skin.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:#152753">
    <form id="form1" runat="server">
    <div>
        <table width="100%" height="166" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="42" valign="top"><table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
      <tr>
        <td width="1%" height="21">&nbsp;</td>
        <td height="42">&nbsp;</td>
        <td width="17%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg">
      <tr>
        <td width="49%" align="right"><table width="91%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg2">
            <tr>
              <td height="138" valign="top"><table width="89%" height="427" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="149">&nbsp;</td>
                </tr>
                <tr>
                  <td height="80" align="right" valign="top"><table width="72%" height="51" border="0" align="center">
                    <tr>
                      <td><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; font-WEIGHT: bold; font-SIZE: 19pt; margin-top:5pt">
                          <div align="center" class="STYLE5">学生宿舍管理系统</div>
 
                      </div></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td height="198" align="left" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="35%">&nbsp;</td>
                   
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td width="30%" height="40">&nbsp;</td>
                      <td width="35%">&nbsp;</td>
                    </tr>
                  </table></td>
                </tr>
              </table></td>
            </tr>
            
        </table></td>
        <td width="1%" >&nbsp;</td>
        <td width="50%" valign="bottom"><table width="100%" height="59" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" height="38"><span class="login_txt_bt">登陆信息网后台管理</span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td height="21"><table cellspacing="0" cellpadding="0" width="100%" border="0" id="table211" height="328">
                  <tr>
                    <td height="164" colspan="2" align="left">
                         <table cellspacing="0" cellpadding="0" width="100%" border="0" height="143" id="table212">
                          <tr>
                            <td width="130" height="38" align="right" class="top_hui_text" style="width: 60px"><span class="login_txt">用户名：</span></td>
                            <td height="38" colspan="2" class="top_hui_text" align="left">
                                &nbsp;<asp:TextBox ID="TextBox1" runat="server"  Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></asp:TextBox></td>
                          </tr>
                          <tr>
                            <td height="35" class="top_hui_text" style="width: 60px" align="right"><span class="login_txt">密码：</span></td>
                            <td height="35" colspan="2" class="top_hui_text" align="left">
                                &nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"  Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></asp:TextBox>
                              <img src="images/luck.gif" width="19" height="18"> </td>
                          </tr>
                          <tr style="display:none">
                            <td height="35" style="width: 60px" align="right" ><span class="login_txt">权限：</span></td>
                            <td height="35" colspan="2" class="top_hui_text" align="left">
                                &nbsp;<asp:DropDownList ID="cx" runat="server"  Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px">
                                </asp:DropDownList></td>
                          </tr>
                          <tr>
                            <td height="35" style="width: 60px" ></td>
                            <td height="35" align="left" style="width: 10%" >
                            <asp:Button ID="Button1" runat="server" Text="登陆" OnClick="Button1_Click" /></td>
                            <td width="763" class="top_hui_text" align="left">
                            <input id="Reset1" type="reset" value="重置" />
                                &nbsp;
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="注册" Visible=false /></td>
                          </tr>
                        </table>
                        <br>
                   </td>
                  </tr>

                  <tr>
                    <td width="433" height="164" align="right" valign="bottom"><img src="images/login-wel.gif" width="242" height="138"></td>
                    <td width="57" align="right" valign="bottom">&nbsp;</td>
                  </tr>
              </table></td>
            </tr>
          </table>
          </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="height: 20px"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="login-buttom-bg">
      <tr>
      
      </tr>
    </table></td>
  </tr>
</table>
    
    </div>
    </form>
</body>
</html>
