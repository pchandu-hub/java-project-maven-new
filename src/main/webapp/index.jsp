<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Favicon (inline placeholder) -->
    <link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'%3E%3Crect width='100' height='100' fill='%231a1a2e'/%3E%3Ctext x='20' y='68' font-family='Arial' font-weight='bold' font-size='48' fill='%23ff6b9d'%3ED%3C/text%3E%3C/svg%3E" type="image/x-icon">

    <title>Disney+ Hotstar · Stream</title>

    <!-- Google Fonts (friendly + modern) -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">

    <style>
        /* ----- reset & base (new colours) ----- */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            background: #0e0e1a;
            /* deep dark purple/blue */
            color: #f0edff;
            overflow-x: hidden;
        }

        /* ----- Navbar (fresh palette) ----- */
        .navbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0.9rem 2.5rem;
            background: rgba(20, 18, 40, 0.85);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(255, 215, 215, 0.06);
            flex-wrap: wrap;
            gap: 0.8rem 1.5rem;
        }

        .logo {
            height: 2.4rem;
            filter: drop-shadow(0 0 6px #ff6b9d55);
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 2rem;
            flex-wrap: wrap;
        }

        .nav-items a {
            color: #c8c2f0;
            text-decoration: none;
            font-weight: 600;
            font-size: 0.95rem;
            letter-spacing: 0.2px;
            transition: 0.2s;
            padding: 0.3rem 0;
            border-bottom: 2px solid transparent;
        }

        .nav-items a:hover {
            color: #ffffff;
            border-bottom-color: #ff6b9d;
        }

        .right-container {
            display: flex;
            align-items: center;
            gap: 1rem;
            flex-wrap: wrap;
        }

        .search-box {
            background: #24223b;
            border: 1px solid #3d3a5c;
            padding: 0.5rem 1.2rem 0.5rem 2.7rem;
            border-radius: 60px;
            color: #f0edff;
            font-size: 0.9rem;
            width: 180px;
            transition: 0.3s;
            font-weight: 400;
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="%239490c0" stroke-width="2"><circle cx="11" cy="11" r="8"/><path d="M21 21l-4.35-4.35"/></svg>');
            background-repeat: no-repeat;
            background-position: 14px center;
            background-size: 17px;
        }

        .search-box:focus {
            width: 230px;
            background-color: #2f2c4a;
            border-color: #ff6b9d;
            outline: none;
        }

        .sub-btn {
            background: #ff6b9d;
            border: none;
            padding: 0.5rem 1.6rem;
            border-radius: 60px;
            font-weight: 700;
            color: #0e0e1a;
            font-size: 0.85rem;
            cursor: pointer;
            transition: 0.2s;
            letter-spacing: 0.3px;
            box-shadow: 0 4px 16px rgba(255, 107, 157, 0.4);
        }

        .sub-btn:hover {
            background: #ff85b0;
            transform: scale(1.02);
            box-shadow: 0 6px 22px rgba(255, 107, 157, 0.6);
        }

        .login-link {
            color: #b8b0e6;
            text-decoration: none;
            font-weight: 600;
            font-size: 0.95rem;
            transition: 0.2s;
        }

        .login-link:hover {
            color: #ffffff;
        }

        /* ----- Carousel (new gradient) ----- */
        .carousel-container {
            margin: 1.8rem 2rem 1.2rem 2rem;
            border-radius: 32px;
            overflow: hidden;
            box-shadow: 0 20px 40px -8px #000000cc;
            background: linear-gradient(145deg, #1e1b38, #12102a);
        }

        .carousel {
            position: relative;
            width: 100%;
            display: flex;
            align-items: center;
            min-height: 280px;
            background: radial-gradient(circle at 20% 30%, #332e5a, #12102a);
        }

        .slider {
            display: flex;
            width: 100%;
            align-items: center;
            padding: 1.8rem 2.8rem;
            gap: 2rem;
            flex-wrap: wrap;
        }

        .slide-content {
            flex: 1 1 220px;
            z-index: 2;
        }

        .movie-title {
            font-size: 2.8rem;
            font-weight: 800;
            letter-spacing: -0.5px;
            background: linear-gradient(135deg, #f9e8ff, #ffb3d1);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-transform: capitalize;
            margin-bottom: 0.4rem;
        }

        .movie-des {
            color: #cdc6f5;
            font-size: 1rem;
            max-width: 420px;
            line-height: 1.6;
            opacity: 0.9;
            font-weight: 400;
        }

        .slider img {
            max-width: 280px;
            width: 100%;
            border-radius: 28px;
            box-shadow: 0 20px 32px -8px #000000cc;
            transition: 0.3s;
            flex: 0 0 200px;
            object-fit: cover;
            aspect-ratio: 16/9;
            border: 1px solid #ff6b9d33;
        }

        .slider img:hover {
            transform: scale(1.02);
            border-color: #ff6b9d;
        }

        /* ----- video cards (brands) new colours ----- */
        .video-card-container {
            display: flex;
            gap: 1.2rem;
            padding: 0.8rem 2rem 1.8rem 2rem;
            flex-wrap: wrap;
            justify-content: center;
        }

        .video-card {
            position: relative;
            border-radius: 24px;
            overflow: hidden;
            flex: 0 0 120px;
            height: 70px;
            background: #22203b;
            transition: 0.25s ease;
            cursor: pointer;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.7);
            border: 1px solid #3d3a5c;
        }

        .video-card:hover {
            transform: translateY(-6px);
            border-color: #ff6b9d;
            box-shadow: 0 12px 28px rgba(255, 107, 157, 0.25);
        }

        .video-card-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.9;
        }

        .card-video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0;
            transition: 0.3s;
        }

        .video-card:hover .card-video {
            opacity: 1;
        }

        /* ----- titles & sections (fresh) ----- */
        .title {
            font-size: 1.7rem;
            font-weight: 700;
            margin: 2.2rem 2rem 0.8rem 2rem;
            letter-spacing: -0.3px;
            color: #f3efff;
            display: flex;
            align-items: center;
            gap: 0.8rem;
        }

        .title::after {
            content: '';
            flex: 1;
            height: 2px;
            background: linear-gradient(90deg, #ff6b9d55, #6b5bff55, transparent);
        }

        .movies-list {
            position: relative;
            padding: 0 2rem 1.8rem 2rem;
        }

        .card-container {
            display: flex;
            gap: 1.2rem;
            overflow-x: auto;
            padding: 0.8rem 0.2rem 1.4rem 0.2rem;
            scroll-behavior: smooth;
            scrollbar-width: thin;
            scrollbar-color: #ff6b9d #24223b;
            -webkit-overflow-scrolling: touch;
        }

        .card-container::-webkit-scrollbar {
            height: 6px;
        }

        .card-container::-webkit-scrollbar-track {
            background: #1f1d38;
            border-radius: 20px;
        }

        .card-container::-webkit-scrollbar-thumb {
            background: #ff6b9d;
            border-radius: 20px;
        }

        /* ----- cards (new style) ----- */
        .card {
            flex: 0 0 160px;
            background: #1b1933;
            border-radius: 24px;
            overflow: hidden;
            transition: 0.25s ease;
            box-shadow: 0 10px 24px -8px #000000dd;
            border: 1px solid #34315a;
            position: relative;
        }

        .card:hover {
            transform: scale(1.03) translateY(-4px);
            border-color: #ff6b9d;
            box-shadow: 0 18px 36px -8px #ff6b9d33;
        }

        .card-img {
            width: 100%;
            aspect-ratio: 2/3;
            object-fit: cover;
            display: block;
        }

        .card-body {
            padding: 0.7rem 0.7rem 0.9rem;
            background: linear-gradient(0deg, #13112a, transparent);
        }

        .card-body .name {
            font-size: 0.95rem;
            font-weight: 700;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            color: #f0edff;
            letter-spacing: -0.2px;
        }

        .card-body .des {
            font-size: 0.7rem;
            font-weight: 400;
            color: #a8a0d6;
            margin: 0.2rem 0 0.5rem 0;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .watchlist-btn {
            background: rgba(255, 107, 157, 0.12);
            border: 1px solid #ff6b9d55;
            color: #ffb3d1;
            padding: 0.3rem 0.6rem;
            border-radius: 60px;
            font-size: 0.65rem;
            font-weight: 700;
            cursor: pointer;
            transition: 0.2s;
            width: 100%;
            text-transform: uppercase;
            letter-spacing: 0.6px;
            font-family: 'Inter', sans-serif;
        }

        .watchlist-btn:hover {
            background: #ff6b9d;
            color: #0e0e1a;
            border-color: #ff6b9d;
        }

        /* ----- scroll buttons (new colours) ----- */
        .pre-btn,
        .nxt-btn {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background: #1b1933dd;
            backdrop-filter: blur(10px);
            border: 1px solid #4f4a7a;
            border-radius: 50%;
            width: 42px;
            height: 42px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            z-index: 10;
            transition: 0.2s;
            box-shadow: 0 8px 24px #000000aa;
        }

        .pre-btn {
            left: 0.2rem;
        }
        .nxt-btn {
            right: 0.2rem;
        }

        .pre-btn:hover,
        .nxt-btn:hover {
            background: #2f2b57;
            border-color: #ff6b9d;
        }

        .pre-btn img,
        .nxt-btn img {
            width: 20px;
            filter: invert(0.9) brightness(1.2);
            opacity: 0.9;
        }

        /* ----- responsive touches ----- */
        @media (max-width: 768px) {
            .navbar {
                padding: 0.8rem 1.2rem;
                flex-direction: column;
                align-items: stretch;
            }
            .nav-links {
                justify-content: center;
                gap: 1rem;
            }
            .right-container {
                justify-content: center;
            }
            .search-box {
                width: 140px;
            }
            .search-box:focus {
                width: 170px;
            }
            .carousel-container {
                margin: 1rem 1rem;
            }
            .slider {
                flex-direction: column;
                text-align: center;
                padding: 1.5rem 1rem;
            }
            .movie-title {
                font-size: 2.2rem;
            }
            .movie-des {
                max-width: 100%;
                font-size: 0.9rem;
            }
            .slider img {
                max-width: 200px;
                flex: unset;
            }
            .video-card {
                flex: 0 0 90px;
                height: 55px;
            }
            .card {
                flex: 0 0 130px;
            }
            .title {
                font-size: 1.3rem;
                margin-left: 1.2rem;
                margin-right: 1.2rem;
            }
            .movies-list {
                padding: 0 1rem 1.5rem;
            }
            .pre-btn,
            .nxt-btn {
                width: 34px;
                height: 34px;
            }
        }

        @media (max-width: 480px) {
            .nav-links {
                gap: 0.5rem;
                font-size: 0.8rem;
            }
            .sub-btn {
                padding: 0.3rem 1rem;
                font-size: 0.75rem;
            }
            .login-link {
                font-size: 0.8rem;
            }
            .card {
                flex: 0 0 110px;
            }
            .video-card {
                flex: 0 0 70px;
                height: 45px;
            }
        }
    </style>
</head>

<body>

    <!-- ------------------ Navbar (new colours) ------------------ -->
    <nav class="navbar">
        <!-- inline SVG logo with new style -->
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 140 44'%3E%3Crect width='140' height='44' rx='12' fill='%231a1833'/%3E%3Ctext x='14' y='30' font-family='Inter, sans-serif' font-weight='800' font-size='22' fill='%23ff6b9d'%3EDisney+%3C/text%3E%3Ctext x='96' y='30' font-family='Inter, sans-serif' font-weight='500' font-size='16' fill='%23b8b0e6'%3EHotstar%3C/text%3E%3C/svg%3E" class="logo" alt="Disney+ Hotstar">

        <ul class="nav-links">
            <li class="nav-items"><a href="#">MAD</a></li>
            <li class="nav-items"><a href="#">Movies</a></li>
            <li class="nav-items"><a href="#">Sports</a></li>
            <li class="nav-items"><a href="#">Premium</a></li>
            <li class="nav-items"><a href="#">Disney+</a></li>
        </ul>

        <div class="right-container">
            <input type="text" class="search-box" placeholder="Search">
            <button class="sub-btn">Subscribe</button>
            <a href="#" class="login-link">Login</a>
        </div>
    </nav>

    <!-- ------------------ Carousel (new gradient) ------------------ -->
    <div class="carousel-container">
        <div class="carousel">
            <div class="slider">
                <div class="slide-content">
                    <h1 class="movie-title">Loki</h1>
                    <p class="movie-des">The God of Mischief returns in a time-bending series full of wit, mystery, and glorious purpose. Only on Disney+ Hotstar.</p>
                </div>
                <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='300' height='170' viewBox='0 0 300 170'%3E%3Crect width='300' height='170' rx='20' fill='%23201d42'/%3E%3Ctext x='28' y='90' font-family='Inter' font-weight='800' font-size='32' fill='%23ffb3d1'%3ELOKI%3C/text%3E%3Ctext x='28' y='122' font-family='Inter' font-size='15' fill='%239490c0'%3EDisney+ Original%3C/text%3E%3C/svg%3E" alt="Loki banner">
            </div>
        </div>
    </div>

    <!-- ------------------ Video Card (brands) ------------------ -->
    <div class="video-card-container">
        <div class="video-card">
            <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='120' height='70'%3E%3Crect width='120' height='70' fill='%23201d42'/%3E%3Ctext x='14' y='42' fill='%23f0edff' font-family='Inter' font-weight='700' font-size='18'%3EDisney%3C/text%3E%3C/svg%3E" class="video-card-image" alt="Disney">
            <video src="https://www.w3schools.com/html/mov_bbb.mp4" muted loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='120' height='70'%3E%3Crect width='120' height='70' fill='%23201d42'/%3E%3Ctext x='14' y='42' fill='%23f0edff' font-family='Inter' font-weight='700' font-size='18'%3EPixar%3C/text%3E%3C/svg%3E" class="video-card-image" alt="Pixar">
            <video src="https://www.w3schools.com/html/mov_bbb.mp4" muted loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='120' height='70'%3E%3Crect width='120' height='70' fill='%23201d42'/%3E%3Ctext x='10' y='42' fill='%23f0edff' font-family='Inter' font-weight='700' font-size='18'%3EMarvel%3C/text%3E%3C/svg%3E" class="video-card-image" alt="Marvel">
            <video src="https://www.w3schools.com/html/mov_bbb.mp4" muted loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='120' height='70'%3E%3Crect width='120' height='70' fill='%23201d42'/%3E%3Ctext x='6' y='42' fill='%23f0edff' font-family='Inter' font-weight='700' font-size='16'%3EStar Wars%3C/text%3E%3C/svg%3E" class="video-card-image" alt="Star Wars">
            <video src="https://www.w3schools.com/html/mov_bbb.mp4" muted loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='120' height='70'%3E%3Crect width='120' height='70' fill='%23201d42'/%3E%3Ctext x='4' y='42' fill='%23f0edff' font-family='Inter' font-weight='600' font-size='14'%3ENational Geo%3C/text%3E%3C/svg%3E" class="video-card-image" alt="National Geographic">
            <video src="https://www.w3schools.com/html/mov_bbb.mp4" muted loop class="card-video"></video>
        </div>
    </div>

    <!-- ------------------ Recommendation (new colours) ------------------ -->
    <h1 class="title">✨ recommended for you</h1>
    <div class="movies-list">
        <button class="pre-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='%23f0edff' stroke-width='2.5'%3E%3Cpath d='M15 18l-6-6 6-6'/%3E%3C/svg%3E" alt="prev"></button>
        <button class="nxt-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='%23f0edff' stroke-width='2.5'%3E%3Cpath d='M9 18l6-6-6-6'/%3E%3C/svg%3E" alt="next"></button>
        <div class="card-container" id="recContainer">
            <!-- cards injected via js -->
        </div>
    </div>

    <!-- ------------------ Popular Shows ------------------ -->
    <h1 class="title">🔥 Popular Shows</h1>
    <div class="movies-list">
        <button class="pre-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='%23f0edff' stroke-width='2.5'%3E%3Cpath d='M15 18l-6-6 6-6'/%3E%3C/svg%3E" alt="prev"></button>
        <button class="nxt-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='%23f0edff' stroke-width='2.5'%3E%3Cpath d='M9 18l6-6-6-6'/%3E%3C/svg%3E" alt="next"></button>
        <div class="card-container" id="popularContainer"></div>
    </div>

    <!-- ------------------ New Releases ------------------ -->
    <h1 class="title">🚀 New Releases</h1>
    <div class="movies-list">
        <button class="pre-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='%23f0edff' stroke-width='2.5'%3E%3Cpath d='M15 18l-6-6 6-6'/%3E%3C/svg%3E" alt="prev"></button>
        <button class="nxt-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='%23f0edff' stroke-width='2.5'%3E%3Cpath d='M9 18l6-6-6-6'/%3E%3C/svg%3E" alt="next"></button>
        <div class="card-container" id="newContainer"></div>
    </div>

    <script>
        // ----- helper to build cards (with new font & color) -----
        function createCard(title, desc, imgPlaceholder) {
            const card = document.createElement('div');
            card.className = 'card';
            card.innerHTML = `
                <img src="${imgPlaceholder}" class="card-img" alt="${title}" />
                <div class="card-body">
                    <h2 class="name">${title}</h2>
                    <h6 class="des">${desc}</h6>
                    <button class="watchlist-btn"><i class="fas fa-plus" style="margin-right:6px; font-size:10px;"></i> watchlist</button>
                </div>
            `;
            return card;
        }

        // data arrays
        const recTitles = ['Chichore', 'Avengers Endgame', 'Ford v Ferrari', 'Mulan', 'Loki', 'Thor Ragnarok', 'Avengers', 'Ok Computer', 'Dil Bechara', 'Soul', 'The Office', 'Luca', 'Dark Phoenix', 'TanHaji', 'Euphoria'];
        const popTitles = ['Yeh Rishta', 'Anupama', 'Imlie', 'City of Dreams', 'Shin-chan', 'Doraemon', 'Mahadev', 'Grahan', 'Pandya Store', 'Luca', 'Mahabharat', 'RadhaKrishn', 'Phineas and Ferb', 'Loki', 'Special Ops', 'Hostages', 'Criminal Justice'];
        const newTitles = ['Collar Bomb', 'WandaVision', 'Carbon', 'Hungama 2', 'Hanuman', 'Boys Don\'t Cry', 'Shaadisthan', 'Loki', 'Love, Simon', 'Betty', 'Chhuri', 'Cars 3', 'Pose', 'Modern Family', 'Brave', 'Dil Bechara'];

        function fillContainer(containerId, titles) {
            const container = document.getElementById(containerId);
            if (!container) return;
            container.innerHTML = '';
            titles.forEach((t) => {
                const desc = `✨ ${t.slice(0,6)} · new vibe`;
                const img = `data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='200' height='280' viewBox='0 0 200 280'%3E%3Crect width='200' height='280' fill='%231b1933'/%3E%3Ctext x='18' y='130' fill='%23ffb3d1' font-family='Inter' font-weight='700' font-size='20'%3E${t.substring(0,14)}%3C/text%3E%3Ctext x='18' y='162' fill='%239490c0' font-family='Inter' font-size='13'%3E✦ watch now%3C/text%3E%3C/svg%3E`;
                container.appendChild(createCard(t, desc, img));
            });
        }

        fillContainer('recContainer', recTitles);
        fillContainer('popularContainer', popTitles);
        fillContainer('newContainer', newTitles);

        // ----- scroll buttons -----
        document.querySelectorAll('.movies-list').forEach(list => {
            const container = list.querySelector('.card-container');
            const pre = list.querySelector('.pre-btn');
            const nxt = list.querySelector('.nxt-btn');
            if (pre && nxt && container) {
                pre.addEventListener('click', () => container.scrollBy({ left: -300, behavior: 'smooth' }));
                nxt.addEventListener('click', () => container.scrollBy({ left: 300, behavior: 'smooth' }));
            }
        });

        // video-card hover play
        document.querySelectorAll('.video-card').forEach(card => {
            const vid = card.querySelector('.card-video');
            if (vid) {
                card.addEventListener('mouseenter', () => vid.play().catch(() => {}));
                card.addEventListener('mouseleave', () => { vid.pause();
                    vid.currentTime = 0; });
            }
        });
    </script>
</body>

</html>
