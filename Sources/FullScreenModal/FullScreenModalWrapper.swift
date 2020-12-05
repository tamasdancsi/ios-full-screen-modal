//
//  Copyright © 2020 Tamas Dancsi. All rights reserved.
//

import SwiftUI

struct FullScreenModalWrapper<Content: View>: View {

    @Environment(\.fullScreenModalState) private var modalState: FullScreenModalState

    @State private var modalContent: AnyView? = nil

    let content: () -> Content

    var body: some View {
        ZStack {
            content()
            modalContent
        }
        .edgesIgnoringSafeArea(.all)
        .onReceive(modalState.displayContent) {
            modalContent = $0
        }
        .onReceive(modalState.close) { _ in
            modalContent = nil
        }
    }
}
