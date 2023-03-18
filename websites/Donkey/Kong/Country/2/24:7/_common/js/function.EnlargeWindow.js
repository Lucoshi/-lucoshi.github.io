function EnlargeWindow() {
	var width  = screen.availWidth;
	var height = screen.availHeight;
	
	if(document.layers) {
		width -= 10;
		height -= 50;
	}
	
	top.moveTo(0,0);
	top.resizeTo(width,height);
}
EnlargeWindow();