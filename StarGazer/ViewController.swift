//
//  ViewController.swift
//  StarGazer
//
//  Created by CodeCraftBlog.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerPhotoImagveView: UIImageView!
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPost()
    }
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    func loadPost() {
        if let nextPost = fetchNextPost() {
            populateUI(post: nextPost)
        }
    }
    
    func fetchNextPost() -> Post? {
        guard let randomPostResponse = NetworkHandler.shared.getRandomPost() else {
            return nil
        }
        return Post(randomPostResponse)
    }

    func populateUI(post : Post) {
        headerPhotoImagveView.image = post.image
        headlineLabel.text = post.title
        descriptionTextView.text = post.description
    }
   
    @IBAction func fetchNextButtonClicked(sender: UIButton) {
        loadPost()
    }
}
