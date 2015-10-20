1000.times do |i|
  Shop.create!(
      name: "支店#{i}",
      zip_code: '111-1111',
      address: 'い県ろ市は町',
      phone: '03-xxxx-xxxx'
  )
end
