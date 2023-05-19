import Foundation

public protocol EventProtocol: AnyObject {
    var name: String { get }
    var parameters: [String: Any] { get }
}
