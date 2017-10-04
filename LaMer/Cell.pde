class Atom
{
  int x, y;
  DNA DNASequence;
  color colos;

  Atom(int x_, int y_)
  {
    x = x_; y = y_;
    int len = DNALibrary.size() + 1;
    DNASequence = DNALibrary.get(int(random(len)));
    DNASequence.randomModify();
    colors = DNASequence.colors();
  }
}
