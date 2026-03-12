import 'package:flutter/material.dart';
import 'package:latkuis_229/models/menu_models.dart';

class OrderPage extends StatefulWidget {
  final MenuModel menu;

  const OrderPage({super.key, required this.menu});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final TextEditingController jumlahController = TextEditingController();

  int totalHarga = 0;

  void hitungTotal() {
    int jumlah = int.tryParse(jumlahController.text) ?? 0;

    setState(() {
      totalHarga = jumlah * widget.menu.harga;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Order")),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(widget.menu.gambarUrl, height: 180),
            const SizedBox(height: 10),
            Text(
              widget.menu.nama,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("Harga: Rp ${widget.menu.harga}"),
            const SizedBox(height: 15),
            TextField(
              controller: jumlahController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Masukkan Jumlah",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: hitungTotal,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text("Submit"),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Total Harga: Rp $totalHarga",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
