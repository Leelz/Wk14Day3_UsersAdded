Nuser.destroy_all()
Show.delete_all()
Favourite_show.delete_all()

show1 = Show.create({
  title: 'Silicon Valley', 
  series: 4,
  description: "Show about nerds and their start-up trying to make it",
  image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTgwNTUzNzIxM15BMl5BanBnXkFtZTgwMzQ1NTk2ODE@._V1_UX182_CR0,0,182,268_AL_.jpg",
  programmeID: "b013pqnm"
  })

show2 = Show.create({
  title: 'The Wire', 
  series: 4,
  description: "Show about the mean streets of somewhere",
  image: "https://images-na.ssl-images-amazon.com/images/M/MV5BNjc1NzYwODEyMV5BMl5BanBnXkFtZTcwNTcxMzU1MQ@@._V1_SY1000_CR0,0,735,1000_AL_.jpg",
  programmeID: "c014pqnm"
  })

show3 = Show.create({
  title: 'The Thick of It', 
  series: 2,
  description: "Political satire",
  image: "https://images-na.ssl-images-amazon.com/images/M/MV5BNGE4NWViMzItYTE3Zi00NzZjLTk0MDItNTMzMzA5Y2U4MjFiXkEyXkFqcGdeQXVyNTM4OTY2MDU@._V1_.jpg",
  programmeID: "h232sdls"
  })

user1 = Nuser.create!(
 {
  email: 'test1@email.com',
  password: 'password',
  password_confirmation: 'password'
  }
 )

user2 = Nuser.create!(
 {
  email: 'test2@email.com',
  password: 'password',
  password_confirmation: 'password'
  }
 )

Favourite_show.create({user: user1, show: show2})

Favourite_show.create({user: user2, show: show3})
