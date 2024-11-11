package openclose;

class DeluxeCinema extends Cinema {
    public DeluxeCinema(double price) {
        this.price = price;
    }

    @Override
    Double calculateAdminFee() {
        return price * 12 / 100;
    }
}