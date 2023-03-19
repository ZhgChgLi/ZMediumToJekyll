class Main
    def run()
        files = Dir['_posts/zmediumtomarkdown/*.md']
        files.each do |file|
            
            lines = File.readlines(file)
            newLines = []

            lines.each do |line|
                #if line.include? "converted from Medium by [ZMediumToMarkdown]"
                #    break
                #end
                line = line.gsub(/\[\!.*\((?:https:\/\/(?:www)?\.youtube\.com\/watch\?v=)(\w+)\)(?:{:target=\"_blank\"})?/, '{% include embed/{Platform}.html id=\'{\1}\' %}')
                newLines.append(line)
            end

            File.open(file, 'w') { |f| f.write(newLines.join) }

            puts "#{file} Optimze Done!"
        end

        puts "Optimze Markdown Success!"
    end
end

main = Main.new()
main.run()
