MyPortfolio Mobile

MyPortfolio Mobile merupakan aplikasi portofolio pribadi yang dikembangkan menggunakan Flutter dan Dart sebagai bagian dari mata kuliah Pemrograman Berbasis Platform (PBP) di Fakultas Ilmu Komputer Universitas Indonesia.

Informasi Mahasiswa

Nama: Aufa Nurcahyo

NPM: 2506656500

Kelas: PBP D

Cara Menjalankan Aplikasi

Pastikan Flutter SDK sudah terpasang dan terkonfigurasi dengan benar.

Clone repository dan masuk ke folder proyek.

Jalankan flutter pub get untuk menyiapkan dependensi.

Jalankan flutter run -d chrome untuk membuka aplikasi melalui Google Chrome.

Jalankan flutter analyze untuk memeriksa kualitas kode.

### Tugas 7
1. Widget tree adalah struktur hierarkis yang menyusun antarmuka Flutter. Parent widget mengatur atau membungkus child widget. Contohnya, Scaffold memiliki AppBar dan body, sedangkan Column mengatur susunan widget anak secara vertikal.

2. 
- MaterialApp: Konfigurasi aplikasi dan tema.
- Scaffold: Kerangka halaman.
- AppBar: Header aplikasi.
- Text dan Icon: Menampilkan tulisan dan ikon.
- Row dan Column: Mengatur tata letak horizontal dan vertikal.
- Padding dan SizedBox: Mengatur jarak.
-Center: Memusatkan widget.
Container: Mengatur ukuran dan padding.
Card: Menampilkan kartu informasi.
GridView: Menyusun tombol dalam grid.
Material dan InkWell: Membuat tombol berwarna dan interaktif.
SnackBar: Menampilkan notifikasi singkat.
MyApp, MyHomePage, InfoCard, dan ItemCard: Widget yang dibuat sendiri.

3.
MaterialApp menyediakan konfigurasi dasar aplikasi, seperti tema dan navigasi. Widget ini umumnya menjadi root karena menyediakan lingkungan Material Design bagi widget di bawahnya.

4.
StatelessWidget tidak mengelola state lokal yang berubah, sedangkan StatefulWidget memiliki objek State untuk mengelola perubahan data. Stateless cocok untuk tampilan statis, sedangkan Stateful digunakan saat tampilan membutuhkan perubahan state, misalnya pada formulir interaktif.

5.
BuildContext merepresentasikan posisi widget dalam element tree. Context digunakan untuk mengakses informasi dari widget ancestor, misalnya Theme.of(context) untuk mengambil tema dan ScaffoldMessenger.of(context) untuk menampilkan SnackBar.

6.
Hot reload memperbarui kode dan tampilan tanpa menghilangkan state yang sedang berjalan. Hot restart menjalankan ulang aplikasi Flutter dan mereset state. Hot restart diperlukan ketika perubahan inisialisasi tidak diterapkan oleh hot reload, sedangkan full restart dapat diperlukan untuk perubahan kode native atau konfigurasi platform.

AI Disclosure
Saya memakai Gemini, saya berdiskusi dengan gemini terkait dengan penjelasan penggantian warna, syntax dart dan juga beberapa materi seputar pertanyaan reflektif

Chat log AI: https://share.gemini.google/5dlrfJxrNJMY
