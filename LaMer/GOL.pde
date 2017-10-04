class GOL
{
  ArrayList<Atom> chain = new ArrayList<Atom>();
  
  GOL(int population)
  {
    for(int i = 0; i < population; i++)
    {
      chain.add(new Atom(random(height), random(width) ));
    }
  }
  
  void generate()
  {
    for (int i = 0; i < columns; i++)
      for (int j = 0; j < rows; j++)
        board[i][j].savePrevious();

    for (int x = 0; x < columns; x++)
      for (int y = 0; y < rows; y++)
      {
        int neighbors = 0;
        for (int i = -1; i <= 1; i++)
          for (int j = -1; j <= 1; j++)
            neighbors += board[(x+i+columns)%columns][(y+j+rows)%rows].previous;

        neighbors -= board[x][y].previous;

        if (board[x][y].state == 1 && neighbors < 2) board[x][y].newState(0);
        else if (board[x][y].state == 1 && neighbors > 3) board[x][y].newState(0);
        else if (board[x][y].state == 0 && neighbors == 3 ) board[x][y].newState(1);
      }
  }

  void display()
  {
    loadPixels();
    int x, y, position;
    int len1 = chain.size();
    for(int i = 0; i < len; i++)
      {
        x = chain.get(i).x; y = chain.get(i);.y;
        position = (y*width) + x + y;
        color colors = chain.get(i).colors;
        pixels[position] = colors;        
      }
    updatePixels();
  }
}
