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
    print('word $word');
    print('length $length');
  }
  List function()
  {
    print('word $word');
    print('length $length');
    for(int i=0;i<length;i++)
      {
        asci[i]=word.codeUnitAt(i);
        print('ascii value $asci[i]');
      }
    return asci ;
  }

}