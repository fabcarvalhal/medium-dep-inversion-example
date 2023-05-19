import Common

public protocol FrameworkADependencyFactory {
    func getAnalytics() -> AnalyticsLogger
}
