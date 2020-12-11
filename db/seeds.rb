# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Family.create ([
    {
        name: "smith",
        email: "smiths@smith.com",
        phone: "347-599-1000"
    },

    {
        name: "watson",
        email: "watts@lit.com",
        phone: "917-599-1000"
    },

    {
        name: "clark",
        email: "clark@shoes.com",
        phone: "718-599-1000"
    },
])

FreeTrial.create ([
    {
        service: "amazon",
        link: "https://www.amazon.com/",
        username: "smithfam",
        password: "smithAmazon3",
        expiration: Time.now,
        active: false,
        family_id: 1
    },

    {
        service: "hboMax",
        link: "https://www.hbo.com/",
        username: "smithfam",
        password: "smithHBO3",
        expiration: "2020-11-11",
        active: false,
        family_id: 1
    },

    {
        service: "hulu",
        link: "https://www.hulu.com/",
        username: "smithfam",
        password: "smithHulu3",
        expiration: "2021-2-11",
        active: true,
        family_id: 1
    },

    {
        service: "amazon",
        link: "https://www.amazon.com/",
        username: "wattsfam",
        password: "wattsAmazon3",
        expiration: "2021-1-11",
        active: true,
        family_id: 2
    },

    {
        service: "hbo",
        link: "https://www.hbo.com/",
        username: "watsonfam",
        password: "watsonHbo55",
        expiration: "2020-10-11",
        active: false,
        family_id: 2
    },

    {
        service: "netflix",
        link: "https://www.netflix.com/",
        username: "watsonflix",
        password: "n3tson",
        expiration: "2020-10-11",
        active: false,
        family_id: 2
    },

    {
        service: "amazon",
        link: "https://www.amazon.com/",
        username: "clarkzoo",
        password: "clarkzoo44",
        expiration: "2021-1-1",
        active: true,
        family_id: 3
    },

    {
        service: "netflix",
        link: "https://www.netflix.com/",
        username: "clarkzoot",
        password: "flixClark",
        expiration: "2020-10-11",
        active: false,
        family_id: 3
    },

    {
        service: "target",
        link: "https://www.target.com/",
        username: "clarkzoo",
        password: "clarkontarget",
        expiration: "2021-02-14",
        active: true,
        family_id: 3
    }
])
