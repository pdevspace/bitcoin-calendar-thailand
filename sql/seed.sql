-- Insert into btc_locations
INSERT INTO btc_locations (name_th, location_name_th, google_map_url)
VALUES
('ห้องอาหาร Goji+', 'BANGKOK MARRIOTT MARQUIS QUEEN’S PARK', 'https://www.google.com/maps/place/Bangkok+Marriott+Marquis+Queen%E2%80%99s+Park/@13.7303558,100.56322,17z/data=!4m9!3m8!1s0x30e29edd5ad0fe0d:0xa3e851be80b1fdf5!5m2!4m1!1i2!8m2!3d13.7303558!4d100.5657949!16s%2Fg%2F11c0r59rgq?entry=ttu&g_ep=EgoyMDI1MDQyMy4wIKXMDSoASAFQAw%3D%3D'),
('ห้องประชุม', 'BANGKOK MARRIOTT MARQUIS QUEEN’S PARK', 'https://www.google.com/maps/place/Bangkok+Marriott+Marquis+Queen%E2%80%99s+Park/@13.7303558,100.56322,17z/data=!4m9!3m8!1s0x30e29edd5ad0fe0d:0xa3e851be80b1fdf5!5m2!4m1!1i2!8m2!3d13.7303558!4d100.5657949!16s%2Fg%2F11c0r59rgq?entry=ttu&g_ep=EgoyMDI1MDQyMy4wIKXMDSoASAFQAw%3D%3D'),
('Chapter Market', NULL, 'https://www.google.com/maps/place/Chapter+Market/@13.7263175,100.5671883,17z/data=!4m10!1m2!2m1!1sChapter+Market!3m6!1s0x30e29f892893536b:0x245287072a7d7816!8m2!3d13.7267504!4d100.5699635!15sCg5DaGFwdGVyIE1hcmtldFoQIg5jaGFwdGVyIG1hcmtldJIBCmZvb2RfY291cnSqATYQATIeEAEiGrO-ZiMeK3rPa4y2Nrg4DVK4zZmY1tl0L-uBMhIQAiIOY2hhcHRlciBtYXJrZXTgAQA!16s%2Fg%2F11w33m4yqk?entry=ttu&g_ep=EgoyMDI1MDQyMy4wIKXMDSoASAFQAw%3D%3D'),
('Citadel', 'CDC Foundation', 'https://www.google.com/maps/place/CDC+Foundation/@13.9876732,100.7015431,17z/data=!3m1!4b1!4m6!3m5!1s0x311d7ece7f50f873:0xe964ee980e267b76!8m2!3d13.987668!4d100.704118!16s%2Fg%2F11bymt0fvw?entry=ttu&g_ep=EgoyMDI1MDQyMy4wIKXMDSoASAFQAw%3D%3D'),
('Bitcoin Learning Center', NULL, 'https://www.google.com/maps/place/Bitcoin+Learning+Center/@18.7936981,98.9993618,17z/data=!4m14!1m7!3m6!1s0x30da3b003efd8aff:0x45b9ed973f81fa8e!2sBitcoin+Learning+Center!8m2!3d18.793693!4d99.0019367!16s%2Fg%2F11vszcs6bf!3m5!1s0x30da3b003efd8aff:0x45b9ed973f81fa8e!8m2!3d18.793693!4d99.0019367!16s%2Fg%2F11vszcs6bf?entry=ttu&g_ep=EgoyMDI1MDQyMy4wIKXMDSoASAFQAw%3D%3D'),
('CHIT HOLE Royal River', NULL, 'https://www.google.com/maps/place/CHIT+HOLE+Royal+River/@13.7836912,100.4992421,18z/data=!3m1!4b1!4m6!3m5!1s0x30e29ba9e693ebd1:0x123e563abbf0ad5!8m2!3d13.783689!4d100.5003192!16s%2Fg%2F11trlsdmx_?entry=ttu&g_ep=EgoyMDI1MDQyMy4wIKXMDSoASAFQAw%3D%3D');

