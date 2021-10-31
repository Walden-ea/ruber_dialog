# frozen_string_literal: true

require_relative "../test_helper"

class DialogRunnerTest < Minitest::Test
  include RuberDialog
  CHAR_1 = Minitest::Mock.new
  CHAR_1.expect :name, "Gandalf"

  CHAR_2 = Minitest::Mock.new
  CHAR_2.expect :name, "Frodo"

  MOCK_LINE_1 = Minitest::Mock.new
  MOCK_LINE_1.expect :char_name, "Gandalf"
  MOCK_LINE_1.expect :phrase, "Good morning!"

  MOCK_RESPONSE_1 = Minitest::Mock.new
  MOCK_RESPONSE_1.expect :phrase, "Yes, I will take it"
  MOCK_RESPONSE_1.expect :next_node, "To Mordor"

  MOCK_RESPONSE_2 = Minitest::Mock.new
  MOCK_RESPONSE_2.expect :phrase, "No, I won't take it"
  MOCK_RESPONSE_2.expect :next_node, :end

  MOCK_NODE_1 = Minitest::Mock.new
  MOCK_NODE_1.expect :name, "Greetings"
  MOCK_NODE_1.expect :lines, []
  MOCK_NODE_1.expect :responses, []

  MOCK_DIALOG = Minitest::Mock.new
  MOCK_DIALOG.expect :starting_node, nil
  MOCK_DIALOG.expect :nodes, nil
  MOCK_DIALOG.expect :characters, [CHAR_1, CHAR_2]

  def test_dialog_runner_created
    dialog_runner = DialogRunner.new(MOCK_DIALOG)
    assert_equal false, dialog_runner.nil?
  end

  # def test_runner_runs_one_node
  #   dialog_runner = DialogRunner.new(MOCK_DIALOG)
  # end
end
