import SwiftUI

struct CityView: View {
  // MARK: Model

  struct Model: Hashable {
    let title: String
    let subtitle: String
  }

  let model: Model

  // MARK: View

  var body: some View {
    HStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.orange)
      VStack {
        HStack {
          Text(model.title)
            .font(.headline)
            .foregroundColor(.primary)
          Spacer()
        }
        HStack {
          Text(model.subtitle)
            .font(.body)
            .foregroundColor(.secondary)
          Spacer()
        }
      }
    }
  }
}

// MARK: - Preview

struct CityView_Previews: PreviewProvider {
  static var previews: some View {
    CityView(model: .stub)
      .padding()
      .previewLayout(.sizeThatFits)
      .previewDisplayName("Normal")
    CityView(model: .stub)
      .padding()
      .previewLayout(.sizeThatFits)
      .previewDisplayName("Skeleton")
      .redacted(reason: .placeholder)
  }
}

// MARK: - Model stub

extension CityView.Model {
  static var stub: Self {
    .init(title: "Amsterdam",
          subtitle: "The Netherlands")
  }
}
