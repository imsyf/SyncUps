//
//  SyncUpsApp.swift
//  SyncUps
//
//  Created by Imam on 08/10/25.
//

import ComposableArchitecture
import SwiftUI

@main
struct SyncUpsApp: App {
    static let store = Store(initialState: SyncUpsList.State(syncUps: [.mock])) {
        SyncUpsList()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            SyncUpsListView(store: Self.store)
        }
    }
}
