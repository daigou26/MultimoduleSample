import SwiftUI

public struct ViewDescriptor {
    public struct FeatureBDescriptor: TypedDescriptor {
        public typealias Output = AnyView
        public var text: String
        
        public init(text: String) {
            self.text = text
        }
    }

    public init() {
    }
}

