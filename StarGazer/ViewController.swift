//
//  ViewController.swift
//  StarGazer
//
//  Created by CodeCraftBlog.
//

import UIKit

class ViewController: UIViewController {
    
    // Source :
    // https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=2015-11-07
    // [{"date":"2015-11-07","explanation":"Since November 2000, people have been living continuously on the International Space Station. To celebrate humanity's 15th anniversary off planet Earth, consider this snapshot from space of our galaxy and our home world posing together beyond the orbital outpost. The Milky Way stretches below the curve of Earth's limb in the scene that also records a faint red, extended airglow. The galaxy's central bulge appears with starfields cut by dark rifts of obscuring interstellar dust. The picture was taken by Astronaut Scott Kelly on August 9, 2015, the 135th day of his one-year mission in space.","hdurl":"https://apod.nasa.gov/apod/image/1511/iss044e045565.jpg","media_type":"image","service_version":"v1","title":"Earth and Milky Way from Space","url":"https://apod.nasa.gov/apod/image/1511/iss044e045565a.jpg"}]
    
    
    var post : Post = Post(title: "Earth and Milky Way from Space",
                         description: "Since November 2000, people have been living continuously on the International Space Station. To celebrate humanity's 15th anniversary off planet Earth, consider this snapshot from space of our galaxy and our home world posing together beyond the orbital outpost. The Milky Way stretches below the curve of Earth's limb in the scene that also records a faint red, extended airglow. The galaxy's central bulge appears with starfields cut by dark rifts of obscuring interstellar dust. The picture was taken by Astronaut Scott Kelly on August 9, 2015, the 135th day of his one-year mission in space.",image: UIImage(named: "heavens")!)

    
    @IBOutlet weak var headerPhotoImagveView: UIImageView!
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        headerPhotoImagveView.image = post.image
        headlineLabel.text = post.title
        descriptionTextView.text = post.description
    }
}

