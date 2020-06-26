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

  List autoIncrementFunction(List array,int length)
  {
    print('length $length');
    print('length/2 ${length/2}');

    for(int i=0;i<length;i++)
      {
        int largest=i;
        int l=2*i+1;
        int r=2*i+2;
        print('l $l');
        print('r $r');

        if(l<length && array[l]>array[largest])
        {
          largest=l;
          print('largest l ${array[l]}');
        }

        if(r<length && array[r]>array[largest])
        {
          largest=r;
          print('largest r ${array[r]}');

        }

        if(largest!=i)
        {
          int temp=array[i];
          array[i]=array[largest];
          array[largest]=temp;
        }
      }
    print('after sort $array');
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
