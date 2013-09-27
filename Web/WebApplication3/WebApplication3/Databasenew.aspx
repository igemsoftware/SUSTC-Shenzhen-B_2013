<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Databasenew.aspx.cs" Inherits="WebApplication3.Databasenew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Terminator Database</title>
<style type="text/css">
<!--
.STYLE8 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: 8; }
.STYLE9 
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 8;
	font-weight: bold;
}
.STYLE11 {font-family: Arial, Helvetica, sans-serif; font-size:6; }
.STYLE12 {font-size: 6}
body {
	background-color: #FFFFFF;
}
    .style11
    {
        width: 1257px;
    }
    .style14
    {
        width: 93px;
        height: 84px;
    }
    .style15
    {
        height: 28px;
    }
    .style16
    {
        height: 62px;
    }
    .style17
    {
        width: 131px;
        height: 100px;
    }
.font7
	{color:windowtext;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:宋体;
	}
.font8
	{color:windowtext;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:宋体;
	}
.font13
	{color:windowtext;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:宋体;
	}
.font12
	{color:windowtext;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:宋体;
	}
.font10
	{color:windowtext;
	font-size:10.5pt;
	font-weight:400;
	font-style:italic;
	text-decoration:none;
	font-family:Arial, sans-serif;
	}
.font9
	{color:windowtext;
	font-size:10.5pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	}
.font11
	{color:windowtext;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:华文新魏;
	}
    .style30
    {
        color: windowtext;
        font-size: 11.0pt;
        font-weight: 400;
        font-style: normal;
        text-decoration: none;
        font-family: 宋体;
        text-align: general;
        vertical-align: middle;
        white-space: nowrap;
        border-style: none;
        border-color: inherit;
        border-width: medium;
        padding-left: 1px;
        padding-right: 1px;
        padding-top: 1px;
    }
    .style31
    {
        color: windowtext;
        font-size: 11.0pt;
        font-weight: 400;
        font-style: normal;
        text-decoration: none;
        font-family: 宋体;
        text-align: right;
        vertical-align: middle;
        white-space: nowrap;
        border-style: none;
        border-color: inherit;
        border-width: medium;
        padding-left: 1px;
        padding-right: 1px;
        padding-top: 1px;
    }
    .style36
    {
        color: windowtext;
        font-size: 11.0pt;
        font-weight: 400;
        font-style: normal;
        text-decoration: underline;
        font-family: 宋体;
        text-align: right;
        vertical-align: middle;
        white-space: nowrap;
        border-style: none;
        border-color: inherit;
        border-width: medium;
        padding-left: 1px;
        padding-right: 1px;
        padding-top: 1px;
    }
    .style38
    {
        color: black;
        font-size: 11.0pt;
        font-weight: 400;
        font-style: normal;
        text-decoration: none;
        font-family: 宋体;
        text-align: general;
        vertical-align: bottom;
        white-space: nowrap;
        border-style: none;
        border-color: inherit;
        border-width: medium;
        padding-left: 1px;
        padding-right: 1px;
        padding-top: 1px;
    }
    .style74
    {
        height: 13.5pt;
        color: windowtext;
        font-size: 11.0pt;
        font-weight: 400;
        font-style: normal;
        text-decoration: none;
        font-family: 宋体;
        text-align: general;
        vertical-align: middle;
        white-space: nowrap;
        border-style: none;
        border-color: inherit;
        border-width: medium;
        padding-left: 1px;
        padding-right: 1px;
        padding-top: 1px;
    }
    .style75
    {
        color: windowtext;
        font-size: 10.5pt;
        font-weight: 400;
        font-style: normal;
        text-decoration: none;
        font-family: Arial, sans-serif;
        text-align: general;
        vertical-align: middle;
        white-space: nowrap;
        border-style: none;
        border-color: inherit;
        border-width: medium;
        padding-left: 1px;
        padding-right: 1px;
        padding-top: 1px;
    }
    .style76
    {
        color: windowtext;
        font-size: 10.5pt;
        font-weight: 400;
        font-style: normal;
        text-decoration: none;
        font-family: Arial, sans-serif;
        text-align: left;
        vertical-align: middle;
        white-space: nowrap;
        border-style: none;
        border-color: inherit;
        border-width: medium;
        padding-left: 1px;
        padding-right: 1px;
        padding-top: 1px;
    }
    .style77
    {
        height: 13.5pt;
        color: black;
        font-size: 11.0pt;
        font-weight: 400;
        font-style: normal;
        text-decoration: none;
        font-family: 宋体;
        text-align: general;
        vertical-align: bottom;
        white-space: nowrap;
        border-style: none;
        border-color: inherit;
        border-width: medium;
        padding-left: 1px;
        padding-right: 1px;
        padding-top: 1px;
    }
    .style78
    {
        height: 14.25pt;
        color: black;
        font-size: 11.0pt;
        font-weight: 400;
        font-style: normal;
        text-decoration: none;
        font-family: 宋体;
        text-align: general;
        vertical-align: bottom;
        white-space: nowrap;
        border-style: none;
        border-color: inherit;
        border-width: medium;
        padding-left: 1px;
        padding-right: 1px;
        padding-top: 1px;
    }
    .style79
    {
        color: windowtext;
        font-size: 12.0pt;
        font-weight: 400;
        font-style: normal;
        text-decoration: none;
        font-family: 宋体;
        text-align: general;
        vertical-align: middle;
        white-space: nowrap;
        border-style: none;
        border-color: inherit;
        border-width: medium;
        padding-left: 1px;
        padding-right: 1px;
        padding-top: 1px;
    }
    .style80
    {
        font-family: Arial, Helvetica, sans-serif;
        font-weight: bold;
        font-size: 8;
        height: 36px;
    }
