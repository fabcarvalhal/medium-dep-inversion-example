import Common

public protocol FrameworkBDependencyFactory {
    func getAnalytics() -> AnalyticsLogger
    func getErrorLogger() -> ErrorLogger
}

