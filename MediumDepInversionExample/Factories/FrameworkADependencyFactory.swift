import FrameworkA
import Common
import FirebaseAnalytics

struct FrameworkAFactoryImplementation: FrameworkADependencyFactory {
  func getAnalytics() -> AnalyticsLogger {
    AnalyticsImplementation(analytics: Analytics.self)
  }
}
