import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final List<Map<String, String>> bukuData = [
  {
    'title': 'Laskar Pelangi',
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM8joseg3BAMnVwEg0X5gV6E2zCQ-8RK6WQ6m2-_NAtw&s=10',
    'deskripsi': 'Laskar Pelangi adalah novel pertama karya Andrea Hirata yang diterbitkan oleh Bentang Pustaka pada tahun 2005. Novel ini mengisahkan perjalanan sepuluh anak dari keluarga kurang mampu yang menempuh pendidikan di sebuah sekolah Muhammadiyah di Pulau Belitung dengan segala keterbatasan yang ada. Sejak duduk di bangku kelas satu Sekolah Dasar (SD) hingga kelas tiga Sekolah Menengah Pertama (SMP), mereka belajar dalam kelas yang sama dan menyebut diri mereka sebagai Laskar Pelangi. Dalam perjalanan mereka, hadir seorang anak perempuan bernama Flo yang menjadi anggota baru Laskar Pelangi. Flo adalah murid pindahan yang membawa dinamika baru dalam kelompok mereka. Novel ini menjadi bagian pertama dari Tetralogi Laskar Pelangi, yang kemudian dilanjutkan dengan tiga novel berikutnya, yaitu Sang Pemimpi, Edensor, dan Maryamah Karpov. Buku ini tercatat sebagai buku sastra Indonesia terlaris sepanjang sejarah, serta diadaptasi ke berbagai bentuk media, termasuk film dan pertunjukan teater. Pada tahun 2021, keempat novel Laskar Pelangi diterbitkan ulang sebagai trilogi (bukan lagi tetralogi) karena novel Edensor dijadikan satu dengan Sang Pemimpi, sedangkan novel Maryamah Karpov menjadi bagian dari Buku Besar Peminum Kopi (juga terdiri dari novel Padang Bulan dan Cinta di Dalam Gelas)',
  },
  {
    'title': 'Laut Bercerita',
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMjpM73ehktVzklF8198wWLg7Vhf_0jZyBQPJ_f-3_XQ&s=10',
    'deskripsi': 'Laut Bercerita adalah novel karya Leila S. Chudori yang diterbitkan oleh Kepustakaan Populer Gramedia (KPG) Jakarta pada tahun 2017. Novel ini berkisah tentang persahabatan, cinta, keluarga, dan kehilangan para tokoh-tokohnya. Mengambil latar sosial kehidupan mahasiswa pada tahun 90-an dan 2000 membuat novel ini bisa membawa pembaca untuk melihat kembali peristiwa-peristiwa di masa lalu. Novel ini juga diadaptasi ke dalam film pendek (2017) berdurasi 30 menit dan film layar lebar yang akan dirilis pada Oktober 2026.',
  },
  {
    'title': 'Sang Pemimpi',
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToq4llvyAhitjEEZaFOWnAVK_ELMiJHZSsObjzQ5fDUA&s=10',
    'deskripsi': 'Sang Pemimpi adalah novel kedua dalam tetralogi (kemudian trilogi) Laskar Pelangi karya Andrea Hirata yang diterbitkan oleh Bentang Pustaka pada Juli 2006. Dalam novel ini, Andrea mengeksplorasi hubungan persahabatannya dengan dua anak yatim piatu, Arai Ichsanul Mahidin dan Jimbron, serta kekuatan mimpi yang dapat membawa Andrea dan Arai melanjutkan studi ke Sorbonne, Paris, Prancis. Pada tahun 2021, novel tersebut diterbitkan ulang dengan menggabungkan cerita Sang Pemimpi dan Edensor. Dalam novel Sang Pemimpi, Andrea Hirata bercerita tentang kehidupannya di Belitong pada masa SMA. Tiga tokoh utama dalam karya ini adalah Ikal, Arai dan Jimbron. Ikal tidak lain adalah Andrea Hirata sendiri, sedangkan Arai Ichsanul Mahidin adalah saudara jauhnya yang menjadi yatim piatu ketika masih kecil. Arai disebut simpai keramat karena dalam keluarganya ia adalah orang terakhir yang masih hidup dan ia pun diangkat menjadi anak oleh ayah Ikal. Jimbron merupakan teman Arai dan Ikal yang sangat terobsesi dengan kuda dan gagap bila sedang antusias terhadap sesuatu atau ketika gugup. Ketiganya melewati kisah persahabatan yang terjalin dari kecil hingga mereka bersekolah di SMA Negeri Manggar, SMA pertama yang berdiri di Belitung bagian timur.',
  },
  {
    'title': 'Pemrograman Flutter',
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhyGDcA1KB6s0aMJuTuTsLeeO7g_VKy0AGw7ThHRSutA&s=10',
    'deskripsi': 'Buku ini berisi teknik teknik yang di perlukan untuk membuat aplikasi android menggunakan flutter, salah satu framework atau software developement kit (SDK) untuk pengembangan aplikasi mobile yang dapat berjalan di sistem operasi iOS dan android. meskipun flutter dapat digunakan untuk membuat aplikasi iOS , namun buku ini hanya membahas tentang penggunaan flutter untuk android. Flutter diciptakan oleh google dan dirilis pertama kali pada mei 2017 versi alpha. pada Desember 2018 , googe meluncurkan flutter 1.0.0( versi stabil) flutter menggunakan bahasa pemrograman Dart, yang juga diciptakan oleh google dan dirilis pertama kali pada oktober 2013. Flutter merupakan framework baru yang dirancang untuk mempermudah danmempercepat proses membangun aplikasi mobile , yang dulunya harus ditulis menggunakan objective-c atau swift utuk ios. dan java atau kotlin untuk android. dengan Flutter, kita hanya mempelajari satu bahasa pemrograman (Dart) untuk embuat aplikasi mobile yang dapat berjalan didalam dua sistem operasi, iOS dan Android. Buku ini disajikan untuk membantu anda dalam mempelajari dasar dasar membangun aplikasi android menggunakan flutter mulai dari nol. Pembahasan materi dalam buku ini dilakukan secara bertahap dan berurutan mulai dari pengenalan Flutter dan Dart. installasi software yang dibutuhkan, konsep konsep esensial dalam bahasa pemrograman Dart, eksploreasi kelas kelas yang disediakan oleh Flutter, sampai ke penggunaan pustaka-pustaka umum yang dikembangkan oleh pihak ketiga. Flutter bersifat cross-platform yang dapat dijalankan didalam komputer dengan sistem operasi Linux, windows, maupun MacOS. Dengan demikian anda dapat mempelajari flutter menggunakan ketiga sistem operasi tersebut',
  },
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Buku',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Data Buku',
            style: TextStyle(fontWeight: .bold, fontSize: 30),
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.yellow,
          centerTitle: true,
          leading: Icon(Icons.book_online_outlined, size: 30),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: 'List View'),
              Tab(icon: Icon(Icons.grid_on), text: 'Grid View'),
            ],
          ),
        ),
        body: TabBarView(children: [buildListView(), buildGridView()]),
      ),
    );
  }
}

