require 'json'

class JsonEmployees
  def initialize(json_file)
    @json_file = File.open(json_file, "w")
  end

  def write(record)
    @json_file.write(JSON.generate(record))
  end

  def close
    @json_file.close
  end
end
