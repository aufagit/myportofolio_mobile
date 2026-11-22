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


### Tugas 8
1. Navigator.push() menambahkan halaman baru ke navigation stack, Navigator.pushReplacement() mengganti halaman yang sedang aktif, sedangkan Navigator.pop() menutup halaman atau dialog untuk kembali ke sebelumnya. Pada aplikasi saya, kartu Tambah Pengalaman menggunakan Navigator.push() untuk membuka formulir, sementara opsi Home pada drawer menggunakan Navigator.pushReplacement() untuk kembali ke halaman utama.

2. Scaffold menyediakan struktur dasar halaman, AppBar menampilkan judul, dan Drawer menyediakan menu navigasi. Penggunaan ketiganya membuat tampilan dan navigasi antarahalaman tetap konsisten. Contohnya, warna indigo digunakan pada AppBar halaman utama dan formulir serta header Drawer.

3. Formulir menggunakan Column agar input tersusun vertikal dan mudah diisi secara berurutan. Padding digunakan untuk memberi jarak antarelemen, sedangkan SingleChildScrollView memungkinkan formulir digulir saat layar sempit atau keyboard muncul, sehingga seluruh input dan tombol Simpan tetap dapat diakses.

4. `GlobalKey<FormState>` digunakan untuk mengakses state formulir, sedangkan validator memeriksa setiap input saat validate() dipanggil melalui tombol Simpan. Jika ada input tidak valid, pesan kesalahan muncul dan dialog tidak ditampilkan. Contohnya, nama organisasi yang hanya berisi spasi akan ditolak. Jenis input atau keyboard saja tidak cukup karena tidak menjamin isi data sudah sesuai aturan validasi.

AI Disclosure
Saya memakai Gemini, saya berdiskuusi terkait pertanyaan reflektif dan penjelasannya dan template pengisian form untuk atribut start date dan end date
Chat log AI: https://share.gemini.google/94TGl4e49Qfy

