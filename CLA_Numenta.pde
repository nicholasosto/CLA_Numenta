//Cortical Learning Algo

/*=============================/

 Potential Pool Percent: %50
       Nuber of Columns: 20
              Threshold: 0.3
      Input Vector size: 100
      
/=============================*/
CorticalNet cNet;

float pool_percent = 0.5;
int   num_columns = 20;
float threshold = 0.3;
int   input_vector_size = 100;


void setup()
{
  size(800,600);
  background(0);
  

  
  cNet = new CorticalNet(num_columns,input_vector_size,threshold,pool_percent);
  
}

void draw()
{
  
  
}
