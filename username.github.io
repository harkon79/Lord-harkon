<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lord Harkon</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Tajawal:wght@400;700&display=swap');
        
        body {
            font-family: 'Tajawal', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #111;
            color: white;
            overflow-x: hidden;
            position: relative;
        }
        
        .frame {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            border: 15px solid red;
            pointer-events: none;
            z-index: 1000;
            animation: colorChange 5s infinite alternate;
        }
        
        @keyframes colorChange {
            0% { border-color: red; }
            50% { border-color: blue; }
            100% { border-color: darkred; }
        }
        
        .typing-effect {
            overflow: hidden;
            white-space: nowrap;
            border-right: 3px solid white;
            animation: typing 3.5s steps(40, end), blink-caret 0.75s step-end infinite;
        }
        
        @keyframes typing {
            from { width: 0 }
            to { width: 100% }
        }
        
        @keyframes blink-caret {
            from, to { border-color: transparent }
            50% { border-color: white; }
        }
        
        .skull {
            position: absolute;
            font-size: 24px;
            color: white;
            user-select: none;
            z-index: 10;
            animation: fall linear infinite;
        }
        
        @keyframes fall {
            to { transform: translateY(100vh) rotate(360deg); }
        }
        
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            position: relative;
            z-index: 5;
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
        }
        
        .profile {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .profile-img {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            object-fit: cover;
            border: 5px solid #333;
            box-shadow: 0 0 20px rgba(255, 0, 0, 0.5);
            transition: transform 0.3s;
        }
        
        .profile-img:hover {
            transform: scale(1.05);
            box-shadow: 0 0 30px rgba(255, 0, 0, 0.8);
        }
        
        h1 {
            color: #f00;
            text-shadow: 0 0 10px rgba(255, 0, 0, 0.7);
            font-size: 2.5em;
            margin-bottom: 10px;
        }
        
        h2 {
            color: #08f;
            border-bottom: 2px solid #08f;
            padding-bottom: 5px;
            margin-top: 30px;
        }
        
        .info-item {
            margin-bottom: 15px;
            padding-left: 20px;
            position: relative;
        }
        
        .info-item:before {
            content: "•";
            position: absolute;
            left: 0;
            color: #f00;
        }
        
        .social-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
            flex-wrap: wrap;
        }
        
        .social-link {
            display: flex;
            align-items: center;
            color: white;
            font-size: 18px;
            transition: all 0.3s;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 5px;
            background-color: rgba(255, 0, 0, 0.2);
        }
        
        .social-link:hover {
            transform: scale(1.1);
            background-color: rgba(255, 0, 0, 0.4);
        }
        
        .social-link i {
            margin-left: 8px;
            font-size: 24px;
        }
        
        /* تأثيرات إضافية */
        .scary-text {
            animation: glow 2s ease-in-out infinite alternate;
        }
        
        @keyframes glow {
            from { text-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 15px #f00, 0 0 20px #f00; }
            to { text-shadow: 0 0 10px #fff, 0 0 20px #ff0, 0 0 30px #f00, 0 0 40px #f00; }
        }
        
        .warning {
            color: #ff0;
            border-left: 3px solid #f00;
            padding-left: 15px;
            margin: 20px 0;
        }
    </style>
    <!-- أيقونات Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <!-- الإطار المتغير -->
    <div class="frame"></div>
    
    <!-- الجمجمة المتساقطة سيتم إضافتها بالجافاسكريبت -->
    
    <!-- الصوت المرعب (سيتم تشغيله عند تحميل الصفحة) -->
    <audio id="scarySound" loop>
        <source src="https://assets.mixkit.co/sfx/preview/mixkit-horror-thunder-rain-1257.mp3" type="audio/mpeg">
        متصفحك لا يدعم عنصر الصوت.
    </audio>
    
    <!-- المحتوى الرئيسي -->
    <div class="container">
        <div class="profile">
            <!-- الصورة من الرابط الذي قدمته -->
            <img src="https://i.ibb.co/0jQJ0Jz/Lord-Harkon.jpg" alt="Lord Harkon" class="profile-img">
            <h1 class="typing-effect">Lord Harkon</h1>
            <p class="scary-text">The Dark Lord of Cyberspace</p>
        </div>
        
        <section>
            <h2>المعلومات الشخصية</h2>
            <div class="info-item">الاسم • Lord Harkon •</div>
            <div class="info-item">العمر • 25 years •</div>
            <div class="info-item">الاهتمامات • Programming languages and Python •</div>
            <div class="info-item">المهارات • Hacking websites and personal accounts •</div>
        </section>
        
        <section>
            <h2>السيرة الذاتية</h2>
            <p class="warning">I am an independent hacker. I do not work for anyone and I will not perform attacks for money.</p>
            <p>أنا هاكر مستقل، لا أعمل لصالح أحد ولن أنفذ هجمات مقابل المال.</p>
        </section>
        
        <section>
            <h2>تواصل معي</h2>
            <div class="social-links">
                <a href="https://www.instagram.com/9taap?igsh=MXdsenRzbWhuMHdxag==" target="_blank" class="social-link">
                    <i class="fab fa-instagram"></i>
                    إنستغرام
                </a>
                <a href="https://www.tiktok.com/@sd9u?_r=1&_d=ed7ab1j5f71fb0&sec_uid=MS4wLjABAAAApRk2YAPsWWRJRj2xs9uAV7Ru-T_LMTNNx5boOsoaOVqSUzE2VJ6D2HiRulAnwQ5d&share_author_id=6737719269284660225&sharer_language=ar&source=h5_m&u_code=d8a9fke8hc9619&timestamp=1750622887&user_id=6737719269284660225&sec_user_id=MS4wLjABAAAApRk2YAPsWWRJRj2xs9uAV7Ru-T_LMTNNx5boOsoaOVqSUzE2VJ6D2HiRulAnwQ5d&utm_source=copy&utm_campaign=client_share&utm_medium=android&share_iid=7515843829128316679&share_link_id=07be61ef-4a9d-4cf0-89de-0900446ff747&share_app_id=1233&ugbiz_name=ACCOUNT&ug_btm=b8727%2Cb7360&social_share_type=5&enable_checksum=1" target="_blank" class="social-link">
                    <i class="fab fa-tiktok"></i>
                    تيك توك
                </a>
                <a href="https://t.me/S_5_S" target="_blank" class="social-link">
                    <i class="fab fa-telegram"></i>
                    تيليجرام
                </a>
            </div>
        </section>
    </div>
    
    <script>
        // إنشاء الجماجم المتساقطة
        function createFallingSkulls() {
            const skulls = ['💀', '☠️', '👻', '🦇'];
            const numSkulls = 20;
            
            for (let i = 0; i < numSkulls; i++) {
                setTimeout(() => {
                    const skull = document.createElement('div');
                    skull.className = 'skull';
                    skull.textContent = skulls[Math.floor(Math.random() * skulls.length)];
                    
                    // تحديد موضع عشوائي
                    const startPosX = Math.random() * window.innerWidth;
                    const duration = 5 + Math.random() * 10;
                    const delay = Math.random() * 5;
                    
                    skull.style.left = `${startPosX}px`;
                    skull.style.top = '-50px';
                    skull.style.animationDuration = `${duration}s`;
                    skull.style.animationDelay = `${delay}s`;
                    
                    document.body.appendChild(skull);
                    
                    // إزالة الجمجمة بعد سقوطها
                    setTimeout(() => {
                        skull.remove();
                    }, duration * 1000);
                }, i * 300);
            }
            
            // استمرار إنشاء الجماجم
            setTimeout(createFallingSkulls, numSkulls * 300);
        }
        
        // تشغيل الصوت المرعب
        function playScarySound() {
            const audio = document.getElementById('scarySound');
            audio.volume = 0.3; // تخفيض الصوت قليلاً
            audio.play().catch(e => console.log('لا يمكن تشغيل الصوت:', e));
            
            // عند النقر في أي مكان على الصفحة، تشغيل الصوت (لسياسات المتصفح)
            document.addEventListener('click', () => {
                audio.play().catch(e => console.log('لا يمكن تشغيل الصوت:', e));
            }, { once: true });
        }
        
        // بدء التأثيرات عند تحميل الصفحة
        window.addEventListener('DOMContentLoaded', () => {
            createFallingSkulls();
            playScarySound();
            
            // تأثيرات إضافية للكتابة
            const elements = document.querySelectorAll('.scary-text');
            elements.forEach(el => {
                setInterval(() => {
                    el.style.color = `hsl(${Math.random() * 60}, 100%, 50%)`;
                }, 1000);
            });
        });
    </script>
</body>
</html>
