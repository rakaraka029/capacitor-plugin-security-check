import Foundation

@objc public class SecurityCheck: NSObject {
    @objc public func isEmulationDetected() -> Bool {
        return EmulatorChecker.amIRunInEmulator()
    }
}
