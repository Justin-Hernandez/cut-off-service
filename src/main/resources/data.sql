INSERT INTO Currency VALUES (1, 'AED', 'United Arab Emirates');
INSERT INTO Currency VALUES (2, 'AUD', 'Australia');
INSERT INTO Currency VALUES (3, 'BGN', 'Bulgaria');
INSERT INTO Currency VALUES (4, 'CAD', 'Canada');
INSERT INTO Currency VALUES (5, 'CHF', 'Switzerland');
INSERT INTO Currency VALUES (6, 'CNH', 'China (Hong Kong)');
INSERT INTO Currency VALUES (7, 'CZK', 'Czech Republic');
INSERT INTO Currency VALUES (8, 'DKK', 'Denmark');
INSERT INTO Currency VALUES (9, 'EUR', 'Euro Area');
INSERT INTO Currency VALUES (10, 'GBP', 'United Kingdom');
INSERT INTO Currency VALUES (11, 'HKD', 'Hong Kong');
INSERT INTO Currency VALUES (12, 'HRK', 'Croatia');
INSERT INTO Currency VALUES (13, 'HUF', 'Hungary');
INSERT INTO Currency VALUES (14, 'ILS', 'Israel');
INSERT INTO Currency VALUES (15, 'JPY', 'Japan');
INSERT INTO Currency VALUES (16, 'MXN', 'Mexico');
INSERT INTO Currency VALUES (17, 'NOK', 'Norway');
INSERT INTO Currency VALUES (18, 'NZD', 'New Zealand');
INSERT INTO Currency VALUES (19, 'PLN', 'Poland');
INSERT INTO Currency VALUES (20, 'RON', 'Romania');
INSERT INTO Currency VALUES (21, 'RUB', 'Russia');
INSERT INTO Currency VALUES (22, 'RSD', 'Serbia');
INSERT INTO Currency VALUES (23, 'SAR', 'Saudi Arabia');
INSERT INTO Currency VALUES (24, 'SEK', 'Sweden');
INSERT INTO Currency VALUES (25, 'SGD', 'Singapore');
INSERT INTO Currency VALUES (26, 'THB', 'Thailand');
INSERT INTO Currency VALUES (27, 'TRY', 'Turkey');
INSERT INTO Currency VALUES (28, 'USD', 'United States');
INSERT INTO Currency VALUES (29, 'ZAR', 'South Africa');

-- Today
INSERT INTO Cut_Off_Times VALUES (1, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (2, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (3, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (4, curdate(), '15:30:00', false, false);
INSERT INTO Cut_Off_Times VALUES (5, curdate(), '10:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (6, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (7, curdate(), '11:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (8, curdate(), '15:30:00', false, false);
INSERT INTO Cut_Off_Times VALUES (9, curdate(), '16:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (10, curdate(), '15:30:00', false, false);
INSERT INTO Cut_Off_Times VALUES (11, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (12, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (13, curdate(), '11:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (14, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (15, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (16, curdate(), '11:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (17, curdate(), '15:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (18, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (19, curdate(), '10:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (20, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (21, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (22, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (23, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (24, curdate(), '15:30:00', false, false);
INSERT INTO Cut_Off_Times VALUES (25, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (26, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (27, curdate(), null, true, false);
INSERT INTO Cut_Off_Times VALUES (28, curdate(), '16:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (29, curdate(), null, true, false);

-- Tomorrow
INSERT INTO Cut_Off_Times VALUES (1, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (2, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (3, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (4, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (5, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (6, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (7, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (8, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (9, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (10, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (11, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (12, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (13, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (14, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (15, curdate() + INTERVAL '1' DAY, '15:30:00', false, false);
INSERT INTO Cut_Off_Times VALUES (16, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (17, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (18, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (19, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (20, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (21, curdate() + INTERVAL '1' DAY, '13:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (22, curdate() + INTERVAL '1' DAY, null, true, false);
INSERT INTO Cut_Off_Times VALUES (23, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (24, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (25, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (26, curdate() + INTERVAL '1' DAY, '09:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (27, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);
INSERT INTO Cut_Off_Times VALUES (28, curdate() + INTERVAL '1' DAY, null, false, true);
INSERT INTO Cut_Off_Times VALUES (29, curdate() + INTERVAL '1' DAY, '14:00:00', false, false);