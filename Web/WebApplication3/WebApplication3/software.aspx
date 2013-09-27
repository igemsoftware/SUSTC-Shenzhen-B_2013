<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="software.aspx.cs" Inherits="WebApplication3.software" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Software</title>
    <style type="text/css">
        .style3
        {
            width: 127px;
            height: 104px;
        }
        .style4
        {
            width: 150px;
            height: 105px;
        }
        .style5
        {
            height: 105px;
        }
        .style15
        {
            width: 639px;
            height: 26px;
        }
        .style16
        {
            width: 639px;
            height: 37px;
        }
        .style17
        {
            width: 639px;
            height: 29px;
        }
        .style18
        {
            width: 639px;
            height: 31px;
        }
        .style19
        {
            width: 639px;
            height: 41px;
        }
        .style20
        {
            width: 639px;
            height: 51px;
        }
    .STYLE21 {width: 639px; height: 48px; color: #0000FF; }
    .STYLE22 {
	font-size: x-large;
	font-weight: bold;
}
    .STYLE23 {font-size: medium}
    .STYLE24 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
    .STYLE25 {font-size: x-large; font-weight: bold; font-family: Arial, Helvetica, sans-serif; }
    .STYLE26 {
	width: 639px;
	height: 51px;
	font-size: x-large;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
    </style>
</head>
<body>

    <form id="form1" runat="server">

    <p>
        <br />
    </p>

    <table align="center" style="width:31%;">
        <tr>
            <td class="style4">
                <img alt="" class="style3" src="logoo.PNG" /></td>
            <td class="style5" 
                style="font-family: Meiryo; font-size: 45px; font-weight: bold">
                Software Version</td>
        </tr>
        <tr>
    <td class="style15" 
          
          style="font-family: 'Malgun Gothic'; font-weight: bold; font-size: 14px; font-style: normal; text-transform: none;" 
          colspan="2"> <a href="TTEC.aspx">
        Back to the Calculator</a></td>
        </tr>
</table>

    <p>
        <br />
    </p>

    <table align="center" style="width: 628px;">
        <tr>
            <td class="STYLE21" 
                style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold">
                Future Plan:</td>
        </tr>
        <tr>
          <td height="65" class="style16" 
                style="font-family: Arial; font-size: x-large; font-weight: bold"><p align="left" class="STYLE22">1. Mutate the coefficients of the scoring formular to  help get the best simulation formular of score and efficiency </p></td>
        </tr>
        <tr>
            <td class="style16"  style="font-family: Arial; font-size: x-large; font-weight: bold"><p align="left" class="STYLE23">The  formula of d score calculation is ：<br />
              D Score = nT * 18.16 + deltaG / LH * 96.59 – 116.87<br />
              (nT is the score of t tail, deltaG is the energy change of the stemloop  formation and LH is the length of stemloop sequence.)<br />
            Here the coefficient of each term can be adjusted to help make the best  simulation between score and efficiency. We can even try to treat efficiency as  a function of those terms directly, which means we can calculate terminator  efficiency using nt, deltaG and LH directly without calculating the score  first, ie : Efficiency = E(nt, deltaG,LH).</p></td>
        </tr>
        <tr>
          <td class="style17" style="font-family: Arial; font-size: x-large; font-weight: bold"><strong>2. Create a model of terminator efficiency prediction</strong>         </td>
        </tr>
        <tr>
          <td class="style18"><p align="left" class="STYLE24">The  score of terminator includes two parts, stemloop and ttail. We can do some  experiments to know how stemloop and ttail affect the efficiency of terminators  and then create a model of that. We’ve bought about 100 terminators sequences.  These sequences are mutated in their stem，loop or t tail. We will measure their efficiency and then analyze the  experiment data to find some regular pattern and create our own model.</p>          </td>
        </tr>
        <tr>
          <td class="style19"><p align="left" class="STYLE25">3. Modify the terminator sequence to match the user  selected efficiency </p>          </td>
        </tr>
        <tr>
          <td class="style20"><p align="left" class="STYLE24">Sometimes the user wants a terminator with specific  efficiency. If the current efficiency of users terminator is not the one he  want, our program can do mutation on terminator sequences and evolve a  terminator that meets the requirement of efficiency. </p>          </td>
        </tr>
        <tr>
          <td class="STYLE24">
              <asp:Image ID="Image1" runat="server" ImageUrl="~/f1.jpg" />
              <br />
              <asp:Image ID="Image2" runat="server" Height="379px" ImageUrl="~/f2.jpg" 
                  Width="552px" />
              <br />
              <br />
              Now we are working hard on it ! And we&#39;ll keep upgrading it !<br />
            </td>
        </tr>
        <tr>
          <td class="style20"><span class="STYLE21" style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold">Upgrade log </span></td>
        </tr>
        <tr>
          <td class="STYLE26">The initial idea. </td>
        </tr>
        <tr>
          <td class="STYLE24">
              <asp:Image ID="Image3" runat="server" Height="333px" ImageUrl="~/i.jpg" 
                  Width="539px" />
            </td>
        </tr>
        <tr>
          <td class="STYLE26">version 0.1</td>
        </tr>
        <tr>
          <td class="STYLE24">TTEC-v0.1  could only provide the d-Score of terminator by an imperfect algorithm, and couldn't give the structure of a terminator. There were no bugs because it was a very simple program with no user interface. </td>
        </tr>
        <tr>
          <td class="STYLE26">version 0.2</td>
        </tr>
        <tr>
          <td class="style20"><p class="STYLE24">New Features:</p>
          <p class="STYLE24">1. Corrected the algorithm of calculating d-score to a completed and accurated one.</p>
          <p class="STYLE24">2. Added a new interface of PC-software. </p></td>
        </tr>
        <tr>
          <td class="STYLE26">version 0.3</td>
        </tr>
        <tr>
          <td class="style20"><p class="STYLE24">New Features:</p>
              <p class="STYLE24">1. Provided the algorithm to calculate the structure of terminator. </p>
              <p class="STYLE24">2. Added a new interface of the Website. </p>
              <p class="STYLE24">3. Added the Terminator-Database-v1.0. </p></td>
        </tr>
        <tr>
          <td class="STYLE26">
              <asp:Image ID="Image4" runat="server" Height="386px" ImageUrl="~/v0.3.png" 
                  Width="639px" />
            </td>
        </tr>
        <tr>
          <td class="STYLE26">version 0.4</td>
        </tr>
        <tr>
          <td class="style20"><p class="STYLE24">New Features:</p>
              <p class="STYLE24">1. Used flash to achieve showing the image on the user interface of Website.</p>
              <p class="STYLE24">2. Added other two new algorithms that can calculate the d-score by different ways. </p>
          <p class="STYLE24">2. Upgraded Termiantor-Database to v2.0. </p></td>
        </tr>
        <tr>
          <td class="STYLE26">
              <asp:Image ID="Image5" runat="server" Height="289px" ImageUrl="~/v0.4.png" 
                  Width="385px" />
              <br />
              <asp:Image ID="Image6" runat="server" Height="381px" ImageUrl="~/v0.4c.png" 
                  Width="578px" />
            </td>
        </tr>
        <tr>
          <td class="STYLE26">version 1.0 </td>
        </tr>
        <tr>
          <td class="style20"><p class="STYLE24">New Features:</p>
              <p class="STYLE24">1. Changed the User Interface of PC-software and Website.</p>
              <p class="STYLE24">2. Provided the algorithm to calculate an inaccurate efficiency  based on the initial algorithm, but other two could only calculate the d-score. </p>
              <p class="STYLE24">2. Upgraded Termiantor-Database to v3.0. </p></td>
        </tr>
        <tr>
          <td class="STYLE26">version 1.1 </td>
        </tr>
        <tr>
          <td class="style20"><p class="STYLE24">New Features:</p>
              <p class="STYLE24">1. Changed flash to c# to show the image of terminator, in order to let users can see the image on different devices and can download it.</p>
              <p class="STYLE24">2. Upgraded Termiantor-Database to v4.0. </p>
            </td>
        </tr>
        <tr>
          <td class="STYLE26">version 1.2 </td>
        </tr>
        <tr>
          <td class="style20"><p class="STYLE24">New Features:</p>
              <p class="STYLE24">1. Deleted two algorithm and left the useful one, according to the initial fitting formula to get the efficiency.</p>
              <p class="STYLE24">2. Upgraded Termiantor-Database to v5.0. </p></td>
        </tr>
        <tr>
          <td class="STYLE26">version 1.3 </td>
        </tr>
        <tr>
          <td class="style20"><p class="STYLE24">New Features:</p>
              <p class="STYLE24">1. Added function that could upload and calculate SBOL-file of terminator. </p>
              <p class="STYLE24">2. Corrected the algorithm to a better one with correction by our experiment data. </p>
              <p class="STYLE24">2. Upgraded Termiantor-Database to v6.0. </p></td>
        </tr>
        <tr>
          <td class="STYLE26">
              <asp:Image ID="Image7" runat="server" Height="381px" ImageUrl="~/ff.jpg" 
                  Width="357px" />
            </td>
        </tr>
        <tr>
          <td class="STYLE26">version 1.4 </td>
        </tr>
        <tr>
          <td class="style20"><p class="STYLE24">New Features:</p>
          <p class="STYLE24">1. Added the function to choose the direction of a terminator.</p>          </td>
        </tr>
        <tr>
          <td class="style20">
              <asp:Image ID="Image8" runat="server" Height="312px" ImageUrl="~/ff1.jpg" 
                  Width="552px" />
              <br />
              <asp:Image ID="Image9" runat="server" Height="149px" ImageUrl="~/ff2.jpg" 
                  Width="327px" />
              <br />
              <asp:Image ID="Image10" runat="server" Height="230px" ImageUrl="~/fian.jpg" 
                  Width="597px" />
              <br />
            </td>
        </tr>
        <tr>
          <td class="style20">
              <asp:Image ID="Image11" runat="server" Height="412px" ImageUrl="~/final.jpg" 
                  Width="604px" />
            </td>
        </tr>
</table>

    </form>

</body>
</html>
