import SwiftUI

struct RetrieveView: View {
    @State var number2: String = "Not Loaded Yet"
    @State var url2: URL = URL(string: "https://www.apple.com")!
    @State var array: [Double] = []
    
    @State var name = ""
    @State var age = ""
    @State var phoneNumber = ""

    
    //MARK: MVP - Part III
    @AppStorage("Number1") var number1: Int = 0
    
    
    
    //MARK: Stretch #1 - Part III
    @AppStorage ("Url1") var url1: URL = URL (string:"https://www.apple.com")!
    
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Group {
                TitleView(name: "MVP")
                HStack {
                    Text("Number1: ")
                    //TODO: MVP
                    Text("\(number1)")
                }
                HStack {
                    Text("Number2: ")
                    Text("\(number2)")
                }
            }
            
            Group {
                TitleView(name: "Stretch #1")
                //TODO: Stretch #1
                  Link("Load URL #1", destination: url1)
                  Link("Load URL #2", destination: url2)
            }
           
            Group {
                TitleView(name: "Stretch #2")
                ForEach(array, id: \.self) { value in
                    Text("\(value) ")
                }  
            }
            
            Group {
                TitleView(name: "Stretch #3")
                HStack {
                    Text("Name: ")
                    Text(name)
                }
                HStack {
                    Text("Age: ")
                    Text(age)
                }
                HStack {
                    Text("Phone Number: ")
                    Text(phoneNumber)
                }  
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .font(.title)
        .onAppear(perform: {
            //MARK: MVP - Part IV
//            if let storedNumber2 = UserDefaults.standard.string(forKey: "number2"){
//                number2 = storedNumber2
//            }
            
            number2 = "\(UserDefaults.standard.integer(forKey:"Number2"))"
            //MARK: Stretch #1 - Part IV
            guard let unwrappedURL = UserDefaults.standard.url(forKey: "Url2") else { return }
            url2 = unwrappedURL
            
            
            
            //MARK: Stretch #2 - Part II
            
            //array = UserDefaults.standard.array(forKey:"myArray") as! [Double]
            
            
            
            //MARK: Stretch #3 - Part II
            
            
            
            
            
        })
    }
}

