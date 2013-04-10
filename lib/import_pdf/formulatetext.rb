class FormulateText < ImportPdf

  def initialize(*args)
    ARGV.empty? ? data = STDIN.read : data = loadFile(*args)
    data_as_array = Array.new
    data.each_line { |line| data_as_array << line }
    data.clear
    bulleted_file = reformulateBullets( data_as_array )
    normalized_file = normalizeSpaces( bulleted_file )
    write_it( normalized_file.join )
  end

  def loadFile(*args)
    @file = ARGV[-1]
    source_file = File::read(@file) if File::exists?(@file) && File::readable?(@file)
  end


  def reformulateBullets( array_of_lines )
    bullets = [ "\u2022" ]
    bullets.each do |bullet|
      array_of_lines.each { |line| line.gsub!( bullet, "*")}
    end
    array_of_lines
  end

  def normalizeSpaces( array_of_lines )
    pattern = /\s{2}/
    array_of_lines.each do |line|
      while line[pattern]
        line.gsub!(pattern, " ")
      end
    end
    array_of_lines
  end

  def write_it( final_content )
    if @file
      File.open(output_file, "w") {|f| f.write( final_content ) }
    else 
      STDOUT.write final_content
    end
  end
end