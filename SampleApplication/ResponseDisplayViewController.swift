//
//  ResponseDisplayViewController.swift
//  SampleApplication
//
//  Created by Sandeep on 29/01/21.
//

import UIKit

class ResponseDisplayViewController: UIViewController {

    @IBOutlet weak var nameOfThePerson: UILabel!
    @IBOutlet weak var userId: UILabel!
    
    @IBOutlet weak var titleOrg: UILabel!
    @IBOutlet weak var orgName: UILabel!
    
    @IBOutlet weak var orgEmailID: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callApi()

        // Do any additional setup after loading the view.
    }
    
    func callApi()
    {
        let loading = LoadingOverlay()
        loading.showOverlay(view: self.view)
        let serviceRequestUrl =  "https://pipeshoot.pipedrive.com/v1/deals/1?api_token=c285a7b684f10c76313c0417a3be2a2c9d6cd5ba"
        ServerRequest.postcall(url: serviceRequestUrl, httpMethod: .get, params: nil) { (response, error) in
            loading.hideOverlayView()
            if error != nil {
            }else {
                let data = ResponseModelObj(JSONString: response!)
                self.nameOfThePerson.text = "Name :  " + (data?.data?.person_name)!
                self.orgEmailID.text = "Email     :  " + (data?.data?.cc_email)!
                self.orgName.text = "Org Name     :  " + (data?.data?.org_name)!
                self.titleOrg.text = "Title       :  " + (data?.data?.title)!
                self.userId.text = "UserID        :   " + "\(data?.data?.user_id ?? 0)"
                
            }
        }
    }
   
    public class LoadingOverlay
    {
        var overlayView: UIView!
        var activityIndiacator: UIActivityIndicatorView!
        var mainView: UIView!
        class var shared: LoadingOverlay {
            struct Static {
                static let instance : LoadingOverlay = LoadingOverlay()
            }
            return Static.instance
        }
        init() {
            DispatchQueue.main.async {
                self.overlayView = UIView()
                self.mainView = UIView()
                self.mainView.frame = UIScreen.main.bounds
                self.activityIndiacator = UIActivityIndicatorView()
                self.overlayView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
                self.overlayView.backgroundColor = UIColor(white: 0, alpha: 0.7)
                self.overlayView.clipsToBounds = true
                self.overlayView.layer.cornerRadius = 10
                self.overlayView.layer.zPosition = 1
                self.activityIndiacator.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
                self.activityIndiacator.center = CGPoint(x: self.overlayView.bounds.width / 2, y: self.overlayView.bounds.height / 2)
                self.activityIndiacator.style = .large
                self.activityIndiacator.color = .white
                self.overlayView.addSubview(self.activityIndiacator)
                self.mainView.addSubview(self.overlayView)
            }
        }
        public func showOverlay(view: UIView) {
            DispatchQueue.main.async {
                self.overlayView.center = view.center
                self.mainView.backgroundColor = UIColor.black.withAlphaComponent(0.2)
                view.addSubview(self.mainView)
                self.activityIndiacator.startAnimating()
            }
        }
        public func hideOverlayView() {
            DispatchQueue.main.async {
                self.activityIndiacator.stopAnimating()
                self.overlayView.removeFromSuperview()
                self.mainView.removeFromSuperview()
            }
        }
    }

}
