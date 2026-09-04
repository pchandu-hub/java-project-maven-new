<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Disney+ Hotstar · Stream</title>
    <!-- Font Awesome Icons (free) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Roboto, system-ui, -apple-system, sans-serif;
        }

        body {
            background: #0a0f1a;
            color: #f0f4fa;
            overflow-x: hidden;
        }

        /* ----- navbar (user friendly) ----- */
        .navbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0.8rem 2.5rem;
            background: rgba(10, 15, 26, 0.9);
            backdrop-filter: blur(8px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.05);
            flex-wrap: wrap;
            gap: 0.8rem 1.2rem;
        }

        .logo {
            height: 2.2rem;
            filter: brightness(1.1);
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 1.6rem;
            flex-wrap: wrap;
        }

        .nav-items a {
            color: #d6e0f0;
            text-decoration: none;
            font-weight: 500;
            font-size: 0.95rem;
            letter-spacing: 0.3px;
            transition: 0.2s;
            padding: 0.3rem 0;
            border-bottom: 2px solid transparent;
        }

        .nav-items a:hover {
            color: #ffffff;
            border-bottom-color: #3a86ff;
        }

        .right-container {
            display: flex;
            align-items: center;
            gap: 1rem;
            flex-wrap: wrap;
        }

        .search-box {
            background: #1e2636;
            border: none;
            padding: 0.5rem 1.2rem 0.5rem 2.6rem;
            border-radius: 50px;
            color: #fff;
            font-size: 0.9rem;
            width: 180px;
            transition: 0.3s;
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="%238f9bb3" stroke-width="2"><circle cx="11" cy="11" r="8"/><path d="M21 21l-4.35-4.35"/></svg>');
            background-repeat: no-repeat;
            background-position: 12px center;
            background-size: 16px;
        }

        .search-box:focus {
            width: 230px;
            background-color: #262f42;
            outline: none;
        }

        .sub-btn {
            background: #3a86ff;
            border: none;
            padding: 0.5rem 1.4rem;
            border-radius: 50px;
            font-weight: 600;
            color: white;
            font-size: 0.85rem;
            cursor: pointer;
            transition: 0.2s;
            letter-spacing: 0.5px;
            box-shadow: 0 4px 12px rgba(58, 134, 255, 0.3);
        }

        .sub-btn:hover {
            background: #4f94ff;
            transform: scale(1.02);
        }

        .login-link {
            color: #b6c8e0;
            text-decoration: none;
            font-weight: 500;
            font-size: 0.95rem;
            transition: 0.2s;
        }

        .login-link:hover {
            color: white;
        }

        /* ----- carousel (user friendly) ----- */
        .carousel-container {
            margin: 1.8rem 2rem 1.2rem 2rem;
            border-radius: 28px;
            overflow: hidden;
            box-shadow: 0 20px 40px -12px rgba(0, 0, 0, 0.8);
            background: #121b2b;
        }

        .carousel {
            position: relative;
            width: 100%;
            display: flex;
            align-items: center;
            min-height: 280px;
            background: linear-gradient(145deg, #141e30, #0b111f);
        }

        .slider {
            display: flex;
            width: 100%;
            align-items: center;
            padding: 1.5rem 2.5rem;
            gap: 2rem;
            flex-wrap: wrap;
        }

        .slide-content {
            flex: 1 1 220px;
            z-index: 2;
        }

        .movie-title {
            font-size: 2.6rem;
            font-weight: 700;
            letter-spacing: -0.5px;
            background: linear-gradient(135deg, #f0f9ff, #a0c8ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-transform: capitalize;
            margin-bottom: 0.5rem;
        }

        .movie-des {
            color: #cbd8ed;
            font-size: 1rem;
            max-width: 420px;
            line-height: 1.5;
            opacity: 0.9;
        }

        .slider img {
            max-width: 280px;
            width: 100%;
            border-radius: 24px;
            box-shadow: 0 20px 30px -8px #00000080;
            transition: 0.3s;
            flex: 0 0 200px;
            object-fit: cover;
            aspect-ratio: 16/9;
        }

        .slider img:hover {
            transform: scale(1.02);
        }

        /* ----- video cards (brands) ----- */
        .video-card-container {
            display: flex;
            gap: 1.2rem;
            padding: 0.8rem 2rem 1.8rem 2rem;
            flex-wrap: wrap;
            justify-content: center;
        }

        .video-card {
            position: relative;
            border-radius: 20px;
            overflow: hidden;
            flex: 0 0 120px;
            height: 70px;
            background: #1a2438;
            transition: 0.25s ease;
            cursor: pointer;
            box-shadow: 0 6px 14px rgba(0, 0, 0, 0.5);
            border: 1px solid #2d3a52;
        }

        .video-card:hover {
            transform: translateY(-5px);
            border-color: #3a86ff;
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

        /* ----- movie lists (clean & friendly) ----- */
        .title {
            font-size: 1.6rem;
            font-weight: 600;
            margin: 2rem 2rem 0.8rem 2rem;
            letter-spacing: -0.3px;
            color: #f2f7ff;
            display: flex;
            align-items: center;
            gap: 0.8rem;
        }

        .title::after {
            content: '';
            flex: 1;
            height: 1px;
            background: linear-gradient(90deg, #2e3d5a, transparent);
        }

        .movies-list {
            position: relative;
            padding: 0 2rem 1.8rem 2rem;
        }

        .card-container {
            display: flex;
            gap: 1.2rem;
            overflow-x: auto;
            padding: 0.8rem 0.2rem 1.2rem 0.2rem;
            scroll-behavior: smooth;
            scrollbar-width: thin;
            scrollbar-color: #3a86ff #1e2a3f;
            -webkit-overflow-scrolling: touch;
        }

        .card-container::-webkit-scrollbar {
            height: 6px;
        }

        .card-container::-webkit-scrollbar-track {
            background: #1a2438;
            border-radius: 20px;
        }

        .card-container::-webkit-scrollbar-thumb {
            background: #3a86ff;
            border-radius: 20px;
        }

        .card {
            flex: 0 0 160px;
            background: #131d2f;
            border-radius: 20px;
            overflow: hidden;
            transition: 0.25s ease;
            box-shadow: 0 10px 20px -8px #000000;
            border: 1px solid #28344d;
            position: relative;
        }

        .card:hover {
            transform: scale(1.02);
            border-color: #4f94ff;
            box-shadow: 0 16px 32px -8px #000000cc;
        }

        .card-img {
            width: 100%;
            aspect-ratio: 2/3;
            object-fit: cover;
            display: block;
        }

        .card-body {
            padding: 0.6rem 0.7rem 0.9rem;
        }

        .card-body .name {
            font-size: 0.95rem;
            font-weight: 600;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            color: #eef4ff;
        }

        .card-body .des {
            font-size: 0.7rem;
            color: #91a3c7;
            margin: 0.2rem 0 0.5rem 0;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .watchlist-btn {
            background: rgba(58, 134, 255, 0.15);
            border: 1px solid #3a86ff40;
            color: #b3ceff;
            padding: 0.25rem 0.6rem;
            border-radius: 30px;
            font-size: 0.65rem;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            width: 100%;
            text-transform: uppercase;
            letter-spacing: 0.4px;
        }

        .watchlist-btn:hover {
            background: #3a86ff;
            color: white;
            border-color: #3a86ff;
        }

        /* ----- scroll buttons (friendly) ----- */
        .pre-btn,
        .nxt-btn {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background: #0e1729cc;
            backdrop-filter: blur(8px);
            border: 1px solid #2e3f60;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            z-index: 10;
            transition: 0.2s;
            box-shadow: 0 8px 20px #00000066;
        }

        .pre-btn {
            left: 0.2rem;
        }
        .nxt-btn {
            right: 0.2rem;
        }

        .pre-btn:hover,
        .nxt-btn:hover {
            background: #1f3150;
            border-color: #3a86ff;
        }

        .pre-btn img,
        .nxt-btn img {
            width: 18px;
            filter: invert(0.9);
            opacity: 0.8;
        }

        /* responsive touches */
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
                width: 180px;
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
                font-size: 2rem;
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
                width: 32px;
                height: 32px;
            }
        }

        @media (max-width: 480px) {
            .nav-links {
                gap: 0.6rem;
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

    <!-- Navbar -->
    <nav class="navbar">
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 120 40'%3E%3Crect width='120' height='40' fill='%231a263a' rx='8'/%3E%3Ctext x='12' y='26' font-family='Segoe UI, sans-serif' font-weight='700' font-size='20' fill='%234f94ff'%3EDisney+%3C/text%3E%3Ctext x='80' y='26' font-family='Segoe UI, sans-serif' font-weight='300' font-size='16' fill='%23aac0f0'%3EHotstar%3C/text%3E%3C/svg%3E" class="logo" alt="Disney+ Hotstar" />

        <ul class="nav-links">
            <li class="nav-items"><a href="#">MAD</a></li>
            <li class="nav-items"><a href="#">Movies</a></li>
            <li class="nav-items"><a href="#">Sports</a></li>
            <li class="nav-items"><a href="#">Premium</a></li>
            <li class="nav-items"><a href="#">Disney+</a></li>
        </ul>

        <div class="right-container">
            <input type="text" class="search-box" placeholder="Search" />
            <button class="sub-btn">Subscribe</button>
            <a href="#" class="login-link">Login</a>
        </div>
    </nav>

    <!-- Carousel -->
    <div class="carousel-container">
        <div class="carousel">
            <div class="slider">
                <div class="slide-content">
                    <h1 class="movie-title">Loki</h1>
                    <p class="movie-des">The God of Mischief steps out of his brother's shadow in a time-bending series full of mystery, wit, and glorious purpose.</p>
                </div>
                <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='300' height='170' viewBox='0 0 300 170'%3E%3Crect width='300' height='170' fill='%231f2b41'/%3E%3Ctext x='30' y='90' font-family='Segoe UI' font-size='28' fill='%23a0c8ff'%3ELOKI%3C/text%3E%3Ctext x='30' y='120' font-family='Segoe UI' font-size='14' fill='%238f9bb3'%3EDisney+ Original%3C/text%3E%3C/svg%3E" alt="Loki banner" />
            </div>
        </div>
    </div>

    <!-- Brand video cards -->
    <div class="video-card-container">
        <div class="video-card">
            <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='120' height='70'%3E%3Crect width='120' height='70' fill='%231d2a44'/%3E%3Ctext x='12' y='42' fill='%23aac0f0' font-size='18' font-weight='600'%3EDisney%3C/text%3E%3C/svg%3E" class="video-card-image" alt="Disney" />
            <video src="https://www.w3schools.com/html/mov_bbb.mp4" muted loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='120' height='70'%3E%3Crect width='120' height='70' fill='%231d2a44'/%3E%3Ctext x='12' y='42' fill='%23aac0f0' font-size='18' font-weight='600'%3EPixar%3C/text%3E%3C/svg%3E" class="video-card-image" alt="Pixar" />
            <video src="https://www.w3schools.com/html/mov_bbb.mp4" muted loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='120' height='70'%3E%3Crect width='120' height='70' fill='%231d2a44'/%3E%3Ctext x='8' y='42' fill='%23aac0f0' font-size='18' font-weight='600'%3EMarvel%3C/text%3E%3C/svg%3E" class="video-card-image" alt="Marvel" />
            <video src="https://www.w3schools.com/html/mov_bbb.mp4" muted loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='120' height='70'%3E%3Crect width='120' height='70' fill='%231d2a44'/%3E%3Ctext x='6' y='42' fill='%23aac0f0' font-size='18' font-weight='600'%3EStar Wars%3C/text%3E%3C/svg%3E" class="video-card-image" alt="Star Wars" />
            <video src="https://www.w3schools.com/html/mov_bbb.mp4" muted loop class="card-video"></video>
        </div>
        <div class="video-card">
            <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='120' height='70'%3E%3Crect width='120' height='70' fill='%231d2a44'/%3E%3Ctext x='4' y='42' fill='%23aac0f0' font-size='16' font-weight='600'%3ENational Geo%3C/text%3E%3C/svg%3E" class="video-card-image" alt="National Geographic" />
            <video src="https://www.w3schools.com/html/mov_bbb.mp4" muted loop class="card-video"></video>
        </div>
    </div>

    <!-- Recommended for you -->
    <h1 class="title">Recommended for you</h1>
    <div class="movies-list">
        <button class="pre-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='20' height='20' viewBox='0 0 24 24' fill='none' stroke='white' stroke-width='2'%3E%3Cpath d='M15 18l-6-6 6-6'/%3E%3C/svg%3E" alt="prev" /></button>
        <button class="nxt-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='20' height='20' viewBox='0 0 24 24' fill='none' stroke='white' stroke-width='2'%3E%3Cpath d='M9 18l6-6-6-6'/%3E%3C/svg%3E" alt="next" /></button>
        <div class="card-container" id="recContainer">
            <!-- cards injected via JS -->
        </div>
    </div>

    <!-- Popular Shows -->
    <h1 class="title">Popular Shows</h1>
    <div class="movies-list">
        <button class="pre-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='20' height='20' viewBox='0 0 24 24' fill='none' stroke='white' stroke-width='2'%3E%3Cpath d='M15 18l-6-6 6-6'/%3E%3C/svg%3E" alt="prev" /></button>
        <button class="nxt-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='20' height='20' viewBox='0 0 24 24' fill='none' stroke='white' stroke-width='2'%3E%3Cpath d='M9 18l6-6-6-6'/%3E%3C/svg%3E" alt="next" /></button>
        <div class="card-container" id="popularContainer"></div>
    </div>

    <!-- New Releases -->
    <h1 class="title">New Releases</h1>
    <div class="movies-list">
        <button class="pre-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='20' height='20' viewBox='0 0 24 24' fill='none' stroke='white' stroke-width='2'%3E%3Cpath d='M15 18l-6-6 6-6'/%3E%3C/svg%3E" alt="prev" /></button>
        <button class="nxt-btn"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='20' height='20' viewBox='0 0 24 24' fill='none' stroke='white' stroke-width='2'%3E%3Cpath d='M9 18l6-6-6-6'/%3E%3C/svg%3E" alt="next" /></button>
        <div class="card-container" id="newContainer"></div>
    </div>

    <script>
        // ----- helper to build cards -----
        function createCard(title, desc, imgPlaceholder) {
            const card = document.createElement('div');
            card.className = 'card';
            card.innerHTML = `
                <img src="${imgPlaceholder}" class="card-img" alt="${title}" />
                <div class="card-body">
                    <h2 class="name">${title}</h2>
                    <h6 class="des">${desc}</h6>
                    <button class="watchlist-btn"><i class="far fa-plus-circle" style="margin-right:4px;"></i> watchlist</button>
                </div>
            `;
            return card;
        }

        // sample data (friendly placeholders)
        const recTitles = ['Chichore', 'Avengers Endgame', 'Ford v Ferrari', 'Mulan', 'Loki', 'Thor Ragnarok', 'Avengers', 'Ok Computer', 'Dil Bechara', 'Soul', 'The Office', 'Luca', 'Dark Phoenix', 'TanHaji', 'Euphoria'];
        const popTitles = ['Yeh Rishta', 'Anupama', 'Imlie', 'City of Dreams', 'Shin-chan', 'Doraemon', 'Mahadev', 'Grahan', 'Pandya Store', 'Luca', 'Mahabharat', 'RadhaKrishn', 'Phineas and Ferb', 'Loki', 'Special Ops', 'Hostages', 'Criminal Justice'];
        const newTitles = ['Collar Bomb', 'WandaVision', 'Carbon', 'Hungama 2', 'Hanuman', 'Boys Don\'t Cry', 'Shaadisthan', 'Loki', 'Love, Simon', 'Betty', 'Chhuri', 'Cars 3', 'Pose', 'Modern Family', 'Brave', 'Dil Bechara'];

        function fillContainer(containerId, titles) {
            const container = document.getElementById(containerId);
            if (!container) return;
            container.innerHTML = '';
            titles.forEach((t, i) => {
                const desc = `Lorem ipsum · ${t.slice(0,4)}`;
                const img = `data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='200' height='280' viewBox='0 0 200 280'%3E%3Crect width='200' height='280' fill='%231a263a'/%3E%3Ctext x='20' y='140' fill='%23aac0f0' font-size='20' font-weight='500'%3E${t.substring(0,12)}%3C/text%3E%3Ctext x='20' y='170' fill='%235f7a9e' font-size='12'%3E${t.length > 12 ? '...' : ''}%3C/text%3E%3C/svg%3E`;
                container.appendChild(createCard(t, desc, img));
            });
        }

        fillContainer('recContainer', recTitles);
        fillContainer('popularContainer', popTitles);
        fillContainer('newContainer', newTitles);

        // ----- scroll buttons (horizontal) -----
        document.querySelectorAll('.movies-list').forEach(list => {
            const container = list.querySelector('.card-container');
            const pre = list.querySelector('.pre-btn');
            const nxt = list.querySelector('.nxt-btn');
            if (pre && nxt && container) {
                pre.addEventListener('click', () => {
                    container.scrollBy({ left: -300, behavior: 'smooth' });
                });
                nxt.addEventListener('click', () => {
                    container.scrollBy({ left: 300, behavior: 'smooth' });
                });
            }
        });

        // video-card hover play (muted)
        document.querySelectorAll('.video-card').forEach(card => {
            const vid = card.querySelector('.card-video');
            if (vid) {
                card.addEventListener('mouseenter', () => {
                    vid.play().catch(() => {});
                });
                card.addEventListener('mouseleave', () => {
                    vid.pause();
                    vid.currentTime = 0;
                });
            }
        });
    </script>
</body>
</html>
