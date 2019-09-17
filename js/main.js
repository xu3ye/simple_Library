window.onload = function(){
				var List = document.getElementsByClassName('list');
				var Dmain = document.getElementsByClassName('down_main');
				var Su = document.getElementsByClassName('su');
			    var Main = document.getElementById('main');
			    var Sign = document.getElementById('sign');
			    var Hei = window.screen.height;
			    Main.style.height = Hei - 222;
			    List[5].onclick = function(){  
				   //MAin.style.opacity = '0.5';
				   Dmain[0].style.display = 'block';
			    }
			    Sign.onclick = function(){
			    	Dmain[0].style.display = "none";
			    	Dmain[1].style.display = "block";
			    }
			    Su[0].onclick = function(){
			    	Dmain[0].style.display = "none";
			    }
			    Su[1].onclick = function(){
			    	Dmain[1].style.display = "none";
			    	List[5].innerHTML = "用户：烈奉";
			    }
				 
			}