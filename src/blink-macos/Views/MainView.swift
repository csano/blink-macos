    
import Cocoa

public class MainView : NSView {

    var loginView: LoginView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        loginView = LoginView(frame: CGRect(x:0, y:0, width: 200, height: 200))
        //        super.init(frame: frame)
    }
    
    public required init?(coder:NSCoder) {
        self.init()
    }
}
