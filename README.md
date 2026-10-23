# Currency Converter

Basit bir Flutter uygulaması olan bu proje, kullanıcıdan alınan tutarı sabit bir kur üzerinden USD'den TRY'ye dönüştürür. Uygulama tek ekranlıdır, Material tasarım kullanır ve dönüşüm mantığı doğrudan Flutter state yönetimi ile yürütülür.

## Amaç

Bu projenin amacı, Flutter'da form girişi, state yönetimi, yeniden çizim mantığı ve temel UI yerleşimini göstermektir. Uygulama, gerçek zamanlı kur servisine bağlanmak yerine örnek bir sabit kur değeri ile çalışır.

## Uygulama Mimarisi

Proje aşağıdaki ana parçalardan oluşur:

- `lib/main.dart`: Uygulamanın giriş noktasıdır. `runApp` ile uygulama başlatılır ve ana ekran olarak `CurrencyConverterMaterialPage` açılır.
- `lib/currency_converter_material_page.dart`: Kullanıcı arayüzü, text input, hesaplama fonksiyonu ve sonuç gösterimi burada yer alır.

### Akış

1. Kullanıcı metin alanına sayısal bir değer girer.
2. `Convert` butonuna basılır.
3. `convert()` fonksiyonu `TextEditingController` içindeki değeri okur.
4. Girilen değer `45` ile çarpılır.
5. Sonuç `setState()` ile ekrana yeniden yansıtılır.

## Teknik Detaylar

### Giriş Ekranı

Ana ekran bir `StatefulWidget` olarak tanımlanmıştır. Bunun nedeni, kullanıcı girişi sonrası hesaplanan sonucun değişmesi ve ekranın yeniden render edilmesi gerekliliğidir.

### State Yönetimi

Ekranda iki temel state vardır:

- `result`: Dönüşüm sonucunu tutan `double` değişkeni.
- `TextEditingController`: Kullanıcının metin alanına yazdığı değeri okumak için kullanılır.

### Dönüşüm Mantığı

Mevcut uygulamada kur değeri sabittir:

```dart
result = double.parse(textEditingController.text) * 45;
```

Bu yaklaşım demo ve eğitim amaçlıdır. Gerçek kur kullanmak istenirse bu değer bir API çağrısı ile dinamik hale getirilebilir.

## Kullanılan Paketler

`pubspec.yaml` içinde yer alan temel bağımlılıklar:

- `flutter`: UI ve platform katmanı.
- `http`: İleride canlı kur servisleri entegrasyonu için hazır tutulmuş paket.
- `cupertino_icons`: iOS tarzı ikon desteği.

## Proje Yapısı

```text
lib/
	main.dart
	currency_converter_material_page.dart
android/
ios/
web/
linux/
macos/
windows/
test/
```

Bu yapı Flutter'ın standart çok platformlu proje iskeletidir. Uygulama aynı kod tabanı ile mobil, masaüstü ve web hedeflerine derlenebilir.

## Çalıştırma

Projeyi yerel ortamda çalıştırmak için:

```bash
flutter pub get
flutter run
```

Belirli bir hedefte çalıştırmak için örnekler:

```bash
flutter run -d chrome
flutter run -d ios
flutter run -d android
```

## Davranış Notları

- Giriş alanı sayısal veri bekler.
- Boş veya geçersiz giriş durumunda `double.parse` hata verebilir.
- Sonuç iki ondalık basamakla gösterilir.
- Kur değeri şu an dış servisten alınmaz; sabittir.
