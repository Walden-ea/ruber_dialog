# frozen_string_literal: true

require "test_helper"

class DialogRunnerTest < Minitest::Test
    LOTR_DIALOG 

    include RuberDialog
    def test_dialog_runner_can_be_created
        dialogRunner = DialogRunner

        assert_equal false, dialogRunner.nil?
    end 

    def test_dialog_runner_can_be_created_from_dialog
        dialogRunner = DialogRunner.new(Object.new)

        assert_equal false, dialogRunner.nil?
    end


    # def test_dialog_runner_runs

    #     dialog_runner= DialogRunner

    # end
end