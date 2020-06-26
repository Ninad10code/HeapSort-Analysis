class BuildSort
{
  List iterateFunction(List array,int length,int index)
  {
    int largest=index;
    int l=2*index+1;
    int r=2*index+2;
    if(l<length && array[l]>array[largest])
      {
        largest=l;
      }

    if(r<length && array[r]>array[largest])
      {
        largest=r;
      }

    if(largest!=index)
      {
        int temp=array[index];
        array[index]=array[largest];
        array[largest]=temp;
      }
    return array;
  }

  bool isBuildComplete(List array,int index,int length)
  {
    bool status;
    if(index==length-3)
      {
        status=true;
      }
    else
      {
        status=false;
      }
    return status;
  }
}
