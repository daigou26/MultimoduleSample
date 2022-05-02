import SwiftUI
import TransitionModule

public struct FeatureA: View {
    var environment: ViewResolver
    public init(resolver: ViewResolver) { self.environment = resolver }
    
    public var body: some View {
        NavigationView {
            VStack {
                Text("FeatureA")
                NavigationLink("Next", destination: environment.resolveConcrete(ViewDescriptor.FeatureBDescriptor(text: "FeatureB")))
            }
        }
    }
}
