function startTime() {
  var today = new Date();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  var ms = today.getMilliseconds();
  m = addZero(m);
  s = addZero(s);
  ms = addZeroms(ms);
  document.getElementById('time').innerHTML = "Current time: " + h + ":" + m + ":" + s + ":" + ms + "&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Today's weather for Montr&eacute;al: high 2&deg;C, low -3&deg;C. Wind chill: -8&deg;C. A mix of sun and cloud for November 2, 2020. 40 percent chance of flurries early this morning. Wind northwest 20 km/h gusting to 40. [Environment Canada] &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp UV Index: 2";
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
