<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SBOL.aspx.cs" Inherits="WebApplication3.WebForm2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="JS/jquery.uploadify-v2.1.0/example/css/default.css"
     rel="stylesheet" type="text/css" />
    <link href="JS/jquery.uploadify-v2.1.0/uploadify.css"
     rel="stylesheet" type="text/css" />

    <script type="text/javascript"
     src="JS/jquery.uploadify-v2.1.0/jquery-1.3.2.min.js"></script>

    <script type="text/javascript"
     src="JS/jquery.uploadify-v2.1.0/swfobject.js"></script>

    <script type="text/javascript"
     src="JS/jquery.uploadify-v2.1.0/jquery.uploadify.v2.1.0.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function()
        {
            $("#uploadify").uploadify({
                'uploader': 'JS/jquery.uploadify-v2.1.0/uploadify.swf',
                'script': 'UploadHandler.ashx',
                'cancelImg': 'JS/jquery.uploadify-v2.1.0/cancel.png',
                'folder': 'UploadFile',
                'queueID': 'fileQueue',
                'auto': false,
                'multi': true,
               
            });
        });  
    </script>
<script type="text/javascript">
    var flashvars = {
        spaceLen: 6.0, //specify the length bwteen the end of line and the letter
        size: 18.0, //specify the length of two letter
        color1: "<%=getColor1()%>", //just test by youself
        color2: "<%=getColor2()%>", //if you need,i can give you more control of swf!
        seqs: "<%=getSeqs()%>",
        mathces: "<%=getMatches()%>"
    };
    var params = {
        menu: "true",
        scale: "noScale",
        allowFullscreen: "false",
        allowScriptAccess: "always",
        bgcolor: "#FFFFFF"
    };
    var attributes = {
        id: "RNAShower"
    };
    swfobject.embedSWF("./RNAShower.swf", "altContent", "1", "1", "9.0.0", "expressInstall.swf", flashvars, params, attributes);
</script>
<script type="text/javascript">
    function CheckFile(str) {
        var strRegex = "(.jpg|.JPG|.gif|.GIF)$"; //用于验证图片扩展名的正则表达式
        var re = new RegExp(strRegex);

        if (re.test(str)) {
            return (true);
        }
        else {
            alert("禁止的文件扩展名");
            return (false);
        }
    }
</script>
<title >Terminator Efficiency Calculator</title>
<style type="text/css">
<!--
.STYLE1 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 13px;
}
body {
	background-image: url();
}
.STYLE2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}
    .style1
    {
        height: 25px;
    }
    .style2
    {
        height: 127px;
    }
    .style3
    {
        height: 21px;
    }
    .style4
    {
        height: 21px;
        width: 289px;
    }
    .style9
    {
        height: 5px;
        width: 289px;
    }
    .style10
    {
        width: 289px;
    }
    .style11
    {
        height: 67px;
        width: 289px;
    }
    .style12
    {
        height: 20px;
    }
    .style13
    {
        height: 5px;
    }
    .style14
    {
        height: 6px;
    }
    .style21
    {
        height: 5px;
        }
    .style23
    {
        height: 83px;
    }
    .style24
    {
        width: 364px;
    }
    .style25
    {
        height: 39px;
    }
    .style15
    {
        height: 25px;
        width: 272px;
    }
    -->
</style>
</head>
<body>
    <form id="form1" runat="server" >
