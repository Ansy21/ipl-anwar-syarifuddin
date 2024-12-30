package Tugas;

class Window {
    public void open() {
        System.out.println("Window opened");
    }

    public void close() {
        System.out.println("Window closed");
    }

    public void move() {
        System.out.println("Window moved");
    }

    public void display() {
        System.out.println("Window displayed");
    }

    public void handleEvent(Event event) {
        System.out.println("Window event handled");
    }
}