//
//  Copyright © 2020 Tamas Dancsi. All rights reserved.
//

import SwiftUI
import FullScreenModal

struct ModalContentView: View {

    @Environment(\.fullScreenModalState) var modalState: FullScreenModalState

    var body: some View {
        VStack {
            Button("Close modal") {

                /// Close the presented modal by sending a close modal signal
                modalState.close.send()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
    }
}
