
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
