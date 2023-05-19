import FrameworkB
import Common
import FirebaseAnalytics
import FirebaseCrashlytics

struct FrameworkBFactoryImplementation: FrameworkBDependencyFactory {
    func getAnalytics() -> AnalyticsLogger {
        AnalyticsImplementation(analytics: Analytics.self)
    }
    
    // Only demonstrating that we can use the factory to inject more dependencies :)
    func getErrorLogger() -> ErrorLogger {
        ErrorLoggerImplementation(crashlytics: .crashlytics())
    }
}
