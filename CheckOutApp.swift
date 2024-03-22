import SwiftUI

@main
struct CheckOutApp: App {
    @StateObject var appInfo = AppInformation()
    var body: some Scene {
        WindowGroup {
            StartView().environmentObject(appInfo)
        }
    }
}
