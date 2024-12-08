package Modul5.Tugas.TugasDefensiveProgramming;

import java.io.*;
import java.util.Vector;

public class ListOfNumbers2 {
    private Vector<Integer> victor;
    private static final int size = 10;

    public ListOfNumbers2() {
        victor = new Vector<>(size);
        for (int i = 0; i < size; i++) {
            victor.addElement(i);
        }
        this.readList("infile.txt");
        this.writeList();
    }

    // Improved readList with exception handling
    public void readList(String fileName) {
        String line = null;
        RandomAccessFile raf = null;

        try {
            raf = new RandomAccessFile(fileName, "r");
            while ((line = raf.readLine()) != null) {
                try {
                    Integer i = Integer.parseInt(line); // Convert string to Integer
                    System.out.println(i);
                    victor.addElement(i);
                } catch (NumberFormatException e) {
                    System.err.println("Invalid number format: " + line);
                }
            }
        } catch (FileNotFoundException e) {
            System.err.println("File not found: " + fileName);
        } catch (IOException e) {
            System.err.println("Error reading from file: " + fileName);
        } finally {
            try {
                if (raf != null) raf.close();
            } catch (IOException e) {
                System.err.println("Error closing the file.");
            }
        }
    }

    // Improved writeList with exception handling
    public void writeList() {
        PrintWriter out = null;

        try {
            out = new PrintWriter(new FileWriter("outfile.txt"));
            for (int i = 0; i < victor.size(); i++) {
                if (i >= victor.size()) {
                    throw new ArrayIndexOutOfBoundsException("Index exceeds vector size.");
                }
                out.println("Value at: " + i + " = " + victor.elementAt(i));
            }
        } catch (IOException e) {
            System.err.println("Error writing to file.");
        } catch (ArrayIndexOutOfBoundsException e) {
            System.err.println("Array index out of bounds: " + e.getMessage());
        } finally {
            if (out != null) {
                out.close();
                System.out.println("Output file has been written successfully.");
            } else {
                System.err.println("PrintWriter not open, could not write to file.");
            }
        }
    }

    public static void main(String[] args) {
        new ListOfNumbers2();
    }
}