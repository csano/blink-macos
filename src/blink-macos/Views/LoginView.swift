import Cocoa

public protocol LoginDelegate {
    func login(loginData: LoginData)
}

public class LoginData {
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
    var email: String
    var password: String
}

public class LoginView: NSView {
    var loginDelegate: LoginDelegate?

    var emailText: NSTextField!
    var emailLabel: NSTextField!
//    var password: NSTextField
//    var loginButton: NSButton
    
    func createViews() {
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.red.cgColor
        self.translatesAutoresizingMaskIntoConstraints = false
        emailText = NSTextField()
        self.addSubview(emailText)
        
        emailLabel = NSTextField(labelWithString: "E-mail")
        emailLabel.frame = NSRect(x: 18, y: 45, width: 70, height: 18)
        self.addSubview(emailLabel)
        
//        emailText = NSTextField()
//        emailText.frame = NSRect(x: 18, y: 70, width: )
        //        email.frame = NSRect(
        
        
    }
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.createViews()
//        super.init(frame: frame)
    }
    
    
    public convenience required init?(coder:NSCoder) {
        self.init()
    }
    
    public convenience init() {
        self.init(frame:CGRect(x: 0, y: 0, width: 300, height: 100))
    }

    @IBAction func loginClicked(_ sender: NSButton) {
//        loginDelegate?.login(loginData: LoginData(email: email.stringValue, password: password.stringValue))
    }
}
