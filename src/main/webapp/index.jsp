<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>VIBE STORE · Colorful Clothes</title>
    <!-- Google Font & Font Awesome -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }

        body {
            background: #f8f2ff;
            color: #1a1a2e;
            padding: 0 1.5rem 2rem;
        }

        /* ----- HEADER / NAV (colorful) ----- */
        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 1rem 2rem;
            padding: 1.2rem 0.5rem 0.8rem;
            border-bottom: 3px solid #ffd6e8;
            background: linear-gradient(135deg, #fce4ec, #e8e0ff);
            margin: 0 -1.5rem;
            padding-left: 2rem;
            padding-right: 2rem;
            border-radius: 0 0 40px 40px;
            box-shadow: 0 8px 28px rgba(255, 107, 157, 0.15);
        }

        .logo {
            font-size: 1.9rem;
            font-weight: 800;
            background: linear-gradient(145deg, #ff6b9d, #b05cff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            letter-spacing: -0.5px;
        }
        .logo i {
            -webkit-text-fill-color: #ff6b9d;
            margin-right: 6px;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: white;
            border-radius: 60px;
            padding: 0.2rem 0.2rem 0.2rem 1.2rem;
            box-shadow: 0 4px 16px rgba(176, 92, 255, 0.15);
            border: 1px solid #d9caff;
            flex: 1 1 240px;
            max-width: 360px;
        }
        .search-wrap input {
            border: none;
            background: transparent;
            padding: 0.6rem 0;
            font-size: 0.9rem;
            width: 100%;
            outline: none;
            color: #1a1a2e;
        }
        .search-wrap button {
            background: #ff6b9d;
            border: none;
            color: white;
            padding: 0.55rem 1.2rem;
            border-radius: 60px;
            font-weight: 700;
            font-size: 0.8rem;
            cursor: pointer;
            transition: 0.2s;
        }
        .search-wrap button:hover {
            background: #ff85b0;
            transform: scale(1.02);
        }

        .cart-icon {
            position: relative;
            font-size: 1.8rem;
            color: #3d2a5c;
            cursor: pointer;
            transition: 0.2s;
            background: white;
            padding: 0.5rem 1rem 0.5rem 1.2rem;
            border-radius: 60px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.04);
            border: 1px solid #d9caff;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .cart-icon:hover {
            transform: scale(1.03);
            border-color: #ff6b9d;
        }
        .cart-count {
            background: #ff6b9d;
            color: white;
            font-size: 0.8rem;
            font-weight: 700;
            padding: 0.1rem 0.5rem;
            border-radius: 40px;
            margin-left: 2px;
        }
        .cart-total {
            font-size: 0.85rem;
            font-weight: 700;
            color: #2a1a44;
            background: #f0e8ff;
            padding: 0.2rem 0.8rem;
            border-radius: 40px;
        }

        /* ----- cart panel (slide) ----- */
        .cart-panel {
            background: #ffffffdd;
            backdrop-filter: blur(12px);
            border-radius: 32px 0 0 32px;
            padding: 1.8rem 1.8rem 2rem;
            max-width: 420px;
            width: 100%;
            position: fixed;
            top: 0;
            right: -450px;
            height: 100vh;
            overflow-y: auto;
            transition: 0.4s cubic-bezier(0.23, 1, 0.32, 1);
            box-shadow: -12px 0 40px rgba(0,0,0,0.15);
            z-index: 999;
            border-left: 4px solid #ff6b9d;
        }
        .cart-panel.open {
            right: 0;
        }
        .cart-panel h2 {
            font-size: 1.6rem;
            font-weight: 700;
            color: #1a1a2e;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px dashed #d9caff;
            padding-bottom: 0.8rem;
        }
        .cart-close {
            background: none;
            border: none;
            font-size: 1.8rem;
            color: #7a5a9a;
            cursor: pointer;
        }
        .cart-items {
            list-style: none;
            margin: 1.2rem 0;
            padding: 0;
        }
        .cart-item {
            display: flex;
            align-items: center;
            padding: 0.8rem 0;
            border-bottom: 1px solid #f0e8ff;
            gap: 12px;
        }
        .cart-item-img {
            width: 48px;
            height: 48px;
            border-radius: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.8rem;
            background: linear-gradient(145deg, #faf3ff, #f0e6ff);
            flex-shrink: 0;
        }
        .cart-item-info {
            flex: 1;
        }
        .cart-item-name {
            font-weight: 600;
            font-size: 0.95rem;
        }
        .cart-item-price {
            font-weight: 500;
            color: #b05cff;
            font-size: 0.85rem;
        }
        .cart-item-qty {
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .cart-item-qty button {
            background: #f0e8ff;
            border: none;
            width: 28px;
            height: 28px;
            border-radius: 30px;
            font-weight: 700;
            font-size: 1rem;
            color: #3d2a5c;
            cursor: pointer;
            transition: 0.15s;
        }
        .cart-item-qty button:hover {
            background: #ff6b9d;
            color: white;
        }
        .cart-item-qty span {
            font-weight: 600;
            min-width: 24px;
            text-align: center;
        }
        .cart-empty {
            text-align: center;
            color: #7a5a9a;
            padding: 2rem 0;
            font-weight: 500;
        }
        .cart-footer {
            border-top: 2px dashed #d9caff;
            padding-top: 1rem;
            margin-top: 0.5rem;
        }
        .cart-total-label {
            font-weight: 700;
            font-size: 1.2rem;
        }
        .checkout-btn {
            background: #ff6b9d;
            border: none;
            color: white;
            font-weight: 700;
            padding: 0.8rem 1.5rem;
            border-radius: 60px;
            width: 100%;
            font-size: 1rem;
            margin-top: 0.8rem;
            cursor: pointer;
            transition: 0.2s;
        }
        .checkout-btn:hover {
            background: #e85a86;
            transform: scale(1.01);
        }

        /* overlay */
        .overlay {
            position: fixed;
            top: 0; left: 0; width: 100%; height: 100%;
            background: rgba(10, 8, 25, 0.3);
            backdrop-filter: blur(3px);
            z-index: 998;
            display: none;
        }
        .overlay.active {
            display: block;
        }

        /* ----- products grid (colorful) ----- */
        .section-title {
            font-size: 2rem;
            font-weight: 700;
            margin: 2.5rem 0 0.8rem;
            display: flex;
            align-items: center;
            gap: 12px;
            color: #1a1a2e;
        }
        .section-title span {
            background: linear-gradient(135deg, #ff6b9d, #b05cff);
            padding: 0.1rem 1rem;
            border-radius: 60px;
            color: white;
            font-size: 0.9rem;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 1.8rem;
            margin: 1.2rem 0 2.5rem;
        }

        .product-card {
            background: white;
            border-radius: 32px;
            padding: 1rem 0.8rem 1.2rem;
            box-shadow: 0 10px 32px rgba(176, 92, 255, 0.08);
            transition: 0.25s ease;
            border: 1px solid #efe6ff;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
        .product-card:hover {
            transform: translateY(-8px);
            border-color: #ff6b9d;
            box-shadow: 0 20px 40px rgba(255, 107, 157, 0.15);
        }

        .product-img {
            width: 100%;
            aspect-ratio: 1/1.1;
            background: #f5edff;
            border-radius: 24px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3.6rem;
            margin-bottom: 0.6rem;
            color: #3d2a5c;
            background: linear-gradient(145deg, #faf3ff, #f0e6ff);
            transition: 0.2s;
        }
        .product-card:hover .product-img {
            background: #ffeef6;
        }

        .product-name {
            font-weight: 700;
            font-size: 1.05rem;
            margin: 0.2rem 0 0.1rem;
        }
        .product-price {
            font-weight: 700;
            color: #b05cff;
            font-size: 1.2rem;
            margin: 0.2rem 0 0.5rem;
        }
        .product-price small {
            font-size: 0.75rem;
            color: #7a5a9a;
            font-weight: 500;
        }
        .add-btn {
            background: #1a1a2e;
            border: none;
            color: white;
            padding: 0.6rem 0;
            border-radius: 60px;
            width: 100%;
            font-weight: 700;
            cursor: pointer;
            transition: 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            font-size: 0.85rem;
        }
        .add-btn:hover {
            background: #ff6b9d;
            transform: scale(1.02);
        }
        .add-btn i {
            font-size: 0.9rem;
        }

        .color-tag {
            display: flex;
            gap: 6px;
            justify-content: center;
            margin: 0.3rem 0 0.2rem;
        }
        .color-dot {
            width: 16px;
            height: 16px;
            border-radius: 30px;
            border: 1px solid #ddd;
        }

        /* responsive */
        @media (max-width: 700px) {
            body { padding: 0 0.8rem 1.5rem; }
            .header { flex-direction: column; align-items: stretch; border-radius: 0 0 30px 30px; padding: 1rem 1.2rem; }
            .cart-icon { justify-content: center; }
            .product-grid { grid-template-columns: repeat(auto-fill, minmax(150px, 1fr)); gap: 1rem; }
            .cart-panel { max-width: 100%; border-radius: 32px 32px 0 0; right: -110%; height: 80vh; bottom: 0; top: auto; }
            .cart-panel.open { right: 0; }
        }
        @media (max-width: 480px) {
            .product-grid { grid-template-columns: repeat(2, 1fr); }
        }
    </style>
</head>
<body>

    <!-- HEADER -->
    <header class="header">
        <div class="logo"><i class="fas fa-sparkle"></i> VIBE</div>

        <div class="search-wrap">
            <input type="text" placeholder="Search colorful styles..." />
            <button><i class="fas fa-search"></i></button>
        </div>

        <div class="cart-icon" id="cartToggle">
            <i class="fas fa-shopping-bag"></i>
            <span class="cart-count" id="cartCount">0</span>
            <span class="cart-total" id="cartTotal">$0</span>
        </div>
    </header>

    <!-- PRODUCTS -->
    <h2 class="section-title">✨ New Drops <span>just in</span></h2>
    <div class="product-grid" id="productGrid"></div>

    <!-- CART PANEL -->
    <div class="overlay" id="overlay"></div>
    <div class="cart-panel" id="cartPanel">
        <h2>
            <span><i class="fas fa-shopping-bag" style="color:#ff6b9d;"></i> Cart</span>
            <button class="cart-close" id="cartClose"><i class="fas fa-times"></i></button>
        </h2>
        <ul class="cart-items" id="cartItems">
            <li class="cart-empty">🛍️ your cart is empty</li>
        </ul>
        <div class="cart-footer">
            <div style="display: flex; justify-content: space-between;">
                <span class="cart-total-label">Total</span>
                <span class="cart-total-label" id="cartPanelTotal">$0</span>
            </div>
            <button class="checkout-btn"><i class="fas fa-lock"></i> Checkout · Secure</button>
        </div>
    </div>

    <script>
        // ----- PRODUCT DATA (colorful clothes) with image emojis -----
        const products = [
            { id: 1, name: 'Neon Dream Tee', price: 34.99, emoji: '👕', colors: ['#ff6b9d', '#b05cff', '#00d4ff'] },
            { id: 2, name: 'Sunset Cargo', price: 49.99, emoji: '👖', colors: ['#ff9a56', '#ff6b6b', '#feca57'] },
            { id: 3, name: 'Pastel Hoodie', price: 59.99, emoji: '🧥', colors: ['#a29bfe', '#fd79a8', '#81ecec'] },
            { id: 4, name: 'Graphic Tee', price: 29.99, emoji: '👕', colors: ['#6c5ce7', '#00b894', '#fdcb6e'] },
            { id: 5, name: 'Cargo Joggers', price: 44.99, emoji: '👖', colors: ['#2d3436', '#636e72', '#b2bec3'] },
            { id: 6, name: 'Oversized Blazer', price: 79.99, emoji: '🧥', colors: ['#d63031', '#0984e3', '#6ab04c'] },
            { id: 7, name: 'Striped Polo', price: 39.99, emoji: '👕', colors: ['#f9ca24', '#eb4d4b', '#22a6b3'] },
            { id: 8, name: 'Denim Shorts', price: 34.99, emoji: '🩳', colors: ['#4a69bd', '#78e08f', '#f6b93b'] },
        ];

        // ----- CART STATE -----
        let cart = []; // { id, name, price, emoji, quantity }

        // DOM refs
        const grid = document.getElementById('productGrid');
        const cartItemsEl = document.getElementById('cartItems');
        const cartCount = document.getElementById('cartCount');
        const cartTotal = document.getElementById('cartTotal');
        const cartPanelTotal = document.getElementById('cartPanelTotal');
        const cartPanel = document.getElementById('cartPanel');
        const overlay = document.getElementById('overlay');

        // ----- RENDER PRODUCTS -----
        function renderProducts() {
            grid.innerHTML = products.map(p => `
                <div class="product-card" data-id="${p.id}">
                    <div class="product-img">${p.emoji}</div>
                    <div class="product-name">${p.name}</div>
                    <div class="color-tag">
                        ${p.colors.map(c => `<span class="color-dot" style="background:${c};"></span>`).join('')}
                    </div>
                    <div class="product-price">$${p.price.toFixed(2)} <small></small></div>
                    <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus-circle"></i> Add</button>
                </div>
            `).join('');

            // attach add listeners
            document.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.dataset.id);
                    const product = products.find(p => p.id === id);
                    if (product) addToCart(product);
                });
            });
        }

        // ----- CART FUNCTIONS -----
        function addToCart(product) {
            const existing = cart.find(item => item.id === product.id);
            if (existing) {
                existing.quantity += 1;
            } else {
                cart.push({ ...product, quantity: 1 });
            }
            updateCartUI();
            openCart();
        }

        function removeFromCart(id) {
            cart = cart.filter(item => item.id !== id);
            updateCartUI();
        }

        function changeQty(id, delta) {
            const item = cart.find(i => i.id === id);
            if (!item) return;
            item.quantity += delta;
            if (item.quantity <= 0) {
                removeFromCart(id);
                return;
            }
            updateCartUI();
        }

        function getTotalItems() {
            return cart.reduce((sum, item) => sum + item.quantity, 0);
        }

        function getTotalPrice() {
            return cart.reduce((sum, item) => sum + (item.price * item.quantity), 0);
        }

        function updateCartUI() {
            const totalItems = getTotalItems();
            const totalPrice = getTotalPrice();
            cartCount.textContent = totalItems;
            cartTotal.textContent = `$${totalPrice.toFixed(2)}`;
            cartPanelTotal.textContent = `$${totalPrice.toFixed(2)}`;

            if (cart.length === 0) {
                cartItemsEl.innerHTML = `<li class="cart-empty">🛍️ your cart is empty</li>`;
                return;
            }

            cartItemsEl.innerHTML = cart.map(item => `
                <li class="cart-item">
                    <div class="cart-item-img">${item.emoji}</div>
                    <div class="cart-item-info">
                        <div class="cart-item-name">${item.name}</div>
                        <div class="cart-item-price">$${item.price.toFixed(2)}</div>
                    </div>
                    <div class="cart-item-qty">
                        <button data-id="${item.id}" data-delta="-1">−</button>
                        <span>${item.quantity}</span>
                        <button data-id="${item.id}" data-delta="1">+</button>
                        <button style="background:transparent; color:#b05cff; width:auto; font-size:1rem;" data-id="${item.id}" data-delta="-999">✕</button>
                    </div>
                </li>
            `).join('');

            cartItemsEl.querySelectorAll('[data-delta]').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.dataset.id);
                    const delta = parseInt(btn.dataset.delta);
                    if (delta === -999) {
                        removeFromCart(id);
                    } else {
                        changeQty(id, delta);
                    }
                });
            });
        }

        // ----- CART PANEL TOGGLE -----
        function openCart() {
            cartPanel.classList.add('open');
            overlay.classList.add('active');
            document.body.style.overflow = 'hidden';
        }
        function closeCart() {
            cartPanel.classList.remove('open');
            overlay.classList.remove('active');
            document.body.style.overflow = '';
        }

        document.getElementById('cartToggle').addEventListener('click', openCart);
        document.getElementById('cartClose').addEventListener('click', closeCart);
        overlay.addEventListener('click', closeCart);

        // ----- INIT -----
        renderProducts();
        updateCartUI();

        // checkout alert
        document.querySelector('.checkout-btn').addEventListener('click', () => {
            if (cart.length === 0) {
                alert('🛒 Your cart is empty! Add some colorful clothes.');
            } else {
                alert(`🎉 Thank you! Your order total is $${getTotalPrice().toFixed(2)}. (Demo checkout)`);
            }
        });

        // search filter
        document.querySelector('.search-wrap button').addEventListener('click', () => {
            const query = document.querySelector('.search-wrap input').value.toLowerCase().trim();
            const cards = document.querySelectorAll('.product-card');
            cards.forEach(card => {
                const name = card.querySelector('.product-name').textContent.toLowerCase();
                card.style.display = name.includes(query) ? '' : 'none';
            });
        });
        document.querySelector('.search-wrap input').addEventListener('input', (e) => {
            const query = e.target.value.toLowerCase().trim();
            const cards = document.querySelectorAll('.product-card');
            cards.forEach(card => {
                const name = card.querySelector('.product-name').textContent.toLowerCase();
                card.style.display = name.includes(query) ? '' : 'none';
            });
        });
    </script>

</body>
</html>
