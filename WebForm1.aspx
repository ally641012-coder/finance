<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs"
    Inherits="finance.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>未平倉量分析</title>
</head>

<body>

<form id="form1" runat="server">

    <div>

        <h2>未平倉量分析</h2>

        未平倉量：

        <asp:DropDownList ID="ddlOpenInterest" runat="server">
            <asp:ListItem Value="">請選擇</asp:ListItem>
            <asp:ListItem Value="增加">增加</asp:ListItem>
            <asp:ListItem Value="減少">減少</asp:ListItem>
        </asp:DropDownList>

        <br /><br />

        台指期貨價格：

        <asp:DropDownList ID="ddlPrice" runat="server">
            <asp:ListItem Value="">請選擇</asp:ListItem>
            <asp:ListItem Value="上漲">上漲</asp:ListItem>
            <asp:ListItem Value="下跌">下跌</asp:ListItem>
        </asp:DropDownList>

        <br /><br />

        <asp:Button
            ID="btnCheck"
            runat="server"
            Text="開始分析"
            OnClick="btnCheck_Click" />

        <br /><br />

        <asp:Label
            ID="lblResult"
            runat="server">
        </asp:Label>

    </div>

</form>

</body>
</html>