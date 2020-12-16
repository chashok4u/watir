module Common
  def Common.get_clh_exp term
    YAML.load_file("#{TEST_DATA_DIR}/clh_test_data.yml")["clh terms"][term]["clh term"]
  end
end