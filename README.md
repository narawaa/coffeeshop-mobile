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

<details>
<summary>Tugas 8</summary>

#### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?<br>
const di Flutter digunakan untuk menandakan bahwa nilai atau objek tidak akan berubah selama runtime. Keuntungannya adalah objek yang diberi label const hanya akan dibuat sekali dan disimpan dalam memori, sehingga menghemat penggunaan memori dan meningkatkan performa aplikasi karena objek tersebut tidak perlu dibuat ulang setiap kali dibutuhkan. Sebaiknya gunakan const ketika widget atau objek tidak akan berubah selama eksekusi aplikasi, seperti Text, Icon, atau Container yang memiliki properti tetap. Namun, sebaiknya hindari menggunakan const jika objek atau widget perlu diubah selama runtime, seperti yang melibatkan data dinamis atau perubahan state, karena const hanya cocok untuk objek yang sifatnya tetap dan tidak berubah.<br>

#### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!<br>
Column dan Row adalah widget layout di Flutter yang digunakan untuk mengatur posisi widget lainnya secara vertikal dan horizontal. Column digunakan untuk menata widget secara vertikal yaitu dari atas ke bawah, sedangkan Row digunakan untuk menata widget secara horizontal yaitu dari kiri ke kanan.

Contoh implementasi `Column`:
```dart
Column(
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```

Contoh implementasi `Row`:
```dart
Row(
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```
<br>

#### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!<br>
Pada halaman product_form, elemen input yang digunakan adalah TextFormField untuk mengisi Product Name, Description, Price, dan Stock. Terdapat beberapa elemen input Flutter lain yang tidak digunakan di tugas ini, seperti DatePicker atau TimePicker untuk memilih tanggal/waktu, DropdownButton untuk pilihan opsi terbatas, Checkbox dan Switch untuk pilihan biner (ya/tidak), serta Slider untuk memilih nilai dalam rentang tertentu. Elemen-elemen ini bisa digunakan jika diperlukan namun, di form ini, elemen input tersebut tidak terlalu diperlukan.<br>

#### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?<br>
Agar konsisten, tema global didefinisikan di dalam MaterialApp pada main.dart. ColorScheme ditetapkan untuk warna utama, sekunder, dan elemen lainnya agar semua widget menggunakan warna yang sama. Pada aplikasi ini, tema diimplementasikan untuk menjaga konsistensi tampilan di seluruh aplikasi.<br>
 
#### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?<br>
Menggunakan widget Navigator dengan metode push atau pushReplacement untuk berpindah antar halaman. PushReplacement digunakan untuk menggantikan halaman saat ini dengan halaman tujuan, seperti MyHomePage atau ProductEntryFormPage, sehingga pengguna dapat berpindah antar halaman tanpa menumpuk halaman sebelumnya di tumpukan navigasi.<br>
</details>

<details>
<summary>Tugas 9</summary>

#### Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?<br>
Model JSON memastikan data konsisten, mudah dimanipulasi, dan mengurangi kesalahan dibanding langsung menggunakan JSON mentah. Tanpa model, risiko akses salah, tipe tidak konsisten, dan debugging sulit meningkat.

#### Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini.<br>
Library HTTP menghubungkan aplikasi ke backend. Data produk diambil dari backend Django lewat GET ke http://127.0.0.1:8000/json/, membuat data lebih dinamis dan mudah diperbarui.

#### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.<br>
CookieRequest digunakan untuk menangani komunikasi Flutter dengan server Django, termasuk pengelolaan cookie untuk autentikasi dan sesi pengguna. Instance CookieRequest dibagikan ke semua komponen agar sesi pengguna konsisten dan autentikasi cukup dilakukan sekali untuk diakses seluruh komponen.

#### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.<br>
1. Pengguna memasukkan data di form dan menekan tombol Submit.  
2. Flutter mengirim data ke backend menggunakan HTTP POST.  
3. Backend menyimpan data ke database.  
4. Flutter mengambil data terbaru melalui HTTP GET.  
5. Data ditampilkan di UI menggunakan widget seperti ListView atau GridView.

#### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.<br>
- Registrasi:  Pengguna mengisi form untuk membuat akun. Data dikirim ke Django, divalidasi, lalu disimpan. Jika berhasil, pesan sukses ditampilkan di Flutter.  

- Login: Pengguna mengisi form login. Data dikirim ke Django, lalu cookie autentikasi dibuat jika valid. Cookie disimpan oleh `pbp_django_auth`, dan pengguna masuk ke menu utama.  

- Logout: Pengguna menekan Logout. Flutter mengirim permintaan ke Django, sesi dihapus, cookie dihapus, dan pengguna diarahkan ke halaman login.

#### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).<br>
1. **Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.**<br>
Buat aplikasi bernama authentication di Django untuk menangani autentikasi pengguna yang terintegrasi dengan Flutter, dengan menambahkan fungsi login(), register(), dan logout() di views.py sebagai endpoint untuk proses autentikasi.

2. **Membuat halaman login pada proyek tugas Flutter.**<br>
Membuat halaman login dan register yang berupa form untuk input kredensial pengguna.

3. **Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.**<br>
Menyambungkan database local dengan Flutter.

4. **Membuat model kustom sesuai dengan proyek aplikasi Django.**<br>
Membuat model kustom untuk menerima data JSON dari endpoint /json/ di Django dan menerapkan fetch data dari Django dengan cara menambah dependensi HTTP dengan memodifikasi AndroidManifest.xml pada proyek Flutter.

5. **Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.**<br>
- Tampilkan name, price, dan description dari masing-masing item pada halaman ini.
Membuat halaman list produk melalui product_list.dart yang menampilkan semua produk user.

6. **Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.**<br>
Untuk setiap item pada list produk, jika diklik akan mengarahkan ke halaman detail produk.

</details>