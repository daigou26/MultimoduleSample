import Foundation
import TransitionModule
import FeatureB
import SwiftUI

struct SampleEnvironment: ViewResolver {
    func resolveConcrete(_ descriptor: ViewDescriptor.FeatureBDescriptor) -> ViewDescriptor.FeatureBDescriptor.Output {
        return AnyView(FeatureB(text: descriptor.text))
    }
}

extension SampleEnvironment {
    func resolve<Descriptor: TypedDescriptor>(_ descriptor: Descriptor) -> Descriptor.Output {
        switch descriptor {
        case let featureBDescriptor as ViewDescriptor.FeatureBDescriptor:
            return resolveConcrete(featureBDescriptor) as! Descriptor.Output
        default:
            fatalError("Unknown descriptor")
        }
    }
}
