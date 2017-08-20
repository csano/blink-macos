    
import Cocoa

public class MainView : NSView {

    var loginView: LoginView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        loginView = LoginView(frame: CGRect(x:0, y:0, width: 200, height: 200))
        //        super.init(frame: frame)
    }
    
    public required init?(coder:NSCoder) {
        super.init(coder: coder)
    }
}

    public class SystemsView: NSView {
        
        override init(frame: CGRect) {
            super.init(frame: CGRect(x: frame.origin.x, y: frame.origin.y, width: 100, height: frame.size.height))
            self.wantsLayer = true
            self.layer?.backgroundColor = NSColor.red.cgColor
        }
        
        public required init?(coder:NSCoder) {
            super.init(coder: coder)
        }
    }
