import colladaLoader.*;

ColladaLoader model;

float rotX = -0.34499976f;
float rotY = -0.47699913f;
int x = 120;
int y = 387;
float changeSize = 3.80011658f;



void setup()
{
      size(500, 500, P3D);
      //copy susan manually to processing's "data" folder first    
      model = ColladaLoader.getInstance("./data/susanOnWall.kmz", this);
      frameRate(10);
}

void draw()
{
        background(16);

      lights();
      
      translate(x, y);
      rotateX(rotY);
      rotateY(rotX);
      scale(changeSize);
      
      model.draw(); 
      
      //draws the sketchup-Axis
      stroke(125, 0, 0);
      strokeWeight(1);
      line(0, 0, 0, width, 0, 0);
      stroke(0, 125, 0);
      line(0, 0, 0, 0, 0, -width);
      stroke(0, 0, 125);
      line(0, 0, 0, 0, -height, 0);

}

//key a = turn model, key s = move model, key d = go forward
void mouseDragged()
    {
        if (key == 'a' )
        {
            rotX += (mouseX - pmouseX) * 0.001f;
            rotY -= (mouseY - pmouseY) * 0.001f;
        }
        if (key == 'd')
        {
            changeSize -= (mouseY - pmouseY) * 0.01f;
        }
        if (key == 's' )
        {
            x += (mouseX - pmouseX)*5;
            y += (mouseY - pmouseY)*5;
        }
        
    }
    
    





