## (CC) Click Coffee
Tugas PBP : [Click Your Coffee Here!](http://nashwa-ghania-coffeeshop.pbp.cs.ui.ac.id/)
<br>
<br>

<details>
<summary>Tugas 7</summary>

#### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.<br>
- Stateless Widget: Widget yang tidak memiliki status atau tidak dapat diubah setelah dibuat. Contoh: Text, Icon.<br>
- Stateful Widget: Widget yang memiliki status dan dapat berubah. Memiliki metode setState() untuk memperbarui UI. Contoh: Checkbox, TextField.<br>

#### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.<br>
- Scaffold: Struktur dasar halaman, termasuk AppBar dan body.
- AppBar: Bagian atas halaman yang menampilkan judul.
- Column: Menyusun widget secara vertikal.
- Row: Menyusun widget secara horizontal.
- GridView: Menampilkan item dalam bentuk grid.
- Card: Membuat kartu untuk menampilkan informasi.
- InkWell: Menangani interaksi pengguna saat widget ditekan.

#### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.<br>
setState() digunakan untuk memperbarui UI dari Stateful Widget. Ketika dipanggil, semua widget yang bergantung pada variabel yang diubah akan diperbarui. Variabel yang terpengaruh adalah variabel yang digunakan dalam build method. Flutter akan menjalankan ulang fungsi build() dari widget tersebut, sehingga semua perubahan data langsung tampil di layar.<br>

#### Jelaskan perbedaan antara const dengan final.<br>
- const: Nilai tetap yang sudah diketahui saat kompilasi dan tidak dapat diubah. Digunakan untuk widget atau objek yang tidak akan berubah contohnya `const Text('Hello').`
- final: Variabel yang hanya dapat diatur satu kali, tetapi nilainya dapat ditentukan pada runtime. Digunakan untuk objek yang nilainya tidak langsung diketahui pada compile-time, tetapi tidak boleh diubah setelah ditetapkan.

#### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.<br>
1. **Membuat sebuah program Flutter baru.**<br>
Dimulai dengan menjalankan `flutter create click_coffee` pada terminal, membuat aplikasi Flutter dasar bernama "click_coffee". Struktur direktori aplikasi dibuat secara otomatis, termasuk file main.dart untuk konfigurasi awal.<br>

2. **Membuat tiga tombol sederhana dengan ikon dan teks.**<br>
Di menu.dart, tiga tombol dalam bentuk kartu (Card) ditambahkan dengan menggunakan widget ItemCard. Setiap kartu diberi ikon dan teks yang disimpan dalam objek ItemHomepage. Ketiga tombol dibuat dalam susunan GridView sehingga menampilkan kartu dalam tiga kolom.<br>

3. **Mengimplementasikan warna-warna yang berbeda untuk setiap tombol.**<br>
Untuk memberi warna yang berbeda pada setiap tombol, atribut color ditambahkan pada ItemHomepage dan diterapkan ke setiap ItemCard.<br>

4. **Memunculkan Snackbar.**<br>
Pada setiap tombol di dalam onTap dari InkWell, ditambahkan kode untuk memunculkan SnackBar dengan ScaffoldMessenger. SnackBar memiliki teks sesuai nama tombol, dengan warna latar belakang yang mengikuti warna kartu.<br>
</details>