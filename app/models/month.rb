class Month < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1月' },
    { id: 3, name: '2月' },
    { id: 4, name: '3月' },
    { id: 5, name: '4月' },
    { id: 6, name: '5月' },
    { id: 7, name: '6月' },
    { id: 8, name: '7月' },
    { id: 9, name: '8月' },
    { id: 10, name: '9月' },
    { id: 11, name: '10月' },
    { id: 12, name: '11月' },
    { id: 13, name: '12月' }
  ]
 
   include ActiveHash::Associations
   has_many :household_accounts
 
  end