-->
</style>
</head>

<body>
<table width="1275" align="center">
  
  <tr class=style11>
    <td class="style17" 
          
          style="font-family: 'Malgun Gothic'; font-weight: bold; font-size: 45px; font-style: normal; text-transform: none;"> 
        <img alt="" class="style14" src="logoo.PNG" />&nbsp; </td>
    <td width="791" class="style16" 
          style="font-family: Meiryo; font-size: 45px; font-weight: bold">&nbsp; Terminator Database</td>
    <td width="791" class="style16" 
          style="font-family: Meiryo; font-size: 45px; font-weight: bold">&nbsp;</td>
  </tr>
  
  <tr class=style11>
    <td class="style15" 
          
          style="font-family: 'Malgun Gothic'; font-weight: bold; font-size: 14px; font-style: normal; text-transform: none;" 
          colspan="3"> <a href=TTEC.aspx>
        Back to the Calculator</a></td>
  </tr>
</table>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;width:3283pt" width="4376" x:str="">
        <colgroup>
            <col width="134" />
            <col width="315" />
            <col width="133" />
            <col width="206" />
            <col width="151" />
            <col width="155" />
            <col width="117" />
            <col width="75" />
            <col width="563" />
            <col width="1144" />
            <col width="925" />
            <col width="458" />
        </colgroup>
        <tr>
            <td class="style80" width="134">
                Terminator Name</td>
            <td class="style80" width="315">
                Category</td>
            <td class="style80" width="133">
                Direction</td>
            <td class="style80" width="206">
                Environment</td>
            <td class="style80" width="151">
                Forward Efficiency</td>
            <td class="style80" width="155">
                Reverse Efficiency</td>
            <td class="style80" width="117">
                Loop</td>
            <td class="style80" width="75">
                s<font class="font7">pacer</font></td>
            <td class="style80" width="563">
                Tail</td>
            <td class="style80" width="1144">
                F<font class="font8">ull sequnce</font></td>
            <td class="style80" width="925">
                Reference</td>
            <td class="style80" width="458">
                Note</td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                B<font class="font8">Ba_B0011</font></td>
            <td class="style30">
                artificial(Designed by Reshma Shetty)</td>
            <td class="style30">
                Bidirectional</td>
            <td class="style30">
                E. coli</td>
            <td class="style31">
                41.9%[CC]/95%[JK]</td>
            <td class="style31">
                63.6%[CC]/86%[JK]</td>
            <td class="style30">
                ATT</td>
            <td class="style30">
            </td>
            <td>
                TTTTTTATTATTT</td>
            <td class="style30">
                AGAGAATATAAAAAGCCAGATTATTAATCCGGCTTTTTTATTATTT</td>
            <td class="style30">
                http://partsregistry.org/Terminators/Catalog#Reverse_terminators</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                BBa_B0014</td>
            <td class="style30">
                artificial(Designed by Reshma Shetty)</td>
            <td class="style30">
                Bidirectional</td>
            <td class="style30">
                E. coli</td>
            <td class="style31">
                60.4%[CC]/96%[JK]</td>
            <td class="style31">
                86%[JK]</td>
            <td class="style30">
            </td>
            <td class="style30">
            </td>
            <td>
            </td>
            <td class="style30">
                TCACACTGGCTCACCTTCGGTGGGCCTTTCTGCGTTTATATACTAGAGAGAGAATATAAAAAGCCAGATTATTAATCCGGCTTTTTTATTATTT</td>
            <td class="style30">
                http://partsregistry.org/Terminators/Catalog#Reverse_terminators</td>
            <td class="style30">
                double terminator combined of BBa_B0012 and BBa_B0011</td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                B<font class="font8">Ba_B0015</font></td>
            <td class="style30">
                artificial(Designed by Reshma Shetty)</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td class="style31">
                98.4%[CC]/97%[JK]</td>
            <td class="style31">
                29<font class="font13">.</font><font class="font7">5[CC]/62[JK]</font></td>
            <td class="style30">
            </td>
            <td class="style30">
            </td>
            <td>
            </td>
            <td class="style30">
                CCAGGCATCAAATAAAACGAAAGGCTCAGTCGAAAGACTGGGCCTTTCGTTTTATCTGTTGTTTGTCGGTGAACGCTCTCTACTAGAGTCACACTGGCTCTCACACTGGCTCACCTTCGGGTGGGCCTTTCTGCGTTTATA</td>
            <td class="style30">
                http://partsregistry.org/Terminators/Catalog#Reverse_terminators</td>
            <td class="style30">
                double terminator combined of BBa_B0010 and BBa_B0012</td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                B<font class="font8">Ba_B0021</font></td>
            <td class="style30">
                artificial(Designed by Caitlin Conboy)</td>
            <td class="style30">
                Bidirectional</td>
            <td class="style30">
                E. coli</td>
            <td class="style31">
                63.6%[CC]/86%[JK]</td>
            <td class="style31">
                41.9%[CC]/95%[JK]</td>
            <td class="style30">
                A<font class="font12">TT</font></td>
            <td class="style30">
            </td>
            <td>
                TTTTTTATTATTT</td>
            <td class="style30">
                AGAGAATATAAAAAGCCAGATTATTAATCCGGCTTTTTTATTATTT</td>
            <td class="style30">
                http://partsregistry.org/Terminators/Catalog#Reverse_terminators</td>
            <td class="style30">
                reverse of BBa_B0011</td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                BBa_B0024</td>
            <td class="style30">
                artificial(Designed by Caitlin Conboy)</td>
            <td class="style30">
                Bidirectional</td>
            <td class="style30">
                E. coli</td>
            <td class="style31">
                86%[JK]</td>
            <td class="style31">
                60.4%[CC]/96%[JK]</td>
            <td class="style30">
                TTG</td>
            <td class="style30">
            </td>
            <td>
                TTTCTGCGTTTATATACTAGAGAGAGAATATAAAAAGCCAGATTATTAATCCGGCTTTTTTATTATTT</td>
            <td class="style30">
                TCACACTGGCTCACCTTCGGTGGGCCTTTCTGCGTTTATATACTAGAGAGAGAATATAAAAAGCCAGATTATTAATCCGGCTTTTTTATTATTT</td>
            <td class="style30">
                http://partsregistry.org/Terminators/Catalog#Reverse_terminators</td>
            <td class="style30">
                reverse of BBa_B0014</td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                B<font class="font8">Ba_B0025</font></td>
            <td class="style30">
                artificial(Designed by Caitlin Conboy)</td>
            <td class="style30">
                Reverse</td>
            <td class="style30">
                E. coli</td>
            <td class="style31">
                29.5%[CC]/62%[JK]</td>
            <td class="style31">
                98.4%[CC]/97%[JK]</td>
            <td class="style30">
                G<font class="font12">AAA</font></td>
            <td class="style30">
                C</td>
            <td>
                TGTTGTTTGTCGGTGAACGCTCTCTACTAGAGTCACACTGGCTCACCTTCGGGTGGGCCTTTCTGCGTTTATA</td>
            <td class="style30">
                CCAGGCATCAAATAAAACGAAAGGCTCAGTCGAAAGACTGGGCCTTTCGTTTTATCTGTTGTTTGTCGGTGAACGCTCTCTACTAGAGTCACACTGGCTCACCTTCGGGTGGGCCTTTCTGCGTTTATA</td>
            <td class="style30">
                http://partsregistry.org/Terminators/Catalog#Reverse_terminators</td>
            <td class="style30">
                reverse of BBa_B0015</td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                BBa B1001</td>
            <td class="style30">
                artificial(Designed by Haiyao Huang)</td>
            <td class="style30">
                Bidirectional</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.81">
                81%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTCG</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTTTTT</td>
            <td class="style30">
                AAAAAAAAACCCCGCTTCGGCGGGGTTTTTTTTT</td>
            <td class="style30">
                Design and Characterization of Artificial Transcriptional Terminators by Haiyao 
                Huang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18" x:str="BBa B1002 ">
                BBa B1002<span style="mso-spacerun:yes">&nbsp;</span></td>
            <td class="style30">
                artificial(Designed by Haiyao Huang)</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.98">
                98%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTCG</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTT</td>
            <td class="style30">
                AAAAAACCCCGCTTCGGCGGGGTTTTTT</td>
            <td class="style30">
                Design and Characterization of Artificial Transcriptional Terminators by Haiyao 
                Huang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                BBa B100<font class="font8">3</font></td>
            <td class="style30">
                artificial(Designed by Haiyao Huang)</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.83">
                83%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTCG</td>
            <td class="style30">
            </td>
            <td class="style30">
                T<font class="font8">TTTT</font></td>
            <td class="style30">
                AAAAACCCCGCTTCGGCGGGGTTTTT</td>
            <td class="style30">
                Design and Characterization of Artificial Transcriptional Terminators by Haiyao 
                Huang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                BBa B100<font class="font8">4</font></td>
            <td class="style30">
                artificial(Designed by Haiyao Huang)</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.93">
                93%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTCG</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTT</td>
            <td class="style30">
                AAAACCCCGCTTCGGCGGGGTTTT</td>
            <td class="style30">
                Design and Characterization of Artificial Transcriptional Terminators by Haiyao 
                Huang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                BBa B100<font class="font8">5</font></td>
            <td class="style30">
                artificial(Designed by Haiyao Huang)</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.86">
                86%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTCG</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTT</td>
            <td class="style30">
                AAACCCCGCTTCGGCGGGGTTT</td>
            <td class="style30">
                Design and Characterization of Artificial Transcriptional Terminators by Haiyao 
                Huang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                BBa B100<font class="font8">6</font><font class="font7"><span 
                    style="mso-spacerun:yes">&nbsp;</span></font></td>
            <td class="style30">
                artificial(Designed by Haiyao Huang)</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.99">
                99%</td>
            <td class="style30">
            </td>
            <td class="style30">
                C<font class="font8">AGTCA</font></td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTTTTT</td>
            <td class="style30">
                AAAAAAAAACCCCGCCCCTGACAGGGCGGGGTTTTTTTTT</td>
            <td class="style30">
                Design and Characterization of Artificial Transcriptional Terminators by Haiyao 
                Huang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                BBa B100<font class="font8">7</font></td>
            <td class="style30">
                artificial(Designed by Haiyao Huang)</td>
            <td class="style30">
                Bidirectional</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.83">
                83%</td>
            <td class="style30">
            </td>
            <td class="style30">
                C<font class="font8">AGTCA</font></td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTT</td>
            <td class="style30">
                AAAAAACCCCGCCCCTGACAGGGCGGGGTTTTTT</td>
            <td class="style30">
                Design and Characterization of Artificial Transcriptional Terminators by Haiyao 
                Huang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                BBa B100<font class="font8">8</font></td>
            <td class="style30">
                artificial(Designed by Haiyao Huang)</td>
            <td class="style30">
                Bidirectional</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.95">
                95%</td>
            <td class="style30">
            </td>
            <td class="style30">
                C<font class="font8">AGTCA</font></td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTT</td>
            <td class="style30">
                AAAAACCCCGCCCCTGACAGGGCGGGGTTTTT</td>
            <td class="style30">
                Design and Characterization of Artificial Transcriptional Terminators by Haiyao 
                Huang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                BBa B100<font class="font8">9</font></td>
            <td class="style30">
                artificial(Designed by Haiyao Huang)</td>
            <td class="style30">
                Bidirectional</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.94">
                94%</td>
            <td class="style30">
            </td>
            <td class="style30">
                C<font class="font8">AGTCA</font></td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTT</td>
            <td class="style30">
                AAAACCCCGCCCCTGACAGGGCGGGGTTTT</td>
            <td class="style30">
                Design and Characterization of Artificial Transcriptional Terminators by Haiyao 
                Huang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                BBa B100<font class="font8">10</font></td>
            <td class="style30">
                artificial(Designed by Haiyao Huang)</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.95">
                95%</td>
            <td class="style30">
            </td>
            <td class="style30">
                C<font class="font8">AGTCA</font></td>
            <td class="style30">
            </td>
            <td class="style30">
                TTT</td>
            <td class="style30">
                AAACCCCGCCCCTGACAGGGCGGGGTTT</td>
            <td class="style30">
                Design and Characterization of Artificial Transcriptional Terminators by Haiyao 
                Huang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                trpC302</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                mutant</td>
            <td align="right" class="style30" x:num="0.08">
                8%</td>
            <td class="style30">
            </td>
            <td class="style30">
                GATC</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTT</td>
            <td class="style30">
                CTGGCCGGATCCGGCCAGTTTT</td>
            <td class="style75">
                Christie, G., Farnham, P. J. &amp;Platt, T. (1981). <font class="font10">Proc. Nat. 
                Acad. Sci., U.S.A. </font><font class="font9">78, 4180-4183.</font></td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                trp t</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                mutant</td>
            <td align="right" class="style30" x:num="0.25">
                25%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTCCG</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTT</td>
            <td class="style30">
                GCCGCCAGTTCCGCTGGCGGCTTTT</td>
            <td class="style75">
                Christie, G., Farnham, P. J. &amp;Platt, T. (1981). <font class="font10">Proc. Nat. 
                Acad. Sci., U.S.A. </font><font class="font9">78, 4180-4184.</font></td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                trp a1419</td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style30" x:num="0.03">
                3%</td>
            <td class="style30">
            </td>
            <td class="style30">
                CTAATGA</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTGCAAGGTT</td>
            <td class="style30">
                CCAGCCCGCCTAATGAGCGGGCTTTTGCAAGGTT</td>
            <td class="style75">
                Christie, G., Farnham, P. J. &amp;Platt, T. (1981). <font class="font10">Proc. Nat. 
                Acad. Sci., U.S.A. </font><font class="font9">78, 4180-4185.</font></td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                trp a</td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style30" x:num="0.98">
                98%</td>
            <td class="style30">
            </td>
            <td class="style30">
                CTAAGA</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTTT</td>
            <td class="style30">
                AGCCCGCCTAAGAGCGGGCTGTTTTTTTT</td>
            <td class="style75">
                Christie, G., Farnham, P. J. &amp;Platt, T. (1981). <font class="font10">Proc. Nat. 
                Acad. Sci., U.S.A. </font><font class="font9">78, 4180-4186.</font></td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                trp a135</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                mutant</td>
            <td align="right" class="style30" x:num="0.65">
                65%</td>
            <td class="style30">
            </td>
            <td class="style30">
                CTAAGA</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTT</td>
            <td class="style30">
                CAGCCCGCCTAAGAGCGGGCTGTTTTTT</td>
            <td class="style75">
                Christie, G., Farnham, P. J. &amp;Platt, T. (1981). <font class="font10">Proc. Nat. 
                Acad. Sci., U.S.A. </font><font class="font9">78, 4180-4186.</font></td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                rrnB t1</td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.84">
                84%</td>
            <td class="style30">
            </td>
            <td class="style30">
                GAAA</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTCGTTTTAAT</td>
            <td class="style30">
                GGCTCAGTCGAAAGACTGGGCCTTTCGTTTTAAT</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                t<font class="font7">onB t</font></td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.19">
                19%</td>
            <td class="style30">
            </td>
            <td class="style30">
                AC</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTGACTATTA</td>
            <td class="style30">
                TCAAAAGCCTCCGACCGGAGGCTTTTGACTATTA</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                t<font class="font7">rp a</font></td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td class="style36" style="text-underline-style: single;" x:num="0.71">
                71%</td>
            <td class="style30">
            </td>
            <td class="style30">
                CTAATGA</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTTTGAAC</td>
            <td class="style30">
                CCAGCCCGCCTAATGAGCGGGCTTTTTTTTGAAC</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                trp a L126</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                mutant</td>
            <td class="style31" x:num="0.65">
                65%</td>
            <td class="style30">
            </td>
            <td class="style30">
                CTAATAA</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTTTTGAAC</td>
            <td class="style30">
                CCAGCCCGCCTAATAAGCGGGCTTTTTTTTGAAC</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                trp a L153</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                mutant</td>
            <td class="style31" x:num="0.08">
                8%</td>
            <td class="style30">
            </td>
            <td class="style30">
                CTAATAA</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTTTTGAAC</td>
            <td class="style30">
                CCAGCCCGCCTAATAAGCGGACTTTTTTTTGAAC</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                T7Te</td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                phage terminator</td>
            <td class="style31" x:num="0.88">
                88%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTCG</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTCTGCGTTTA</td>
            <td class="style30">
                CTGGCTCACCTTCGGGTGGGCCTTTCTGCGTTTA</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                T3Te</td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                phage terminator</td>
            <td class="style31" x:num="0.14">
                14%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTCACG</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTCTTCGTTC</td>
            <td class="style30">
                GGCTCACCTTCACGGGTGAGCCTTTCTTCGTTC</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                tR2</td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                phage terminator</td>
            <td class="style31" x:num="0.49">
                49%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TGGTAATC</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTATTTGGG</td>
            <td class="style30">
                GGCCTGCTGGTAATCGCAGGCCTTTTTATTTGGG</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                RNA I</td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                phage terminator</td>
            <td class="style31" x:num="0.73">
                73%</td>
            <td class="style30">
            </td>
            <td class="style30">
                GGT</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTTGTTTG</td>
            <td class="style30">
                AAACCACCGTTGGTTAGCGGTGGTTTTTTGTTTG</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                ampL35A mutant</td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td class="style31" x:num="0.01">
                1%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TAT</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTT</td>
            <td class="style30">
                ATCGCCAATGTAAATCCGGCCCGCCTATGGCGGGCCGTTTT</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                tR2-6</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                phage terminator mutant</td>
            <td align="right" class="style30" x:num="0.56">
                56%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TGGTAATC</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTATT</td>
            <td class="style30">
                GTTAATAACAGGGGACGTGGTAATCCGTCCCCTTTTTATT</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                tR2-11</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                phage terminator mutant</td>
            <td align="right" class="style30" x:num="0.54">
                54%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TGGTAATC</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTATT</td>
            <td class="style30">
                TAATAACAGGCCTGGCTGGTAATCGCCAGGCCTTTTTATT</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                tR2-12</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                phage terminator mutant</td>
            <td align="right" class="style30" x:num="0.69">
                69%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTCG</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTATT</td>
            <td class="style30">
                CCGGGTTAATAACAGGCCTGCTTCGGCAGGCCTTTTTATT</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                tR2-13</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                phage terminator mutant</td>
            <td align="right" class="style30" x:num="0.11">
                11%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TGGTAATC</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTATT</td>
            <td class="style30">
                CGGGTTATTAACAGGCCTCTGGTAATCGAGGCTTTTTATT</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                tR2-14</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                phage terminator mutant</td>
            <td align="right" class="style30" x:num="0.2">
                20%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TGGTAATC</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTATT</td>
            <td class="style30">
                ATAACAGGGGACGTGGTAATCGCCAGCAGGCCTTTTTATT</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                tR2-16</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                phage terminator mutant</td>
            <td align="right" class="style30" x:num="0.36">
                36%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TGGTAATC</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTATT</td>
            <td class="style30">
                GTTAATAAAAGGCCTGCTGGTAATCGCAGGCCTTTTTATT</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                tR2-17</td>
            <td class="style30">
                mutant</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                phage terminator mutant</td>
            <td align="right" class="style30" x:num="0.67">
                67%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TGGTAATC</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTATT</td>
            <td class="style30">
                GGTTCTTCTCGGCCTGCTGGTAATCGCAGGCCTTTTTATT</td>
            <td class="style76">
                Balanced branching in transcription termination K. J. Harrington, R. B. 
                Laughlin, and S. Liang</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                trpA L153</td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style30" x:num="0.24">
                24%</td>
            <td class="style30">
            </td>
            <td class="style30">
                CTAATGA</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTTTTGAACTGCA</td>
            <td class="style30">
                AGCTTAGCAATCAGATACCCAGCCCGCCTAATGAGCGGACTTTTTTTTGAACTGCA</td>
            <td class="style30">
                Takahiko Nojima,Angela C.Lin,Teruo Fujii,&amp;Isao Endo,(2005)Japan Society for 
                Analytical Chemistry,VOL.21,1479-1481.</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                <font class="font11">λ</font><font class="font7">tR2</font></td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style30" x:num="0.79">
                79%</td>
            <td class="style30">
            </td>
            <td class="style30">
                TGGTAATC</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTTTATTTCTGCA</td>
            <td class="style30">
                TACTGAGCTAATAACAGGCCTGCTGGTAATCGCAGGCCTTTTTATTTCTGCA</td>
            <td class="style30">
                Takahiko Nojima,Angela C.Lin,Teruo Fujii,&amp;Isao Endo,(2005)Japan Society for 
                Analytical Chemistry,VOL.21,1479-1482.</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style74" height="18">
                rrmB T1</td>
            <td class="style30">
                wild type</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style30" x:num="0.89">
                89%</td>
            <td class="style30">
            </td>
            <td class="style30">
                GAAA</td>
            <td class="style30">
            </td>
            <td class="style30">
                TTTCGTTTTAATCT</td>
            <td class="style30">
                AGCTTTCAAATAAAACGAAAGGCTCAGTCGAAAGACTGGGCCTTTCGTTTTAATCT</td>
            <td class="style30">
                Takahiko Nojima,Angela C.Lin,Teruo Fujii,&amp;Isao Endo,(2005)Japan Society for 
                Analytical Chemistry,VOL.21,1479-1483.</td>
            <td class="style30">
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                rnpB_T1</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.99">
                99%</td>
            <td>
            </td>
            <td class="style38">
                TTCG</td>
            <td>
            </td>
            <td class="style38">
                TTTTTGCTTTTGGAGGGGCAGAAAGATGAATGACTGTC</td>
            <td class="style38">
                TCGGTCAGTTTCACCTGATTTACGTAAAAACCCGCTTCGGCGGGTTTTTGCTTTTGGAGGGGCAGAAAGATGAATGACTGTC</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                ilvGEDA_T</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.99">
                99%</td>
            <td>
            </td>
            <td class="style38">
                GAAA</td>
            <td>
            </td>
            <td class="style38">
                TTTTTTTTGACCTTAAAAACATAACCGAGGAGCAGACA</td>
            <td class="style38">
                TAGAGATCAAGCCTTAACGAACTAAGACCCCCGCACCGAAAGGTCCGGGGGTTTTTTTTGACCTTAAAAACATAACCGAGGAGCAGACA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                rrnD_T1</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.98">
                98%</td>
            <td>
            </td>
            <td class="style38">
                GGAA</td>
            <td>
            </td>
            <td class="style38">
                TTTTATCTGTTGTTTGTCGGTGAACACTCTCCCG</td>
            <td class="style38">
                GGGAACTGCCAGACATCAAATAAAACAAAAGGCTCAGTCGGAAGACTGGGCCTTTTGTTTTATCTGTTGTTTGTCGGTGAACACTCTCCCG</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                BBa_B1006_T</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.98">
                98%</td>
            <td>
            </td>
            <td class="style38">
                CTGACA</td>
            <td>
            </td>
            <td class="style38">
                TTTTTTTT</td>
            <td class="style38">
                AAAAAAAAACCCCGCCCCTGACAGGGCGGGGTTTTTTTT</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                rrnB_T1</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.97">
                97%</td>
            <td>
            </td>
            <td class="style38">
                GAAA</td>
            <td>
            </td>
            <td class="style38">
                TTTTATCTGTTGTTTGTCGGTGAACGCTCTCCTG</td>
            <td class="style38">
                GGGAACTGCCAGGCATCAAATAAAACGAAAGGCTCAGTCGAAAGACTGGGCCTTTCGTTTTATCTGTTGTTTGTCGGTGAACGCTCTCCTG</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                M13_central_T</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.96">
                96%</td>
            <td>
            </td>
            <td class="style38">
                TTTT</td>
            <td>
            </td>
            <td class="style38">
                TTTTTTTTTGGAGATTTTCAACATGAAAAAATTATTATT</td>
            <td class="style38">
                AAAGCAAGCTGATAAACCGATACAATTAAAGGCTCCTTTTGGAGCCTTTTTTTTTGGAGATTTTCAACATGAAAAAATTATTATT</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                trp_att_L126</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.96">
                96%</td>
            <td>
            </td>
            <td class="style38">
                CTAATAA</td>
            <td>
            </td>
            <td class="style38">
                TTTTTTTTGAACAAAATTAGAGAATAACAATGCAAACA</td>
            <td class="style38">
                TTCACCATGCGTAAAGCAATCAGATACCCAGCCCGCCTAATAAGCGGGCTTTTTTTTGAACAAAATTAGAGAATAACAATGCAAACA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                T7_Te</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.95">
                95%</td>
            <td>
            </td>
            <td class="style38">
                TTCG</td>
            <td>
            </td>
            <td class="style38">
                TTTCTGCGTTTATAAGGAGACACTTTATGTTTAAGAAG</td>
            <td class="style38">
                ACAACCCTCAAGAGAAAATGTAATCACACTGGCTCACCTTCGGGTGGGCCTTTCTGCGTTTATAAGGAGACACTTTATGTTTAAGAAG</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                T3_Te</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.94">
                94%</td>
            <td>
            </td>
            <td class="style38">
                TCAC</td>
            <td>
            </td>
            <td class="style38">
                TTTCTTCGTTCCGGGCATTAACCCTCACTAACAGGAGA</td>
            <td class="style38">
                ACCCTCAAGAGAAAATGTAACCAACTCACTGGCTCACCTTCACGGGTGGGCCTTTCTTCGTTCCGGGCATTAACCCTCACTAACAGGAGA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                trp_att_L126_L</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.94">
                94%</td>
            <td>
            </td>
            <td class="style38">
                CTAAA</td>
            <td>
            </td>
            <td class="style38">
                TTTTTTTTGAACAAAATTAGAGAATAACAATGCAAACA</td>
            <td class="style38">
                TTCACCATGCGTAAAGCAATCAGATACCCAGCCCGCCTAAAGCGGGCTTTTTTTTGAACAAAATTAGAGAATAACAATGCAAACA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                RNA_I_T</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.92">
                92%</td>
            <td>
            </td>
            <td class="style38">
                TGGTA</td>
            <td>
            </td>
            <td class="style38">
                TTTTTTTGTTTGCAAGCAGCAGATTACGCGCAGAAAAAAAGG</td>
            <td class="style38">
                GAGTTGGTAGCTCTTGATCCGGCAAACAAACCACCGTTGGTAGCGGTGGTTTTTTTGTTTGCAAGCAGCAGATTACGCGCAGAAAAAAAGG</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                lambda_tR2</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.9">
                90%</td>
            <td>
            </td>
            <td class="style38">
                TGGTAATC</td>
            <td>
            </td>
            <td class="style38">
                TTTTTATTTGGGGGAGAGGGAAGTCATGAAAAAACTAAC</td>
            <td class="style38">
                ATGACCATCTACATTACTGAGCTAATAACAGGCCTGCTGGTAATCGCAGGCCTTTTTATTTGGGGGAGAGGGAAGTCATGAAAAAACTAAC</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="19">
            <td class="style78" height="19">
                spacer80GC0.5</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.85">
                85%</td>
            <td>
            </td>
            <td class="style38">
                ATGAA</td>
            <td class="style79">
                GA</td>
            <td class="style38">
                TGGT</td>
            <td class="style38">
                TAAATCCGCGCGATAGGGCATTAGAGGTTTAATTTTGTATGGCAAGGTACTCCCGATCTTAATGAATGGCCGGAAGTGGT</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                T21_T</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.79">
                79%</td>
            <td>
            </td>
            <td class="style38">
                ACTTA</td>
            <td>
            </td>
            <td class="style38">
                TTTTTTTATTTGGGTCAGTCGTATAAAGGTCATTACGGA</td>
            <td class="style38">
                ATTGAGCAAGTAGCAACACTATTCGCATAAGCTGCCGTTAGTGACTCTTAAGTTGCAACGGTGGCTTTTTTTATTTGGGTCAGTCGTATAAAGGTCATTACGGA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                tonB_T</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.77">
                77%</td>
            <td>
            </td>
            <td class="style38">
                GACC</td>
            <td>
            </td>
            <td class="style38">
                TTTTGACTATTACTCAACAGGTAAGGCGCGAGGTTTTC</td>
            <td class="style38">
                CACCGAAATTCAGTAAGCAGAAAGTCAAAAGCCTCCGACCGGAGGCTTTTGACTATTACTCAACAGGTAAGGCGCGAGGTTTTC</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                lambda_tR2_1</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.67">
                67%</td>
            <td>
            </td>
            <td class="style38">
                CTGGTAATCA</td>
            <td>
            </td>
            <td class="style38">
                TTTTTATTTGGGGGAGAGGGAAGTCATGAAAAAACTAAC</td>
            <td class="style38">
                ATGACCATCTACATTACTGAGCTAATAACAGGCCTGCTGGTAATCGCAGACCTTTTTATTTGGGGGAGAGGGAAGTCATGAAAAAACTAAC</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                crp_T</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.66">
                66%</td>
            <td>
            </td>
            <td class="style38">
                CTG</td>
            <td>
                A</td>
            <td class="style38">
                TTTTGTTTCCCCCGATGTGGCGCAGACTGATTTATCAC</td>
            <td class="style38">
                CGTTTACGGCACTCGTTAATCCCGTCGGAGTGGCGCGTTACCTGGTAGCGCGCCATTTTGTTTCCCCCGATGTGGCGCAGACTGATTTATCAC</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                his_T_var</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.53">
                53%</td>
            <td>
            </td>
            <td class="style38">
                TGCA</td>
            <td>
            </td>
            <td class="style38">
                TTTTTTTTTGCGCGGTTGATAACGGTTCAGACAGGTTTA</td>
            <td class="style38">
                TCTTCCAGTGGTGCATGAACGCATGAGAAAGCCCCCGGAAGATGCATCTTCCGGGGGCTTTTTTTTTGCGCGGTTGATAACGGTTCAGACAGGTTTA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                amyA_T_L</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.53">
                53%</td>
            <td>
            </td>
            <td class="style38">
                GTGCGG</td>
            <td>
            </td>
            <td class="style38">
                TTTATTTTTTCAGCCGTATGACAAGGTCGGCATCAGGTGT</td>
            <td class="style38">
                TTTATGTTCAGAAATAAGGTAATAAAAAAACACCTCCAAGCTGAGTGCGGTCAGCTTGGAGGTGCGTTTATTTTTTCAGCCGTATGACAAGGTCGGCATCAGGTGT</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                his_T</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.52">
                52%</td>
            <td>
            </td>
            <td class="style38">
                ATCAC</td>
            <td>
            </td>
            <td class="style38">
                TTTTTTATTGCGCGGTTGATAACGGTTCAGACAGGTTTA</td>
            <td class="style38">
                TCTTCCAGTGGTGCATGAACGCATGAGAAAGCCCCCGGAAGATCACCTTCCGGGGGCTTTTTTATTGCGCGGTTGATAACGGTTCAGACAGGTTTA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                trp_att_1419</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.5">
                50%</td>
            <td>
            </td>
            <td class="style38">
                CTAATGA</td>
            <td>
            </td>
            <td class="style38">
                TTTTGAACAAAATTAGAGAATAACAATGCAAACA</td>
            <td class="style38">
                TTCACCATGCGTAAAGCAATCAGATACCCAGCCCGCCTAATGAGCGGGCTTTTGAACAAAATTAGAGAATAACAATGCAAACA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="19">
            <td class="style78" height="19">
                amyA_T</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.49">
                49%</td>
            <td>
            </td>
            <td class="style38">
                GTGCGGGTA</td>
            <td class="style79">
                CG</td>
            <td class="style38">
                TTTATTTTTTCAGCCGTATGACAAGGTCGGCATCAGGTGT</td>
            <td class="style38">
                TTTATGTTCAGAAATAAGGTAATAAAAAAACACCTCCAAGCTGAGTGCGGGTATCAGCTTGGAGGTGCGTTTATTTTTTCAGCCGTATGACAAGGTCGGCATCAGGTGT</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="19">
            <td class="style78" height="19">
                amyA_T_L2</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.49">
                49%</td>
            <td>
            </td>
            <td class="style38">
                AGTGCGGGTA</td>
            <td class="style79">
                CG</td>
            <td class="style38">
                TTTATTTTTTCAGCCGTATGACAAGGTCGGCATCAGGTGT</td>
            <td class="style38">
                TTTATGTTCAGAAATAAGGTAATAAAAAAACACCTCCAAGCTGAGTGCGGGTACAGCTTGGAGGTGCGTTTATTTTTTCAGCCGTATGACAAGGTCGGCATCAGGTGT</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="19">
            <td class="style78" height="19">
                tn10_tetA/tetC_T</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.46">
                46%</td>
            <td>
            </td>
            <td class="style38">
                ATAACC</td>
            <td class="style79">
                CA</td>
            <td class="style38">
                TTTTTTACGATAAAGAAGATTTAGCTTCAAATAAAAC</td>
            <td class="style38">
                TATTTCGTCACCAAATGATGTTATTCCGCGAAATATAATGACCCTCTTGATAACCCAAGAGGGCATTTTTTACGATAAAGAAGATTTAGCTTCAAATAAAAC</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                his_T_var_L</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.46">
                46%</td>
            <td>
            </td>
            <td class="style38">
                CGGAAGATGCA</td>
            <td>
            </td>
            <td class="style38">
                TTTTTTTTTGCGCGGTTGATAACGGTTCAGACAGGTTTA</td>
            <td class="style38">
                TCTTCCAGTGGTGCCATGAACGCATGAGAAAGCCCCCGGAAGATGCAGGGGCTTTTTTTTTGCGCGGTTGATAACGGTTCAGACAGGTTTA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="19">
            <td class="style78" height="19">
                amyA_T_S</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.36">
                36%</td>
            <td>
            </td>
            <td class="style38">
                GAGTGCG</td>
            <td class="style79">
                CG</td>
            <td class="style38">
                TTTATTTTTTCAGCCGTATGACAAGGTCGGCATCAGGTGT</td>
            <td class="style38">
                TTTATGTTCAGAAATAAGGTAATAAAAAAACACCTCCAAGCTGAGTGCGGGTATTTGGAGGTGCGTTTATTTTTTCAGCCGTATGACAAGGTCGGCATCAGGTGT</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="19">
            <td class="style78" height="19">
                spacer40GC0.32</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.32">
                32%</td>
            <td>
            </td>
            <td class="style38">
                TTATCCC</td>
            <td class="style79">
                A</td>
            <td class="style38">
                TTTTTTGCA</td>
            <td class="style38">
                ATTTGTAAAGTGTCTATTATCCCTAAGCCCATTTTTTGCA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                lambda_tR2_L</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.31">
                31%</td>
            <td>
            </td>
            <td class="style38">
                CCG</td>
            <td>
            </td>
            <td class="style38">
                TTTTTATTTGGGGGAGAGGGAAGTCATGAAAAAACTAAC</td>
            <td class="style38">
                TGACCATCTACATTACTGAGCTAATAACAGGCCTGCCGCAGGCCTTTTTATTTGGGGGAGAGGGAAGTCATGAAAAAACTAAC</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                BBa_B1002_T_Lvar</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.25">
                25%</td>
            <td>
            </td>
            <td class="style38">
                CTG</td>
            <td>
            </td>
            <td class="style38">
                TTTTTTCGC</td>
            <td class="style38">
                CGCAAAAAACCCCGCTGCGGGGTTTTTTCGC</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                attCaadA7</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.24">
                24%</td>
            <td>
            </td>
            <td class="style38">
                TTC</td>
            <td>
            </td>
            <td class="style38">
                TTAATTCAAGCGTTAGATGCACTAAGCACATAATTGCTCACAGCCAA</td>
            <td class="style38">
                TGATAGTAAACTGCTTGGTGCCAGCCAATGATGTCTAACAATTCATTCAAGCCGACGCCGCTTCGCGGCGCGGCTTAATTCAAGCGTTAGATGCACTAAGCACATAATTGCTCACAGCCAA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                spacer80GC0.3</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.21">
                21%</td>
            <td>
            </td>
            <td class="style38">
                AAA</td>
            <td>
            </td>
            <td class="style38">
                TTGCATGTGCAATTTGTAAAGTGTCTATTATCCCTAAGCCCATTTTTTGCA</td>
            <td class="style38">
                ATATTATATCGATACATAAAATATTTCGATTGCATGTGCAATTTGTAAAGTGTCTATTATCCCTAAGCCCATTTTTTGCA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                BBa_B1002_T_LSvar</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.21">
                21%</td>
            <td>
            </td>
            <td class="style38">
                AAAAAACCCC</td>
            <td>
            </td>
            <td class="style38">
                TGGGGTTTTTTCGC</td>
            <td class="style38">
                TGATCGCAAAAAACCCCGCTGGGGTTTTTTCGC</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                spacer50GC0.23</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0.06">
                6%</td>
            <td>
            </td>
            <td class="style38">
                AAA</td>
            <td>
            </td>
            <td class="style38">
                TTGCATGTGCAATTTTTTGCA</td>
            <td class="style38">
                ATATTATATCGATACATAAAATATTTCGATTGCATGTGCAATTTTTTGCA</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
        <tr height="18">
            <td class="style77" height="18">
                REF lambda_tR2_S</td>
            <td class="style30">
                unknown</td>
            <td class="style30">
                Forward</td>
            <td class="style30">
                E. coli</td>
            <td align="right" class="style38" x:num="0">
                0%</td>
            <td>
            </td>
            <td class="style38">
                TGCTGGTAAT</td>
            <td>
            </td>
            <td class="style38">
                TTTTTATTTGGGGGAGAGGGAAGTCATGAAAAAACTAAC</td>
            <td class="style38">
                TGACCATCTACATTACTGAGCTAATAACAGGCCTGCTGGTAATGGCCTTTTTATTTGGGGGAGAGGGAAGTCATGAAAAAACTAAC</td>
            <td>
                http://io.biofab.org/services/studio/dac/</td>
            <td>
            </td>
        </tr>
    </table>
<p>&nbsp;</p>
</body>
</html>
