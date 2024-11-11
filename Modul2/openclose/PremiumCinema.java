package openclose;

class PremiumCinema extends Cinema {
    public PremiumCinema(double price) {
        this.price = price;
    }

    @Override
    Double calculateAdminFee() {
        return price * 20 / 100;
    }
}