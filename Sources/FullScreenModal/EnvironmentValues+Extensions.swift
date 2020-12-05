//
//  Copyright © 2020 Tamas Dancsi. All rights reserved.
//

import SwiftUI

struct FullScreenModalStateEnvironmentKey: EnvironmentKey {

    static var defaultValue = FullScreenModalState()
}

public extension EnvironmentValues {

    var fullScreenModalState: FullScreenModalState {
        get {
            self[FullScreenModalStateEnvironmentKey.self]
        }
        set {
            self[FullScreenModalStateEnvironmentKey.self] = newValue
        }
    }
}
