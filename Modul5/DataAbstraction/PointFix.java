package Modul5.DataAbstraction;

public interface PointFix {
    double getX();

    double getY();

    void setCartesian(double x, double y);

    double getR();

    double getTheta();

    void setPolar(double r, double theta);
}