function LoadAsTop() {
	if(self != top)
		top.location.href = self.location.href;
}
LoadAsTop();