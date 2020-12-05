//
//  Copyright © 2020 Tamas Dancsi. All rights reserved.
//

import SwiftUI
import FullScreenModal

@main
struct MainApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
                /// Add this to your main view
                .fullScreenModalHandling()
        }
    }
}
