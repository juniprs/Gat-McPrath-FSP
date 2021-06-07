User.destroy_all
Product.destroy_all

demo = User.create!(email: 'demo@user.com', password: 'testing')

products = Product.create!([
    {
        'name': 'BLUSH',
        'description': 'very pink',
        'price': 4,
        'colour': 'Pinkest'
    },
    {
        'name': 'EYELINER',
        'description': 'very black',
        'price': 6,
        'colour': 'Black'
    },
    {
        'name': 'MASCARA',
        'description': 'very very black',
        'price': 9,
        'colour': 'Blackest'
    },
    {
        'name': 'BRONZER',
        'description': 'very tan',
        'price': 10,
        'colour': 'Tan'
    },
    {
        'name': 'BROW GEL',
        'description': 'very clear',
        'price': 4,
        'colour': 'Super Clear'
    },
    {
        'name': 'LIPSTICK',
        'description': 'very dark',
        'price': 13,
        'colour': 'Purple'
    },
    {
        'name': 'BLUSH2',
        'description': 'very pink',
        'price': 4,
        'colour': 'Pink'
    },
    {
        'name': 'EYELINER2',
        'description': 'very black',
        'price': 6,
        'colour': 'Pitch'
    },
    {
        'name': 'MASCARA2',
        'description': 'very very black',
        'price': 9,
        'colour': 'Void'
    },
    {
        'name': 'BRONZER2',
        'description': 'very tan',
        'price': 10,
        'colour': 'Honey'
    },
    {
        'name': 'BROW GEL2',
        'description': 'very clear',
        'price': 4,
        'colour': 'Crystal'
    },
    {
        'name': 'LIPSTICK2',
        'description': 'very dark',
        'price': 13,
        'colour': 'Blood Red'
    }
])

# eye_photo = "/Users/xj9/Desktop/eye.jpg"
eye_photo = "https://gat-mcprath-dev.s3-us-west-1.amazonaws.com/1N4CjEUhKcE6eK1qnCjHBcnR"

Product.all.each do |product|
    product.photo.attach(io: File.open(eye_photo), filename: "eye.jpg")
    product.save!
end