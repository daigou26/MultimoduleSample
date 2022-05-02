import SwiftUI

public struct FeatureB: View {
    var text = ""
    public init(text: String) { self.text = text }
    public var body: some View {
        Text(text)
    }
}

struct FeatureB_Previews: PreviewProvider {
    static var previews: some View {
        FeatureB(text: "")
    }
}
