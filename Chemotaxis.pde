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
 	fill(0,50,255);
 	for(int i = 0; i < 50; i++)
 	{
 		for(int j = 0; j < 50; j++)
 			rect(i*20+5,j*20+5,10,10);
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor, turnDirection;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*11)*20+200;
 		myY = (int)(Math.random()*11)*20+200;
 		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 		turnDirection = (int)(Math.random()*4+1);
 	}  
 	void move()
 	{	int biasChooser = (int)(Math.random()*8);
 		if(myX % 20 == 0 && myY % 20 == 0)
 		{
 			if(mouseX > myX%500 && mouseY > myY%500)
 			{
 				if(biasChooser < 3)
 					turnDirection = 1;
 				else if(biasChooser < 6)
 					turnDirection = 2;
 				else if(biasChooser < 7)
 					turnDirection = 3;
 				else 
 					turnDirection = 4; 					
 			}
			else if(mouseX > myX%500 && mouseY < myY%500)
		 	{
 				if(biasChooser < 3)
 					turnDirection = 1;
 				else if(biasChooser < 4)
 					turnDirection = 2;
 				else if(biasChooser < 5)
 					turnDirection = 3;
 				else 
 					turnDirection = 4;
		 	}
 			else if(mouseX < myX%500 && mouseY > myY%500)
	 		{
	 		 	if(biasChooser < 1)
 					turnDirection = 1;
 				else if(biasChooser < 4)
 					turnDirection = 2;
 				else if(biasChooser < 7)
 					turnDirection = 3;
 				else 
 					turnDirection = 4;
	 		}
 			else if(mouseX < myX%500 && mouseY < myY%500)
 			{
				if(biasChooser < 1)
 					turnDirection = 1;
 				else if(biasChooser < 2)
 					turnDirection = 2;
 				else if(biasChooser < 5)
 					turnDirection = 3;
 				else 
 					turnDirection = 4;
 			}
 		}

 		if(turnDirection == 1)
 			myX++;
 		else if(turnDirection == 2)
 			myY++;
 		else if(turnDirection == 3)
 			myX--;
 		else
 			myY--;
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX%500,myY%500,10,10);
 	}
 }    