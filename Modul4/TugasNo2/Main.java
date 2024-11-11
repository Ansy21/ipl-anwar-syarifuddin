package TugasNo2;

public class Main {
    public static void main(String[] args) {
        Barang barang = new Barang("GeForce GTX 1060Ti", 3000, 10);
        KasirView view = new KasirView();
        KasirController controller = new KasirController(barang, view);

        // Tampilkan info barang
        controller.tampilkanInfoBarang();

        // Proses transaksi
        System.out.println("Transaksi Pembelian");
        controller.prosesTransaksi();

        // Tampilkan info barang setelah transaksi
        controller.tampilkanInfoBarang();
    }
}