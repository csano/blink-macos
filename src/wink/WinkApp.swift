
import Cocoa

class WinkApp: NSApplication {
    
    static var appDelegate = AppDelegate()
    
    override static func shared() -> WinkApp {
        
        let instance = super.shared() as! WinkApp
        instance.delegate = appDelegate
        
        return instance
    }
}
