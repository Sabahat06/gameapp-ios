
//  LoginViewController.swift
//  ios-starter-project
//
//  Created by Mehtab Ahmed on 26/06/21.
//

import UIKit

 /*******************************************************************
 Example viewController to show how to use networking in the project.
 Just pass required model object or array in completion and wrapper will do all the work for you.
 ********************************************************************/

class LoginViewController: UIViewController, LoginView, UICollectionViewDataSource {
    
    @IBOutlet weak var claimPointLabel: UILabel!
    
    @IBOutlet weak var teamButton: UIButton!
    @IBOutlet weak var leagueButton: UIButton!
    @IBOutlet weak var sportsButton: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    var loginViewModel: LoginViewModel?
    var commercialPopup: Popup!
    var selectedButtonName = "Sports"
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedData: [Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addLabelGesture()
        selectedData = sportsData
        collectionView.dataSource = self
        collectionView.backgroundColor = .clear
        sportsButton.backgroundColor = UIColor.systemOrange
        configureCollectionViewLayout(for: 3)
        backgroundView.layer.borderColor = UIColor.white.cgColor
        backgroundView.layer.cornerRadius = 10
        backgroundView.layer.borderWidth = 2
        loginViewModel = LoginViewModel(view: self)
        loginViewModel?.login(email: "storeowner@mail.com", password: "password")
    }
    
    @IBAction func OnButtonTap(_ sender: UIButton) {
        selectedButtonName = sender.titleLabel?.text ?? "";
        if(selectedButtonName == "Sports") {
            selectedData = []
            selectedData = sportsData
            sportsButton.backgroundColor = UIColor.systemOrange
            leagueButton.backgroundColor = UIColor.systemGray
            teamButton.backgroundColor = UIColor.systemGray
            
        } else if(selectedButtonName == "League") {
            selectedData = []
            selectedData = leaguesData
            sportsButton.backgroundColor = UIColor.systemGray
            leagueButton.backgroundColor = UIColor.systemOrange
            teamButton.backgroundColor = UIColor.systemGray
        } else if(selectedButtonName == "Team") {
            selectedData = []
            selectedData = teamsData
            sportsButton.backgroundColor = UIColor.systemGray
            leagueButton.backgroundColor = UIColor.systemGray
            teamButton.backgroundColor = UIColor.systemOrange
        }
        collectionView.reloadData()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return selectedData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        cell.setup(with: selectedData[indexPath.row])
        return cell
    }
    
    private func configureCollectionViewLayout(for itemsPerRow: CGFloat) {
        let spacing: CGFloat = 10 // Adjust spacing as needed
        
        let totalSpacing = (2 * spacing) + ((itemsPerRow - 1) * spacing) // Total spacing
        let itemWidth = (collectionView.bounds.width - totalSpacing) / itemsPerRow
        
        // Create and configure the layout
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth) // Square cells, change height if needed
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        
        // Assign the layout to the collection view
        collectionView.collectionViewLayout = layout
    }
    
    // Mark:- LoginView methods
    func loginSuccess() {
        print("Login successful")
//        self.navigationController?.pushViewController(LoginViewController(), animated: true)
    }
    
    
    func loginFailure(error: String) {
        print("Login error: \(error)")
    }
    
    func addLabelGesture() {
        claimPointLabel.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(labelTapped))
        claimPointLabel.addGestureRecognizer(tapGesture)
    }
    
    @objc func labelTapped() {
        print("Label clicked!")
//        let alert = UIAlertController(title: "Label Clicked", message: "You have tapped the label!", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//        self.present(alert, animated: true, completion: nil)
        if commercialPopup != nil {
           commercialPopup.removeFromSuperview()
        }
        self.commercialPopup = Popup(frame: self.view.frame)
//        self.loginViewModel?.commercialPopup.closeButton!.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        self.view.addSubview(commercialPopup)
    }
    
    @objc func closeButtonTapped() {
        print("Label clicked!")
        self.commercialPopup.removeFromSuperview()
    }
}

