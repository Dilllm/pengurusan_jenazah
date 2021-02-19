import 'package:flutter/material.dart';

class DzikirPagi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dzikir Pagi",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: detailPagi(),
    );
  }
}

class detailPagi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          _createUIGetItem(
              "Cara Memandikan Jenazah",
              "                                                                                                       1. Meletakkan jenazah dengan kepala agak tinggi di tempat yang disediakan                                                                                                       2. Yang memandikan jenazah hendaklah memakai sarung tangan.                                                                                                       3. Ambil kain penutup dari jenazah dan ganti dengan kain basahan agar auratnya tidak terlihat                                                                                                       4. Setelah itu bersihkan giginya, lubang hidung, lubang telinga, celah ketiaknya, celah jari tangan dan kaki serta rambutnya.                                                                                                       5. Bersihkan kotoran jenazah baik yang keluar dari depan maupun dari belakang terlebih dahulu. Caranya, tekan perutnya perlahan-lahan agar apa yang ada di dalamnya keluar.                                                                                                       6. Siram atau basuh seluruh anggota tubuh jenazah dengan air sabun.                                                                                                       7. Kemudian siram dengan air yang bersih sambil berniat sesuai jenis kelamin jenazah.",
              ""),
          _createUIGetItem(
              "Cara Mengafani Jenazah Laki-laki",
              "                                                                                                       1. Siapkan tali-tali pengikat kafan secukupnya. Letakkan secara vertikal tepat di bawah kain kafan yang akan menjadi lapis pertama.                                                                                                        2. Bentangkan kain kafan lapis pertama yang sudah dipotong sesuai ukuran jenazah.                                                                                                        3. Beri wewangian pada kain kafan lapis pertama.                                                                                                        4. Bentangkan kain kafan lapis kedua yang sudah dipotong sesuai ukuran jenazah.                                                                                                        5. Beri wewangian pada kain kafan lapis kedua.                                                                                                        6. Bentangkan kain kafan lapis ketiga yang sudah dipotong sesuai ukuran jenazah.                                                                                                        7. Beri wewangian pada kain kafan lapis ketiga.                                                                                                        8. Letakkan jenazah di tengah-tengah kain kafan lapis ketiga.                                                                                                        9. Tutup dengan kain lapis ketiga dari sisi kiri ke kanan, kemudian kain dari sisi kanan ke kiri.                                                                                                        10. Tutup dengan kain lapis kedua dari sisi kiri ke kanan, kemudian kain dari sisi kanan ke kiri.                                                                                                        11. Tutup dengan kain lapis pertama dari sisi kiri ke kanan, kemudian kain dari sisi kanan ke kiri.                                                                                                        12. Ikat dengan tali pengikat yang sudah disediakan.",
              ""),
          _createUIGetItem(
              "Tata Cara Menyolatkan Jenazah",
              "                                                                                                       1. Berniat (di dalam hati).                                                                                                        2. Berdiri bagi yang mampu.                                                                                                        3. Melakukan empat kali takbir (tidak ada ruku’ dan sujud).                                                                                                        4. Setelah takbir pertama, membaca Al Fatihah.                                                                                                        5. Setelah takbir kedua, membaca shalawat (minimalnya adalah allahumma sholli ‘ala Muhammad).                                                                                                        6. Setelah takbir ketiga, membaca doa untuk jenazah.                                                                                                        7. Takbir keempat membaca doa                                                                                                        8. Salam",
              ""),
          _createUIGetItem(
              "Tata Cara Menguburkan Jenazah",
              "                                                                                                                                                 1. Memperdalam galian lobang kubur agar tidak tercium bau jenazah dan tidak dapat dimakan oleh burung atau binatang pemakan bangkai.                                                                                                                                                  2. Cara menaruh jenazah di kubur ada yang ditaruh di tepi lubang sebelah kiblat kemudian di atasnya ditaruh papan kayu atau yang semacamnya dengan posisi agak condong agar tidak langsung tertimpa tanah. Namun bisa juga dengan cara lain dengan prinsip yang hampir sama, misalnya dengan menggali di tengah-tengah dasar lobang kubur, kemudian jenazah ditaruh di dalam lobang.                                                                                                                                                  3. Cara memasukkan jenazah ke kubur yang terbaik adalah dengan mendahulukan memasukkan kepala jenazah dari arah kaki kubur.                                                                                                                                                  4. Jenazah diletakkan miring ke kanan menghadap ke arah kiblat dengan menyandarkan tubuh sebelah kiri ke dinding kubur supaya tidak terlentang kembali.                                                                                                                                                  5. Para ulama menganjurkan supaya ditaruh tanah di bawah pipi jenazah sebelah kanan setelah dibukakan kain kafannya dari pipi itu dan ditempelkan langsung ke tanah. Simpul tali yang mengikat kain kafan supaya dilepas.                                                                                                                                                  6. Waktu memasukkan jenazah ke liang kubur dan meletakkannya dianjurkan membaca doa seperti: Bismillahi Waala Millati Rosulillah Artinya: “Dengan nama Allah dan atas agama Rasulullah” (HR. at-Tirmidzi dan Abu Daud).                                                                                                                                                  7. Untuk jenazah perempuan, dianjurkan membentangkan kain di atas kuburnya pada waktu dimasukkan ke liang kubur. Sedang untuk mayat laki-laki tidak dianjurkan.                                                                                                                                                  8. Orang yang turun ke lobang kubur jenazah perempuan untuk mengurusnya sebaiknya orang-orang yang semalamnya tidak mensetubuhi isteri mereka.                                                                                                                                                  9. Setelah jenazah sudah diletakkan di liang kubur, dianjurkan untuk mencurahinya dengan tanah tiga kali dengan tangannya dari arah kepala mayit lalu ditimbuni tanah.                                                                                                                                                  10. Berdoa setelah selesai menguburkan jenazah.",
              ""),
        ],
      ),
    );
  }

  Widget _createUIGetItem(String Judul, String Arab, String Arti) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                Judul,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              Arab,
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            margin:
            const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
            height: 30,
            color: Color(0xffFFD600),
            alignment: Alignment.center,
            child: Text(
              'Lanjut ->',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              Arti,
              style: TextStyle(fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}