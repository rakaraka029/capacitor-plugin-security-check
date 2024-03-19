import Foundation

@objc public class SecurityCheck: NSObject {
    @objc public func isEmulationDetected() -> Bool {
        return EmulatorChecker.amIRunInEmulator()
    }
    @objc public func isJailbrokenDetected() -> Bool {
        return JailbreakChecker.amIJailbroken()
    }
    @objc public func isReverseEngineeringDetected() -> Bool {
        return ReverseEngineeringToolsChecker.amIReverseEngineered()
    }
    @objc static func isTampered(_ checks: [FileIntegrityCheck]) -> FileIntegrityCheckResult {
        return IntegrityChecker.amITampered(checks)
    }
}
