public protocol AnalyticsLogger: AnyObject {
    func log(_ event: EventProtocol)
}
