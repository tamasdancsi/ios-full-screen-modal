# FullScreenModal

An easy to use SwiftUI full screen modal view. It works by stacking an optional view on the top of your view in a `ZStack`. A `FullScreenModalState` observable object is injected to the environment, which has two signals you can use:

* `displayContent`: you can send an `AnyView` object which will be presented modally
* `close`: you can close your modal by sending a request on this one

## Usage

1. Add a `fullScreenModalHandling` view modifier to your main view.

```swift
import SwiftUI
import FullScreenModal

@main
struct MainApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
                .fullScreenModalHandling()
        }
    }
}
```

2. Display a model by sending an `AnyView` type object through the `displayContent` signal.

```swift
import SwiftUI
import FullScreenModal

struct ContentView: View {

    @Environment(\.fullScreenModalState) var modalState: FullScreenModalState

    var body: some View {
        VStack {
            Button("Display modal") {
                modalState.displayContent.send(
                    ModalContentView().anyView
                )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
    }
}
```

3. Close the presented modal by sending a `close` signal

```swift
struct ModalContentView: View {

    @Environment(\.fullScreenModalState) var modalState: FullScreenModalState

    var body: some View {
        VStack {
            Button("Close modal") {
                modalState.close.send()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
    }
}
```