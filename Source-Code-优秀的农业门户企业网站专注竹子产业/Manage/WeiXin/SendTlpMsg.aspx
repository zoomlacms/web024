﻿<%@ page language="C#" autoeventwireup="true" inherits="Manage_WeiXin_SendTlpMsg, App_Web_mercq1rj" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>模板消息</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <table class="table table-bordered table-striped">
        <tr>
            <td class="td_m"><strong>模板标题</strong></td>
            <td>
                <asp:Label runat="server" ID="title_L" />
            </td>
        </tr>
        <tr>
            <td><strong>详情URL</strong></td>
            <td>
                <ZL:TextBox runat="server" ID="Url_T" AllowEmpty="false" CssClass="form-control text_300" />
            </td>
        </tr>
        <tr>
            <td><strong>模板内容</strong></td>
            <td>
                <asp:Label runat="server" ID="content_L" /></td>
        </tr>
        <tr>
            <td><strong>JSON样例</strong></td>
            <td>
                <asp:Label runat="server" ID="data_L" /></td>
        </tr>
        <tr>
            <td><strong>模板示例</strong></td>
            <td>
                <asp:Label runat="server" ID="ex_L" />
            </td>
        </tr>
        <%--        <tr>
            <td><strong>消息内容</strong></td>
            <td><%=GetInputHtml() %></td>
        </tr>
        <tr>
            <td><strong>参数颜色</strong></td>
            <td><%=GetColorHtml() %></td>
        </tr>--%>
        <label runat="server" id="ParasTr"></label>
        <tr>
            <td></td>
            <td>
                <asp:Button runat="server" ID="Send_B" OnClick="Send_B_Click" Text="发 送" CssClass="btn btn-primary" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
    <script>
        $(function () {
            $(".col_t").css("margin-right", 15);
            $(".col_t").click(function () {
                var cid = $(this).attr("name");
                $("#" + cid).click();
            });
            $(".col_c").change(function () {
                var cid = $(this).attr("id");
                $("input[name=" + cid + "]").val($(this).val()).css("color", $(this).val());
            });
        });
    </script>
</asp:Content>
