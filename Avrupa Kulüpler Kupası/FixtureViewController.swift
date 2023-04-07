//
//  FixtureViewController.swift
//  Avrupa Kulüpler Kupası
//
//  Created by Melih Şişkular on 6.04.2023.
//

import UIKit

class FixtureViewController: UIViewController {
    
    //MARK: Tanımlar
    
    ///Yaptığıım Tasarımın yerini alacak tüm ekranı kaplayan image
    var imageScreen = UIImageView()
    
    
    ///Grupları rastegele bir şekilde belirlemek için takım isimlerinin olduğu bir diziye ihtyacım oldu
    var teams = ["Arsenal","Tottenham","Manchester City","Manchester United","Liverpool","Chelsea","Barcelona","Real Madrid","Atletico Madrid","PSG","Inter","Milan","Juventus","Napoli","Borussia Dortmund","Bayern München"]
    
    ///GaneViewController'dan bize gelecek takımımız
    var myTeam = ""
    
    ///Seçtiğimiz Takım Hangi grup içinde olduğunu öğrencez
    var myGroup = ""
    
    ///İlk önce Grubumuzdaki Maçların fikstürü belli olacak
    var match1 = ""
    var match2 = ""
    var match3 = ""
    

    ///16 tane takımdan 4'erli 4 tane grup olcak
    ///Bu gruplar tamamen random bir şekilde oluşturulcak
    var groupA = [String]()
    var groupB = [String]()
    var groupC = [String]()
    var groupD = [String]()
    
    
    ///Bizim içinde olduğumuz Grup ekranda gözükecek
    ///Bu yüzden gruptaki takımların isimleri, puanları, averajları göstermemiz gerek
    ///onun için laeller açıyorum
    var groupNameLabel = UILabel()
    var groupFirstPosition = UILabel()
    var groupSecondPosition = UILabel()
    var groupThirdPosition = UILabel()
    var groupFourthPosition = UILabel()
    var groupFirstPoint = UILabel()
    var groupSecondPoint = UILabel()
    var groupThirdPoint = UILabel()
    var groupFourthPoint = UILabel()
    var groupFirstAverage = UILabel()
    var groupSecondAverage = UILabel()
    var groupThirdAverage = UILabel()
    var groupFourthAverage = UILabel()
    
    ///Tanımladığımız match1,2,3 değerleri göstercek label
    var matchLabel1 = UILabel()
    var matchLabel2 = UILabel()
    var matchLabel3 = UILabel()
    

    
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.backButtonTitle = "Taktiklere Dön"
        
        let width = view.frame.size.width
        let height = view.frame.size.height
       
        imageScreen.frame = CGRect(x: 0, y: 0, width: width, height: height)
        imageScreen.image = UIImage(named: "iPhone")
        view.addSubview(imageScreen)
        imageScreen.contentMode = .scaleAspectFit
        
        
        groupFirstPosition.frame = CGRect(x: width * 0.05, y: height * 0.15, width: width * 0.65, height: height * 0.06)
        
       
        groupSecondPosition.frame = CGRect(x: width * 0.05, y: height * 0.22, width: width * 0.65, height: height * 0.06)
        

        groupThirdPosition.frame = CGRect(x: width * 0.05, y: height * 0.29, width: width * 0.65, height: height * 0.06)
        
       
        groupFourthPosition.frame = CGRect(x: width * 0.05, y: height * 0.365, width: width * 0.65, height: height * 0.06)
        
        groupFirstPosition.text = ""
        groupSecondPosition.text = ""
        groupThirdPosition.text = ""
        groupFourthPosition.text = ""
        
       
        
        groupFirstPosition.textAlignment = .center
        groupSecondPosition.textAlignment = .center
        groupThirdPosition.textAlignment = .center
        groupFourthPosition.textAlignment = .center
        
        groupFirstPosition.font = UIFont(name: "Kefa", size: 19)
        groupSecondPosition.font = UIFont(name: "Kefa", size: 19)
        groupThirdPosition.font = UIFont(name: "Kefa", size: 19)
        groupFourthPosition.font = UIFont(name: "Kefa", size: 19)
        
   
        groupFirstPoint.frame = CGRect(x: width * 0.72, y: height * 0.15, width: width * 0.09, height: height * 0.06)
        groupFirstPoint.text = "0"
        groupFirstPoint.textAlignment = .center
        
      
        groupSecondPoint.frame = CGRect(x: width * 0.72, y: height * 0.22, width: width * 0.09, height: height * 0.06)
        groupSecondPoint.text = "0"
        groupSecondPoint.textAlignment = .center
        
        
 
        groupThirdPoint.frame = CGRect(x: width * 0.72, y: height * 0.29, width: width * 0.09, height: height * 0.06)
        groupThirdPoint.text = "0"
        groupThirdPoint.textAlignment = .center
       
        
   
