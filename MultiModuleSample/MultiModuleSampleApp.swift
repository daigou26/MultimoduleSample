//
//  Created on 2022/04/27
//

import SwiftUI
import FeatureA
import FeatureB

@main
struct MultiModuleSampleApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                FeatureA()
                FeatureB()
            }
        }
    }
}
