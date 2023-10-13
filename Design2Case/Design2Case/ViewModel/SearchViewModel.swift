//
//  SearchViewModel.swift
//  Design2Case
//
//  Created by Kaan Yıldırım on 13.10.2023.
//

import Foundation

class SearchViewModel {
    
    var view: SearchView?
    
    var searchItems: [SearchModel] = []
    
    init() {
        setSearchItems()
    }
    
    func setSearchItems() {
        searchItems = [
            .init(title: "Emlak", 
                  subtitle: "Konuti İşyeri, Arsa, Projeler, Bina, Gayrimenkul",
                  imageView: "emlak"),
            .init(title: "Vasıta", 
                  subtitle: "Otomobil, Arazi, SUV & Pick-up, Motosiklet",
                  imageView: "vasita"),
            .init(title: "Yedek Parça, Aksesuar, Donanım & Tuning", 
                  subtitle: "Otomobil Ekipmanları, Motosikler Ekipmanları, Deniz Aracı Ekipmanları",
                  imageView: "yedekparca"),
            .init(title: "İkinci El ve Sıfır Alışveriş", 
                  subtitle: "Bilgisayar, Cep Telefonu, Fotoğraf & Kamera, Ev Dekorasyonu", 
                  imageView: "ikinciel"),
            .init(title: "İş Makineleri & Sanayi", 
                  subtitle: "İş Makineleri, Tarım Makineleri, Elektrik & Enerji",
                  imageView: "ismakineleri"),
            .init(title: "Ustalar ve Hizmetler", 
                  subtitle: "Ev Tadilat & Dekorasyon, Nakliye, Araç Servis & Bakım, Tamirat ve Teknik Servis",
                  imageView: "ustalar"),
            .init(title: "Özel Ders Verenler", 
                  subtitle: "Lise & Üniversite, İlkokul & Ortakul, Yabancı Dil, Bilgisayar, Direksiyon",
                  imageView: "ozelders"),
            .init(title: "İş İlanları", 
                  subtitle: "Avukatlık & Hukuki Danışmanlık, Eğitim, Eğlence ve Aktiviteler, Güzellik ve Bakım",
                  imageView: "isilanlari"),
            .init(title: "Yardımcı Arayanlar", 
                  subtitle: "Bebek & Çocuk Bakıcısı, Yaşlı & Hasta Bakıcısı, Temizlikçi & Ev İşlerine Yardımcı",
                  imageView: "yardimci"),
            .init(title: "Hayvanlar Alemi", 
                  subtitle: "Evcil Hayvanlar, Akvaryum Balıkları, Aksesuarlar, Bakım Ürünleri, Yem & Mama",
                  imageView: "hayvanlar")
        ]
    }
}
