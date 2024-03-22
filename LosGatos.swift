import SwiftUI

struct LGView: View {
    @State private var serverpick: Color = .red
    @State private var takeoutpick: Color = .red
    @State private var runnerpick: Color = .red
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
                        Text("Los Gatos Tip Out")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        VStack(){
                            Text("Select Your Position.")
                                .bold()
                                .font(.headline)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding(.top, 30.0)
                            HStack {
                                Spacer()
                                NavigationLink(destination: TOView(), label: { Text("Takeout")
                                        .bold()
                                        .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal, 10)
                                    .background(Rectangle()
                                        .foregroundColor(.red)
                                        .cornerRadius(15))
                                })
                                Spacer()
                                NavigationLink(destination: SView(), label: { Text("Server")
                                    .bold()
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal, 10)
                                    .background(Rectangle()
                                        .foregroundColor(.red)
                                    .cornerRadius(15))
                                })
                                Spacer()
                            }.padding(.vertical, 25.0)
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
                }
                .padding(.bottom, 200.0)
        }
    }
}

struct LGView_Previews: PreviewProvider {
    static var previews: some View {
        LGView()
    }
}
