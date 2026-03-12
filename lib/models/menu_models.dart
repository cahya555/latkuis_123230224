class MenuModel {
  String nama;
  int harga;
  String gambarUrl;

  MenuModel({required this.nama, required this.harga, required this.gambarUrl});
}

List<MenuModel> menuList = [
  MenuModel(
    nama: "Nasi Goreng Spesial",
    harga: 22000,
    gambarUrl: "https://images.unsplash.com/photo-1604908176997-125f25cc6f3d",
  ),
  MenuModel(
    nama: "Ayam Geprek",
    harga: 18000,
    gambarUrl: "https://images.unsplash.com/photo-1608039755401-742074f0548d",
  ),
  MenuModel(
    nama: "Bakso Urat",
    harga: 17000,
    gambarUrl: "https://images.unsplash.com/photo-1604908176997-125f25cc6f3d",
  ),
  MenuModel(
    nama: "Mie Goreng Jawa",
    harga: 20000,
    gambarUrl: "https://images.unsplash.com/photo-1617093727343-374698b1b08d",
  ),
  MenuModel(
    nama: "Sate Ayam Madura",
    harga: 25000,
    gambarUrl: "https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec",
  ),
  MenuModel(
    nama: "Es Teh Manis",
    harga: 5000,
    gambarUrl: "https://images.unsplash.com/photo-1556679343-c7306c1976bc",
  ),
];
