GOL gol;
ArrayList<DNA> DNALibrary = new ArrayList<DNA>();
int population;

void setup()
{
    size(640, 360);
    background(225);
    population = int(random(width, width*height));
    gol = new GOL(population);
}

void draw()
{
    gol.generate();
    gol.display();
}
