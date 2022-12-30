import 'package:felix/models/category.dart';
import 'package:felix/models/movie_detail.dart';

List<Category> dummyCategories = [
  // ignore: prefer_const_constructors
  Category(
    id: "id_action",
    title: "Action",
    images:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjaZRkfpTAQXncP6X0plpos5vMaauea3LV2w&usqp=CAU",
  ),
  Category(
    id: "id_drama",
    title: "Drama",
    images:
        "https://imgx.parapuan.co/file/parapuan/mobile/crop/0x0:0x0/360x240/photo/2021/12/27/antares-seriesjpg-20211227125429.jpg",
  ),
  Category(
    id: "id_comedy",
    title: "Comedy",
    images:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN6adDntfKV4iViZXtFO08df6OIXcC_uMI4w&usqp=CAU",
  ),
  Category(
    id: "id_romance",
    title: "Romance",
    images:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGG9V3_O_d0Ulh0LxhFZWkVEXROHdKN7POxA&usqp=CAU",
  ),
  Category(
    id: "id_horror",
    title: "Horror",
    images:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4oM2UXzDkoVUCmlzekO7BWOM3cmjLti117Q&usqp=CAU",
  ),
  Category(
    id: "id_anime",
    title: "Anime",
    images:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSErWph856FEuMg4PN8t6QvXAfax7UdJO9TxQ&usqp=CAU",
  ),
];

