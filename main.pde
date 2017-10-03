GOL gol;

void setup()
{
    size(640, 360);
    gol = new GOL();
    background(225);
}

void draw()
{
    gol.generate();
    gol.display();
}
