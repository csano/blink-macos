
import Foundation
import Cocoa
import blinkapi

// due to the new constraint syntax
@available(OSX 10.11, *)

protocol BlinkAppDelegate: NSApplicationDelegate {
    var window: NSWindow? { get }
}

public class BlinkOsXAppDelegate: NSObject, BlinkAppDelegate {
    
    internal var window: NSWindow? = BlinkOsXMainWindow(loginService: LoginService())
    
    public func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        
        window?.windowController = MainWindowController(window: window)
    }
}

class BlinkOsXMainWindow: NSWindow, NSWindowDelegate {

    static let rect = CGRect(x: 0, y: 0, width: 800, height: 600)
    
    convenience init?(loginService: LoginService) {
        
        self.init(contentRect: BlinkOsXMainWindow.rect, styleMask: [.closable, .titled, .miniaturizable, .resizable], backing: .retained, defer: true)
    }
    
    public override init(contentRect: NSRect, styleMask style: NSWindowStyleMask, backing bufferingType: NSBackingStoreType, defer flag: Bool){
    
        super.init(contentRect: contentRect, styleMask: style, backing: bufferingType, defer: flag)
        
        self.delegate = self
        self.title    = "Blink"
        //sewindow.contentViewController = MainViewController(loginService: LoginService())
        self.makeKeyAndOrderFront(self)

    }

    public func windowWillClose(_ notification: Notification) {
        BlinkOsXApp.shared().terminate(0)
    }
    
}

class BlinkOsXApp: NSApplication {
    
    static var appDelegate : BlinkOsXAppDelegate = BlinkOsXAppDelegate()
    
    override static func shared() -> BlinkOsXApp {
    
        let instance = super.shared() as! BlinkOsXApp
        instance.delegate = appDelegate

        return instance
    }
}

if #available(OSX 10.11, *)  {
    BlinkOsXApp.shared().run()
}
