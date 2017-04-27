include RSpec::Matchers

module PageDataValidator

  def validate (section, yml_res_data, strip_data)
    section_data = yml_res_data[section]
    unless section_data.nil?
      section_data.each do |element_id, expected_data|
        if expected_data == "UI_COMPONENT"
          log " element ID: [#{element_id}]"
          expect(self.send(element_id)).to be_visible
        else
          screen_data = self.send(element_id)
          log " element ID: [#{element_id}]"
          log "   expected: [#{expected_data}]"
          log "        got: [#{screen_data}]"
          expect(screen_data).to eq(expected_data)
        end
      end
    end
  end

  def validate_with_strip (section, yml_res_data, strip_data)
    section_data = yml_res_data[section]
    unless section_data.nil?
      section_data.each do |element_id, expected_data|
        if expected_data == "UI_COMPONENT"
          log " element ID: [#{element_id}]"
          expect(self.send(element_id)).to be_visible
        else
          screen_data = self.send(element_id)
          if element_id.chop == "train_info_"
            screen_data = screen_data.gsub(strip_data, "")
          end
          log " element ID: [#{element_id}]"
          log "   expected: [#{expected_data}]"
          log "        got: [#{screen_data}]"
          expect(screen_data).to eq(expected_data)
        end
      end
    end
  end

end
