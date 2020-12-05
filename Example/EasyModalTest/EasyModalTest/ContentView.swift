//
//  Copyright © 2020 Tamas Dancsi. All rights reserved.
//

import SwiftUI
import FullScreenModal

struct ContentView: View {

    @Environment(\.fullScreenModalState) var modalState: FullScreenModalState

    var body: some View {
        VStack {
            Button("Display modal") {

                /// Display any view by sending it on the proper modal state signal
                modalState.displayContent.send(
                    ModalContentView().anyView
                )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
    }
}
