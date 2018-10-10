require 'aws-sdk-translate'

class Translation
  def self.run
    puts "Input your text to be translated"
    text = gets.chomp

    puts "Input the source language code"
    langFrom = gets.chomp

    puts "Informe the target lanaguage code"
    langTo = gets.chomp

    result = translate(text, langFrom, langTo)
    writeFile(text, langFrom, langTo, result)
  end

  private

  def self.translate(text, langFrom, langTo)
    client = Aws::Translate::Client.new
    begin
      response = client.translate_text({
        text: text,
        source_language_code: langFrom,
        target_language_code: langTo,
      })
      response.translated_text
    rescue Aws::Translate::Errors::ServiceError => error
      puts "There is an error: #{error}"
    end
  end

  def self.writeFile(text, langFrom, langTo, result)
    File.open(Time.now.strftime('%d-%m-%y_%H:%M') + '.txt', 'a') do |line|
      line.puts ''
      line.puts "#{text} ; #{langFrom}"
      line.puts "#{result} ; #{langTo}"
      line.puts '---------------------------'
    end
  end
end

Translation.run