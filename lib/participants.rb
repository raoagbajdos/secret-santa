require 'pg'

class Participants

  def self.all
      ENV[‘ENVIRONMENT’] == ‘test’
      connection = PG.connect(dbname: ‘Secret_Santa’)
      result = connection.exec(“SELECT * FROM santa;“)
      result.map { |participants| santa=([‘id’] [‘name’])}
    end

    @hash_santa = [
        {1 => "Sujesh"},
        {2 => "Simone"},
        {3 => "Sonia"},
        {4 => "Subhan"},
        {5 => "Siba"},
        {6 => "Lucy"},
        {7 => "David"},
        {8 => "Eddie"},
        {9 => "Richard"},
        {10 => "Elliot}"
      ]
        connection.exec("INSERT INTO santa(name, email) VALUES('#{name}', '#{email}') RETURNING id, name, email")
end
