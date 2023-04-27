function init( langID, pageID ) 
{
	var siteWidth = 960;
	var siteHeight = 600;
	var wiiWidth = 800;
	var wiiHeight = 497;
	
	var so = new SWFObject("swf/site.swf", "flashcontent", '100%', siteHeight, "0", "#230127");
	so.addParam("allowScriptAccess", "sameDomain");
		
	if (navigator.platform == "Nintendo Wii") 
	{
		if( !pageID ) pageID = "home";
		so.addVariable("wiiBrowser", "true");
		so.addVariable( "languageID", langID );
		so.addVariable( "loadPage", pageID );
		
		so.setAttribute( "scale", "exactFit" );
		so.setAttribute( "width", siteWidth );
		so.setAttribute( "height", siteHeight );
		document.getElementById( "flashcontent" ).style.width = siteWidth+'px';
		document.getElementById( "flashcontent" ).style.height = siteHeight+'px';
	}
	else 
	{
		so.addVariable("wiiBrowser", "false");
		so.addVariable( "languageID", langID );
		so.addVariable( "loadPage", pageID );
	}
	
	document.getElementById( "flashcontent" ).style.width = '100%';
	document.getElementById( "flashcontent" ).style.height = siteHeight + 'px';
	so.write("flashcontent");
}