List<MovieData> dummy_movie = [
  MovieData(
      id: DateTime.now().toString(),
      title: "Jhon Wick 1",
      category: "id_action",
      ingredients:
          "John Wick, mantan pembunuh bayaran, berduka atas kematian istrinya. Tapi, ia terpaksa kembali ke dunia hitam setelah kelompok gangster Rusia mencuri mobil dan membunuh anak anjing warisan istrinya.",
      genre: 'Action',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0XZe0tP8Vvir0lKLJPEiCn2B8QBJ0RGsrPA&usqp=CAU",
      tglrelease: 'Release date : 16-09-2014'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Serigala Terakhir 2",
      category: "id_action",
      ingredients:
          'Mengusung tajuk “Salam dari Kawan Lama”, satu per satu teka-teki mulai tersingkap di episode 2 ini, bersamaan dengan situasi runyam yang kian menghimpit posisi Alex.',
      genre: 'Action',
      imageUrl:
          "https://asset.kompas.com/crops/YFJlKWqAXM-W3QwyPbaYbJc6cUM=/75x0:1111x691/750x500/data/photo/2022/09/09/631adef37e746.png",
      tglrelease: 'Release date : 17-08-2022'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Jhon wick 2",
      category: "id_action",
      ingredients:
          'Setelah memutuskan kembali terjun ke dunia kejahatan bawah tanah, John Wick mendapati musuhnya telah menjanjikan sejumlah hadiah besar bagi yang bisa menghabisi nyawanya. Para pembunuh pun memburunya.',
      genre: 'Action',
      imageUrl: "https://pbs.twimg.com/media/C4MScZMVUAIyHSX.jpg",
      tglrelease: 'Release date : 17-09-2015'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Jhon wick 3",
      category: "id_action",
      ingredients:
          """Seri ketiga "John Wick" ini akan mengisahkan kelanjutan nasib si pembunuh bayaran usai menghabisi nyawa anggota High Table dalam The Continental. Ia sendiri diburu dan hidupnya dihargai sebesar USD 14 juta (sekitar Rp 201 miliar). Diburu oleh berbagai pembunuh bayaran hebat, John akan dibantu oleh karakter baru yang misterius bernama Sofia (Halle Berry).""",
      genre: 'Action',
      imageUrl:
          "https://www.mncvision.id/userfiles/image/ARTIKEL%20MNC%20VISION/image.jpg",
      tglrelease: 'Release date : 17-09-2015'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Serigala Terakhir",
      category: "id_action",
      ingredients:
          """Jarot dan Ale adalah teman baik, tumbuh bersama sejak kecil. Keduanya memiliki banyak kesamaan, tapi tidak dengan karakter. Mereka membentuk geng Srigala Terakhir, dan bermimpi menjadi mafia terbesar.""",
      genre: 'Action',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_WH2p9cEZ998wRb0gqAPD8i2j3HEJaM7H3g&usqp=CAU",
      tglrelease: 'Release date : 20-08-2005'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Goblin",
      category: "id_drama",
      ingredients:
          """Drakor ini menceritakan seorang jenderal pada masa Dinasti Goryeo bernama Kim Shin. Raja muda yang merasa iri dengan kemampuan Kim Shin lantas menjebak dan membunuhnya. Oleh Dewa, Kim Shin dikutuk menjadi Goblin dengan kehidupan abadi.""",
      genre: 'Drama',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWHUFySfEWp4Sao2Uc9OmAmonavbsXCB5r1A&usqp=CAU',
      tglrelease: 'Release date : 03-05-2005'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Tentang rindu",
      category: "id_drama",
      ingredients:
          """ Tentang Rindu berkisah tentang Rindu yang mendapatkan resep andalan dari almarhum ayahnya (Dennis Adhiswara). Rindu sejak kecil sudah diperkenalkan dengan dunia memasak oleh ayahnya. Akan tetapi, sejak ayahnya meninggal, Rindu harus berjuang agar dapat tetap meneruskan resep yang telah ayahnya wariskan kepadanya.""",
      genre: 'Drama',
      imageUrl:
          "https://i.pinimg.com/736x/b4/3b/4e/b43b4efeea4d0e32544d58c3e080467e.jpg",
      tglrelease: 'Release date : 13-02-2021'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Parasite",
      category: "id_drama",
      ingredients:
          """ Keluarga Ki-taek beranggotakan empat orang pengangguran dengan masa depan suram menanti mereka. Suatu hari Ki-woo anak laki-laki tertua direkomendasikan oleh sahabatnya yang merupakan seorang mahasiswa dari universitas bergengsi agar Ki-woo menjadi guru les yang dibayar mahal dan membuka secercah harapan penghasilan tetap. Dengan penuh restu serta harapan besar dari keluarga, Ki-woo menuju ke rumah keluarga Park untuk wawancara. Setibanya di rumah Mr. Park pemilik perusahaan IT global, Ki-woo bertemu dengan Yeon-kyo, wanita muda yang cantik di rumah itu. Setelah pertemuan itu, serangkaian kejadian dimulai.""",
      genre: 'Drama',
      imageUrl:
          "https://cdn.idntimes.com/content-images/community/2021/09/fromandroid-92dd54889d04c2cb9867f2f2994179cf.jpg",
      tglrelease: 'Release date : 13-02-2021'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Squid Games",
      category: "id_drama",
      ingredients:
          """ Squid Game menceritakan 456 orang putus asa yang mempertaruhkan nyawanya untuk mengikuti serangkaian permainan demi meraih hadiah 45,6 miliar won atau setara Rp 555 miliar. 456 peserta harus melewati berbagai macam rintangan dalam permainan yang sebenarnya mereka sudah pernah mainkan saat masa kecil.""",
      genre: 'Drama',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfAScixLbdmXyyQvn4ubXsOSJreRC4eCq5ew&usqp=CAU",
      tglrelease: 'Release date : 13-10-2021'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Stranger 2",
      category: "id_drama",
      ingredients:
          """ Stranger 2 atau dikenal juga dengan judul Forest of Secrets 2 merupakan kelanjutan dari pendahulunya yang mengikuti kisah Hwang Shi-Mok (Cho Seung-Woo), seorang jaksa yang kurang mampu menunjukkan emosi karena operasi yang dijalaninya saat masih anak-anak. Dalam seri pertamanya, ia bekerja sama dengan Letnan Han Yeo-Jin (Bae Doo-Na) untuk memecahkan pembunuhan berantai yang ternyata juga berkaitan dengan korupsi di lembaga kejaksaan Korea.""",
      genre: 'Drama',
      imageUrl:
          "https://akcdn.detik.net.id/community/media/visual/2020/07/09/stranger-2.jpeg?w=1701",
      tglrelease: 'Release date : 13-11-2018'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Poster Boys",
      category: "id_comedy",
      ingredients:
          """ Tiga orang pria merasa kacau saat foto-foto mereka dipublikasikan dalam sebuah iklan vasektomi. Mereka kemudian memberontak setelah dipermalukan oleh teman-teman mereka yang lain.""",
      genre: 'Comedy',
      imageUrl:
          "https://m.media-amazon.com/images/I/81sJzoqnypL._AC_SY679_.jpg",
      tglrelease: 'Release date : 13-11-2012'),
  MovieData(
      id: DateTime.now().toString(),
      title: "3 Idiots",
      category: "id_comedy",
      ingredients:
          """ In college, Farhan and Raju form a great bond with Rancho due to his positive and refreshing outlook to life. Years later, a bet gives them a chance to look for their long-lost friend whose existence seems rather elusive.""",
      genre: 'Comedy',
      imageUrl:
          "https://img-z.okeinfo.net/okz/500/library/images/2020/08/11/7wibfvrjh7xejv904t41_14555.jpg",
      tglrelease: 'Release date : 13-11-2007'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Madhouse",
      category: "id_comedy",
      ingredients:
          """ Stockbroker Mark Bannister and his TV reporter/anchorwoman wife Jessie are a successful yuppie couple with an idyllic California life, aside from a toilet with a faulty handle. It is interrupted when Mark's timid cousin Fred, and his pregnant wife Bernice fly in from New Jersey. The first days are slightly chaotic thanks to Bernice's cat Scruffy. Mark gives them /300 to spend in the city, but his alone time with Jessie is interrupted when her gold-digger sister Claudia arrives after a fight with her rich Middle Eastern husband Kaddir, whom she divorces after he cancels her credit cards. Fred and Bernice's visit, meant to last only five days, is extended when Bernice falls on the way to the car. She is instructed by her doctor, Dr. Penix, to stay put until the baby is born.""",
      genre: 'Comedy',
      imageUrl:
          "https://i.pinimg.com/236x/47/b7/5a/47b75ac3d3004b7235a70af1ba7564a2.jpg",
      tglrelease: 'Release date : 05-11-1990'),
  MovieData(
      id: DateTime.now().toString(),
      title: "The Jhonson",
      category: "id_comedy",
      ingredients:
          """ Diceritakan Mac Radner (Seth Rogen) dan Kelly Radner (Rose Byrne) merupakan pasangan muda dengan seorang balita. Awalnya kehidupan mereka baik-baik saja dan tinggal di lingkungan perumahan yang tenang. Hingga kemudian datanglah tetangga baru yang merupakan kelompok fraternity bernama Delta Psi, yang pindah ke lingkungan rumah mereka.
""",
      genre: 'Comedy',
      imageUrl:
          "https://cdn.shopify.com/s/files/1/0548/8404/0870/products/TheFamilyComedy-PersonalizedMoviePoster_b59527ba-7360-415b-98b3-33b4086e7c06_1200x.jpg?v=1617385439",
      tglrelease: 'Release date : 24-10-2014'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Warkop DKI Reborn",
      category: "id_comedy",
      ingredients:
          """Film yang menghidupkan kembali legenda trio komedi Warkop. Dono, Kasino dan Indro kembali beraksi di tengah hiruk pikuknya kota DKI Jakarta. Mereka sekali lagi berperan sebagai personel sebuah Lembaga Swasta yang bernama CHIIPS (Cara Hebat Ikut-Ikutan Penanggulangan Sosial). Walaupun di dalam diri mereka dipenuhi semangat yang menggelora dalam menjalankan tugas-tugasnya melayani masyarakat, namun kekacauan dan huru-hara selalu mereka timbulkan akibat aksi mereka yang konyol dan selalu mengocok perut.""",
      genre: 'Comedy',
      imageUrl:
          "https://cdn1.katadata.co.id/media/images/thumb/2021/09/06/Film_Warkop_DKI_Reborn_Jangkrik_Boss_Part_1-2021_09_06-17_06_22_107c0271746c6b07494d1f6cd0800e44_400x267_thumb.jpg",
      tglrelease: 'Release date : 24-10-2017'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Dear Nathan",
      category: "id_romance",
      ingredients:
          """menceritakan tentang nathan dan salma yang saling bertemu, kedekatan mereka mulai mendapatkan ujian pada saat kehadiran orang yang kembali ada di kehidupan mereka.""",
      genre: 'Comedy',
      imageUrl:
          "https://cdn-cas.orami.co.id/parenting/images/Dear_Nathan.width-1000.jpg",
      tglrelease: 'Release date : 14-10-2018'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Dilan 1990",
      category: "id_romance",
      ingredients:
          """Milea (Vanesha Prescilla) bertemu dengan Dilan (Iqbaal Ramadhan) di sebuah SMA di Bandung. Itu adalah tahun 1990, saat Milea pindah dari Jakarta ke Bandung. Perkenalan yang tidak biasa kemudian membawa Milea mulai mengenal keunikan Dilan lebih jauh. Dilan yang pintar, baik hati dan romantis... semua dengan caranya sendiri. Cara Dilan mendekati Milea tidak sama dengan teman-teman lelakinya yang lain, bahkan Beni, pacar Milea di Jakarta. Bahkan cara berbicara Dilan yang terdengar kaku, lambat laun justru membuat Milea kerap merindukannya jika sehari saja ia tak mendengar suara itu.""",
      genre: 'Comedy',
      imageUrl: "https://i.ytimg.com/vi/q_-1BvTOckE/mqdefault.jpg",
      tglrelease: 'Release date : 14-10-2018'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Dilan 1991",
      category: "id_romance",
      ingredients:
          """Kisah cinta Dilan dan Milea akan kembali berlanjut. Di film Dilan 1991 ini kisah cinta mereka akan mulai diuji. Banyak rintangan yang harus Dilan dan Milea lalui, mampukah cinta mereka bertahan?""",
      genre: 'Comedy',
      imageUrl: "https://ultimagz.com/wp-content/uploads/dilan-91-1.png",
      tglrelease: 'Release date : 14-11-2021'),
  MovieData(
      id: DateTime.now().toString(),
      title: "KKN di desa penari",
      category: "id_horror",
      ingredients:
          """KKN Di Desa Penari diadaptasi dari salah satu cerita horror yang telah viral di tahun 2019 melalui Twitter, menurut sang penulis, cerita ini diambil dari sebuah kisah nyata sekelompok mahasiswa yang tengah melakukan program KKN (Kuliah Kerja Nyata) di Desa Penari.""",
      genre: 'Horror',
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BYjBjM2Y5YWEtNTgyMi00MzcwLThkYTctYzZmY2FkNjZjZTRjXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg",
      tglrelease: 'Release date : 13-08-2022'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Pengabdi setan",
      category: "id_horror",
      ingredients:
          """Film Pengabdi Setan, bergenre horor ini mengisahkan seorang penyanyi wanita Mawarni Suwono / ibu (Ayu Laksmi), yang sakit selama tiga tahun. Peristiwa ini terjadi pada tahun 1981. Akibat masalah keuangan, ibu yang dulu terkenal sebagai penyanyi hanya dirawat oleh keluarganya yaitu suaminya / bapak (Bront Palarae).""",
      genre: 'Horror',
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/id/e/e1/Pengabdi_Setan_poster.jpg",
      tglrelease: 'Release date : 28-09-2017'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Pengabdi setan 2",
      category: "id_horror",
      ingredients:
          """Beberapa tahun setelah berhasil menyelamatkan diri dari kejadian mengerikan yang membuat mereka kehilangan ibu dan si bungsu Ian, Rini dan adik-adiknya, Toni dan Bondi, serta Bapak tinggal di rumah susun karena percaya tinggal di rumah susun aman jika terjadi sesuatu karena ada banyak orang.""",
      genre: 'Horror',
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/id/thumb/2/26/Pengabdi_Setan_2.jpeg/220px-Pengabdi_Setan_2.jpeg",
      tglrelease: 'Release date : 28-09-2022'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Keramat",
      category: "id_horror",
      ingredients:
          """Sebuah tim produksi film, berangkat dari Jakarta ke daerah Bantul Yogyakarta dalam rangka persiapan shooting film. Mereka membawa style kota besar, memasuki daerah yang disucikan dan keramat. Mengusik tabu, sehingga kejadian demi kejadian aneh mereka alami, sampai ke titik dimana calon pemeran utama wanita dirasuki roh halus, hingga hilang tanpa jejak.""",
      genre: 'Horror',
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BNDA4ZWY3OTAtM2I5MS00ZGUyLTg3OTItZjY4Y2I0OWMwODcyXkEyXkFqcGdeQXVyMjgzNDQyMjE@._V1_.jpg",
      tglrelease: 'Release date : 18-09-2012'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Keramat 2",
      category: "id_horror",
      ingredients:
          """Sekumpulan anak muda dari Jakarta berangkat menuju Cirebon. Arla, Jojo, Maura melakukan riset tugas akhir dibantu oleh Umay yang sedang membuat dokumenter. Sementara Ajil dan Keanu adalah YouTuber mistis yang sedang membuat konten untuk mempertahankan eksistensi. Perjalanan mereka menjadi liar dan tak terkendali setelah bertemu dengan Lutesha, seorang indigo yang mempunyai agenda rahasia.""",
      genre: 'Horror',
      imageUrl:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2022/06/24/62b5a8a4be5f3-poster-film-keramat-2_663_372.jpeg",
      tglrelease: 'Release date : 11-11-2022'),
  MovieData(
      id: DateTime.now().toString(),
      title: "One Piece",
      category: "id_anime",
      ingredients:
          """ONE PIECE adalah sebuah Manga dan Anime yang menceritakan tentang petualangan sekelompok bajak laut dalam mencari harta karun legendaris, One Piece. One Piece dibuat oleh Eiichiro Oda pada Agustus 1997 di Shonen Jump terbitan Shueisha dan hingga kini masih terus berlanjut. Versi anime nya mulai dibuat pada Oktober 1999 dan kini telah mencapai lebih dari 500 episode.""",
      genre: 'Anime',
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/id/9/90/One_Piece%2C_Volume_61_Cover_%28Japanese%29.jpg",
      tglrelease: 'Release date : 11-10-1999'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Naruto",
      category: "id_anime",
      ingredients:
          """Manga Naruto bercerita seputar kehidupan tokoh utamanya, Naruto Uzumaki, seorang ninja yang hiperaktif, periang, dan ambisius yang ingin mewujudkan keinginannya untuk mendapatkan gelar Hokage, pemimpin dan ninja terkuat di desanya.""",
      genre: 'Anime',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpt1jqJLFjryaD9bwupB1k1KUE3U2l4_9zWw&usqp=CAU",
      tglrelease: 'Release date : 11-11-1999'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Naruto Shippuden",
      category: "id_anime",
      ingredients:
          """Naruto Shippuden adalah sebuah seri anime yang diadaptasi dari bagian II manga Naruto. Serial ini disutradarai oleh Hayato Date dan diproduksi oleh Studio Pierrot dan TV Tokyo. Pada bagian ini, pergerakan organisasi Akatsuki semakin terlihat. Naruto Shippuden juga telah dibuat versi filmnya dengan judul Naruto Shippuden The MovieData yang dirilis di Jepang pada Agustus 2007. """,
      genre: 'Anime',
      imageUrl:
          "https://ae01.alicdn.com/kf/Ud1688f0092fd43f79ed65f712724a937v/Naruto-Poster-Naruto-Tidak-7-A2.jpg_Q90.jpg_.webp",
      tglrelease: 'Release date : 23-03-2007'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Boruto",
      category: "id_anime",
      ingredients:
          """Beberapa tahun setelah berakhirnya Perang Shinobi, putra Naruto, Boruto, bersiap untuk mengikuti ujian Chunin bersama Sarada Uchiha dan Mitsuki yang misterius. """,
      genre: 'Anime',
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BNDIwYjg5YzItZTJmMC00YjJhLWFiNjYtMDU5MmQxOTQxODM2XkEyXkFqcGdeQXVyMjc2Nzg5OTQ@._V1_FMjpg_UX1000_.jpg",
      tglrelease: 'Release date : 27-09-2015'),
  MovieData(
      id: DateTime.now().toString(),
      title: "Hunter x Hunter",
      category: "id_anime",
      ingredients:
          """Hunter x Hunter memiliki latar kisah di sebuah dunia dan dihuni oleh sekumpulan orang-orang yang berambisi menjadi hunter andal. Di antaranya ada Gon Freecss (Megumi Han), pemuda belia yang kehilangan sosok ayahnya sejak kecil dan memiliki cita-cita menjadi hunter untuk menemukan sang ayah. """,
      genre: 'Anime',
      imageUrl:
          "https://i.pinimg.com/originals/e0/78/e6/e078e67d16acce596b6428b8cd3a036f.png",
      tglrelease: 'Release date : 18-06-2011'),
];
