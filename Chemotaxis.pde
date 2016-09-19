Bacteria [] petri;
 void setup()   
 {     
 	size(500,500);
 	background(0);
 	petri = new Bacteria[10];
 	for(int i = 0; i < petri.length; i++)
 	{
 		petri[i] = new Bacteria();
 	}
 }   
 void draw()   
 {
 	background(0);
 	for(int i = 0; i < petri.length; i++)
 	{
 		petri[i].show();
 		petri[i].move();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY, r, g, b;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*101)+200;
 		myY = (int)(Math.random()*101)+200;
 		r = (int)(Math.random()*256);
 		g = (int)(Math.random()*256);
 		b = (int)(Math.random()*256);
 	}  
 	void move()
 	{
 		//myX = myX + (int)(Math.random()*11)-5;
 		//myY = myY + (int)(Math.random()*11)-5;
 		// is there a condition where the mouse isn't on screen?
 		if(mouseX > myX && mouseY > myY)
 		{
 			myX = myX + (int)(Math.random()*10)-4;
 			myY = myY + (int)(Math.random()*10)-4;
 		}
 		else if(mouseX > myX && mouseY < myY)
 		{
 			myX = myX + (int)(Math.random()*10)-4;
 			myY = myY + (int)(Math.random()*10)-5;
 		}
 		else if(mouseX < myX && mouseY > myY)
 		{
 			myX = myX + (int)(Math.random()*10)-5;
 			myY = myY + (int)(Math.random()*10)-4;
 		}
 		else
 		{
 			myX = myX + (int)(Math.random()*10)-5;
 			myY = myY + (int)(Math.random()*10)-5;
 		}
 	}
 	void show()
 	{
 		fill(r,g,b);
 		ellipse(myX,myY,20,20);
 	}
 }    