function startTime() {
  var today = new Date();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  var ms = today.getMilliseconds();
  m = addZero(m);
  s = addZero(s);
  ms = addZeroms(ms);
  document.getElementById('time').innerHTML = "Current time: " + h + ":" + m + ":" + s + ":" + ms + "";
  var t = setTimeout(startTime, 1);
}
function addZero(i) {
  if (i < 10) {i = "0" + i};
  return i;
}

function addZeroms(i){
	if (i < 10) {i = "00" + i};
	if (i < 100) {i = "0" + i};
  return i;
}