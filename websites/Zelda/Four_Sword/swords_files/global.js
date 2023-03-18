// global.js for Zelda
// site-wide functionality
// code by Chris and Graeme

/**********************************************************************
   Fix CSS in NS4.x
 *********************************************************************/

if( navigator.appName == "Netscape" && parseInt(navigator.appVersion) == 4) {

	// force a reload when the window is resize so styles aren't lost
	originalWindowWidth = innerWidth;
	originalWindowHeight = innerHeight;
	window.onresize = function() { if(innerWidth != originalWindowWidth || innerHeight != originalWindowHeight) location.reload(); };
	
	// increase pixel font sizes by 1px in Windows
	if (navigator.platform == "Win32") {
	
	// Tag selectors
		document.tags.body.fontSize = '11px';
		document.tags.td.fontSize = '11px';
		document.tags.th.fontSize = '11px';
		document.tags.p.fontSize = '11px';
		document.tags.input.fontSize = '11px';
		document.tags.select.fontSize = '11px';
		document.tags.textarea.fontSize = '11px';
		document.tags.div.fontSize = '11px';
		document.tags.span.fontSize = '11px';
	
	// Class selectors
	// replace "--className--" with class identifier
	//document.classes.--className--.all.fontSize = '11px';
	
	// Id selectors
	// replace "--idName--" with id identifier
	//document.ids.--idName--.all.fontSize = '11px';
	}
}


/******************************************************************************
	Popup windows
******************************************************************************/

function openScreenshot(url) {
	openCenteredWindow(url, 'screenshot', 399, 275,0,0);
}

function openOffsite(url) {
	openFullChromeWindow(url, 'offsite','status', '');
}

function openParental(url) {
	openCenteredWindow(url, 'parental', 400, 280,0,1);
}

function openFaq(url) {
	openCenteredWindow(url, 'parental', 400, 280,0,1);
}