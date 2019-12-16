
describe '.all' do
  it 'returns a list of names' do
    connection = PG.connect(dbname: 'Secret_Santa')

    # Add the test data
    connection.exec("INSERT INTO bookmarks (name) VALUES ('Sujesh');")
    connection.exec("INSERT INTO bookmarks (name) VALUES('Simone');")
    connection.exec("INSERT INTO bookmarks (name) VALUES('Sonia');")

    participant = Participants.all

    expect(participant).to include('Sujesh')
    expect(participant).to include('Simone')
    expect(participant).to include('Sonia')
  end
end
