public final class Dependency {
     public private(set) static var shared = Dependency()
   
     private(set) var factory: FrameworkBDependencyFactory?
    
     private init() {}

     public func setFactory(_ factory: FrameworkBDependencyFactory) {
       self.factory = factory
     }
}
