package TugasNo2;

public class KasirController {
    private Barang barang;
    private KasirView view;

    public KasirController(Barang barang, KasirView view) {
        this.barang = barang;
        this.view = view;
    }

    public void tampilkanInfoBarang() {
        view.tampilkanInfoBarang(barang.getNama(), barang.getHarga(), barang.getStok());
    }

    public void prosesTransaksi() {
        int qty = view.masukkanJumlahBarang();
        if (qty > barang.getStok()) {
            System.out.println("Stok tidak mencukupi!");
            return;
        }
        int totalBayar = qty * barang.getHarga();
        barang.setStok(barang.getStok() - qty);
        view.tampilkanJumlahBayar(totalBayar);
    }
}
