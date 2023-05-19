public final class Dependency {
     public private(set) static var shared = Dependency()
   
     private(set) var factory: FrameworkADependencyFactory?
    
     private init() {}

     public func setFactory(_ factory: FrameworkADependencyFactory) {
       self.factory = factory
     }
}
