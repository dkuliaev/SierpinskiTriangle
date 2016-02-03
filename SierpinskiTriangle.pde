public void setup()
{
	size(800, 800);
	background(0);
	sierpinskiTriangle(0, 800, 800);
	sierpinskiSquare(300, 400, 200);
}
public void draw()
{
	
}

public void sierpinskiTriangle(int x, int y, int len) 
{
	if(len <= 20)
	{
		fill(255);
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else
	{
		sierpinskiTriangle(x, y, len/2);
		sierpinskiTriangle(x+len/2, y, len/2);
		sierpinskiTriangle(x+len/4, y-len/2, len/2);
	}

}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
public void sierpinskiSquare(int x, int y, int len)
{

	if(len <= 200/6)
	{
		fill(255);
		rect(x, y, len, len);
		
	}
	else
	{	
		noStroke();
		sierpinskiSquare(x+len/3, y+len/3, len/3);
		sierpinskiSquare(x+len/9, y+len/9, len/9);
		sierpinskiSquare(x+4*len/9, y+len/9, len/9);
		sierpinskiSquare(x+7*len/9, y+len/9, len/9);

		sierpinskiSquare(x+len/9, y+7*len/9, len/9);
		sierpinskiSquare(x+4*len/9, y+7*len/9, len/9);
		sierpinskiSquare(x+7*len/9, y+7*len/9, len/9);

		sierpinskiSquare(x+len/9, y+4*len/9, len/9);
		sierpinskiSquare(x+7*len/9, y+4*len/9, len/9);

		
	}
}