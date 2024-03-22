import SwiftUI

struct FinalView: View {
    @EnvironmentObject var appInfo: AppInformation
    var body: some View {
            ZStack {
                Color(.red)
                    .ignoresSafeArea()
                VStack() {
                    Spacer()
                    Image("WSpizza")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(radius: 15)
                        .padding(.horizontal, 150.0)
                    VStack(alignment: .center, spacing: 25) {
                        Text("Tip Out Completed")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        VStack(){
                            Text("Net Sales: " + String(Int(appInfo.netSales)))
                                .bold()
                                .font(.headline)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding()
                            Text("Alcohol Sales: " + String(Int(appInfo.liqourSales)))
                                .bold()
                                .font(.headline)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding()
                            Text("Food Sales: " + String(Int(appInfo.foodSales)))
                                .bold()
                                .font(.headline)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding()
                            HStack{
                                Text("15% Tip Total: ")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("\(Int(appInfo.netSales*0.15))")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }.padding()
                            HStack{
                                Text("Food Tip Total: ")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("\(Int(appInfo.foodSales*0.15))")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }.padding()
                            HStack{
                                Text("Busser Tip: ")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("\(Int(appInfo.netSales*0.15*appInfo.busserTip))")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }.padding()
                            HStack{
                                Text("Host Tip: ")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("\(Int(appInfo.netSales*0.15*0.05))")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }.padding()
                            HStack{
                                Text("Bartender Tip: ")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("\(Int(appInfo.liqourSales*0.05))")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }.padding()
                            HStack{
                                Text("Runner Tip: ")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("\(Int(appInfo.foodSales*0.08*0.15))")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }.padding()
                        }
                        .padding(.all, 10.0)
                        .background(Rectangle())
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(color: .white, radius: 10)
                        .padding(.all, 10.0)
                    }
                    .padding(.all, 25.0)
                    .background(Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(15)
                        .shadow(radius: 15))
                    .padding(.all, 25.0)
                    Spacer()
                }.offset(x:0, y:-25)
        }
    }
}
struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
