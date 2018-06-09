<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gg_list.aspx.cs" Inherits="学生宿舍管理系统.gg_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" style="width: 98%">
        <tr>
            <td align="left" style="height: 328px" valign=top>
                <table align="center" border="1" bordercolordark="#9cc7ef" bordercolorlight="#145aa0"
                    cellpadding="4" cellspacing="0" style="width: 100%">
                    <tr bgcolor="#4296e7">
                        <td colspan="1">
                            <div align="center">
                                <font color="#ffffff">
                                    <%=lbtxt %>
                                    列表 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <a href="gg_add.aspx?lb=<%=lb%>">
                                        <font color="#ffffff">新增</font></a></font></div>
                        </td>
                    </tr>
                    <tr>
                        <td width="79%">
                            &nbsp;<asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False"
                                BorderColor="DodgerBlue" Height="139px" PageSize="6" Width="100%">
                                <SelectedItemStyle BackColor="Blue" />
                                <PagerStyle NextPageText="上一页" PrevPageText="下一页" />
                                <ItemStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateColumn headerText="序号">
                                        <ItemTemplate>
                                            <%#Container.ItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="title" headerText="标题">
                                        <headerStyle Width="300px" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="addtime" headerText="添加时间"></asp:BoundColumn>
                                    <asp:TemplateColumn headerText="查看">
                                        <ItemTemplate>
                                            <a href='gg_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>查看</a>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn headerText="修改">
                                        <ItemTemplate>
                                            <a href='gg_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>修改</a>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn headerText="删除">
                                        <ItemTemplate>
                                            <a href='delgg.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=allgonggao&npage=gg_list.aspx&lb=<%=lb %>'
                                                onclick="return confirm('确定要删除？')">删除</a>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid></td>
                    </tr>
                    <tr>
                        <td colspan="1">
                            <div align="center">
                            </div>
                        </td>
                    </tr>
                    <tr bgcolor="#4296e7">
                        <td colspan="1">
                            &nbsp;</td>
                    </tr>
                </table>
                
                </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
