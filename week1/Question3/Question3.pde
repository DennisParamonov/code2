//2D Array Question

//color
//size
//mousePress
//some conditional to see if we're clicking on the square
//boolean 2D Array

int num = 10; // refers to the number of rows and columns

color myColor [][]; //array 

boolean clicked [][]; //boolean conditional

int size;

void setup (){
    noStroke();
    size (600, 600);
    size = width/num;
    myColor = new color [num][num];
    clicked = new boolean [num][num];
    
    for (int i = 0; i<num; i++){
      
       for (int j = 0; j<num; j++){
         
        myColor[i][j] = color(random(0,255),random(0,255),random(0,255));
        clicked[i][j] = false;
        
      }
      
    }
    
}

void draw (){
  
  for (int i = 0; i<num; i++){
    
    for (int j = 0; j<num; j++){
      
      if(mouseX>i*size && mouseX< (i+1)*size && mouseY>j*size && mouseY<(j+1)*size && mousePressed) {
        
      clicked[i][j] = true;
      
      }
      
        if (clicked[i][j]){
          
                fill(myColor[i][j]);
                
        } else {
          
                fill(255);
        }
       
        rect (i*size, j*size, size, size);
        
      }
      
   }
  
}
