[
  {
    weight: 100,
    weighed_at: Date.new(2020, 1, 25),
  },
  {
    weight: 200,
    weighed_at: Date.new(2020, 1, 24),
  },
    {
    weight: 300,
    weighed_at: Date.new(2020, 1, 23),
  },
].each do |weighing_params|
  Weighing.create(weighing_params)
end
