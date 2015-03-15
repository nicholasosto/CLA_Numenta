class Cell
{
  int state; //[0: inactive, 1: predicted, 2:active
  
  Cell()
  {
    this.state = 0;
    
  }
  
  int getState()
  {
    return(this.state);
  }
}
