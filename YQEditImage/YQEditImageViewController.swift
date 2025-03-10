//
//  YQEditImageViewController.swift
//  YQEditImage
//
//  Created by yinshengqi on 2025/3/10.
//

import UIKit
import SnapKit

public class YQEditImageViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    private func initUI() {
        view.backgroundColor = .black
        createNav()
    }
    private func createNav() {
        let backBtn = UIButton()
        backBtn.setTitle("返回", for: .normal)
        backBtn.setTitleColor(.white, for: .normal)
        backBtn.titleLabel?.font = .pfRegular(13)
        backBtn.addTarget(self, action: #selector(clickBackEvent), for: .touchUpInside)
        view.addSubview(backBtn)
        backBtn.snp.makeConstraints { make in
            make.width.equalTo(40)
            make.height.equalTo(30)
            make.top.equalTo(yq_statusBarH+7)
            make.left.equalToSuperview()
        }
    }
    
    @objc private func clickBackEvent() {
        backToExit()
    }
}
