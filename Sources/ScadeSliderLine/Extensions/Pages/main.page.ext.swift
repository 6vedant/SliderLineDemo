import ScadeKit

extension MainPageAdapter {
  var label1: SCDWidgetsLabel {
    return self.page?.getWidgetByName("label1") as! SCDWidgetsLabel
  }

  var label2: SCDWidgetsLabel {
    return self.page?.getWidgetByName("label2") as! SCDWidgetsLabel
  }

  var label_current_amount: SCDWidgetsLabel {
    return self.page?.getWidgetByName("label_current_amount") as! SCDWidgetsLabel
  }

  var sliderLine: SCDWidgetsSliderLine {
    return self.page?.getWidgetByName("sliderLine") as! SCDWidgetsSliderLine
  }

  var label: SCDWidgetsLabel {
    return self.page?.getWidgetByName("label") as! SCDWidgetsLabel
  }

  var label_return: SCDWidgetsLabel {
    return self.page?.getWidgetByName("label_return") as! SCDWidgetsLabel
  }
}