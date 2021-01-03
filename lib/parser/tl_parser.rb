require_relative '../tl/tl_object'

module TLParser
  # Class used to parse .tl files

  # @staticmethod
  def self.parse_file(file_path)
    # This method yields TLObjects from a given .tl file

    File.open(file_path, 'r:utf-8') do |file|
      # Start by assuming that the next found line won't be a function (and will hence be a type)
      is_function = false

      # Read all the lines from the .tl file
      file.each_line do |line|
        line = line.strip()

        # Ensure that the line is not a comment
        if line and not line.start_with?('//')
          # Check whether the line is a type change (types ⋄ functions) or not
          match = line.match('---(\w+)---')
          if match
            following_types = match.group(1)
            is_function = following_types == 'functions'
          else
            yield TLObject.from_tl(line, is_function)
          end
        end
      end
    end
  end
end
