//
//  MainViewController.swift
//  COVID19
//
//  Created by Dennis Zubkoff on 05.04.2020.
//  Copyright © 2020 Denis Zubkov. All rights reserved.
//

import UIKit
import Alamofire

class MainViewController: UIViewController {
    
    let gs = GlobalSettings()
    
    private var myLabel: UILabel = {
       let label = UILabel(frame: CGRect(x: 24, y: 0, width: 54, height: 19))
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.631372549, green: 0.6470588235, blue: 0.662745098, alpha: 1)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myLabel)
        myLabel.heightAnchor.constraint(equalToConstant: 40)
        myLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        // myLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        
        
        
        let urlComponents = gs.getUrlComponents(route: "All")
        guard let url = urlComponents.url else { return }
        AF.request(url).responseData { (dataResponse) in
            if let error = dataResponse.error {
                print("Error: \(error.localizedDescription)")
                return
            }
            guard let data = dataResponse.data else { return }
            let decoder = JSONDecoder()
            do {
                let allCovid = try decoder.decode(CovidElement.self, from: data)
                print(allCovid)
                self.myLabel.text = "Всего заражено: \(allCovid.cases ?? 0)"
            } catch let jsonError {
                print("Error: \(jsonError)")
            }
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
