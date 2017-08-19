
import Foundation
import Cocoa

// due to the new constraint syntax
@available(OSX 10.11, *)

protocol BlinkAppDelegate: NSApplicationDelegate {
    var window: NSWindow? { get }
}

public class BlinkOsXAppDelegate: NSObject, BlinkAppDelegate {
    
    internal var window: NSWindow? = BlinkOsXMainWindow()
    
    public func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        
        window?.windowController = MainWindowController(window: window)
    }
}

class BlinkOsXMainWindow: NSWindow, NSWindowDelegate {
    public override init(contentRect: NSRect, styleMask style: NSWindowStyleMask, backing bufferingType: NSBackingStoreType, defer flag: Bool){
    
        super.init(contentRect: contentRect, styleMask: style, backing: bufferingType, defer: flag)
        
        self.delegate = self
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
    print("Running")
    BlinkOsXApp.shared().run()
//    app.run()
}
