import 'package:flutter/material.dart';
import 'package:tugas7/cart_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => CartModel(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce',
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

final products = [
  Product(
    'laptop',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAI60IsCXeWH5pCHEpt2QPfc-FvqXcUHT3M2QvcB-WZg&s=10',
  ),
  Product(
    'mouse',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0ywsGAYGU4p67KXR5cq3cHMjiZiW_NRqismdeZf1f-A&s=10',
  ),
  Product(
    'keyboard',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZEch2IsSh0oE4960aYO0hhtY5LWntikpO7FcOOwLyWA&s=10',
  ),
  Product(
    'headphone',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9qcT5kgXCWakdP_jrElU0IIocGQ16kMp5K_6gXvJ5Ig&s=10',
  ),
];

Widget productImage(String url, {double? width, double? height}) => ClipRRect(
  borderRadius: .circular(12),
  child: Image.network(url, width: width, height: height, fit: .cover),
);

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover Store'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        actions: [
          Consumer<CartModel>(
            builder: (context, cart, _) => IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CartPage()),
              ),
              icon: Badge(
                label: Text('${cart.totalItem}'),
                isLabelVisible: cart.totalItem > 0,
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final p = products[index];
            return Card(
              color: Colors.white,
              elevation: 2,
              clipBehavior: .antiAlias,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Expanded(child: productImage(p.urlGambar)),
                    Row(
                      children: [
                        Expanded(child: Text(p.nama)),
                        IconButton(
                          onPressed: () {
                            Provider.of<CartModel>(
                              context,
                              listen: false,
                            ).tambahProduk(p);
                          },
                          icon: Icon(Icons.add_shopping_cart),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyCart'), backgroundColor: Colors.white),
      body: Consumer<CartModel>(
        builder: (context, cart, _) => cart.items.isEmpty
            ? const Center(child: Text('Keranjang Kosong'))
            : ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: cart.items.length,
                itemBuilder: (context, index) {
                  final item = cart.items[index];
                  return Card(
                    color: Colors.white,
                    elevation: 2,
                    clipBehavior: .antiAlias,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          productImage(
                            item.produk.urlGambar,
                            height: 85,
                            width: 85,
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  item.produk.nama,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: .bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text('Jumlah: ${item.qty}'),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              cart.hapusProduk(item.produk);
                            },
                            icon: const Icon(Icons.delete, color: Colors.red),
                            tooltip: 'Hapus',
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
