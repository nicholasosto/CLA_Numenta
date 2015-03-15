class CorticalNet
{
  float threshold;
  float pool_percent;
  int input_vector_size;
  
  Column[] columns;
  Column[] winning_columns;

  CorticalNet(int column_count, int input_vector_size, float threshold, float pool_percent,int winning_columns_count)
  {
    this.threshold = threshold;
    this.input_vector_size = input_vector_size;
    this.pool_percent = pool_percent;
    this.columns = new Column[column_count];
    this.winning_columns = new Column[winning_columns_count];
    setupColumns();
  }
  
  void setupColumns()
  {
    for(int i=0;i<columns.length;i++)
    {
      columns[i] = new Column(floor(input_vector_size*pool_percent),input_vector_size);
    }
  }
  
  void computeOverlapScore()
  {
    
  }
  
}

// 1 - compute overlap score for all columns
// 2 - take top 2% and assign them the ACTIVE state
// 3 - All Winning columns strengthen synapse permanence
//     Losing Columns stay static.

