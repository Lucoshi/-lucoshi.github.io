<HTML>
<HEAD>
<TITLE> Nintendo Mario Party </TITLE>

<script language="JavaScript">

<!--

// browser test:

agent = navigator.userAgent;

browserVer = (agent.indexOf("Mozilla/3") == -1 &&

agent.indexOf("Mozilla/4") == -1) ? 0 : 1;

// - - - - - - - - - - - - - - - 

if (browserVer == 1) {



        mario = new Image(104,132);
		mario.src = "images/splash/splash_mario.gif";
        
		mario_roll = new Image(104,132);
		mario_roll.src = "images/splash/splash_mario_roll.gif";
				
				
		
        luigi = new Image(116,131);
		luigi.src = "images/splash/splash_luigi.gif";
        
		luigi_roll = new Image(116,131);
		luigi_roll.src = "images/splash/splash_luigi_roll.gif";
				
				
		
        dk = new Image(126,141);
		dk.src = "images/splash/splash_dk.gif";
        
		dk_roll = new Image(126,141);
		dk_roll.src = "images/splash/splash_dk_roll.gif";
				
				
		
        yoshi = new Image(94,132);
		yoshi.src = "images/splash/splash_yoshi.gif";
        
		yoshi_roll = new Image(94,132);
		yoshi_roll.src = "images/splash/splash_yoshi_roll.gif";
				
				
		
        peach = new Image(104,148);
		peach.src = "images/splash/splash_peach.gif";
        
		peach_roll = new Image(104,148);
		peach_roll.src = "images/splash/splash_peach_roll.gif";
				
				
		
        wario = new Image(94,148);
		wario.src = "images/splash/splash_wario.gif";
        
		wario_roll = new Image(94,148);
		wario_roll.src = "images/splash/splash_wario_roll.gif";
				

        
}

// - - - - - - - - - - - - - - - 

function hiLite(imgDocID,imgObjName) {

// manages mouseOver animations

//   imgDocID - the name or number of the document image to be replaced

//   imgObjName - the name of the image object to be swapped in

if (browserVer == 1) {

document.images[imgDocID].src = eval(imgObjName + ".src")

}}

// -->
</script>

<script language=JAVASCRIPT>

        <!--

function createWin(popURL)

{

	var	winName = "Yoshi";

	if (popURL=='pipe_frame_yoshi.asp')

{

	winName = "Yoshi";

}

	else if (popURL == 'pipe_frame_wario.asp')

{

	winName = "Wario";

}

	else if(popURL == 'pipe_frame_peach.asp')

{

	winName = "Peach";

}

	else if(popURL == 'pipe_frame_mario.asp')

{

	winName = "Mario";

}

	else if(popURL == 'pipe_frame_luigi.asp')

{

	winName = "Luigi";

}

	else if(popURL == 'pipe_frame_dk.asp')

{

	winName = "DK";

}
   msgWindow=window.open(popURL,winName, "toolbar=0,location=0,directories=0,status=0,menubar=0,width=580,height=410,scrollbars=no,resizable=no");

}



// -->

</script>
</HEAD>
<BODY BACKGROUND="images/splash/splash_background.jpg" BGCOLOR="#99CCFF">

<table border="0" cellpadding="0" cellspacing="0" width=100% height="100%">
<tr>
<td valign="middle" align="center">

	<table border="0" cellpadding="0" cellspacing="0">
	<tr>
	<td align="center" colspan="5"><IMG SRC="images/splash/splash_title.gif" WIDTH="377" HEIGHT="79" BORDER="0"></td>
	</tr>

	<tr>
	<td><a href="JAVASCRIPT:createWin('pipe_frame_mario.asp')" onmouseover="hiLite('mario','mario_roll')" onmouseout="hiLite('mario','mario')"><IMG SRC="images/splash/splash_mario.gif" WIDTH="104" HEIGHT="132" BORDER="0" name="mario"></a></td>
	<td rowspan="2" valign="middle"><a href="JAVASCRIPT:createWin('pipe_frame_luigi.asp')" onmouseover="hiLite('luigi','luigi_roll')" onmouseout="hiLite('luigi','luigi')"><IMG SRC="images/splash/splash_luigi.gif" WIDTH="116" HEIGHT="131" BORDER="0" name="luigi"></a></td>
	<td><IMG SRC="images/splash/splash_pipe_top.gif" WIDTH="118" HEIGHT="132" BORDER="0"></td>
	<td rowspan="2" valign="middle"><a href="JAVASCRIPT:createWin('pipe_frame_dk.asp')" onmouseover="hiLite('dk','dk_roll')" onmouseout="hiLite('dk','dk')"><IMG SRC="images/splash/splash_dk.gif" WIDTH="126" HEIGHT="141" BORDER="0" name="dk"></a></td>
	<td><a href="JAVASCRIPT:createWin('pipe_frame_yoshi.asp')" onmouseover="hiLite('yoshi','yoshi_roll')" onmouseout="hiLite('yoshi','yoshi')"><IMG SRC="images/splash/splash_yoshi.gif" WIDTH="94" HEIGHT="132" BORDER="0" name="yoshi"></a></td>
	</tr>

	<tr>
	<td rowspan="2"><a href="JAVASCRIPT:createWin('pipe_frame_peach.asp')" onmouseover="hiLite('peach','peach_roll')" onmouseout="hiLite('peach','peach')"><IMG SRC="images/splash/splash_peach.gif" WIDTH="104" HEIGHT="148" BORDER="0" name="peach"></a></td>
	<td><IMG SRC="images/splash/splash_pipe_bottom.gif" WIDTH="118" HEIGHT="120" BORDER="0"></td>
	<td rowspan="2"><a href="JAVASCRIPT:createWin('pipe_frame_wario.asp')" onmouseover="hiLite('wario','wario_roll')" onmouseout="hiLite('wario','wario')"><IMG SRC="images/splash/splash_wario.gif" WIDTH="94" HEIGHT="148" BORDER="0" name="wario"></a></td>
	</tr>
	<tr>
	<td colspan="3">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr>
		<td><IMG SRC="images/splash/splash_header.gif" WIDTH="360" HEIGHT="27" BORDER="0"></td>
		</tr>
		</table>
	</td>
	</tr>
	<tr>
	<td colspan="5" height="80" align="center" valign="bottom"><IMG SRC="images/splash/n64logo.gif" WIDTH="100" HEIGHT="16" BORDER="0"></td>
	</tr>
	</table>
</td>
</tr>
</table>
</BODY>