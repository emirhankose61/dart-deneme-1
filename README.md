# Flutter Clean Architecture & Cubit: Task Manager

Bu proje, Flutter'da **Clean Architecture** prensiplerini ve **Cubit** state management kütüphanesini kullanarak geliştirilmiş 3 sayfalık bir "Görev Yönetimi" uygulamasıdır. Veri tabanı bağımlılığı olmadan, bellek içi (in-memory) veri yönetimiyle katmanlı mimariyi öğretmeyi amaçlar.

## 🚀 Proje Özellikleri

- **Clean Architecture:** Kod; Data, Domain ve Presentation katmanlarına ayrılmıştır.
- **State Management:** Uygulama genelindeki durum yönetimi için `flutter_bloc` (Cubit) kullanılmıştır.
- **3 Sayfalı Akış:** 
  - **Dashboard:** Görev istatistiklerini canlı olarak izleme.
  - **Task List:** Görevleri listeleme ve durum güncelleme.
  - **Add Task:** Dinamik olarak yeni görev ekleme.

## 🏗 Mimari Yapı

Proje klasör yapısı Clean Architecture standartlarına göre kurgulanmıştır:

```text
lib/
 ├── features/
 │    └── tasks/
 │         ├── data/           # Repository implementasyonları ve Modeller
 │         ├── domain/         # İş kuralları, Entity'ler ve Soyut Repository
 │         └── presentation/   # UI (Pages) ve State (Cubits)
 └── main.dart                 # Uygulama giriş noktası ve Dependency Injection
