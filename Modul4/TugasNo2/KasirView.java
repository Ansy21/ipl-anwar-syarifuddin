package TugasNo2;

import java.util.Scanner;

public class KasirView {
    private Scanner in = new Scanner(System.in);

    public void tampilkanInfoBarang(String nama, int harga, int stok) {
        System.out.println("Nama Barang : " + nama);
        System.out.println("Harga Barang : " + harga);
        System.out.println("Stok Barang : " + stok);
    }

    public int masukkanJumlahBarang() {
        System.out.print("Jumlah barang: ");
        return in.nextInt();
    }

    public void tampilkanJumlahBayar(int totalBayar) {
        System.out.println("Jumlah Bayar: " + totalBayar);
    }
}