        groupFourthPoint.frame = CGRect(x: width * 0.72, y: height * 0.365, width: width * 0.09, height: height * 0.06)
        groupFourthPoint.text = "0"
        groupFourthPoint.textAlignment = .center
        
        
        
        
        groupFirstAverage.frame = CGRect(x: width * 0.845, y: height * 0.15, width: width * 0.09, height: height * 0.06)
        groupFirstAverage.text = "0"
        groupFirstAverage.textAlignment = .center
     
        
      
        groupSecondAverage.frame = CGRect(x: width * 0.844, y: height * 0.22, width: width * 0.09, height: height * 0.06)
        groupSecondAverage.text = "0"
        groupSecondAverage.textAlignment = .center
       
        
        
        groupThirdAverage.frame = CGRect(x: width * 0.845, y: height * 0.29, width: width * 0.09, height: height * 0.06)
        groupThirdAverage.text = "0"
        groupThirdAverage.textAlignment = .center
      
        
  
        groupFourthAverage.frame = CGRect(x: width * 0.845, y: height * 0.365, width: width * 0.09, height: height * 0.06)
        groupFourthAverage.text = "0"
        groupFourthAverage.textAlignment = .center
     
        
        matchLabel1.frame = CGRect(x: width * 0.05, y: height * 0.502, width: width * 0.7, height: height * 0.052)
      
        
        matchLabel2.frame = CGRect(x: width * 0.05, y: height * 0.619, width: width * 0.7, height: height * 0.052)
       
        
        matchLabel3.frame = CGRect(x: width * 0.05, y: height * 0.737, width: width * 0.7, height: height * 0.052)
      
        groupFirstAverage.font = UIFont(name: "Futura", size: 19)
        groupSecondAverage.font = UIFont(name: "Futura", size: 19)
        groupThirdAverage.font = UIFont(name: "Futura", size: 19)
        groupFourthAverage.font = UIFont(name: "Futura", size: 19)
        
        groupFirstPoint.font = UIFont(name: "Futura", size: 19)
        groupSecondPoint.font = UIFont(name: "Futura", size: 19)
        groupThirdPoint.font = UIFont(name: "Futura", size: 19)
        groupFourthPoint.font = UIFont(name: "Futura", size: 19)
      
        matchLabel1.textAlignment = .center
        matchLabel2.textAlignment = .center
        matchLabel3.textAlignment = .center
        
        matchLabel1.font = UIFont(name: "Kefa", size: 14)
        matchLabel2.font = UIFont(name: "Kefa", size: 14)
        matchLabel3.font = UIFont(name: "Kefa", size: 14)
        
        
        groupNameLabel.frame = CGRect(x: width * 0.05, y: height * 0.09, width: width * 0.65, height: height * 0.07)
        groupNameLabel.textAlignment = .left
        groupNameLabel.font = UIFont(name: "Impact", size: 22)
        
        view.addSubview(groupNameLabel)
        view.addSubview(groupFirstPosition)
        view.addSubview(groupSecondPosition)
        view.addSubview(groupThirdPosition)
        view.addSubview(groupFourthPosition)
        view.addSubview(groupFirstPoint)
        view.addSubview(groupSecondPoint)
        view.addSubview(groupThirdPoint)
        view.addSubview(groupFourthPoint)
        view.addSubview(groupFirstAverage)
        view.addSubview(groupSecondAverage)
        view.addSubview(groupThirdAverage)
        view.addSubview(groupFourthAverage)
        view.addSubview(matchLabel1)
        view.addSubview(matchLabel2)
        view.addSubview(matchLabel3)
        
        
       
