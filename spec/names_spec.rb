
describe '.all' do
  it 'returns a list of names' do
    connection = PG.connect(dbname: 'Secret_Santa')

    # Add the test data
    connection.exec("INSERT INTO bookmarks (name) VALUES ('Sujesh');")
    connection.exec("INSERT INTO bookmarks (name) VALUES('Simone');")
    connection.exec("INSERT INTO bookmarks (name) VALUES('Sonia');")

    people = People.all

    expect(people).to include('Sujesh')
    expect(people).to include('Simone')
    expect(people).to include('Sonia')
  end
end
