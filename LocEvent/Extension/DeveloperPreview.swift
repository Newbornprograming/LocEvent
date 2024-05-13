//
//  DeveloperPreview.swift
//  LocEvent
//
//  Created by MacBook Air on 12/05/24.
//

import Foundation

class DeveloperPreview {
    var listings: [Listing] = [
        .init(
            id: 1,
            imageURLs: ["listing-1",
                        "listing-2",
                        "listing-3"],
            title: "Sharing UI/UX kak Ija",
            location: "UC Tower",
            date: Date(timeIntervalSince1970: 1745376000), // 8 May 2024
            price: 50.0,
            distance: 5.0,
            description:"Dalam sesi ini, Kak Ija akan memandu Anda melalui landasan fundamental UI/UX, menyoroti pentingnya desain yang intuitif dan menarik bagi pengguna. Dengan wawasan mendalamnya, Kak Ija akan membagikan strategi terbaik dalam merancang antarmuka yang memikat dan pengalaman pengguna yang memuaskan. Dari prinsip desain dasar hingga tren terkini dalam industri, Kak Ija akan menjelajahi setiap aspek dari UI/UX, menyoroti pentingnya pemahaman mendalam tentang pengguna dan tujuan produk. Anda akan belajar tentang teknik perancangan yang efektif, metodologi pengujian pengguna, dan praktik terbaik untuk meningkatkan interaksi dan keterlibatan pengguna.",
            latitude: -7.2828,
            longitude: 112.7360,
            address: "CitraLand CBD Boulevard",
            city: "Surabaya",
            state: "Sambikerep",
            contactEvent: 895397317309,
            wishlist: false
        ),
        .init(
            id: 2,
            imageURLs: ["listing-2",
                        "listing-3",
                        "listing-4"],
            title: "Festival Musik Surabaya",
            location: "Surabaya Town Square",
            date: Date(timeIntervalSince1970: 1748438400), // 25 May 2024
            price: 30.0,
            distance: 3.0,
            description: "Sambutlah suasana meriah di Festival Musik Surabaya di Surabaya Town Square. Acara ini menampilkan berbagai genre musik dari artis lokal dan internasional. Nikmati konser live, pameran musik, dan banyak lagi! Jadikan momen ini sebagai pengalaman tak terlupakan bersama teman dan keluarga.",
            latitude: -7.2906,
            longitude: 112.7290,
            address: "Jl. Adityawarman No.55, Kedungdoro, Kec. Tenggilis Mejoyo",
            city: "Surabaya",
            state: "Sambikerep",
            contactEvent: 895397317310,
            wishlist: false
        ),
        .init(
            id: 3,
            imageURLs: ["listing-3",
                        "listing-4",
                        "listing-5"],
            title: "Pameran Seni Rupa Surabaya",
            location: "Surabaya National Museum",
            date: Date(timeIntervalSince1970: 1747296000), // 12 May 2024
            price: 40.0,
            distance: 6.0,
            description: "Sambutlah keindahan seni rupa di Pameran Seni Rupa Surabaya. Acara ini memamerkan karya seni dari seniman lokal dan internasional, memperkenalkan Anda pada beragam gaya dan teknik. Jelajahi lukisan, patung, instalasi, dan banyak lagi, sambil merasakan kekayaan budaya kota Surabaya.",
            latitude: -7.2720,
            longitude: 112.7406,
            address: "Jl. Pahlawan No.1, Bubutan",
            city: "Surabaya",
            state: "Sambikerep",
            contactEvent: 895397317311,
            wishlist: false
        ),
        .init(
            id: 4,
            imageURLs: ["listing-4",
                        "listing-5",
                        "listing-6"],
            title: "Seminar Kewirausahaan",
            location: "Grand City Convention Hall",
            date: Date(timeIntervalSince1970: 1747582400), // 15 May 2024
            price: 25.0,
            distance: 4.0,
            description: "Sertai kami dalam Seminar Kewirausahaan di Grand City Convention Hall. Acara ini menyajikan berbagai topik terkait bisnis dan kewirausahaan, termasuk strategi pemasaran, manajemen keuangan, dan inovasi produk. Dapatkan wawasan berharga dari para ahli industri dan jaringan dengan rekan-rekan pengusaha lainnya!",
            latitude: -7.2755,
            longitude: 112.7197,
            address: "Jl. Gubeng Pojok No.1",
            city: "Surabaya",
            state: "Sambikerep",
            contactEvent: 895397317312,
            wishlist: false
        ),
        .init(
            id: 5,
            imageURLs: ["listing-7",
                        "listing-8",
                        "listing-1"],
            title: "Workshop Kuliner Surabaya",
            location: "Surabaya Food Festival",
            date: Date(timeIntervalSince1970: 1750505600), // 20 May 2024
            price: 35.0,
            distance: 2.0,
            description: "Sambutlah Workshop Kuliner Surabaya di Surabaya Food Festival! Pelajari resep khas Surabaya, ikuti demo memasak, dan nikmati hidangan lezat dari berbagai koki terkenal. Jadikan acara ini kesempatan untuk mengeksplorasi kekayaan kuliner kota Surabaya.",
            latitude: -7.2745,
            longitude: 112.7482,
            address: "Jl. Kebon Rojo, Ketabang",
            city: "Surabaya",
            state: "Sambikerep",
            contactEvent: 895397317313,
            wishlist: false
        ),
        .init(
            id: 6,
            imageURLs: ["listing-8",
                        "listing-1",
                        "listing-2"],
            title: "Pentas Teater Surabaya",
            location: "Taman Budaya Jawa Timur",
            date: Date(timeIntervalSince1970: 1749302400), // 6 May 2024
            price: 45.0,
            distance: 8.0,
            description: "Tontonlah pertunjukan teater yang menakjubkan di Taman Budaya Jawa Timur. Nikmati berbagai genre teater, mulai dari drama hingga komedi, disajikan oleh para seniman lokal dan nasional. Dapatkan pengalaman teater yang memukau dan kembangkan apresiasi Anda terhadap seni panggung!",
            latitude: -7.2847,
            longitude: 112.7417,
            address: "Jl. Gentengkali No.14-16",
            city: "Surabaya",
            state: "Sambikerep",
            contactEvent: 895397317314,
            wishlist: false
        ),
        .init(
            id: 7,
            imageURLs: ["listing-1",
                        "listing-8",
                        "listing-3"],
            title: "Bazaar Fashion Surabaya",
            location: "Tunjungan Plaza",
            date: Date(timeIntervalSince1970: 1748659200), // 29 May 2024
            price: 55.0,
            distance: 7.0,
            description: "Jelajahi tren mode terkini di Bazaar Fashion Surabaya di Tunjungan Plaza. Temukan koleksi pakaian, aksesoris, dan barang-barang fashion lainnya dari desainer lokal dan merek terkenal. Nikmati pengalaman berbelanja yang menyenangkan dan dapatkan penawaran eksklusif selama acara!",
            latitude: -7.2843,
            longitude: 112.7395,
            address: "Jl. Basuki Rahmat No.8-12",
            city: "Surabaya",
            state: "Sambikerep",
            contactEvent: 895397317315,
            wishlist: false
        ),
        .init(
            id: 8,
            imageURLs: ["listing-2",
                        "listing-4",
                        "listing-7"],
            title: "Kompetisi Esport Surabaya",
            location: "GOR Ken Arok",
            date: Date(timeIntervalSince1970: 1748140800), // 24 May 2024
            price: 20.0,
            distance: 10.0,
            description: "Sertai Kompetisi Esport Surabaya di GOR Ken Arok! Bersainglah dalam berbagai turnamen game populer dan tunjukkan keterampilan gaming terbaik Anda. Raih hadiah menarik dan dapatkan pengalaman bermain yang seru bersama gamer lainnya!",
            latitude: -7.2806,
            longitude: 112.7602,
            address: "Jl. Arief Rahman Hakim No.16-18, Tegalsari",
            city: "Surabaya",
            state: "Sambikerep",
            contactEvent: 895397317316,
            wishlist: false
        ),
        .init(
            id: 9,
            imageURLs: ["listing-3",
                        "listing-6",
                        "listing-5"],
            title: "Sosialisasi Lingkungan Hidup",
            location: "Surabaya Green Festival",
            date: Date(timeIntervalSince1970: 1748564800), // 28 May 2024
            price: 60.0,
            distance: 12.0,
            description: "Ikuti Sosialisasi Lingkungan Hidup di Surabaya Green Festival! Dapatkan wawasan tentang praktik ramah lingkungan, daur ulang, dan keberlanjutan. Saksikan presentasi dari para ahli lingkungan dan bergabunglah dalam kegiatan konservasi alam. Mari bersama-sama menjaga bumi kita!",
            latitude: -7.2862,
            longitude: 112.7423,
            address: "Jl. Mayjend. Sungkono, Pakis",
            city: "Surabaya",
            state: "Sambikerep",
            contactEvent: 895397317317,
            wishlist: false
        ),
        .init(
            id: 10,
            imageURLs: ["listing-8",
                        "listing-3",
                        "listing-7"],
            title: "Pawai Budaya Surabaya",
            location: "Jalan Pahlawan",
            date: Date(timeIntervalSince1970: 1748764800), // 30 May 2024
            price: 25.0,
            distance: 3.0,
            description: "Sambutlah keberagaman budaya Surabaya di Pawai Budaya Surabaya di Jalan Pahlawan. Nikmati parade budaya, tarian tradisional, dan pertunjukan kesenian lainnya dari berbagai etnis dan komunitas di Surabaya. Rasakan semangat persatuan dalam keragaman!",
            latitude: -7.2566,
            longitude: 112.7458,
            address: "Jl. Pahlawan No.1, Bubutan",
            city: "Surabaya",
            state: "Sambikerep",
            contactEvent: 895397317318,
            wishlist: false
        )
    ]
}

