import SwiftUI
import FeatureA

@main
struct MultiModuleSampleApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                FeatureA(resolver: SampleEnvironment())
            }
        }
    }
}
