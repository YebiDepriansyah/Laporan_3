# Laporan_3_Basda
# Tabel Nasabah
<img width="770" alt="image" src="https://github.com/YebiDepriansyah/Laporan_3/assets/131685598/af4a52b9-0a51-4b7a-8886-471d679b3628">

  ini tabel nasabah dan disana terdapat atribut-atribut atau kolom dari entitas atau tabel dari nasabah, disini yang menjadi atribut primary key adalah Nomor_rekening karena biasanya nomor rekening dibuat oleh bank dengan nomor yang berbeda-beda disetiap nasabah.

<img width="772" alt="image" src="https://github.com/YebiDepriansyah/Laporan_3/assets/131685598/dc95da3e-81e9-49da-8664-4b505c953489">
<img width="371" alt="image" src="https://github.com/YebiDepriansyah/Laporan_3/assets/131685598/e0ad2d35-36db-402a-aee3-22d6924f282e">

  digambar sudah saya masukan 2 data dari nasabah sebagai contoh untuk melihat kondisi didalam tabel nasabah ini, disini saya memasukan asep dan putri.

# tabel Kartu_ATM
<img width="778" alt="image" src="https://github.com/YebiDepriansyah/Laporan_3/assets/131685598/20955aa4-b2c8-4247-b684-57c03b7e2aea">

  ini tabel nasabah dan disini terdapat atribut-atribut atau kolom dari entitas atau tabel dari Kartu_ATM , disini yang menjadi atribut primary key adalah Nomor_Kartu_ATM karena biasanya Nomor Kartu ATM dibuat oleh bank dengan nomor yang berbeda-beda disetiap nasabah, dan disini terdapat atribut Nomor_rekening yaang menjadi foreign key yang diambil dari tabel atau entitas nasabah, disini kartu ATM mengambil data dari Nasabah untuk mengetahui siapa pemilik Kartu ATM tersebut dan rekening mana yang nantinya akan diakses dan juga untuk bisa mengkases data lainnya seperti seperti saldo.

<img width="569" alt="image" src="https://github.com/YebiDepriansyah/Laporan_3/assets/131685598/cd933b0f-456a-4e51-a0c9-36c77ab33509">
<img width="345" alt="image" src="https://github.com/YebiDepriansyah/Laporan_3/assets/131685598/2f71460c-cdbf-4817-b91d-01447fe30d3e">

  disini sudah saya masukan 2 data untuk 2 kartu ATM yang berbeda yang pertama milik asep dengan jenis debit dan yang kedua milik putri dengan jenis kredit.

# tabel Transaksi
<img width="765" alt="image" src="https://github.com/YebiDepriansyah/Laporan_3/assets/131685598/857c0266-865a-4460-b42d-c44d34c064ca">

ini tabel nasabah dan disini terdapat atribut-atribut atau kolom dari entitas atau tabel dari Transaksi , disini yang menjadi atribut primary key adalah ID_Transaksi yang menggunakan AUTO INCREMENT disini saya membuatnya jadi auto increment karena id dari transaksi pasti nanti akan sangat banyak dan akan membuat pusing ketika kita membuatnya sendiri, dan disini terdapat atribut Nomor_rekening yaang menjadi foreign key yang diambil dari tabel atau entitas nasabah, disini Transaksi mengambil data dari Nasabah untuk mengetahui siapa yang melakukan Transaksi tersebut dan juga untuk bisa mengkases data lainnya. dan disini terdapat atribut Nomor_Kartu_ATM yang menjadi foreign key dan diambil dari tabel atau entitas Kartu_ATM, disini Transaksi mengambil data dari Kartu_ATM untuk mengetahui di kartu ATM mana Transaksi dilakukan dan juga untuk bisa mengkases data lainnya.

<img width="746" alt="image" src="https://github.com/YebiDepriansyah/Laporan_3/assets/131685598/eb56bfc1-3d3c-463a-adc1-4f4abcf0db11">

disini saya sudah memasukan 2 data transaksi yang berbeda, yang pertama adalah Transaksi bayar shoppe milik asep dengan menggunakan kartu debit, dan yang kedua adalah Transaksi bayar cicilan hp milik putri dengan menggunakan kartu kredit.
