**Nama: Evi Amalia Midfia**

**Kelas: TI-3A**

**Absen: 13**

# Praktikum Pertemuan 12 - Dasar State Management
### Tugas Praktikum 1 : Dasar State dengan Model-View

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md!

2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
**Jawab:** Pada langkah tersebut, kita membuat file data_layer data layer yang digunakan untuk mempersingkat import data layer sehingga model-model tersebut akan bisa langsung diakses dengan mudah tanpa harus mengimport setiap model dengan terpisah.

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ? **Jawab:** Variabel plan pada langkah 6 digunakan untuk menginisialisasi objek "Plan" yang diperlukan dalam PlanScreen. Dalam kode ini, "const Plan()" tersebut digunakan untuk membuat objek Plan yang konstan. Penggunaan const mengindikasikan bahwa objek tersebut akan tetap konstan dan tidak akan berubah setelah inisialisasi.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat! ![Alt text](image.png) **Jawab:** Pada langkah tersebut , membuat widget _buildTaskTile untuk membuat tampilan item. Widget ini menggunakan ListTile yang berisi Checkbox untuk checlist status kelengkapan dan TextFormField untuk mengisi deskripsi. Saat ada perubahan pada status atau deskripsi tugas, data dapat diperbarui melalui fungsi onChanged dan setState.

5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ? **Jawab:**

* Langkah 11: Pada Langkah 11 menginisialisasi "scrollController" dan menambahkan event listener pada scrollController untuk mengelola keyboard focus saat scroll. Pada langkah ini bertujuan untuk mengatasi masalah keyboard focus saat scroll.

* Langkah 13: Pada Langkah 13, method dispose digunakan untuk membersihkan sumber daya yang digunakan oleh widget PlanScreen saat widget tersebut dihapus atau tidak lagi diperlukan.

### Hasil Output
![Alt text](Output.gif)

### Tugas Praktikum 2: InheritedWidget
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md!

2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier **Jawab:** Pada langkah tersebut, kita membuat "PlanProvider" sebagai turunan dari InheritedNotifier untuk berbagi dan mengelola data "Plan" di seluruh aplikasi. ValueNotifier digunakan untuk memberitahu perubahan data yang dapat membantu widget dalam merespons perubahan data tanpa perlu mentransfer data secara manual dari satu widget ke widget lainnya. Penggunaan InheritedNotifier untuk mempermudah manajemen data aplikasi dan memastikan widget selalu diperbarui saat data "Plan" berubah.

3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian? **Jawab:** Pada langkah ini menambahkan 2 method ke dalam model Plan : 

* completedCount : digunakan untuk menghitung jumlah tugas yang sudah selesai dalam "Plan" 

* completenessMessage : digunakan untuk memberikan pesan yang memberitahu berapa banyak tugas yang telah selesai dari total tugas yang ada dalam rencana(Plan). Dengan begitu, pengguna dapat melihat kemajuan dalam menyelesaikan tugasnya.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat! **Jawab:** Pada Langkah 9, kita membuat tampilan untuk halaman rencana (Plan) dengan judul "Master Plan" di AppBar. Kita menggunakan "ValueListenableBuilder" yang memantau perubahan objek Plan melalui "PlanProvider". Tampilan terdiri dari daftar tugas yang dapat digulir dan pesan yang mencerminkan kemajuan penyelesaian tugas. Kita juga menambahkan tombol tambah tugas yang responsif terhadap perubahan objek Plan. Dan memastikan tampilan selalu terkini sesuai dengan data yang diperbarui.

### Output
![Alt text](<PRAK 2.gif>)

### Tugas Praktikum 3: State di Multiple Screens
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md!

2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini! **Jawab:** Ketika pengguna memasukkan nama rencana baru di layar PlanCreatorScreen, widget tersebut secara aktif menambahkan rencana baru tersebut ke dalam daftar rencana melalui PlanProvider. PlanProvider berperan sebagai manajer status aplikasi yang memberitahu semua widget turunannya mengenai perubahan pada daftar rencana. Dengan adanya pemberitahuan ini, seluruh widget turunan, termasuk PlanScreen, segera merespons dan memperbarui tampilan sesuai dengan daftar rencana terbaru.

3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat! **Jawab:** Pada Langkah 14, penambahan fitur di PlanCreatorScreen memungkinkan pengguna membuat dan menampilkan daftar rencana baru. Layar pertama, PlanCreatorScreen, memungkinkan pembuatan rencana baru, sementara layar kedua, PlanScreen, memungkinkan melihat detail rencana yang ada dan melakukan penambahan, penghapusan, atau pengeditan tugas.

### Hasil Output
![Alt text](<Prak 3.gif>)