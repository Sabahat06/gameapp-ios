//
//  Popup.swift
//  ios-starter-project
//
//  Created by Codesorbit on 09/10/2024.
//

import UIKit

class Popup: UIView {

   
    @IBOutlet weak var closeButton: UIButton!
    var loginViewModel: LoginViewModel?
    @IBOutlet weak var crossImage: UIImageView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupXib(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
    }
    
    func setupXib(frame: CGRect) {
        let view = loadXib()
        view.frame = frame
        addSubview(view)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addImageGesture() // Call here, after the view is fully loaded.
    }
    
    func loadXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "Popup", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        return view!
    }
    @IBAction func claimButtonTapped(_ sender: Any) {
        print("Claim Button Clicked");
        self.superview?.removeFromSuperview()
    }
    
    func addImageGesture() {
        crossImage.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        crossImage.addGestureRecognizer(tapGesture)
    }
    
    @objc func imageTapped() {
        print("Image Tapped Clicked")
        self.superview?.removeFromSuperview()
    }
    
}
