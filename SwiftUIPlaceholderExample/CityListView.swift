import SwiftUI

struct CityListView: View {
  // MARK: Model

  struct Model {
    let cities: [CityView.Model]
  }

  let model: Model?

  // MARK: View

  var body: some View {
    VStack {
      let cities = model?.cities ?? Model.placeholder.cities
      ForEach(cities, id: \.self) {
        CityView(model: $0)
          .padding(.vertical)
      }
    }
    .redacted(reason: model == nil ? .placeholder : [])
    .padding(.horizontal)
  }
}

// MARK: - Model placeholder

extension CityListView.Model {
  static var placeholder: Self {
    .init(cities: [
      .init(title: "Placeholder",
            subtitle: "Plchldr"),
      .init(title: "Placeholder",
            subtitle: "Plchldr"),
      .init(title: "Placeholder",
            subtitle: "Plchldr"),
    ])
  }
}

// MARK: - Preview

struct CityListView_Previews: PreviewProvider {
  static var previews: some View {
    CityListView(model: .stub)
      .previewLayout(.sizeThatFits)
      .previewDisplayName("Normal")
    CityListView(model: nil)
      .previewLayout(.sizeThatFits)
      .previewDisplayName("Skeleton")
  }
}

// MARK: - Model stub

extension CityListView.Model {
  static var stub: Self {
    .init(cities: [.stub, .stub, .stub])
  }
}
