import 'buildSort.dart';
class HeapSort
{
  BuildSort heapify = BuildSort();
  bool isSortComplete()
  {
    bool status=false;
    return status;
  }

  List sortFunction(List array,int length,int index)
  {
    int temp=array[index];
    array[index]=array[0];
    array[0]=temp;

   array = heapify.autoIncrementFunction(array, index);

    return array;
  }
}