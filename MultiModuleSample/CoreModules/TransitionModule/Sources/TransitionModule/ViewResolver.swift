import Foundation

public protocol ViewResolver {
    func resolveConcrete(_ descriptor: ViewDescriptor.FeatureBDescriptor) -> ViewDescriptor.FeatureBDescriptor.Output
}
