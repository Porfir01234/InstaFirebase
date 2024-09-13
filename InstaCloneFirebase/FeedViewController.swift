//
//  FeedViewController.swift
//  InstaCloneFirebase
//
//  Created by Porfirio on 10/09/24.
//

import UIKit
import FirebaseCore
import FirebaseFirestoreInternal
import SDWebImage
class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var userEmailArray = [String]()
    var userCommentArray = [String]()
    var likeArray = [Int]()
    var userImageArray = [String]()
    var documentIdArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
       getDataFromFirestore()
    }
    func remove (){
        userEmailArray.removeAll(keepingCapacity: false)
        userCommentArray.removeAll(keepingCapacity: false)
        likeArray.removeAll(keepingCapacity: false)
        userImageArray.removeAll(keepingCapacity: false)
        documentIdArray.removeAll(keepingCapacity: false)
    }
    
    
    func getDataFromFirestore () {
        let fireStoreDatabase = Firestore.firestore()
        /* let settings = fireStoreDatabase.settings
        settings.areTimestamInSnapshotsEnabled = true
        fireStoreDatabase.settings = settings */
        fireStoreDatabase.collection("Posts").order(by: "date", descending: true)
            .addSnapshotListener { snapshot, error in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                if snapshot?.isEmpty != true && snapshot != nil {
                    
                      self.remove()
                    for document in snapshot!.documents {
                        let documentId = document.documentID
                        self.documentIdArray.append(documentId)
                        
                        if let postedBy = document.get("postedBy") as? String {
                            self.userEmailArray.append(postedBy)
                        }
                        if let postedComment = document.get("postComment") as? String {
                            self.userCommentArray.append(postedComment)
                        }
                        if let likes = document.get("likes") as? Int {
                            self.likeArray.append(likes)
                        }
                        if let imageURl = document.get("imageUrl") as? String {
                            self.userImageArray.append(imageURl)
                        }
                    }
                    self.tableView.reloadData()
                }
                
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userEmailArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCellTableViewCell
        cell.userEmailLabel.text = userEmailArray[indexPath.row]
        cell.likeLabel.text = String(likeArray[indexPath.row])
        cell.commentLabel.text = userCommentArray[indexPath.row]
        cell.userImageView.sd_setImage(with: URL(string: self.userImageArray[indexPath.row]))
        cell.documentIdLabel.text = documentIdArray[indexPath.row]
        
        return cell
    }


}
