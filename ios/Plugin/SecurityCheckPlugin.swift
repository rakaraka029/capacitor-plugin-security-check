import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(SecurityCheckPlugin)
public class SecurityCheckPlugin: CAPPlugin {
    private let implementation = SecurityCheck()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func isEmulationDetected(_ call: CAPPluginCall) {
        call.resolve([
            "value": implementation.isEmulationDetected()
        ])
    }
}
