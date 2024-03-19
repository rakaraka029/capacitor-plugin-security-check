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

    @objc func isTampered(_ call: CAPPluginCall) {
        var isTampered:Bool
        let bundle = call.getString("bundle") ?? ""
        if implementation.isTampered([.bundleID(bundle)]).result {
            isTampered = true
        }
        else {
            isTampered = false
        }
        call.resolve([
            "value": isTampered
        ])
    }
}
