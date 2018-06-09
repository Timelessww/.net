<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gg_detail.aspx.cs" Inherits="学生宿舍管理系统.gg_detail" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" height="381" width="100%">
            <tr>
                <td align="center" height="41">
                    <%=ntitle %>
                    &nbsp;</td>
            </tr>
            <tr>
                <td height="294" valign="top">
                    <%=ncontent %>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" heigh="38">
                    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="javascript:history.back()">返回</asp:HyperLink></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