Widget buildListView() {
  return ListView.builder(
    itemCount: bukuData.length,
    itemBuilder: (context, index) {
      final item = bukuData[index];
      return Card(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: ListTile(
          leading: Image.network(
            item['image']!,
            height: 200,
            fit: BoxFit.cover,
          ),
          title: Text(item['title']!),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  title: item['title']!,
                  image: item['image']!,
                  deskripsi: item['deskripsi']!,
                ),
              ),
            );
          },
        ),
      );
    },
  );
}

Widget buildGridView() {
  return GridView.builder(
    itemCount: bukuData.length,
    padding: EdgeInsets.all(12),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
    itemBuilder: (context, index) {
      final item = bukuData[index];
      return Card(
        elevation: 5,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  title: item['title']!,
                  image: item['image']!,
                  deskripsi: item['deskripsi']!,
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.network(width: 50, height: 100, item['image']!),
              ),
              Padding(
                padding: EdgeInsets.all(9),
                child: Text(
                  item['title']!,
                  style: TextStyle(fontWeight: .bold, fontSize: 10),
                  textAlign: .center,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class DetailPage extends StatelessWidget {
  final String title;
  final String image;
  final String deskripsi;

  const DetailPage({
    super.key,
    required this.title,
    required this.image,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Buku $title',
          style: TextStyle(fontWeight: .bold, fontSize: 30),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(image, height: 200),
            SizedBox(height: 20),
            Text(deskripsi),
          ],
        ),
      ),
    );
  }
}
