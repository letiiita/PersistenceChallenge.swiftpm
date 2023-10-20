import SwiftUI

struct RetrieveView: View {
    @State var number2: String = "Not Loaded Yet"
    @State var url2: URL = URL(string: "https://www.apple.com")!
    @State var array: [Double] = []
    
    @State var name = ""
    @State var age = ""
    @State var phoneNumber = ""

    
    //MARK: MVP - Part III
    @AppStorage("number1") var number1: Int = 0
    
    
    
    
    //MARK: Stretch #1 - Part III
    @AppStorage("url1") var url1 = URL(string: "https://www.apple.com")!

    
    
    
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
            let retrievedNumber2 = UserDefaults.standard.integer(forKey: "number2")



            
            //MARK: Stretch #1 - Part IV
            let retrievedURL2 = UserDefaults.standard.url(forKey: "url2") ?? URL(string: "https://www.apple.com")!
            
            
            
            
            //MARK: Stretch #2 - Part II
            if let savedDoubleArray = UserDefaults.standard.array(forKey: "savedDoubleArray") as? [Double]{
                
            }
            
            
            
            
            //MARK: Stretch #3 - Part II
            if let data = UserDefaults.standard.data(forKey: "contactKey") {
                let decoder = JSONDecoder()
                if let decodedContact = try? decoder.decode(Contact.self, from: data) {
                    name = decodedContact.name
                    age = String(decodedContact.age)
                    phoneNumber = decodedContact.phoneNumber
                }
            }
            
            
            
            
        })
    }
}

