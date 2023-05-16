import SwiftUI

struct CitiesScreen: View {
  // MARK: State

  let state: State

  enum State {
    case loading
    case loaded(CityListView.Model)
  }

  // MARK: View

  var body: some View {
    switch state {
    case .loading:
      CityListLoadingView()
    case .loaded(let model):
      CityListView(model: model)
    }
  }
}

// MARK: - Preview

struct CitiesScreen_Previews: PreviewProvider {
  static var previews: some View {
    CitiesScreen(state: .loading)     .previewLayout(.sizeThatFits)
      .previewDisplayName("Loading")
    CitiesScreen(state: .loaded(.stub))     .previewLayout(.sizeThatFits)
      .previewDisplayName("Loaded")
  }
}
