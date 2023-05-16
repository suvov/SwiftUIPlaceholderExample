import SwiftUI

struct CityListView: View {
  // MARK: Model

  struct Model {
    let cities: [CityView.Model]
  }

  let model: Model

  // MARK: View

  var body: some View {
    VStack {
      ForEach(model.cities, id: \.self) {
        CityView(model: $0)
          .padding(.vertical)
      }
    }
    .padding(.horizontal)
  }
}

// MARK: - Preview

struct CityListView_Previews: PreviewProvider {
  static var previews: some View {
    CityListView(model: .stub)
      .previewLayout(.sizeThatFits)
      .previewDisplayName("Normal")
    CityListView(model: .stub)
      .previewLayout(.sizeThatFits)
      .previewDisplayName("Skeleton")
      .redacted(reason: .placeholder)
  }
}

// MARK: - Model stub

extension CityListView.Model {
  static var stub: Self {
    .init(cities: [.stub, .stub, .stub])
  }
}
