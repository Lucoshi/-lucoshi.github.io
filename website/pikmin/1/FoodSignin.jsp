<%@ include file="/base_include.jsp" %>
<%
pageTitle = "title_found_food.gif";

String color = null;
int amt = 0;

if( request.getParameter( "go.x" ) != null )

{
    String email = request.getParameter( "email" );
    String passwd = request.getParameter( "passwd" );

//    theSession.put( "email", email );

    if( email.equals( "" ) )
    {
        session.putValue( "inviteeEmail", email );
        response.sendRedirect( "DefaultJoin.jsp?queryString=" + QueryEncoder.encode( theSession ) );
        return;
    }

    User u = util.getUserByName( email );

    if( u == null )
    {
        theSession.put( "error", "nouser" );
        response.sendRedirect( "BadFood.jsp?queryString=" + QueryEncoder.encode( theSession ) );
        return;
    }
    else if( !u.getPassword().equals( passwd ) )
    {
        theSession.put( "error", "wrongpassword" );
        response.sendRedirect( "BadFood.jsp?queryString=" + QueryEncoder.encode( theSession ) );
    }
    else if( u.isDeleted() )
    {
        theSession.put( "error", "deleted" );
        response.sendRedirect( "BadFood.jsp?queryString=" + QueryEncoder.encode( theSession ) );
        return;
    }
    else if( !u.isActivated() )
    {
        theSession.put( "error", "inactive" );
        response.sendRedirect( "BadFood.jsp?queryString=" + QueryEncoder.encode( theSession ) );
        return;
    }
    else if( u.getIsTeamCaptain() )
    {
        theSession.put( "error","spaceman" );
        response.sendRedirect( "BadFood.jsp?queryString=" + QueryEncoder.encode( theSession ) );
        return;
    }
    else
    {
            // add food here
        util.addFoundFood( u.getUserId(), (String)theSession.get( "foodcolor" ), Integer.parseInt( (String)theSession.get( "amt" ) ) );
        theSession.put( "userid", u.getUserId() );
        response.sendRedirect( "FoodConfirmation.jsp?queryString=" + QueryEncoder.encode( theSession ) );
        return;
    }
}

Food f = null;
String pikminfoodcolor = request.getParameter( "pikminfoodcolor" );
System.err.println( "pikminfoodcolor: "+ pikminfoodcolor );
if( ( pikminfoodcolor != null ) && ( !pikminfoodcolor.equals( "" ) ) )
{
    f = util.pickRandomFoodByColor( pikminfoodcolor );
    if( f == null )
    {
        System.err.println( "why was it null? " + pikminfoodcolor );
        theSession.put( "error", "nopikminfood" );
        response.sendRedirect( "ErrorPage.jsp?queryString=" + QueryEncoder.encode( theSession ) );

    }

}
else
{
    theSession.put( "error", "nopikminfoodcolor" );
    response.sendRedirect( "ErrorPage.jsp?queryString=" + QueryEncoder.encode( theSession ) );
}

color = f.getColor();
amt = f.getAmount();

theSession.put( "foodcolor", color );
theSession.put( "amt", ""+amt );

if( ( user != null ) && ( !user.getIsTeamCaptain() ) && user.isActivated() )
{
    util.addFoundFood( user.getUserId(), color, amt );
    response.sendRedirect( "FoodConfirmation.jsp?queryString=" + QueryEncoder.encode( theSession ) );
    return;
}
%>
<%@ include file="/OverallPageTop.jsp" %>
		<tr>
			<td colspan='3' ALIGN="center"><IMG SRC="images/pikmin_logo_title.jpg" ALT="Pikmin" WIDTH="226" HEIGHT="57" BORDER="0"></td>
		</tr>
        <tr>
          <td colspan='3' class='fonts' align='center'>
          <img src='items/<%=f.getColor() + "_" + f.getAmount()%>.gif' border='0' align='center'><br>
          <form method='post'>
<input type='hidden' name='queryString' value='<%=QueryEncoder.encode( theSession )%>'>
          <table cellspacing='0' cellpadding='1' border='0'><tr><td colspan='3' class='fonts' align='center'> Enter your Pikmin user name!</td></tr>
          <tr><td valign='middle'><img src='subtitles/sign_in.gif' border='0'></td>
          <td valign='middle'><input type='text' maxlength='60' class='fonts' name='email' value=''><br><input type='password' class='fonts' name='passwd' ></td>
          <td valign='middle'><input type='image' name='go'  src='buttons/btn_yes.gif' border='0'></td>
          </tr>
          </table>
</td>
</tr></table>
<img src='img_divider2.gif' border='0'>
<input type='image' src='buttons/btn_go_to_and_join.gif' name='go' border='0'><br>
<P>
Looking for more Pikmin Food? Here are some other websites you might want
to check out:
</P>
<P>
<A HREF="http://www.foxkids.com" TARGET="_blank">http://www.foxkids.com</A><BR>
<A HREF="http://www.nick.com" TARGET="_blank">http://www.nick.com</A><BR>
<A HREF="http://www.Yahooligans.com" TARGET="_blank">http://www.Yahooligans.com</A><BR>
<A HREF="http://www.CartoonNetwork.com" TARGET="_blank">http://www.CartoonNetwork.com</A><BR>
</P>
<a href='javascript:window.close()'><img src='buttons/btn_close_window.gif' border='0'></a>
</form>
<CENTER>
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0"><TR><TD VALIGN="bottom"><IMG SRC="images/esrb_everyone.gif" ALT="Mild Violence" WIDTH="44" HEIGHT="61" BORDER="0"></TD><TD WIDTH="10">&nbsp;</TD><TD VALIGN="bottom"><IMG SRC="images/privacy.jpg" ALT="Privacy Policy" WIDTH="116" HEIGHT="43" BORDER="0"></TD></TR></TABLE>
</CENTER>
<%@ include file="/OverallPageBottom.jsp" %>
