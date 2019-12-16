require 'pg'

feature 'Welcome message' do
  scenario 'can run app and takes user to welcome page' do
    visit('/')
      expect(page).to have_content 'Welcome to Secret Santa!!!'
    end
  end

  feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :name, with: 'Sujesh'
      click_button 'Submit'
      expect(page).to have_content 'Sujesh'
    end
  end

  feature 'Viewing names' do
  scenario 'A person can see names' do
    connection = PG.connect(dbname: 'Secret_Santa')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'Sujesh');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'Sonia');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'Simone');")

    visit('/cohort_names')

    expect(page).to have_content "Sujesh"
    expect(page).to have_content "Simone"
    expect(page).to have_content "Sonia"
  end
end