-- Insert into btc_bitcoiners
INSERT INTO btc_bitcoiners (name_th, name_en)
VALUES
('Piriya', 'Piriya'),
('Saifedean', 'Saifedean'),
('P’ Chit', 'P’ Chit'),
('Bitcoin Learning Center', 'Bitcoin Learning Center');

-- Insert into btc_events
INSERT INTO btc_events (name_th, name_en, event_number, description_th, date, url, register_url, ticket_url, price)
VALUES
('CHIT TALK สุขุมวิท', 'CHIT TALK Sukhumvit', NULL, 'พี่ชิตมาแล้ว! เตรียมจิตให้พร้อม แล้วจิบเบียร์ให้เบา กับ "เบียร์บำบัด" กิจกรรมบำบัดจิตผ่านการจิบแอล(กอฮอล์) แบบมีคลาส', '2025-04-26', 'https://web.facebook.com/chitholeofficial/posts/pfbid0mxBK4h8LDz1Zthd6LTzKUtwD4znogZMKfSFcd2oykLf7UdAXSbPjiv2rrSYV3ieQl', NULL, NULL, NULL),
('Citadel Meet Up', 'Citadel Meet Up', NULL, NULL, '2025-05-11', 'https://web.facebook.com/LightningPiranha/posts/pfbid0G3GRq7Qc9QYWLYfUshnaL4oEijMFVNaBn7cgx4BGfGRvCe7cZra48zrqc2taM6yzl', NULL, NULL, NULL),
('The Bitcoin Standard Meet Up', 'The Bitcoin Standard Meet Up', NULL, 'แฟนคลับ อาจารย์ Saifedean Ammous ไม่ควรพลาด กับงาน The Bitcoin Standard Meet Up งานที่เราจะได้พบกับผู้ที่ขึ้นชื่อได้ว่าเป็นอาจารย์ของเหล่าอาจารย์', '2023-05-13', 'https://web.facebook.com/LightningPiranha/posts/pfbid0qqNQQbPcXCiYVT8s13Rssqqjyeip7RHUPb8UQnfGpG9SM28u7vsqMEFvbzUMEARyl?__tn__=%2CO*F', NULL, 'https://www.eventpop.me/e/87569/tbsmeetup', '{"THB": 2750.00}'),
('Bitcoin Open House @Bitcoin Learning Center', 'Bitcoin Open House @Bitcoin Learning Center', '#2 Day1', NULL, '2025-05-17', 'https://web.facebook.com/bitcoinchiangmai/posts/pfbid024HgiH3Czks74EuxFCe8xYmG3kmnkaD3Mg4H5MR3sjqvou86NZ39NwJhYB76C25KEl', 'https://docs.google.com/forms/d/e/1FAIpQLSdtX65_JMplLHFiJyiDeZyW3nrPn1fgn1Fhu9vtDLFsy7dlxQ/viewform?pli=1', NULL, NULL),
('Bitcoin Open House @Bitcoin Learning Center', 'Bitcoin Open House @Bitcoin Learning Center', '#2 Day2', NULL, '2025-05-18', 'https://web.facebook.com/bitcoinchiangmai/posts/pfbid024HgiH3Czks74EuxFCe8xYmG3kmnkaD3Mg4H5MR3sjqvou86NZ39NwJhYB76C25KEl', 'https://docs.google.com/forms/d/e/1FAIpQLSdtX65_JMplLHFiJyiDeZyW3nrPn1fgn1Fhu9vtDLFsy7dlxQ/viewform?pli=1', NULL, NULL),
('Bitcoin Pizza Day 2025', 'Bitcoin Pizza Day 2025', NULL, NULL, '2025-05-24', 'https://web.facebook.com/LightningPiranha/posts/pfbid0CfLu5XQveXYCfBEgKj4fv7gQ1KMuhm985T7KCTYWZZBNueF5SHbPdDVdCZKLHuocl', 'https://lu.ma/event/manage/evt-UGFNyMfKK2jd4D4', NULL, NULL);

