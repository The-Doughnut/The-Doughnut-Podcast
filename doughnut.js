function startTime() {
  var today = new Date();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  var ms = today.getMilliseconds();
  m = addZero(m);
  s = addZero(s);
  ms = addZeroms(ms);
  document.getElementById('time').innerHTML = "Current time: " + h + ":" + m + ":" + s + ":" + ms + "&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp SMOG WARNING: 9:20 PM EDT Friday 30 October 2020 Smog warning in effect for: Châteauguay - La Prairie area, Laval area, Longueuil - Varennes area, Montréal Island area. Today's weather for Montr&eacute;al: high 4&deg;C, low 0&deg;C. Wind chill: -9&deg;C. Sunny for October 31, 2020 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp UV Index: 3";
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
