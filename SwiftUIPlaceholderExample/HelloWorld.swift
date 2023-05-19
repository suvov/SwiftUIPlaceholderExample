import SwiftUI

struct HelloWorld: View {
  var body: some View {
    VStack {
      Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
      Image(systemName: "arrow.down")
        .padding()
      Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        .redacted(reason: .placeholder)
    }
  }
}

struct HelloWorld_Previews: PreviewProvider {
  static var previews: some View {
    HelloWorld()
  }
}
