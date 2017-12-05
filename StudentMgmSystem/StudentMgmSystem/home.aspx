<%@ Page Language="C#" AutoEventWireup="true" Inherits="home" CodeBehind="home.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>STUDENT MANAGEMENT SYSTEM</title>
    <style type="text/css">
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }

        .style1 {
            width: 100%;
        }
    </style>
    <link href="css/19-1-10-1-14.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="form1" runat="server">
        <div id="main">
            <div id="header" align="center">STUDENT MANAGEMENT SYSTEM</div>
            <div id="banner">
                <div id="menupanel">
                    <ul>
                        <li><a href="home.aspx">Home</a></li>
                        <li><a href="Default5.aspx">Sign In</a></li>
                        <li><a href="contactus.aspx">Contact Us</a></li>
                        <li><a href="administration.aspx">Administration</a></li>

                    </ul>
                </div>

            </div>
            <div id="content">
                <div class="col1">
                    <span class="Apple-style-span"
                        style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium;">
                        <span class="Apple-style-span"
                            style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px;"></span>
                        <table class="style1">
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;<asp:LinkButton
                                    ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">Sign In</span></span></asp:LinkButton>
                                    &nbsp;&nbsp;                  
                 
                                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">Feedback</span></span></asp:LinkButton>
                                    &nbsp; |&nbsp;                             
                
                                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">Contact Us</span></span></asp:LinkButton>
                                    &nbsp; |
             
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1"><span class="Apple-style-span" 
          style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
          style="color: rgb(255, 255, 255); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21px; text-align: justify; word-spacing: 2px; ">Administration</span></span></asp:LinkButton>
                                    &nbsp; |</td>
                            </tr>
                        </table>
                    </span></span> 
 
                </div>

                <div class="sider">
                    <img src="images/mk.jpg" alt="sider1" height="100"
                        style="width: 220px" /><br />
                    <br />
                    <img src="images/ka.jpg" alt="sider2" height="100" style="width: 223px" />
                </div>
            </div>
            <div id="footer">
                <br />
                Copyright © ALL RIGHTS RESERVED<br />
    </form>
</body>
</html>
