//
//  ViewController.swift
//  scrollImage
//
//  Created by Imcrinox Mac on 15/12/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageScroll: UIScrollView!
    @IBOutlet weak var zoomImage: UIImageView!
//    @IBOutlet weak var imgLeadingCons: NSLayoutConstraint!
//    @IBOutlet weak var imgBootomCons: NSLayoutConstraint!
//    @IBOutlet weak var imgTrailingCons: NSLayoutConstraint!
//    @IBOutlet weak var imgTopCons: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        imageScroll.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        setupScrolleView()
    }

//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return UIStatusBarStyle.default
//    }
//
//    fileprivate func updateMinZoomScaleForSize(_ size: CGSize) {
//        let widthScale = size.width / zoomImage.bounds.width
//        let heightScale = size.height / zoomImage.bounds.height
//
//        let minScale = min(widthScale,heightScale)
//
//        imageScroll.minimumZoomScale = minScale
//        imageScroll.maximumZoomScale = 3.0
//        imageScroll.zoomScale = minScale
//    }
//
//    func scrollViewDidZoom(_ scrollView: UIScrollView) {
//        updateConstaraintsForSize(view.bounds.size)
//    }
//
//    fileprivate func updateConstaraintsForSize(_ size: CGSize) {
//
//        let yOffset = max(0, (size.height - zoomImage.frame.height) / 2)
//        imgTopCons.constant = yOffset
//        imgBootomCons.constant = yOffset
//
//        let xOffset = max(0, (size.width - zoomImage.frame.width) / 2 )
//        imgLeadingCons.constant = xOffset
//        imgTrailingCons.constant = xOffset
//
//        view.layoutIfNeeded()
//    }
//
//    override func viewWillLayoutSubviews() {
//         super.viewWillLayoutSubviews()
//        updateMinZoomScaleForSize(view.bounds.size)
//    }
//
//    func viewForZooming(in imageScroll: UIScrollView ) -> UIView? {
//        return zoomImage
//    }
    
    func setupScrolleView() {
        imageScroll.delegate = self
    }
    
}

extension ViewController : UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return zoomImage
    }
}
