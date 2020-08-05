<?php
    mysql_connect("localhost","vhost27462","#@nantuo38");
    mysql_select_db("vhost27462-1");
    mysql_query("set names utf8");
    $data=mysql_query("select * from vhost27462-1");
?>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="1.aspx.cs" Inherits="_1" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <style type="text/css">
        p.MsoNormal {
            margin-bottom: .0001pt;
            font-size: 12.0pt;
            font-family: "Calibri",sans-serif;
            margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
        }
    </style>
</head>
<body>
<?php
$rs=mysql_fetch_row($data);
    echo "$data <br> $rs <br> $rs[0] <br>";
?>
    <form id="form1" runat="server">
        <p align="center" class="MsoNormal" style="text-align: center; line-height: 120%; mso-pagination: widow-orphan">
            <b><span style="mso-bidi-font-size: 12.0pt; line-height: 120%; font-family: &quot; 新細明體&quot; ,serif; mso-bidi-font-family: 新細明體; color: red; mso-font-kerning: 0pt">贈配合政府三倍券促銷資訊</span></b><span lang="EN-US" style="mso-bidi-font-size: 12.0pt; line-height: 120%; font-family: &quot; 新細明體&quot; ,serif; mso-bidi-font-family: 新細明體; mso-font-kerning: 0pt"><o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-size: 10.0pt; line-height: 120%; font-family: &quot; 新細明體&quot; ,serif; mso-bidi-font-family: 新細明體; mso-font-kerning: 0pt">縣市<span lang="EN-US">/</span>鄉鎮市區能在業者刊登後即自動彙總，價格可排序<span lang="EN-US">(</span>在按下排序功能前可先選擇房別<span lang="EN-US">)</span></span><span lang="EN-US" style="mso-bidi-font-size: 12.0pt; line-height: 120%; font-family: &quot; 新細明體&quot; ,serif; mso-bidi-font-family: 新細明體; mso-font-kerning: 0pt"><o:p></o:p></span>
        </p>
        <table width="700" border="1">
            <tr>
            <td>縣市<td>
            <td>鄉鎮市區<td>
            <td>地址<td>
            <td>電話<td>
            <td>名稱<td>
            <td>2人房平日<td>
            <td>2人房假日<td>
            <td>4人房平日<td>
           <td>4人房假日<td>     
            <td>促銷簡介<td>    
            </tr>
            <tr>
            <td><?php echo $rs[2];?></td>
            <td><?php echo $rs[4];?></td>
            <td><?php echo $rs[1];?></td>
            <td><?php echo $rs[5];?></td>
            <td><?php echo $rs[2];?></td>
            <td><?php echo $rs[2];?></td>
            <td><?php echo $rs[2];?></td>
            <td><?php echo $rs[2];?></td>
            <td><?php echo $rs[2];?></td>
            </tr>
        </table>
    </form>
</body>
</html>
