import Common
import FirebaseCrashlytics

final class ErrorLoggerImplementation: ErrorLogger {
    private let crashlytics: Crashlytics
    
    init(crashlytics: Crashlytics) {
        self.crashlytics = crashlytics
    }
    
    func log(_ error: Error) {
        // Make data transformations here if necessary
        // I'll keep it simple here
        crashlytics.record(error: error)
    }
}
