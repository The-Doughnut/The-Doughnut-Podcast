function addBy(){
			num1 = document.getElementById("firstNumber").value;
			num2 = document.getElementById("secondNumber").value;
			document.getElementById("result").innerHTML = parseInt(num1)+parseInt(num2);
		}
		function subtractBy(){
			num1 = document.getElementById("firstNumber").value;
			num2 = document.getElementById("secondNumber").value;
			document.getElementById("result").innerHTML = parseInt(num1)-parseInt(num2);
		}
		function multiplyBy(){
			num1 = document.getElementById("firstNumber").value;
			num2 = document.getElementById("secondNumber").value;
			document.getElementById("result").innerHTML = parseInt(num1)*parseInt(num2);
		}
		function divideBy(){
			num1 = document.getElementById("firstNumber").value;
			num2 = document.getElementById("secondNumber").value;
			document.getElementById("result").innerHTML = parseInt(num1)/parseInt(num2);
		}
		function remainderBy(){
			num1 = document.getElementById("firstNumber").value;
			num2 = document.getElementById("secondNumber").value;
			document.getElementById("result").innerHTML = parseInt(num1)%parseInt(num2);
		}
		function squarerootBy(){
			num1 = document.getElementById("firstNumber").value;
			num2 = document.getElementById("secondNumber").value;
			document.getElementById("result").innerHTML = Math.sqrt(parseInt(num1));
			document.getElementById("result2").innerHTML = Math.sqrt(parseInt(num2));
		}