[![CI](https://github.com/aufagit/myportofolio_mobile/actions/workflows/main.yaml/badge.svg)](https://github.com/aufagit/myportofolio_mobile/actions/workflows/main.yaml)


MyPortfolio Mobile

MyPortfolio Mobile merupakan aplikasi portofolio pribadi yang dikembangkan menggunakan Flutter dan Dart sebagai bagian dari mata kuliah Pemrograman Berbasis Platform (PBP) di Fakultas Ilmu Komputer Universitas Indonesia.

Informasi Mahasiswa

Nama: Aufa Nurcahyo

NPM: 2506656500

Kelas: PBP D

## Cara Menjalankan Aplikasi

Pastikan Flutter SDK dan backend Django sudah terpasang dan dikonfigurasi.

Repositori backend Django: [MyPortfolio Django](LINK_REPOSITORI_DJANGO)

Jalankan server Django:

```bash
python manage.py runserver
```

Pada direktori proyek Flutter, jalankan:

```bash
flutter pub get
dart run build_runner build
```

Untuk menjalankan aplikasi melalui Chrome:

```bash
flutter run -d chrome --dart-define=API_BASE_URL=http://localhost:8000
```

Untuk menjalankan aplikasi melalui emulator Android:

```bash
flutter run --dart-define=API_BASE_URL=http://10.0.2.2:8000
```

Untuk memeriksa kualitas kode:

```bash
flutter analyze
```

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


### Tugas 9
1. JsonSerializable mempermudah konversi objek Dart ke JSON dan sebaliknya. FieldRename.snake menyesuaikan nama atribut dengan Django, sedangkan includeToJson: false mencegah ID ikut dikirim saat POST. Contohnya, mencegah kesalahan penamaan startedAt menjadi started_at.

2. Future diinisialisasi di initState() agar request API tidak berulang setiap widget mengalami rebuild. ApiException digunakan agar aplikasi dapat membedakan kegagalan request dengan data kosong serta menangani error berdasarkan status HTTP.

3. SessionAuthentication menggunakan session dan cookie, sedangkan TokenAuthentication menggunakan token pada header Authorization. Keduanya tetap diaktifkan agar website Django dan aplikasi Flutter dapat melakukan autentikasi sesuai kebutuhan masing-masing.

4. Job build memeriksa format, analisis kode, dan menjalankan pengujian, sedangkan build_apk menghasilkan APK release. Berkas *.g.dart tidak disimpan di Git karena dapat dihasilkan kembali secara otomatis menggunakan build_runner saat CI berjalan.

AI Disclosure
Saya memakai Gemini, saya berdiskuusi terkait pertanyaan reflektif dan penjelasannya dan template pengisian list dari tutorial sebelumnya
Chat log AI: https://share.gemini.google/3DGFNEhRjKRu
