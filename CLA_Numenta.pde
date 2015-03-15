//Cortical Learning Algo

/*===============================/

    Potential Pool Percent: %50
          Nuber of Columns: 1000
                 Threshold: 0.3
         Input Vector size: 100
 Winning Column Percentage: 0.02 (10)
      
/================================*/
CorticalNet cNet;

float pool_percent = 0.5;
int   num_columns = 1000;
float threshold = 0.3;
int   input_vector_size = 100;
int   winning_num_columns = 10;


void setup()
{
  size(800,600);
  background(0);
  

  
  cNet = new CorticalNet(num_columns,input_vector_size,threshold,pool_percent,winning_num_columns);
  
}

void draw()
{
  
  
}
