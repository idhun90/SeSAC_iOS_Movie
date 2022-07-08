import UIKit

class SecondViewController: UIViewController {
    //IB는 인터페이스 빌더
    //아울렛 변수
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    
    // layer 테스트용
    @IBOutlet weak var layerTestImageView: UIImageView!
    @IBOutlet weak var layerTestButton: UIButton!
    @IBOutlet weak var layerTestLabel: UILabel!
    @IBOutlet weak var layerTestView: UIView!
    
    
    //뷰컨트롤러의 생명주기 종류 중 하나
    //사용자에게 화면이 보이기 직전에 실행되는 코드
    // 옵션 커맨드 방향키< 접을 때 , 펼 때 >
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //이미지 속성
        bannerImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        
        //이미지 모서리 둥글게
        bannerImageView.layer.cornerRadius = 10
        bannerImageView.layer.borderWidth = 5 // 테두리 두께
        bannerImageView.layer.borderColor = UIColor.blue.cgColor // 테두리 색상, UIColor를 cg타입으로 고쳐줄게
        
        //레이블 속성
        titleLabel.text = "배달의민족"
        titleLabel.backgroundColor = .lightGray // 생략 가능
        titleLabel.textColor = .blue // 생략 가능
        titleLabel.font = .boldSystemFont(ofSize: 30) // 생략 가능
        
        // 텍스트뷰 속성
//      textView.layer.masksToBounds = false
        textView.layer.borderWidth = 10
        textView.layer.cornerRadius = textView.frame.width / 2
        textView.layer.backgroundColor = UIColor.yellow.cgColor
        textView.backgroundColor = .blue
//      textView.layer.backgroundColor = UIColor.yellow.cgColor
        textView.textColor = .red
        textView.font = .boldSystemFont(ofSize: 30)
        
        // layerTest
        layerTestImageView.layer.backgroundColor = UIColor.red.cgColor
        layerTestImageView.layer.borderWidth = 5
        layerTestImageView.layer.borderColor = UIColor.black.cgColor
        
        layerTestButton.setTitle("layer 테스트", for: .normal)
        layerTestButton.layer.backgroundColor = UIColor.systemYellow.cgColor
        layerTestButton.layer.borderWidth = 5
        layerTestButton.layer.borderColor = UIColor.blue.cgColor
        
        layerTestLabel.text = "layer 테스트"
        layerTestLabel.font = UIFont.boldSystemFont(ofSize: 25)
        layerTestLabel.textColor = .white
//        layerTestLabel.layer.backgroundColor = UIColor.lightGray.cgColor
        layerTestLabel.backgroundColor = UIColor.red
        layerTestLabel.layer.backgroundColor = UIColor.lightGray.cgColor
        layerTestLabel.layer.borderWidth = 5
        layerTestLabel.layer.borderColor = UIColor.black.cgColor
        
        layerTestView.backgroundColor = .systemOrange
        layerTestView.layer.backgroundColor = UIColor.blue.cgColor
        layerTestView.layer.borderWidth = 5
        layerTestView.layer.borderColor = UIColor.systemGreen.cgColor
        
    }
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        
        bannerImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        
        
    }
}
