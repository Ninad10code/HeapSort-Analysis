class AsciiList
{
  int length;
  String word;
  List<int> asci=List();
  AsciiList({String word})
  {
    this.word=word;
    length=word.length;
    asci.length=length;
  }
  List function(String word)
  {
    for(int i=0;i<length;i++)
      {
        asci[i]=word[i].codeUnitAt(i);
      }
    return asci ;
  }

}