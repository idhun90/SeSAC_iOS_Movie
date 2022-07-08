//
//  ViewController.swift
//  Movie
//
//  Created by 이도헌 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var backGroundImage: UIImageView!
    @IBOutlet weak var previewButton1: UIButton!
    @IBOutlet weak var previewButton2: UIButton!
    @IBOutlet weak var previewButton3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Button 테두리 곡률 변경
        playButton.layer.cornerRadius = 10
        
        // 하단 ImageViewUI 업데이트
        updateImageViewUI()
        
        // 하단 Button으로 제작해봄.
        updateButtonUI(previewButton1, image: "겨울왕국2.png")
        updateButtonUI(previewButton2, image: "7번방의선물.png")
        updateButtonUI(previewButton3, image: "아바타.png")
        
        
        
        
    }
    
    func updateButtonUI(_ name: UIButton, image: String) {
        
        name.layer.cornerRadius = name.frame.width / 2
        name.layer.masksToBounds = true
        name.layer.borderWidth = 5
        name.layer.borderColor = UIColor.lightGray.cgColor
        name.setImage(UIImage(named: image), for: .normal)
        name.imageView?.contentMode = .scaleToFill
        // 코드로 버튼 내 이미지 이동은 어떻게?
        // 코드로 UI 구현 시 확인하려면 항상 시뮬을 돌려야하나?
    }
    
    
    
    func updateImageViewUI() {
        
        let imageViewList = [imageView1, imageView2, imageView3]
        
        //이미지뷰 레이아웃 설정
        for i in imageViewList {
            
            guard let i = i else { return }
            i.layer.cornerRadius = i.frame.width / 2 // 테두리 곡률 수정
            i.layer.borderWidth = 5 // 테두리 두께
            i.layer.masksToBounds = true
            i.layer.borderColor = UIColor.lightGray.cgColor // 테두리 색상
            
        }
        
        
    }
    @IBAction func playButtonClicked(_ sender: UIButton) {
        
        // 방법1. #imageLiteral( 사용
        let movieList = [#imageLiteral(resourceName: "베테랑"), #imageLiteral(resourceName: "괴물"), #imageLiteral(resourceName: "7번방의선물"), #imageLiteral(resourceName: "어벤져스엔드게임"), #imageLiteral(resourceName: "movie3"), #imageLiteral(resourceName: "택시운전사")]
        
        backGroundImage.image = movieList.randomElement()
        
        // 방법2. UIImage(named:) 사용
        // let movieList = [
        // UIImage(named: "암살"), UIImage(named: "알라딘"), UIImage(named: "광해"), UIImage(named: "괴물"), UIImage(named: "겨울왕국2"), UIImage(named: "왕의남자")
        //        ]
        //
        // backGroundImage.image = movieList.randomElement()!
        
        // #imageLiteral()을 사용해 배열 구성 시, randomElement() 강제 언래핑 불필요
        // UIImage(named:)을 사용해 배열 구성 시, randomElement()! 강제 언래핑 필요
        // 왜지? 원인 파악 필요
        
    }
}



