List<Map<String, dynamic>> itemscart = [];

List<Map<String, dynamic>> itemfav = [];

List<Map<String, dynamic>> itemhome = [
  {
    "name": "Modern Denim Outfit",
    "photo": "images/20.png",
    "price": 120,
    "collection": "Men's Collection",
    "description":
        "A modern denim look designed for everyday comfort and effortless style. Easy to pair with your favorite essentials.",
    "rating": "★★★★★ (24)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Classic Chic Outfit",
    "photo": "images/7.png",
    "price": 85,
    "collection": "Women's Collection",
    "description":
        "A timeless and elegant outfit with a polished look, perfect for everyday wear or a casual outing.",
    "rating": "★★★★☆ (18)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Casual Streetwear",
    "photo": "images/15.png",
    "price": 80,
    "collection": "Men's Collection",
    "description":
        "Relaxed streetwear made for all-day comfort, with an easy style that works for casual days out.",
    "rating": "★★★★☆ (24)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Elegant Evening Look",
    "photo": "images/6.png",
    "price": 100,
    "collection": "Women's Collection",
    "description":
        "A refined evening outfit with a graceful style, made for special occasions and memorable nights.",
    "rating": "★★★★★ (18)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Minimal Look",
    "photo": "images/5.png",
    "price": 120,
    "collection": "Men's Collection",
    "description":
        "A clean, minimal outfit with simple details and a versatile style that is easy to dress up or down.",
    "rating": "★★★★★ (32)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Soft Knitwear Set",
    "photo": "images/17.png",
    "price": 150,
    "collection": "Women's Collection",
    "description":
        "A soft knitwear set that combines a cozy feel with a polished look for cooler days.",
    "rating": "★★★★★ (18)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
];

List<Map<String, dynamic>> allitems = [
  {
    "name": "Modern Denim Outfit",
    "photo": "images/20.png",
    "price": 120,
    "collection": "Men's Collection",
    "description":
        "A modern denim look designed for everyday comfort and effortless style. Easy to pair with your favorite essentials.",
    "rating": "★★★★★ (24)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Classic Chic Outfit",
    "photo": "images/7.png",
    "price": 85,
    "collection": "Women's Collection",
    "description":
        "A timeless and elegant outfit with a polished look, perfect for everyday wear or a casual outing.",
    "rating": "★★★★☆ (18)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Casual Streetwear",
    "photo": "images/15.png",
    "price": 80,
    "collection": "Men's Collection",
    "description":
        "Relaxed streetwear made for all-day comfort, with an easy style that works for casual days out.",
    "rating": "★★★★☆ (24)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Elegant Evening Look",
    "photo": "images/6.png",
    "price": 100,
    "collection": "Women's Collection",
    "description":
        "A refined evening outfit with a graceful style, made for special occasions and memorable nights.",
    "rating": "★★★★★ (18)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Minimal Look",
    "photo": "images/5.png",
    "price": 120,
    "collection": "Men's Collection",
    "description":
        "A clean, minimal outfit with simple details and a versatile style that is easy to dress up or down.",
    "rating": "★★★★★ (32)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Soft Knitwear Set",
    "photo": "images/17.png",
    "price": 150,
    "collection": "Women's Collection",
    "description":
        "A soft knitwear set that combines a cozy feel with a polished look for cooler days.",
    "rating": "★★★★★ (18)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Timeless Classic",
    "photo": "images/3.png",
    "price": 120,
    "collection": "Men's Collection",
    "description":
        "A classic wardrobe piece with a timeless design, easy to style for both everyday wear and special plans.",
    "rating": "★★★★☆ (21)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Modern Elegance Set",
    "photo": "images/12.png",
    "price": 130,
    "collection": "Women's Collection",
    "description":
        "A modern, coordinated set with elegant details, designed to create a complete and effortless outfit.",
    "rating": "★★★★★ (27)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Urban Denim Outfit",
    "photo": "images/0.png",
    "price": 110,
    "collection": "Men's Collection",
    "description":
        "An urban denim outfit with a relaxed fit and versatile style, ideal for everyday city wear.",
    "rating": "★★★★☆ (20)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Chic Blazer Outfit",
    "photo": "images/8.png",
    "price": 115,
    "collection": "Women's Collection",
    "description":
        "A modern blazer look that adds a smart touch to your outfit while staying comfortable and easy to wear.",
    "rating": "★★★★★ (26)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Classic Smart Casual",
    "photo": "images/22.png",
    "price": 100,
    "collection": "Men's Collection",
    "description":
        "A smart-casual outfit that balances a polished appearance with the comfort of everyday clothing.",
    "rating": "★★★★☆ (19)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Chic Denim Set",
    "photo": "images/18.png",
    "price": 105,
    "collection": "Women's Collection",
    "description":
        "A chic denim set with an easy matching style, perfect for creating a coordinated everyday look.",
    "rating": "★★★★★ (23)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Relaxed Denim Set",
    "photo": "images/24.png",
    "price": 125,
    "collection": "Men's Collection",
    "description":
        "A relaxed denim set with a fresh, casual style for everyday wear.",
    "rating": "★★★★★ (22)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Floral Day Outfit",
    "photo": "images/31.png",
    "price": 95,
    "collection": "Women's Collection",
    "description":
        "A light and graceful outfit with a cheerful style, perfect for sunny days.",
    "rating": "★★★★☆ (17)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Everyday Cargo Look",
    "photo": "images/25.png",
    "price": 110,
    "collection": "Men's Collection",
    "description":
        "A comfortable cargo-inspired look that brings practical details to casual style.",
    "rating": "★★★★☆ (20)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Soft Pastel Outfit",
    "photo": "images/32.png",
    "price": 90,
    "collection": "Women's Collection",
    "description":
        "A soft pastel look with a relaxed fit, made for comfortable everyday outfits.",
    "rating": "★★★★★ (25)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Smart Layered Outfit",
    "photo": "images/26.png",
    "price": 140,
    "collection": "Men's Collection",
    "description":
        "A smart layered outfit that adds a polished touch to your everyday wardrobe.",
    "rating": "★★★★★ (28)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Elegant Knit Set",
    "photo": "images/33.png",
    "price": 135,
    "collection": "Women's Collection",
    "description":
        "A cozy knit set with elegant details, suitable for relaxed days and casual plans.",
    "rating": "★★★★☆ (19)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Classic Polo Outfit",
    "photo": "images/27.png",
    "price": 95,
    "collection": "Men's Collection",
    "description":
        "A classic polo look with a neat finish, easy to wear from day to day.",
    "rating": "★★★★☆ (16)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Modern Layered Look",
    "photo": "images/34.png",
    "price": 120,
    "collection": "Women's Collection",
    "description":
        "A modern layered outfit that pairs versatile pieces for an effortless look.",
    "rating": "★★★★★ (30)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Weekend Street Outfit",
    "photo": "images/28.png",
    "price": 105,
    "collection": "Men's Collection",
    "description":
        "An easygoing streetwear look designed for weekends and casual outings.",
    "rating": "★★★★☆ (21)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Chic Weekend Set",
    "photo": "images/35.png",
    "price": 115,
    "collection": "Women's Collection",
    "description":
        "A chic matching set that keeps your weekend style simple and comfortable.",
    "rating": "★★★★★ (24)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Urban Jacket Outfit",
    "photo": "images/29.png",
    "price": 155,
    "collection": "Men's Collection",
    "description":
        "A versatile urban outfit with a lightweight jacket for a confident everyday look.",
    "rating": "★★★★★ (27)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Graceful Casual Look",
    "photo": "images/36.png",
    "price": 100,
    "collection": "Women's Collection",
    "description":
        "A graceful casual outfit with comfortable pieces for daily wear.",
    "rating": "★★★★☆ (18)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Minimal Classic Set",
    "photo": "images/30.png",
    "price": 130,
    "collection": "Men's Collection",
    "description":
        "A minimal coordinated look with timeless pieces that are easy to style.",
    "rating": "★★★★★ (23)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Denim Set",
    "photo": "images/37.png",
    "price": 125,
    "collection": "Women's Collection",
    "description":
        "A contemporary denim set with a clean silhouette for effortless everyday style.",
    "rating": "★★★★☆ (20)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
];

List<Map<String, dynamic>> menItems = [
  {
    "name": "Modern Denim Outfit",
    "photo": "images/20.png",
    "price": 120,
    "collection": "Men's Collection",
    "description":
        "A modern denim look designed for everyday comfort and effortless style. Easy to pair with your favorite essentials.",
    "rating": "★★★★★ (24)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Casual Streetwear",
    "photo": "images/15.png",
    "price": 80,
    "collection": "Men's Collection",
    "description":
        "Relaxed streetwear made for all-day comfort, with an easy style that works for casual days out.",
    "rating": "★★★★☆ (24)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Minimal Look",
    "photo": "images/5.png",
    "price": 120,
    "collection": "Men's Collection",
    "description":
        "A clean, minimal outfit with simple details and a versatile style that is easy to dress up or down.",
    "rating": "★★★★★ (32)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Timeless Classic",
    "photo": "images/3.png",
    "price": 120,
    "collection": "Men's Collection",
    "description":
        "A classic wardrobe piece with a timeless design, easy to style for both everyday wear and special plans.",
    "rating": "★★★★☆ (21)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Urban Denim Outfit",
    "photo": "images/0.png",
    "price": 110,
    "collection": "Men's Collection",
    "description":
        "An urban denim outfit with a relaxed fit and versatile style, ideal for everyday city wear.",
    "rating": "★★★★☆ (20)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Classic Smart Casual",
    "photo": "images/22.png",
    "price": 100,
    "collection": "Men's Collection",
    "description":
        "A smart-casual outfit that balances a polished appearance with the comfort of everyday clothing.",
    "rating": "★★★★☆ (19)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Relaxed Denim Set",
    "photo": "images/24.png",
    "price": 125,
    "collection": "Men's Collection",
    "description":
        "A relaxed denim set with a fresh, casual style for everyday wear.",
    "rating": "★★★★★ (22)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Everyday Cargo Look",
    "photo": "images/25.png",
    "price": 110,
    "collection": "Men's Collection",
    "description":
        "A comfortable cargo-inspired look that brings practical details to casual style.",
    "rating": "★★★★☆ (20)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Smart Layered Outfit",
    "photo": "images/26.png",
    "price": 140,
    "collection": "Men's Collection",
    "description":
        "A smart layered outfit that adds a polished touch to your everyday wardrobe.",
    "rating": "★★★★★ (28)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Classic Polo Outfit",
    "photo": "images/27.png",
    "price": 95,
    "collection": "Men's Collection",
    "description":
        "A classic polo look with a neat finish, easy to wear from day to day.",
    "rating": "★★★★☆ (16)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Weekend Street Outfit",
    "photo": "images/28.png",
    "price": 105,
    "collection": "Men's Collection",
    "description":
        "An easygoing streetwear look designed for weekends and casual outings.",
    "rating": "★★★★☆ (21)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Urban Jacket Outfit",
    "photo": "images/29.png",
    "price": 155,
    "collection": "Men's Collection",
    "description":
        "A versatile urban outfit with a lightweight jacket for a confident everyday look.",
    "rating": "★★★★★ (27)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Minimal Classic Set",
    "photo": "images/30.png",
    "price": 130,
    "collection": "Men's Collection",
    "description":
        "A minimal coordinated look with timeless pieces that are easy to style.",
    "rating": "★★★★★ (23)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
];

List<Map<String, dynamic>> womenItems = [
  {
    "name": "Classic Chic Outfit",
    "photo": "images/7.png",
    "price": 85,
    "collection": "Women's Collection",
    "description":
        "A timeless and elegant outfit with a polished look, perfect for everyday wear or a casual outing.",
    "rating": "★★★★☆ (18)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Elegant Evening Look",
    "photo": "images/6.png",
    "price": 100,
    "collection": "Women's Collection",
    "description":
        "A refined evening outfit with a graceful style, made for special occasions and memorable nights.",
    "rating": "★★★★★ (18)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Soft Knitwear Set",
    "photo": "images/17.png",
    "price": 150,
    "collection": "Women's Collection",
    "description":
        "A soft knitwear set that combines a cozy feel with a polished look for cooler days.",
    "rating": "★★★★★ (18)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Modern Elegance Set",
    "photo": "images/12.png",
    "price": 130,
    "collection": "Women's Collection",
    "description":
        "A modern, coordinated set with elegant details, designed to create a complete and effortless outfit.",
    "rating": "★★★★★ (27)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Chic Denim Set",
    "photo": "images/18.png",
    "price": 105,
    "collection": "Women's Collection",
    "description":
        "A chic denim set with an easy matching style, perfect for creating a coordinated everyday look.",
    "rating": "★★★★★ (23)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Chic Blazer Outfit",
    "photo": "images/8.png",
    "price": 115,
    "collection": "Women's Collection",
    "description":
        "A modern blazer look that adds a smart touch to your outfit while staying comfortable and easy to wear.",
    "rating": "★★★★★ (26)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Floral Day Outfit",
    "photo": "images/31.png",
    "price": 95,
    "collection": "Women's Collection",
    "description":
        "A light and graceful outfit with a cheerful style, perfect for sunny days.",
    "rating": "★★★★☆ (17)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Soft Pastel Outfit",
    "photo": "images/32.png",
    "price": 90,
    "collection": "Women's Collection",
    "description":
        "A soft pastel look with a relaxed fit, made for comfortable everyday outfits.",
    "rating": "★★★★★ (25)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Elegant Knit Set",
    "photo": "images/33.png",
    "price": 135,
    "collection": "Women's Collection",
    "description":
        "A cozy knit set with elegant details, suitable for relaxed days and casual plans.",
    "rating": "★★★★☆ (19)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Modern Layered Look",
    "photo": "images/34.png",
    "price": 120,
    "collection": "Women's Collection",
    "description":
        "A modern layered outfit that pairs versatile pieces for an effortless look.",
    "rating": "★★★★★ (30)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Chic Weekend Set",
    "photo": "images/35.png",
    "price": 115,
    "collection": "Women's Collection",
    "description":
        "A chic matching set that keeps your weekend style simple and comfortable.",
    "rating": "★★★★★ (24)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Graceful Casual Look",
    "photo": "images/36.png",
    "price": 100,
    "collection": "Women's Collection",
    "description":
        "A graceful casual outfit with comfortable pieces for daily wear.",
    "rating": "★★★★☆ (18)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
  {
    "name": "Denim Set",
    "photo": "images/37.png",
    "price": 125,
    "collection": "Women's Collection",
    "description":
        "A contemporary denim set with a clean silhouette for effortless everyday style.",
    "rating": "★★★★☆ (20)",
    "colors": [0xFF000000, 0xFFFFFFFF, 0xFF808080, 0xFF4169E1, 0xFFB22222],
  },
];
