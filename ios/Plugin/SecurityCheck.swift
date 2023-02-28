import Foundation

@objc public class SecurityCheck: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func isEmulationDetected() -> Bool {
        return EmulatorChecker.amIRunInEmulator()
    }
}