<table width="862" height="546" border="1" align="center" bordercolor="FFFFFFF">
  <tr>
    <td class="style13" colspan="2" align="right"><span class="STYLE1"><a href="help.htm">Help</a>&nbsp;&nbsp;&nbsp;
        <a href="Lab.aspx">Experiment Data</a>&nbsp;&nbsp; <a href="Information.htm">About us</a>&nbsp; 
        <a href="software.aspx">Software Version</a></span></td>
  </tr>
  <tr>
    <td colspan="2" class="style2"><div align="center"><img src="Logoo.jpg" width="468" height="114" /></div></td>
  </tr>
  <tr>
    <td height="23" colspan="2"><div align="right" class="STYLE2">--------------Welcome 
        to use our transcription terminator efficiency calculator! </div></td>
  </tr>
    <tr>
    <td colspan="2" class="style14"></td>
  </tr>
    <tr>
    <td colspan="2" class="style12"><div align="center"><a href="TTEC.aspx">
        <asp:Button ID="Button6" runat="server" 
            Text="TTEC——Directly Enter Your Sequence" Width="292px" /></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<a href="SBOL.aspx"><asp:Button ID="Button5" 
            runat="server" Text="SBOL——Upload Your Sequence" Width="319px" />
        </a>
        </div></td>
  </tr>
                      <tr>

                        <td class="style21" colspan="2">
                        <div align="center">
        <asp:FileUpload ID="fudTest" runat="server" />
                        
                                &nbsp;&nbsp;&nbsp;
                        
                                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" /> 

                                &nbsp; 

                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label> 
                                </div>

                          </td>


                    </tr>

    <tr>
    <td class="style15">
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="TTEC RUN" 
            onclick="Button2_Click" Width="121px" 
            style="margin-left: 0px; margin-bottom: 0px;" Height="23px" />
        &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Direction:" class="STYLE1"></asp:Label>
      </td>
    <td class="style1">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server"  
            Height="16px" onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
            RepeatDirection="Horizontal" style="margin-top: 0px" Width="188px" 
            CssClass="STYLE1">
            <asp:ListItem Selected="True">Forward</asp:ListItem>
            <asp:ListItem>Reverse</asp:ListItem>
        </asp:RadioButtonList>
      </td>
    </tr>
  <tr>
    <td colspan="2" class="style1"><div align="center">
        <asp:Label ID="Label1" runat="server" BorderColor="Black" Font-Bold="True" 
            Font-Size="Small" ForeColor="Red"></asp:Label>
        </div>
      </td>
  </tr>
  <tr>
    <td class="style4">
        <asp:Label ID="Label4" runat="server" CssClass="STYLE1"></asp:Label>
      </td>
    <td width="570" class="style3">
        <asp:Label ID="Label5" runat="server" CssClass="STYLE1"></asp:Label>
      </td>
  </tr>
  <tr>
    <td class="style10">
        <asp:Label ID="Label2" runat="server" ></asp:Label>
      </td>
    <td width="570" rowspan="6"><asp:Label ID="RNAViewerLabel" runat="server" Text="" Visible=false></asp:Label>
    <img src="<%=getRNAImageName()%>" alt="The image of RNA" />
    <!--
<div id="altContent" >
<h1>Your terminator</h1>
<p>Sorry,there may be something wrong with the flash!</p>
<p><a href="http://www.adobe.com/go/getflashplayer"><img
src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
alt="Get Adobe Flash player" /></a></p>
</div>
-->
</td>
  </tr>
  <tr>
    <td class="style10">
        <asp:Label ID="Label6" runat="server" CssClass="STYLE1"></asp:Label>
      </td>
  </tr>
  <tr>
    <td class="style10">
        <asp:Label ID="Label3" runat="server" ></asp:Label>
      </td>
  </tr>
  <tr>
    <td class="style9">&nbsp;</td>
  </tr>
  <tr>
    <td class="style9">&nbsp;</td>
  </tr>
  <tr>
    <td class="style11">
        &nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" class="style25"><div align="center" style="margin-bottom: 0px"><span class="STYLE1" 
            style="font-size: medium">Click here to view the database : 
        <asp:LinkButton ID="LinkButton1" runat="server"><a href="Database.html"/>Database</asp:LinkButton>
        </span></div></td>
  </tr>
  
  </table>
    <table align="center" style="width: 622px;">
        <tr>
            <td class="style24" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold">
                For more information, please visit our wiki:</td>
            <td class="style23" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold">
                <a href="http://2012.igem.org/Team:SUSTC-Shenzhen-B">
                <img alt="" src="捕获.PNG" 
                    style="border-style: none; height: 76px; width: 249px; margin-left: 0px;" /></a></td>
        </tr>
    </table>
    </form>

<script type="text/javascript">
    function showRna(seqs, matches) {
        if (!thisMovie("RNAShower").showRna(seqs, matches)) {
            document.write("args error");
        }
    }
    function setWidthHeight(w, h) {
        var b = thisMovie("RNAShower").getIsDrawSuccess();
        if (b == 1) {
            thisMovie("RNAShower").width = w;
            thisMovie("RNAShower").height = h;
        } else {
            thisMovie("RNAShower").width = thisMovie("RNAShower").height = 1;
        }
    }
    function thisMovie(movieName) {
        /*if (navigator.appName.indexOf("Microsoft") != -1) {
        return window[movieName]
        }
        else {
        return document[movieName]
        }*/
        return document.getElementById("RNAShower");
    }
        function getFileName() {
            var url = this.location.href
            var pos = url.lastIndexOf("/");
            if (pos == -1) {
                pos = url.lastIndexOf("\\")
            }
            var filename = url.substr(pos + 1)
            return filename;
        
    }



</script></body>
</html>