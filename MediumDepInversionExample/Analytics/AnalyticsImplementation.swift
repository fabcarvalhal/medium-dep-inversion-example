import Common
import FirebaseAnalytics

final class AnalyticsImplementation: AnalyticsLogger {
    private let analytics: Analytics.Type

    init(analytics: Analytics.Type) {
       self.analytics = analytics
    }

    func log(_ event: EventProtocol) {
       analytics.logEvent(event.name, parameters: event.parameters)
    }
}
