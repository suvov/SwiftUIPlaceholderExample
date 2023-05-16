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
  }
}

// MARK: - Preview

struct CityListView_Previews: PreviewProvider {
  static var previews: some View {
    CityListView(model: .stub)
      .previewLayout(.sizeThatFits)
      .previewDisplayName("Normal")
  }
}

// MARK: - Model stub

extension CityListView.Model {
  static var stub: Self {
    .init(cities: [.stub, .stub, .stub])
  }
}
