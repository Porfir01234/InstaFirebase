//
//  FeedCellTableViewCell.swift
//  InstaCloneFirebase
//
//  Created by Porfirio on 12/09/24.
//

import UIKit
import FirebaseCore
import FirebaseFirestoreInternal

class FeedCellTableViewCell: UITableViewCell {
    @IBOutlet weak var userEmailLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var documentIdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func likeButtonClicked(_ sender: UIButton) {
        
        let fireStoreDatebase = Firestore.firestore()
        if let likeCount = Int(likeLabel.text!){
            
            let likeStore = ["likes" : likeCount + 1] as! [String : Any]
            
            fireStoreDatebase.collection("Posts").document(documentIdLabel.text!).setData(likeStore, merge: true)
            
        }
            
        
    }
    

}
