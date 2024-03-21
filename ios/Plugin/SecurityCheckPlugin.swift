import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(SecurityCheckPlugin)
public class SecurityCheckPlugin: CAPPlugin {
    private let implementation = SecurityCheck()

    @objc func isEmulationDetected(_ call: CAPPluginCall) {
        call.resolve([
            "value": implementation.isEmulationDetected()
        ])
    }

    @objc func isJailbrokenDetected(_ call: CAPPluginCall) {
        call.resolve([
            "value": implementation.isJailbrokenDetected()
        ])
    }

    @objc func isReverseEngineeringDetected(_ call: CAPPluginCall) {
        call.resolve([
            "value": implementation.isReverseEngineeringDetected()
        ])
    }

    // Implementasi fungsi isTampered
    @objc func isTampered(_ call: CAPPluginCall) {
        let bundle = call.getString("bundle") ?? ""
        let checks: NSArray = ["bundleID(\(bundle))"] // Menggunakan NSArray dengan string sebagai elemennya

        // Memanggil fungsi isTampered dengan parameter NSArray
        let isTampered = implementation.isTampered(checks)

        // Mendapatkan nilai result dari tuple yang dikembalikan
        let resultValue = isTampered["result"] as? Bool ?? false

        // Mengirimkan hasil resolusi ke pemanggil
        call.resolve(["value": resultValue])
    }
}
