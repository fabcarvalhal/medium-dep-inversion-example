public protocol ErrorLogger: AnyObject {
    func log(_ error: Error)
}
