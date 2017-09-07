require 'csv'

class CsvEmployees
  def initialize(csv_file)
    @csv_file = csv_file
  end

  def each
    csv = CSV.open(@csv_file, headers: true, header_converters: :symbol)
    csv.each do |row|
      yield row.to_hash # The CsvEmployees#each is called with a block. We yield the row in HASH form.
                        # because this is how the transformations expect it.
    end
    csv.close
  end
end