-- Insert into btc_event_details
INSERT INTO btc_event_details (event_id, location_id, description_th, start_time, end_time, bitcoiner_ids)
VALUES
((SELECT id FROM btc_events WHERE name_th = 'CHIT TALK สุขุมวิท'), (SELECT id FROM btc_locations WHERE name_th = 'Chapter Market'), NULL, '2025-04-26 19:00:00', '2025-04-26 20:00:00', ARRAY[(SELECT id FROM btc_bitcoiners WHERE name_th = 'P’ Chit')]),
((SELECT id FROM btc_events WHERE name_th = 'Citadel Meet Up'), (SELECT id FROM btc_locations WHERE name_th = 'Citadel'), NULL, NULL, NULL, ARRAY[(SELECT id FROM btc_bitcoiners WHERE name_th = 'Piriya')]),
((SELECT id FROM btc_events WHERE name_th = 'The Bitcoin Standard Meet Up'), (SELECT id FROM btc_locations WHERE name_th = 'ห้องประชุม'), 'พูดคุยสดบนเวที Alt+Tab กับ อ.พิริยะ x Saifedean', '2025-05-13 10:00:00', '2025-05-13 12:00:00', ARRAY[(SELECT id FROM btc_bitcoiners WHERE name_th = 'Piriya'), (SELECT id FROM btc_bitcoiners WHERE name_th = 'Saifedean')]),
((SELECT id FROM btc_events WHERE name_th = 'The Bitcoin Standard Meet Up'), (SELECT id FROM btc_locations WHERE name_th = 'ห้องอาหาร Goji+'), 'Exclusive Lunch Buffet แบบใกล้ชิด (Goji+)', '2025-05-13 12:00:00', '2025-05-13 14:00:00', ARRAY[(SELECT id FROM btc_bitcoiners WHERE name_th = 'Piriya'), (SELECT id FROM btc_bitcoiners WHERE name_th = 'Saifedean')]),
((SELECT id FROM btc_events WHERE name_th = 'The Bitcoin Standard Meet Up'), (SELECT id FROM btc_locations WHERE name_th = 'ห้องประชุม'), 'Networking, เซ็นหนังสือ, ถ่ายภาพ, ถามตอบ', '2025-05-13 14:30:00', '2025-05-13 15:30:00', ARRAY[(SELECT id FROM btc_bitcoiners WHERE name_th = 'Piriya'), (SELECT id FROM btc_bitcoiners WHERE name_th = 'Saifedean')]),
((SELECT id FROM btc_events WHERE name_th = 'The Bitcoin Standard Meet Up'), (SELECT id FROM btc_locations WHERE name_th = 'ห้องประชุม'), 'AMA สไตล์ Saifedean ถามจริง ตอบลึก', '2025-05-13 15:30:00', '2025-05-13 17:00:00', ARRAY[(SELECT id FROM btc_bitcoiners WHERE name_th = 'Piriya'), (SELECT id FROM btc_bitcoiners WHERE name_th = 'Saifedean')]),

((SELECT id FROM btc_events WHERE event_number = '#2 Day1'), (SELECT id FROM btc_locations WHERE name_th = 'Bitcoin Learning Center'), 'Updates and Progress', '2025-05-17 13:00:00', '2025-05-17 17:00:00', ARRAY[(SELECT id FROM btc_bitcoiners WHERE name_th = 'Bitcoin Learning Center')]),
((SELECT id FROM btc_events WHERE event_number = '#2 Day2'), (SELECT id FROM btc_locations WHERE name_th = 'Bitcoin Learning Center'), 'Bitcoin 101, Hardware wallet, Bitcoin Tax, Bitcoin Half Marathon 2025', '2025-05-18 13:00:00', '2025-05-18 17:00:00', ARRAY[(SELECT id FROM btc_bitcoiners WHERE name_th = 'Bitcoin Learning Center')]),
((SELECT id FROM btc_events WHERE name_th = 'Bitcoin Pizza Day 2025'), (SELECT id FROM btc_locations WHERE name_th = 'CHIT HOLE Royal River'), NULL, '2025-05-24 18:00:00', '2025-05-24 21:00:00', ARRAY[(SELECT id FROM btc_bitcoiners WHERE name_th = 'P’ Chit')]);

