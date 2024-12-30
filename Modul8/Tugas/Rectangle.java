package Tugas;

class Rectangle extends Shape {
    @Override
    public void draw() {
        System.out.println("Drawing Rectangle");
    }

    @Override
    public void erase() {
        System.out.println("Erasing Rectangle");
    }

    @Override
    public void move() {
        System.out.println("Moving Rectangle");
    }

    @Override
    public void resize() {
        System.out.println("Resizing Rectangle");
    }
}