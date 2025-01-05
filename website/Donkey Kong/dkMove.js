var Ver4=parseInt(navigator.appVersion.charAt(0))>=4
var IE=navigator.appName.indexOf("Microsoft")!=-1
var al, imagesrc, ex=-100, ey=-100, x0=-100, y0=-100
function MoveDiddy()
{
if (Math.abs(ex-x0)>=10) { x0+=Math.floor((ex-x0)*0.1) }
else if (ex!=x0) { x0+=Math.abs(ex-x0)/(ex-x0) }
if (Math.abs(ey-y0)>=10) { y0+=Math.floor((ey-y0)*0.1) }
else if (ey!=y0) { y0+=Math.abs(ey-y0)/(ey-y0) }
imagesrc=""
if  ( (ex<x0) && ( (x0-ex) > Math.abs(y0-ey)/2 ) )
{ imagesrc="diddy_l.gif"
if ( (x0-ex) < Math.abs(y0-ey)*2 )
{ if (ey<y0) imagesrc="diddy_lo.gif"
if (ey>y0) imagesrc="diddy_lu.gif"
}
}
if ( (ex>x0) && ( (ex-x0) > Math.abs(y0-ey)/2) )
{ imagesrc="diddy_r.gif"
if ( (ex-x0) < Math.abs(y0-ey)*2 )
{ if (ey<y0) imagesrc="diddy_ro.gif"
if (ey>y0) imagesrc="diddy_ru.gif"
}
}
if (imagesrc=="")
{ if (ey<y0) imagesrc="diddy_o.gif"
if (ey>y0) imagesrc="diddy_u.gif"
if ((ex==x0)&&(ey==y0)) imagesrc="diddy.gif"
}
if (Ver4)
{ if (!IE)
{ document.DiddyLayer.document.images.diddy.src=imagesrc }
else document.all.DiddyLayer.document.images.diddy.src=imagesrc
}
al.left=x0-100
al.top=y0
setTimeout("MoveDiddy();",100)
}
function GetMouseEvent(e)
{ 
if (Ver4)
{ 
if (!IE)
{ 
ex=e.pageX
ey=e.pageY }
else
{ ex=event.clientX + document.body.scrollLeft
ey=event.clientY + document.body.scrollTop }
}
}
function ScriptSetup()
{
isIm = (document.images) ? 1 : 0
if (isIm)
{ arImLoad = new Array
('diddy','diddy_u','diddy_o','diddy_l','diddy_r',
'diddy_lu','diddy_lo','diddy_ru','diddy_ro')
arImList = new Array ()
for (counter in arImLoad)
{ arImList[counter] = new Image()
arImList[counter].src = arImLoad[counter] + '.gif'
}
}
if (Ver4)
{ if (!IE)
{ al=document.DiddyLayer
document.captureEvents(Event.MOUSEMOVE)
}
else
{ al=document.all.DiddyLayer.style }
document.onmousemove = GetMouseEvent
MoveDiddy()
}
}
window.onload = ScriptSetup
