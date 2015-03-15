class Column
{
  ArrayList<Cell> cells;
  ArrayList<Synapse> potential_pool;
  
  int pool_size;
  int input_size;
  
  boolean active;
  
  Column(int pool_size, int input_size)
  {
    this.pool_size = pool_size;
    this.input_size = input_size;
    
    assignSynapsePool();
    
  }
  
  void assignSynapsePool()
  {
    for(int i=0; i<pool_size ; i++)
    {
      addSynapse(floor(random(0,input_size)));
    }
  }
  
  void addSynapse(int input_index)
  {
    potential_pool.add(new Synapse(input_index));
  }
  
  void activateColumn()
  {
    this.active = true;
    int predicted_cell_count = 0;
    
    // Activate predicted cells
    for(Cell c: cells)
    {
      if(c.getState()==1)
      {
        activateCell(c);
        predicted_cell_count++;
      }
    }

    // Activate all cells if none are predicted
    if(predicted_cell_count == 0)
    {
      for(Cell c: cells)
      {   
        activateCell(c);
      }
    }
  }
  
  void activateCell(Cell c)
  {
    
  }
  
  
  void adjustPermanence()
  {
    
    
  }
  
}
