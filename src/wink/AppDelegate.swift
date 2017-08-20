
import Cocoa
import blinkapi

public class AppDelegate: NSObject, NSApplicationDelegate {
    
    internal var window: NSWindow? = BlinkOsXMainWindow(loginService: LoginService())
    
    public func applicationDidFinishLaunching(_ aNotification: Notification) {
        window?.windowController = MainWindowController(window: window)
    }
}
