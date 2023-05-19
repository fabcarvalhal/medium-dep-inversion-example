import UIKit
import Common

public final class FrameworkAMainViewController: UIViewController {
    
    // Just an example, lets not overcomplicate here
    private var analyticsLogger: AnalyticsLogger? {
        Dependency.shared.factory?.getAnalytics()
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        // Log any event here or in another place when needed
        // analyticsLogger?.log(someEvent)
    }
}
