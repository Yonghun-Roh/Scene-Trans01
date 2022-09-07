//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by Yonghun Roh on 2022/09/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func moveNext(_ sender: Any) {
        // 이동할 뷰 컨트롤러 객체를 StorybordID 정보를 이용하여 참조.
        let storyborad = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        // instantiateViewController(widhIdendifier:) 메소드는 인자값으로 입력받은 아이디를 이용하여 스토리보드에서 뷰 컨트롤러를 찾고, 연결된 클래스를 읽어와 뷰 컨트롤러에 대한 인스턴스를 생성한다.
        
            
            
        
        // 화면 전환할 때의 애니메이션 타입
        uvc.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        //UIVewController 클래스에 정의된 속성 modalTransitionStyle은 어떤 스타일을 적용해서 전환할 것인지를 결정한다. 전환 효과는 UIModalTransitionStyle 객체에 eunm 타입으로 정의되어 있으며 4개의 기본 전환 스티일이 제공된다.
        
        // 인자값으로 뷰 컨트롤러 인스턴스 넣고 프레젠트 메소드 호출
        self.present(uvc, animated: true)
        //animated를 false로 하면 modalTransitionStyle 속성에서 설정한 값과 상관없이 애니메이션을 사용하지 않음.
        
    }
}

