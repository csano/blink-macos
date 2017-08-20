
import Cocoa
import blinkapi

class MainWindowController: NSWindowController {

    override init(window: NSWindow?) {
        super.init(window: window)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

class MainViewController: NSViewController, LoginDelegate {
    
    var mainView: NSView
  
    
    
    init?(loginService: LoginService) {
        mainView = NSView(frame: CGRect(x: 0, y: 0, width: 440, height: 600))
        mainView.wantsLayer = true
        mainView.layer?.backgroundColor = NSColor.blue.cgColor
        
        super.init(nibName: nil, bundle: nil)
    }

    public required init?(coder:NSCoder) {
        mainView = NSView()
        super.init(coder: coder)
    }
    
    override func loadView() {
        self.view = mainView
//        let loginView = LoginView()
//        loginView.translatesAutoresizingMaskIntoConstraints = true
//        
//        
//        let btn = NSButton()
//        btn.stringValue = "Test"
//        btn.translatesAutoresizingMaskIntoConstraints = false
//        
//        //HeaderView
//        //Header = 20 from left edge of screen
//        let cn1 = NSLayoutConstraint(item: btn, attribute: .leading, relatedBy: .equal, toItem: mainView, attribute: .leading, multiplier: 1.0, constant: 0)
//        let cn2 = NSLayoutConstraint(item: btn, attribute: .trailing, relatedBy: .equal, toItem: mainView, attribute: .trailing, multiplier: 1.0, constant: 0)
//        let cn3 = NSLayoutConstraint(item: loginView, attribute: .top, relatedBy: .equal, toItem: mainView, attribute: .top, multiplier: 1.0, constant: 10)
//        
//        mainView.addConstraint(cn1)
//        mainView.addConstraint(cn2)
//        mainView.addConstraint(cn3)
//        
//        for constraint in btn.constraints {
//            print("constraint = " + constraint.identifier!)
//        }
//        
//        mainView.translatesAutoresizingMaskIntoConstraints = true
//        btn.frame = CGRect(x:0, y:0, width: 100, height: 20)
//        
//        mainView.addSubview(btn)
////        self.view = //LoginView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//        mainView.addSubview(loginView)
        mainView.addSubview(SystemsView(frame: mainView.frame))
   }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func login(loginData: LoginData) {
        let account = BlinkAccount(email: loginData.email, password: loginData.password)
        LoginService().login(blinkAccount: account, callback: callback)
    }
    override func viewWillAppear() {
//        self.view = 
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func callback(authResponse: AuthResponse?) {
//        if textOutput == nil {
//            NSLog("Output is not defined")
//        }
//        textOutput.string = authResponse?.authToken.token
    }

}

