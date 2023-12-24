<%@ include file="/base_include.jsp" %>
<%
leftImage = "Left Stuff";
rightImage = "Right Stuff";
bottomImage = "Bottom Stuff";

pageTitle = "title_congratulations.gif";

String color = (String)theSession.get( "color" );
%>
<%@ include file="/OverallPageTop.jsp" %>
        <tr>
          <td colspan='3' class='fonts' align='center'>
<form method='post'>
<img src='/img_<%=color%>_pikmin.gif'>
<img src='img_divider2.gif'>
          <br>
<table cellpadding='1' cellspacing='1' align="center"><tr><td width='20'>&nbsp;</td><td class='fonts' align='center'>There are many Space Explorers in the Pikmin.com SpaceForce who need your help.</b> Would you like to join the Pikmin.com SpaceForce and help a Space Explorer recover his missing spaceship parts?  Your mission will be to explore the internet searching for Pikmin Food. If you do well your team might earn a spot on the Pikmin.com SpaceForce Leaderboard!</td><td width='20'>&nbsp;</td></tr></table>
<br><img src='img_divider2.gif'>
<table cellspacing='0' cellpadding="0" align="center"><tr><td><a href='AgeVerifier.jsp?queryString=<%=QueryEncoder.encode( theSession )%>'><img src='/buttons/btn_yes_help.gif' border='0'></a></td></tr>
<tr><td><a href='NotDefaultJoin.jsp?queryString=<%=QueryEncoder.encode( theSession )%>'><img src='/buttons/btn_no_help.gif' border='0'></a></td></tr></table>
</div></td>
</tr></table>
<%@ include file="/OverallPageBottom.jsp" %>

