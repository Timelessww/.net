﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fangyuanleixingxinxi_list.aspx.cs" Inherits="学生宿舍管理系统.fangyuanleixingxinxi_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="search" align="center" border="1" bordercolor="#cccccc" cellpadding="0"
            cellspacing="1" class="table_1" width="98%">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        所有房源类型信息信息列表</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp;房源类型：<asp:TextBox ID="bh" runat="server"></asp:TextBox>&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                Text="查找" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="新增" />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" cellpadding="2" font-name="verdana" font-Names="verdana"
                            font-Size="8pt" headerStyle-BackColor="#F8FAFC" 
                           
                            PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
                            <headerStyle BackColor="#F8FAFC" font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle font-Bold="True" font-Names="宋体" ForeColor="Blue" HorizontalAlign="Right"
                NextPageText="下一页" PrevPageText="上一页" />
                            <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" font-Bold="False" font-Italic="False"
                                font-Overline="False" font-Size="Smaller" font-Strikeout="False" font-Underline="False"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <Columns>
                                <asp:TemplateColumn headerText="序号">
                                    <headerStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField=fangyuanleixing headerText='房源类型'></asp:BoundColumn>
                                
                                <asp:TemplateColumn headerText="修改">
                                <ItemTemplate>
                                    <a href='fangyuanleixingxinxi_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'
                                       >修改</a>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn headerText="删除">
                                 <ItemTemplate>
                                    <a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=fangyuanleixingxinxi&npage=fangyuanleixingxinxi_list.aspx'
                                        onclick="return confirm('确定要删除？')">删除</a>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                            <ItemStyle font-Bold="False" font-Italic="False" font-Overline="False" font-Strikeout="False"
                                font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">打印本页</a></td>
                </tr>
            </tbody>
        </table>
    
    </div>
    </form>
</body>
</html>
