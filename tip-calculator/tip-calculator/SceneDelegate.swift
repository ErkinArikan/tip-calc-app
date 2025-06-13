//
//  SceneDelegate.swift
//  tip-calculator
//
//  Created by Erkin Arikan on 30.05.2025.
//

import UIKit

// SceneDelegate sınıfı, iOS 13 ve sonrası için gelen çoklu pencere (scene) desteğinde her sahneyi yöneten sınıftır.
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // Uygulamanın göstereceği pencereyi temsil eder.
    var window: UIWindow?

    /// Uygulama başlatıldığında ilk çalışan fonksiyondur.
    /// Burada pencere oluşturulur ve başlangıç ekranı (rootViewController) ayarlanır.
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        /// Gelen scene gerçekten bir UIWindowScene türünde mi, kontrol ederiz. Değilse devam etmeyiz.
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Yeni bir UIWindow oluştururuz ve bu pencereyi o scene'e bağlarız.
        let window = UIWindow(windowScene: windowScene)

        // Gösterilecek olan başlangıç ekranını (view controller) oluştururuz.
        let vc = CalculatorVc()

        // Pencereye bu ekranı (view controller) root olarak atarız.
        window.rootViewController = vc

        // SceneDelegate içindeki window değişkenine bu pencereyi atarız (referansı tutmak için).
        self.window = window

        // Pencereyi ana pencere (key window) yaparız ve görünür hale getiririz.
        window.makeKeyAndVisible()
    }

    // Diğer scene lifecycle metotları aşağıdadır. Şimdilik kullanılmıyorlar ama gerektiğinde kullanılabilirler.

    func sceneDidDisconnect(_ scene: UIScene) {
        // Sahne sonlandırıldığında çağrılır. Bellek temizliği için kullanılabilir.
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Sahne aktif hale geldiğinde çalışır. Uygulama etkileşime hazırdır.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Sahne geçici olarak pasif hale geçerken (örneğin arama geldiğinde) çalışır.
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Arka plandan ön plana geçerken yapılacak işlemler buraya yazılır.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Uygulama arka plana geçtiğinde yapılacak işlemler (veri kaydı vs.) buraya yazılır.
    }
}
