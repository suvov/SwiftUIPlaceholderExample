import SwiftUI

struct CityListLoadingView: View {
  var body: some View {
    CityListView(model: .placeholder)
      .redacted(reason: .placeholder)
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

struct CityListLoadingView_Previews: PreviewProvider {
  static var previews: some View {
    CityListLoadingView()      .previewLayout(.sizeThatFits)

  }
}
