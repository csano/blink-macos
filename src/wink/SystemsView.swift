
import Cocoa

public class SystemsView: NSView {

    var systemButtons: [SystemButton] = []
    
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: frame.origin.x, y: frame.origin.y, width: 100, height: frame.size.height))
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.red.cgColor
        
        let btn = SystemButton()
        self.addSubview(btn)
        systemButtons.append(btn)
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        btn.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        btn.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//        iconBackground.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -5).isActive = true
//        iconBackground.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
    }

    public required init?(coder:NSCoder) {
        super.init(coder: coder)
    }
}