        groupFirstPosition.text = myTeam
        randomGroups()
        whatIsYourGroup()
        fixture()
        
        
 
        
        
    }
    
    
    
    //MARK: FUNC
    
    func randomGroups() {
        
        //Rastgele gruplara Ayrılacak!
        teams.shuffle()
        for i in 0...teams.count - 1  {
            
            let randomteam = teams.last!
            teams.remove(at: teams.count - 1)
            if groupA.count < 4 {
                groupA.append(randomteam)
            }else {
                if groupB.count < 4 {
                    groupB.append(randomteam)
                }else {
                    if groupC.count < 4 {
                        groupC.append(randomteam)
                    }else {
                        groupD.append(randomteam)
                    }
                }
            }
        }
    }
    
    func whatIsYourGroup() {
        //Takımımız Hangi Grupta onu bulucak!
        
        for i in groupA {
            if i == myTeam {
                myGroup = "A Grubu"
            }
        }
        
        for i in groupB {
            if i == myTeam {
                myGroup = "B Grubu"
            }
        }
        
        for i in groupC {
            if i == myTeam {
                myGroup = "C Grubu"
            }
        }
        
        for i in groupD {
            if i == myTeam {
                myGroup = "D Grubu"
            }
        }
      
        groupNameLabel.text = myGroup
    }
    
    
    func fixture() {
        //Hangi grupta isek o gruptakilerle fikstür belirleyen fonksiyon
        
        if myGroup == "A Grubu" {
            if groupA.contains(myTeam) {
               let index = groupA.firstIndex(of: myTeam)
               groupA.remove(at: index!)
               print(groupA)
                groupPositionOrderA()
                var team1 = groupA.last!
                groupA.removeLast()
                var team2 = groupA.last!
                groupA.removeLast()
                var team3 = groupA.last!
                groupA.removeLast()
                
                match1 = "\(myTeam) Vs \(team1)"
                match2 = "\(myTeam) Vs \(team2)"
                match3 = "\(myTeam) Vs \(team3)"
                
                print(match1)
                print(match2)
                print(match3)
                
                matchLabel1.text = match1
                matchLabel2.text = match2
                matchLabel3.text = match3
                
                
                
                
            }
            
        }else if myGroup == "B Grubu" {
            if groupB.contains(myTeam) {
               let index = groupB.firstIndex(of: myTeam)
               groupB.remove(at: index!)
               print(groupB)
                groupPositionOrderB()
                var team1 = groupB.last!
                groupB.removeLast()
                var team2 = groupB.last!
                groupB.removeLast()
                var team3 = groupB.last!
                groupB.removeLast()
                
                match1 = "\(myTeam) Vs \(team1)"
                match2 = "\(myTeam) Vs \(team2)"
                match3 = "\(myTeam) Vs \(team3)"
                
                matchLabel1.text = match1
                matchLabel2.text = match2
                matchLabel3.text = match3
                
                
                print(match1)
                print(match2)
                print(match3)
                
                
            }
            
        }else if myGroup == "C Grubu" {
            if groupC.contains(myTeam) {
               let index = groupC.firstIndex(of: myTeam)
               groupC.remove(at: index!)
               print(groupC)
                groupPositionOrderC()
                var team1 = groupC.last!
                groupC.removeLast()
                var team2 = groupC.last!
                groupC.removeLast()
                var team3 = groupC.last!
                groupC.removeLast()
                
                match1 = "\(myTeam) Vs \(team1)"
                match2 = "\(myTeam) Vs \(team2)"
                match3 = "\(myTeam) Vs \(team3)"
                
        
                
                print(match1)
                print(match2)
                print(match3)
                
                matchLabel1.text = match1
                matchLabel2.text = match2
                matchLabel3.text = match3
                
                
            }
            
        }else if myGroup == "D Grubu" {
            if groupD.contains(myTeam) {
               let index = groupD.firstIndex(of: myTeam)
               groupD.remove(at: index!)
               print(groupD)
                groupPositionOrderD()
                var team1 = groupD.last!
                groupD.removeLast()
                var team2 = groupD.last!
                groupD.removeLast()
                var team3 = groupD.last!
                groupD.removeLast()
                
                match1 = "\(myTeam) Vs \(team1)"
                match2 = "\(myTeam) Vs \(team2)"
                match3 = "\(myTeam) Vs \(team3)"
                
                print(match1)
                print(match2)
                print(match3)
                
                matchLabel1.text = match1
                matchLabel2.text = match2
                matchLabel3.text = match3
                
            }
        }
        
        
        
    }
    
    
    func groupPositionOrderA() {
        if myGroup == "A Grubu" {
            for i in groupA {
                
               if groupSecondPosition.text == "" {
                    groupSecondPosition.text = String(i)
                }else if groupThirdPosition.text == "" {
                    groupThirdPosition.text = String(i)
                }else if groupFourthPosition.text == "" {
                    groupFourthPosition.text = String(i)
                }
            }
        }
    }
    
    func groupPositionOrderB() {
        if myGroup == "B Grubu" {
            for i in groupB {
                
                if groupSecondPosition.text == "" {
                    groupSecondPosition.text = String(i)
                }else if groupThirdPosition.text == "" {
                    groupThirdPosition.text = String(i)
                }else if groupFourthPosition.text == "" {
                    groupFourthPosition.text = String(i)
                }
            }
        }
    }
    
    func groupPositionOrderC() {
        if myGroup == "C Grubu" {
            for i in groupC {
                
                if groupSecondPosition.text == "" {
                    groupSecondPosition.text = String(i)
                }else if groupThirdPosition.text == "" {
                    groupThirdPosition.text = String(i)
                }else if groupFourthPosition.text == "" {
                    groupFourthPosition.text = String(i)
                }
            }
        }
    }
    
    func groupPositionOrderD() {
        if myGroup == "D Grubu" {
            for i in groupD {
                
                if groupSecondPosition.text == "" {
                    groupSecondPosition.text = String(i)
                }else if groupThirdPosition.text == "" {
                    groupThirdPosition.text = String(i)
                }else if groupFourthPosition.text == "" {
                    groupFourthPosition.text = String(i)
                }
                
            }
        }
    }
    
    
    func makeAlert(title: String,message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let button = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.cancel)
        alert.addAction(button)
        self.present(alert, animated: true)
    }
    
    
    
}
