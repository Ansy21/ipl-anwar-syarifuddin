package Tugas;

class Circle extends Shape {
    private float radius;
    private Point center;

    public double area(float inRadius) {
        return Math.PI * inRadius * inRadius;
    }

    public double circum() {
        return 2 * Math.PI * radius;
    }

    public void setCenter(Point center) {
        this.center = center;
    }

    public void setRadius(float radius) {
        this.radius = radius;
    }

    @Override
    public void draw() {
        System.out.println("Drawing Circle");
    }

    @Override
    public void erase() {
        System.out.println("Erasing Circle");
    }

    @Override
    public void move() {
        System.out.println("Moving Circle");
    }

    @Override
    public void resize() {
        System.out.println("Resizing Circle");
    }
}