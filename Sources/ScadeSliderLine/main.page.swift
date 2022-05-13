import ScadeExtensions
import ScadeKit

class MainPageAdapter: SCDLatticePageAdapter {

  // page adapter initialization
  override func load(_ path: String) {
    super.load(path)

    self.sliderLine.onSlide.append(SCDWidgetsSliderLineEventHandler { ev in
      print(ev!.newValue, ev!.oldValue)

      var curr_rate = Int(ev!.newValue)
      var invested_amt = 15000

      let current_amount: Int = invested_amt + invested_amt * curr_rate / 100

      let formattedAmount: String = String(current_amount) + "$"
      //  var old_val = String(ev!.oldValue)

      self.label_return.text = "Rate of Returns:  " + String(curr_rate) + "%"
      self.label_current_amount.text = formattedAmount

    })

  }
}
