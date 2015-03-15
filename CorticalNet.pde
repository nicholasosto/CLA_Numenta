class CorticalNet
{
  float threshold;
  float pool_percent;
  int input_vector_size;
  
  Column[] columns;

  CorticalNet(int column_count, int input_vector_size, float threshold, float pool_percent)
  {
    this.threshold = threshold;
    this.input_vector_size = input_vector_size;
    this.pool_percent = pool_percent;
    this.columns = new Column[column_count];
    setupColumns();
  }
  
  void setupColumns()
  {
    for(int i=0;i<column_count;i++)
    {
      columns[i] = new Column();
    }
  }
}
