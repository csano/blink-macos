
import Cocoa

class BlinkOsXApp: NSApplication {
    
    static var appDelegate : BlinkOsXAppDelegate = BlinkOsXAppDelegate()
    
    override static func shared() -> BlinkOsXApp {
        
        let instance = super.shared() as! BlinkOsXApp
        instance.delegate = appDelegate
        
        return instance
    }
}
