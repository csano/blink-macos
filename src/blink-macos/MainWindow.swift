
import Cocoa
import blinkapi

class BlinkOsXMainWindow: NSWindow, NSWindowDelegate {
    
    static let rect = CGRect(x: 0, y: 0, width: 800, height: 600)
    
    convenience init?(loginService: LoginService) {
        
        self.init(contentRect: BlinkOsXMainWindow.rect, styleMask: [.closable, .titled, .miniaturizable, .resizable], backing: .retained, defer: true)
    }
    
    public override init(contentRect: NSRect, styleMask style: NSWindowStyleMask, backing bufferingType: NSBackingStoreType, defer flag: Bool){
        
        super.init(contentRect: contentRect, styleMask: style, backing: bufferingType, defer: flag)
        
        self.delegate = self
        self.title    = "Blink"
        self.contentViewController = MainViewController(loginService: LoginService())
        self.makeKeyAndOrderFront(self)
        
    }
    
    public func windowWillClose(_ notification: Notification) {
        WinkApp.shared().terminate(0)
    }
}
