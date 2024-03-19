import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BeritaPanel extends StatelessWidget {
  const BeritaPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.newspaper), label: 'Berita'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.wrench), label: 'Pengaturan'),
        ],
      ),
      body: Stack(
        children: [
          _BackgroundDashboard(),
          _InformasiPengguna(),
          Card(
            margin: EdgeInsets.fromLTRB(0, 210, 0, 0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Berita',
                      style: TextStyle(fontSize: 19),
                    ),
                    _ListBerita(),
                    Wrap(
                      children: [
                        _TombolMenu(
                          gambar: 'assets/icon1.png',
                        ),
                        _TombolMenu(
                          gambar: 'assets/icon2.png',
                        ),
                        _TombolMenu(
                          gambar: 'assets/icon3.png',
                        ),
                        _TombolMenu(
                          gambar: 'assets/icon4.png',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TombolMenu extends StatelessWidget {
  final String gambar;
  const _TombolMenu({super.key, this.gambar = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      margin: EdgeInsets.all(9),
      child: Image.asset(
        gambar,
        width: 50,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xdadadaff),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(33, 112, 112, 112),
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(2, 2))
          ]),
    );
  }
}

class _ListBerita extends StatelessWidget {
  const _ListBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _ItemBerita(
              assetgambar: 'assets/berita1.jpg',
            ),
            _ItemBerita(
              assetgambar: 'assets/berita2.jpg',
            ),
            _ItemBerita(
              assetgambar: 'assets/berita3.jpg',
            ),
            _ItemBerita(
              assetgambar: 'assets/berita4.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemBerita extends StatelessWidget {
  final String assetgambar;
  const _ItemBerita({super.key, this.assetgambar = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          assetgambar,
          width: 250,
          height: 130,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _InformasiPengguna extends StatelessWidget {
  const _InformasiPengguna({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(22, 60, 22, 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/foto.jpeg',
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi, Sayyid',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'sayyidsyafiq234@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/bell.png',
            width: 30,
          ),
        ],
      ),
    );
  }
}

class _BackgroundDashboard extends StatelessWidget {
  const _BackgroundDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/background.jpg',
      height: 300,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
