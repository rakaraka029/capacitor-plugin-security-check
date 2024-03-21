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

    @objc public func isTampered(_ checks: NSArray) -> NSDictionary {
            guard let checksArray = checks as? [FileIntegrityCheck] else {
                fatalError("Invalid parameter type. Expected [FileIntegrityCheck].")
            }
            let result = IntegrityChecker.amITampered(checksArray)
            return ["result": result.result, "hitChecks": result.hitChecks]
        }
}
