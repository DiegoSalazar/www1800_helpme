class AddRecognizedSpeechFieldToCall < ActiveRecord::Migration
  def change
    add_column :calls, :recognized_speech, :text
  end
end
