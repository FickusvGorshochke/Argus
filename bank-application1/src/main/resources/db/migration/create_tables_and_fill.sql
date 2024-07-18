CREATE TABLE IF NOT EXISTS client (
                                      id SERIAL PRIMARY KEY,
                                      full_name VARCHAR(255) NOT NULL,
                                      phone_number VARCHAR(20) NOT NULL,
                                      email VARCHAR(255) NOT NULL,
                                      passport_number VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS bank (
                                    id SERIAL PRIMARY KEY,
                                    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS loan (
                                    id SERIAL PRIMARY KEY,
                                    bank_id INT NOT NULL,
                                    credit_limit DECIMAL(15, 2) NOT NULL,
                                    interest_rate DECIMAL(5, 2) NOT NULL,
                                    FOREIGN KEY (bank_id) REFERENCES bank(id)
);

CREATE TABLE IF NOT EXISTS loan_offer (
                                          id SERIAL PRIMARY KEY,
                                          client_id INT NOT NULL,
                                          loan_id INT NOT NULL,
                                          loan_amount DECIMAL(15, 2) NOT NULL,
                                          FOREIGN KEY (client_id) REFERENCES client(id),
                                          FOREIGN KEY (loan_id) REFERENCES loan(id)
);

CREATE TABLE IF NOT EXISTS payment_schedule (
                                                id SERIAL PRIMARY KEY,
                                                loan_offer_id INT NOT NULL,
                                                payment_date DATE NOT NULL,
                                                payment_amount DECIMAL(15, 2) NOT NULL,
                                                principal_amount DECIMAL(15, 2) NOT NULL,
                                                interest_amount DECIMAL(15, 2) NOT NULL,
                                                FOREIGN KEY (loan_offer_id) REFERENCES loan_offer(id)
);

CREATE TABLE IF NOT EXISTS credit (
                                      id SERIAL PRIMARY KEY,
                                      limit_amount DECIMAL(15, 2) NOT NULL,
                                      interest_rate DECIMAL(5, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS credit_offer (
                                            id SERIAL PRIMARY KEY,
                                            client_id INT NOT NULL,
                                            credit_id INT NOT NULL,
                                            offer_amount DECIMAL(15, 2) NOT NULL,
                                            FOREIGN KEY (client_id) REFERENCES client(id),
                                            FOREIGN KEY (credit_id) REFERENCES credit(id)
);

-- Вставка тестовых данных для клиентов
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 1',
                                                                                '123-456-7891',
                                                                                'client1@example.com',
                                                                                'A123451'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 2',
                                                                                '123-456-7892',
                                                                                'client2@example.com',
                                                                                'A123452'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 3',
                                                                                '123-456-7893',
                                                                                'client3@example.com',
                                                                                'A123453'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 4',
                                                                                '123-456-7894',
                                                                                'client4@example.com',
                                                                                'A123454'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 5',
                                                                                '123-456-7895',
                                                                                'client5@example.com',
                                                                                'A123455'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 6',
                                                                                '123-456-7896',
                                                                                'client6@example.com',
                                                                                'A123456'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 7',
                                                                                '123-456-7897',
                                                                                'client7@example.com',
                                                                                'A123457'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 8',
                                                                                '123-456-7898',
                                                                                'client8@example.com',
                                                                                'A123458'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 9',
                                                                                '123-456-7899',
                                                                                'client9@example.com',
                                                                                'A123459'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 10',
                                                                                '123-456-78910',
                                                                                'client10@example.com',
                                                                                'A1234510'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 11',
                                                                                '123-456-78911',
                                                                                'client11@example.com',
                                                                                'A1234511'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 12',
                                                                                '123-456-78912',
                                                                                'client12@example.com',
                                                                                'A1234512'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 13',
                                                                                '123-456-78913',
                                                                                'client13@example.com',
                                                                                'A1234513'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 14',
                                                                                '123-456-78914',
                                                                                'client14@example.com',
                                                                                'A1234514'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 15',
                                                                                '123-456-78915',
                                                                                'client15@example.com',
                                                                                'A1234515'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 16',
                                                                                '123-456-78916',
                                                                                'client16@example.com',
                                                                                'A1234516'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 17',
                                                                                '123-456-78917',
                                                                                'client17@example.com',
                                                                                'A1234517'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 18',
                                                                                '123-456-78918',
                                                                                'client18@example.com',
                                                                                'A1234518'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 19',
                                                                                '123-456-78919',
                                                                                'client19@example.com',
                                                                                'A1234519'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 20',
                                                                                '123-456-78920',
                                                                                'client20@example.com',
                                                                                'A1234520'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 21',
                                                                                '123-456-78921',
                                                                                'client21@example.com',
                                                                                'A1234521'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 22',
                                                                                '123-456-78922',
                                                                                'client22@example.com',
                                                                                'A1234522'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 23',
                                                                                '123-456-78923',
                                                                                'client23@example.com',
                                                                                'A1234523'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 24',
                                                                                '123-456-78924',
                                                                                'client24@example.com',
                                                                                'A1234524'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 25',
                                                                                '123-456-78925',
                                                                                'client25@example.com',
                                                                                'A1234525'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 26',
                                                                                '123-456-78926',
                                                                                'client26@example.com',
                                                                                'A1234526'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 27',
                                                                                '123-456-78927',
                                                                                'client27@example.com',
                                                                                'A1234527'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 28',
                                                                                '123-456-78928',
                                                                                'client28@example.com',
                                                                                'A1234528'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 29',
                                                                                '123-456-78929',
                                                                                'client29@example.com',
                                                                                'A1234529'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 30',
                                                                                '123-456-78930',
                                                                                'client30@example.com',
                                                                                'A1234530'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 31',
                                                                                '123-456-78931',
                                                                                'client31@example.com',
                                                                                'A1234531'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 32',
                                                                                '123-456-78932',
                                                                                'client32@example.com',
                                                                                'A1234532'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 33',
                                                                                '123-456-78933',
                                                                                'client33@example.com',
                                                                                'A1234533'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 34',
                                                                                '123-456-78934',
                                                                                'client34@example.com',
                                                                                'A1234534'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 35',
                                                                                '123-456-78935',
                                                                                'client35@example.com',
                                                                                'A1234535'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 36',
                                                                                '123-456-78936',
                                                                                'client36@example.com',
                                                                                'A1234536'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 37',
                                                                                '123-456-78937',
                                                                                'client37@example.com',
                                                                                'A1234537'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 38',
                                                                                '123-456-78938',
                                                                                'client38@example.com',
                                                                                'A1234538'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 39',
                                                                                '123-456-78939',
                                                                                'client39@example.com',
                                                                                'A1234539'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 40',
                                                                                '123-456-78940',
                                                                                'client40@example.com',
                                                                                'A1234540'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 41',
                                                                                '123-456-78941',
                                                                                'client41@example.com',
                                                                                'A1234541'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 42',
                                                                                '123-456-78942',
                                                                                'client42@example.com',
                                                                                'A1234542'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 43',
                                                                                '123-456-78943',
                                                                                'client43@example.com',
                                                                                'A1234543'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 44',
                                                                                '123-456-78944',
                                                                                'client44@example.com',
                                                                                'A1234544'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 45',
                                                                                '123-456-78945',
                                                                                'client45@example.com',
                                                                                'A1234545'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 46',
                                                                                '123-456-78946',
                                                                                'client46@example.com',
                                                                                'A1234546'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 47',
                                                                                '123-456-78947',
                                                                                'client47@example.com',
                                                                                'A1234547'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 48',
                                                                                '123-456-78948',
                                                                                'client48@example.com',
                                                                                'A1234548'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 49',
                                                                                '123-456-78949',
                                                                                'client49@example.com',
                                                                                'A1234549'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 50',
                                                                                '123-456-78950',
                                                                                'client50@example.com',
                                                                                'A1234550'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 51',
                                                                                '123-456-78951',
                                                                                'client51@example.com',
                                                                                'A1234551'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 52',
                                                                                '123-456-78952',
                                                                                'client52@example.com',
                                                                                'A1234552'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 53',
                                                                                '123-456-78953',
                                                                                'client53@example.com',
                                                                                'A1234553'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 54',
                                                                                '123-456-78954',
                                                                                'client54@example.com',
                                                                                'A1234554'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 55',
                                                                                '123-456-78955',
                                                                                'client55@example.com',
                                                                                'A1234555'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 56',
                                                                                '123-456-78956',
                                                                                'client56@example.com',
                                                                                'A1234556'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 57',
                                                                                '123-456-78957',
                                                                                'client57@example.com',
                                                                                'A1234557'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 58',
                                                                                '123-456-78958',
                                                                                'client58@example.com',
                                                                                'A1234558'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 59',
                                                                                '123-456-78959',
                                                                                'client59@example.com',
                                                                                'A1234559'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 60',
                                                                                '123-456-78960',
                                                                                'client60@example.com',
                                                                                'A1234560'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 61',
                                                                                '123-456-78961',
                                                                                'client61@example.com',
                                                                                'A1234561'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 62',
                                                                                '123-456-78962',
                                                                                'client62@example.com',
                                                                                'A1234562'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 63',
                                                                                '123-456-78963',
                                                                                'client63@example.com',
                                                                                'A1234563'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 64',
                                                                                '123-456-78964',
                                                                                'client64@example.com',
                                                                                'A1234564'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 65',
                                                                                '123-456-78965',
                                                                                'client65@example.com',
                                                                                'A1234565'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 66',
                                                                                '123-456-78966',
                                                                                'client66@example.com',
                                                                                'A1234566'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 67',
                                                                                '123-456-78967',
                                                                                'client67@example.com',
                                                                                'A1234567'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 68',
                                                                                '123-456-78968',
                                                                                'client68@example.com',
                                                                                'A1234568'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 69',
                                                                                '123-456-78969',
                                                                                'client69@example.com',
                                                                                'A1234569'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 70',
                                                                                '123-456-78970',
                                                                                'client70@example.com',
                                                                                'A1234570'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 71',
                                                                                '123-456-78971',
                                                                                'client71@example.com',
                                                                                'A1234571'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 72',
                                                                                '123-456-78972',
                                                                                'client72@example.com',
                                                                                'A1234572'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 73',
                                                                                '123-456-78973',
                                                                                'client73@example.com',
                                                                                'A1234573'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 74',
                                                                                '123-456-78974',
                                                                                'client74@example.com',
                                                                                'A1234574'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 75',
                                                                                '123-456-78975',
                                                                                'client75@example.com',
                                                                                'A1234575'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 76',
                                                                                '123-456-78976',
                                                                                'client76@example.com',
                                                                                'A1234576'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 77',
                                                                                '123-456-78977',
                                                                                'client77@example.com',
                                                                                'A1234577'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 78',
                                                                                '123-456-78978',
                                                                                'client78@example.com',
                                                                                'A1234578'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 79',
                                                                                '123-456-78979',
                                                                                'client79@example.com',
                                                                                'A1234579'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 80',
                                                                                '123-456-78980',
                                                                                'client80@example.com',
                                                                                'A1234580'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 81',
                                                                                '123-456-78981',
                                                                                'client81@example.com',
                                                                                'A1234581'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 82',
                                                                                '123-456-78982',
                                                                                'client82@example.com',
                                                                                'A1234582'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 83',
                                                                                '123-456-78983',
                                                                                'client83@example.com',
                                                                                'A1234583'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 84',
                                                                                '123-456-78984',
                                                                                'client84@example.com',
                                                                                'A1234584'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 85',
                                                                                '123-456-78985',
                                                                                'client85@example.com',
                                                                                'A1234585'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 86',
                                                                                '123-456-78986',
                                                                                'client86@example.com',
                                                                                'A1234586'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 87',
                                                                                '123-456-78987',
                                                                                'client87@example.com',
                                                                                'A1234587'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 88',
                                                                                '123-456-78988',
                                                                                'client88@example.com',
                                                                                'A1234588'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 89',
                                                                                '123-456-78989',
                                                                                'client89@example.com',
                                                                                'A1234589'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 90',
                                                                                '123-456-78990',
                                                                                'client90@example.com',
                                                                                'A1234590'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 91',
                                                                                '123-456-78991',
                                                                                'client91@example.com',
                                                                                'A1234591'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 92',
                                                                                '123-456-78992',
                                                                                'client92@example.com',
                                                                                'A1234592'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 93',
                                                                                '123-456-78993',
                                                                                'client93@example.com',
                                                                                'A1234593'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 94',
                                                                                '123-456-78994',
                                                                                'client94@example.com',
                                                                                'A1234594'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 95',
                                                                                '123-456-78995',
                                                                                'client95@example.com',
                                                                                'A1234595'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 96',
                                                                                '123-456-78996',
                                                                                'client96@example.com',
                                                                                'A1234596'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 97',
                                                                                '123-456-78997',
                                                                                'client97@example.com',
                                                                                'A1234597'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 98',
                                                                                '123-456-78998',
                                                                                'client98@example.com',
                                                                                'A1234598'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 99',
                                                                                '123-456-78999',
                                                                                'client99@example.com',
                                                                                'A1234599'
                                                                            );
INSERT INTO client (full_name, phone_number, email, passport_number) VALUES (
                                                                                'Client 100',
                                                                                '123-456-789100',
                                                                                'client100@example.com',
                                                                                'A12345100'
                                                                            );

-- Вставка тестовых данных для банков
INSERT INTO bank (name) VALUES ('Bank 1');
INSERT INTO bank (name) VALUES ('Bank 2');
INSERT INTO bank (name) VALUES ('Bank 3');
INSERT INTO bank (name) VALUES ('Bank 4');
INSERT INTO bank (name) VALUES ('Bank 5');
INSERT INTO bank (name) VALUES ('Bank 6');
INSERT INTO bank (name) VALUES ('Bank 7');
INSERT INTO bank (name) VALUES ('Bank 8');
INSERT INTO bank (name) VALUES ('Bank 9');
INSERT INTO bank (name) VALUES ('Bank 10');

-- Вставка тестовых данных для кредитов
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   7,
                                                                   78197.54269949377,
                                                                   5.98527466685246
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   1,
                                                                   55972.40626590587,
                                                                   7.174495973424535
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   6,
                                                                   8320.720394292646,
                                                                   3.0535239880842036
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   5,
                                                                   68266.86681828702,
                                                                   4.749294853996
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   3,
                                                                   47985.63296087494,
                                                                   2.145236347858175
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   10,
                                                                   56868.190347998105,
                                                                   11.180258894540003
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   4,
                                                                   38611.76550069505,
                                                                   8.038858916902518
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   1,
                                                                   26235.86693692307,
                                                                   3.659097899169095
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   8,
                                                                   12300.642037686826,
                                                                   7.180694858878365
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   9,
                                                                   4374.261996412066,
                                                                   7.581448215091298
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   4,
                                                                   64181.841417465825,
                                                                   18.404064067457135
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   7,
                                                                   24110.789603367233,
                                                                   6.207102183502453
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   5,
                                                                   29043.17984508703,
                                                                   8.756934086186952
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   4,
                                                                   5417.748919035869,
                                                                   6.069089727344452
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   7,
                                                                   25035.173158014702,
                                                                   8.330243055706443
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   10,
                                                                   93613.63262151412,
                                                                   0.24675026141962375
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   5,
                                                                   62655.90027858412,
                                                                   19.159762689910835
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   8,
                                                                   40417.62847596068,
                                                                   7.947094115809456
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   10,
                                                                   54557.809579207285,
                                                                   12.355741778477128
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   4,
                                                                   84934.59566460326,
                                                                   15.982916194522701
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   10,
                                                                   89776.67814522328,
                                                                   17.310172983940348
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   9,
                                                                   58969.76025527675,
                                                                   7.151018846868363
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   4,
                                                                   42590.68358596966,
                                                                   18.126985308389738
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   4,
                                                                   42654.61291238483,
                                                                   15.762289252062288
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   7,
                                                                   91894.01887798075,
                                                                   2.333685247448034
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   7,
                                                                   1099.5393715376833,
                                                                   0.6877892182606793
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   2,
                                                                   82517.6620058061,
                                                                   13.510503877287325
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   10,
                                                                   94350.41952118822,
                                                                   0.5361352388755303
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   5,
                                                                   75519.6299748704,
                                                                   3.163298473027898
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   8,
                                                                   83854.7180564652,
                                                                   17.257199951539558
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   4,
                                                                   98415.06796540755,
                                                                   10.83551423574173
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   5,
                                                                   75951.30482430552,
                                                                   11.848306221860224
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   1,
                                                                   67392.74560335647,
                                                                   19.435375532969065
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   4,
                                                                   88735.78676675745,
                                                                   14.171073587466962
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   3,
                                                                   81276.095578471,
                                                                   2.4448743793411287
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   1,
                                                                   47653.41682254667,
                                                                   17.86757507508643
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   6,
                                                                   89920.03539083824,
                                                                   17.326842329596722
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   4,
                                                                   73257.74112113097,
                                                                   8.168201542265942
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   5,
                                                                   12654.159577109036,
                                                                   14.899736348199355
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   8,
                                                                   82109.21392766175,
                                                                   8.9506231677141
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   7,
                                                                   68422.20351880693,
                                                                   17.733685250248456
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   1,
                                                                   27090.096734336665,
                                                                   8.320938410453847
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   1,
                                                                   74157.70300795627,
                                                                   16.394894024228485
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   3,
                                                                   50762.88167622278,
                                                                   1.8847923470142636
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   8,
                                                                   58854.39524113874,
                                                                   6.371286395752856
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   2,
                                                                   24829.524032885063,
                                                                   5.993297823435089
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   10,
                                                                   63032.71946894789,
                                                                   13.29536689868739
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   9,
                                                                   82976.1442792102,
                                                                   8.275105640558655
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   3,
                                                                   3605.649705259151,
                                                                   9.365560036871239
                                                               );
INSERT INTO loan (bank_id, credit_limit, interest_rate) VALUES (
                                                                   3,
                                                                   51431.337940834776,
                                                                   13.853940155612992
                                                               );

-- Вставка тестовых данных для предложений по кредитам
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    53,
                                                                    49,
                                                                    31546.357278163883
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    30,
                                                                    33,
                                                                    4837.083099995932
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    42,
                                                                    41,
                                                                    36709.77673633708
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    67,
                                                                    12,
                                                                    1789.1245971668857
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    38,
                                                                    50,
                                                                    33615.74750892338
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    89,
                                                                    24,
                                                                    9603.205822420457
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    7,
                                                                    22,
                                                                    16321.17555037696
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    28,
                                                                    2,
                                                                    42917.83671707866
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    23,
                                                                    31,
                                                                    13156.440281740539
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    22,
                                                                    44,
                                                                    20026.35979148876
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    92,
                                                                    49,
                                                                    48590.115368552775
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    63,
                                                                    1,
                                                                    15818.92300804969
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    13,
                                                                    9,
                                                                    12105.151301896172
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    33,
                                                                    33,
                                                                    40157.098687987
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    22,
                                                                    43,
                                                                    18597.33131668156
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    51,
                                                                    41,
                                                                    31099.155579636983
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    39,
                                                                    34,
                                                                    26886.859337607388
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    46,
                                                                    6,
                                                                    35255.36639224903
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    41,
                                                                    8,
                                                                    29076.56302949758
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    86,
                                                                    43,
                                                                    19476.509289257778
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    3,
                                                                    22,
                                                                    33695.23869260414
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    21,
                                                                    27,
                                                                    19065.10170440398
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    50,
                                                                    15,
                                                                    39832.248384363826
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    96,
                                                                    11,
                                                                    27747.694677901363
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    1,
                                                                    12,
                                                                    37799.575699875204
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    39,
                                                                    38,
                                                                    23757.901739433863
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    5,
                                                                    36,
                                                                    24250.108910412637
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    41,
                                                                    13,
                                                                    4553.661449145424
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    26,
                                                                    29,
                                                                    36135.98664057889
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    77,
                                                                    9,
                                                                    19928.565359157536
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    39,
                                                                    16,
                                                                    38408.45964393345
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    45,
                                                                    6,
                                                                    49575.892084080246
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    85,
                                                                    23,
                                                                    44940.75095308831
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    67,
                                                                    39,
                                                                    16525.3411697542
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    48,
                                                                    7,
                                                                    10798.019762677579
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    47,
                                                                    28,
                                                                    12296.286744557478
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    80,
                                                                    49,
                                                                    6683.571548230999
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    57,
                                                                    2,
                                                                    33097.6608412785
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    85,
                                                                    43,
                                                                    23158.07129853006
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    44,
                                                                    15,
                                                                    38953.46911565056
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    3,
                                                                    46,
                                                                    3058.574233047551
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    9,
                                                                    7,
                                                                    49244.205747109256
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    62,
                                                                    8,
                                                                    15436.757534908691
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    76,
                                                                    20,
                                                                    28828.308006749958
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    58,
                                                                    6,
                                                                    13290.858431658182
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    14,
                                                                    8,
                                                                    48644.09773806777
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    55,
                                                                    47,
                                                                    10383.335233256685
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    89,
                                                                    11,
                                                                    23491.479519303044
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    54,
                                                                    7,
                                                                    19516.4130682069
                                                                );
INSERT INTO loan_offer (client_id, loan_id, loan_amount) VALUES (
                                                                    57,
                                                                    16,
                                                                    37554.028894064046
                                                                );

-- Вставка тестовых данных для графиков платежей
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         42,
                                                                                                                         '2024-01-8',
                                                                                                                         631.2082180029097,
                                                                                                                         1385.7956255831632,
                                                                                                                         151.4587316878922
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         17,
                                                                                                                         '2024-01-22',
                                                                                                                         939.7283175130862,
                                                                                                                         621.9219168898458,
                                                                                                                         301.54154968148544
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         5,
                                                                                                                         '2024-01-3',
                                                                                                                         992.9009620131535,
                                                                                                                         357.58948388575766,
                                                                                                                         226.96664161237194
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         33,
                                                                                                                         '2024-01-6',
                                                                                                                         56.05096232278295,
                                                                                                                         1268.229838105655,
                                                                                                                         56.25546131673159
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         35,
                                                                                                                         '2024-01-11',
                                                                                                                         1906.1281158058198,
                                                                                                                         320.33523129742946,
                                                                                                                         466.8185781957806
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         9,
                                                                                                                         '2024-01-6',
                                                                                                                         1439.583526784522,
                                                                                                                         795.5840565178994,
                                                                                                                         43.42023833258379
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         29,
                                                                                                                         '2024-01-19',
                                                                                                                         782.4451703654382,
                                                                                                                         835.5632916746663,
                                                                                                                         266.9611830185723
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         36,
                                                                                                                         '2024-01-10',
                                                                                                                         1113.1028014328958,
                                                                                                                         264.45765278543854,
                                                                                                                         430.5919041878629
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         25,
                                                                                                                         '2024-01-5',
                                                                                                                         1754.015818252337,
                                                                                                                         1171.197196672562,
                                                                                                                         374.4070064511511
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         34,
                                                                                                                         '2024-01-14',
                                                                                                                         1996.760204090824,
                                                                                                                         1253.5498362284704,
                                                                                                                         414.83459090961765
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         15,
                                                                                                                         '2024-01-13',
                                                                                                                         1595.534693900999,
                                                                                                                         244.51763491927258,
                                                                                                                         220.32283748327197
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         8,
                                                                                                                         '2024-01-15',
                                                                                                                         897.4483893582664,
                                                                                                                         356.1407122898784,
                                                                                                                         151.03907619467788
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         34,
                                                                                                                         '2024-01-6',
                                                                                                                         1173.6159592838596,
                                                                                                                         87.43483511242766,
                                                                                                                         237.03540092019938
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         41,
                                                                                                                         '2024-01-6',
                                                                                                                         1873.2896911244486,
                                                                                                                         1451.6837297250138,
                                                                                                                         16.697518318573135
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         39,
                                                                                                                         '2024-01-3',
                                                                                                                         243.95994308733316,
                                                                                                                         183.67887570504766,
                                                                                                                         395.2823347495956
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         17,
                                                                                                                         '2024-01-23',
                                                                                                                         43.55957855115689,
                                                                                                                         289.74586119213444,
                                                                                                                         11.96275334723762
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         27,
                                                                                                                         '2024-01-14',
                                                                                                                         1916.6109728694314,
                                                                                                                         402.51671477374055,
                                                                                                                         323.0366529183985
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         2,
                                                                                                                         '2024-01-6',
                                                                                                                         414.3566146928632,
                                                                                                                         1298.4043248061182,
                                                                                                                         218.82002182066697
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         45,
                                                                                                                         '2024-01-26',
                                                                                                                         1609.6182358167327,
                                                                                                                         628.6060803544053,
                                                                                                                         492.23287081927367
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         39,
                                                                                                                         '2024-01-9',
                                                                                                                         790.332351520977,
                                                                                                                         904.209598579157,
                                                                                                                         368.19942607401265
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         41,
                                                                                                                         '2024-01-6',
                                                                                                                         1811.4126138549684,
                                                                                                                         562.5950036623475,
                                                                                                                         84.7228087360944
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         2,
                                                                                                                         '2024-01-2',
                                                                                                                         342.7933806748813,
                                                                                                                         1025.823904114793,
                                                                                                                         188.85719025624704
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         40,
                                                                                                                         '2024-01-27',
                                                                                                                         472.21170126001556,
                                                                                                                         542.0765431608703,
                                                                                                                         273.7892915262276
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         33,
                                                                                                                         '2024-01-5',
                                                                                                                         1904.487528294416,
                                                                                                                         1278.4446767857123,
                                                                                                                         336.85377461743417
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         30,
                                                                                                                         '2024-01-16',
                                                                                                                         1344.765876017756,
                                                                                                                         107.50838714079536,
                                                                                                                         282.5458231190155
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         33,
                                                                                                                         '2024-01-19',
                                                                                                                         561.3875606458773,
                                                                                                                         1301.1222322892659,
                                                                                                                         329.45718062034973
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         12,
                                                                                                                         '2024-01-9',
                                                                                                                         1094.7574393644966,
                                                                                                                         412.70588812246393,
                                                                                                                         205.55040567945576
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         36,
                                                                                                                         '2024-01-27',
                                                                                                                         1611.784135576456,
                                                                                                                         1494.0812026904973,
                                                                                                                         32.299263754198506
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         14,
                                                                                                                         '2024-01-2',
                                                                                                                         501.16567985524773,
                                                                                                                         454.5191219882144,
                                                                                                                         204.9614963347936
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         49,
                                                                                                                         '2024-01-24',
                                                                                                                         1463.001172794085,
                                                                                                                         1328.1548959672846,
                                                                                                                         373.6134613866865
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         5,
                                                                                                                         '2024-01-12',
                                                                                                                         1566.9102787229072,
                                                                                                                         1471.3022010566337,
                                                                                                                         317.5644613028342
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         26,
                                                                                                                         '2024-01-3',
                                                                                                                         1536.0453929087857,
                                                                                                                         763.442163343247,
                                                                                                                         84.38189036793747
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         47,
                                                                                                                         '2024-01-15',
                                                                                                                         860.0855999512651,
                                                                                                                         1234.7847969819352,
                                                                                                                         233.99641973685064
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         49,
                                                                                                                         '2024-01-17',
                                                                                                                         1748.5031833313196,
                                                                                                                         189.29598430238437,
                                                                                                                         388.2200317327073
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         22,
                                                                                                                         '2024-01-12',
                                                                                                                         1906.0980583074534,
                                                                                                                         834.9551196940118,
                                                                                                                         36.49771419131537
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         23,
                                                                                                                         '2024-01-14',
                                                                                                                         645.9970029012272,
                                                                                                                         672.7532082847712,
                                                                                                                         189.82705034664127
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         14,
                                                                                                                         '2024-01-11',
                                                                                                                         1951.0196004950787,
                                                                                                                         432.56396181052156,
                                                                                                                         6.518171969522479
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         2,
                                                                                                                         '2024-01-22',
                                                                                                                         1752.5138127878156,
                                                                                                                         677.5150094092756,
                                                                                                                         435.829918414255
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         3,
                                                                                                                         '2024-01-13',
                                                                                                                         916.469328760889,
                                                                                                                         1328.8586412293298,
                                                                                                                         238.50613721229902
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         6,
                                                                                                                         '2024-01-7',
                                                                                                                         209.9180882628804,
                                                                                                                         790.586878549725,
                                                                                                                         446.84950617838354
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         22,
                                                                                                                         '2024-01-11',
                                                                                                                         866.3359593895024,
                                                                                                                         577.156753081178,
                                                                                                                         421.2085609234513
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         6,
                                                                                                                         '2024-01-19',
                                                                                                                         276.9618839875563,
                                                                                                                         1368.688390838611,
                                                                                                                         144.61667089303765
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         8,
                                                                                                                         '2024-01-11',
                                                                                                                         805.6537265643395,
                                                                                                                         735.8688431476791,
                                                                                                                         272.8102144728214
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         13,
                                                                                                                         '2024-01-9',
                                                                                                                         758.104522313253,
                                                                                                                         891.5411817692766,
                                                                                                                         222.9665260258635
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         7,
                                                                                                                         '2024-01-1',
                                                                                                                         131.94384288399763,
                                                                                                                         737.5793663068322,
                                                                                                                         241.24004182640905
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         33,
                                                                                                                         '2024-01-16',
                                                                                                                         1932.454302733261,
                                                                                                                         184.14526938784138,
                                                                                                                         436.5390521573053
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         23,
                                                                                                                         '2024-01-23',
                                                                                                                         559.334588948206,
                                                                                                                         223.79556737709026,
                                                                                                                         205.97297308946384
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         48,
                                                                                                                         '2024-01-14',
                                                                                                                         53.14481688614037,
                                                                                                                         45.152591604767146,
                                                                                                                         306.01407134518496
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         39,
                                                                                                                         '2024-01-19',
                                                                                                                         835.7720985991173,
                                                                                                                         569.9732120632085,
                                                                                                                         42.65518853497075
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         22,
                                                                                                                         '2024-01-14',
                                                                                                                         1987.4583119509673,
                                                                                                                         1193.4475049618432,
                                                                                                                         163.70883955405395
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         48,
                                                                                                                         '2024-01-15',
                                                                                                                         1073.6343012844661,
                                                                                                                         1200.4288612542625,
                                                                                                                         36.88098061479028
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         42,
                                                                                                                         '2024-01-17',
                                                                                                                         1068.0085825274211,
                                                                                                                         820.043326226041,
                                                                                                                         88.36622303867891
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         39,
                                                                                                                         '2024-01-4',
                                                                                                                         14.06102690150357,
                                                                                                                         667.7482310499599,
                                                                                                                         258.4493782145206
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         49,
                                                                                                                         '2024-01-20',
                                                                                                                         1725.2960275558805,
                                                                                                                         1407.4044061009838,
                                                                                                                         402.9617542592085
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         31,
                                                                                                                         '2024-01-9',
                                                                                                                         1045.3120044313416,
                                                                                                                         346.29938181661237,
                                                                                                                         132.4286024182459
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         16,
                                                                                                                         '2024-01-11',
                                                                                                                         971.9472778647065,
                                                                                                                         1353.303185231221,
                                                                                                                         34.35759654731785
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         45,
                                                                                                                         '2024-01-15',
                                                                                                                         1295.4661620539675,
                                                                                                                         1464.4608933217896,
                                                                                                                         68.35652922010921
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         35,
                                                                                                                         '2024-01-1',
                                                                                                                         1308.951658370851,
                                                                                                                         311.3214870967667,
                                                                                                                         158.6315007593325
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         40,
                                                                                                                         '2024-01-20',
                                                                                                                         619.7738557454327,
                                                                                                                         75.17362396269877,
                                                                                                                         133.9052917788101
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         32,
                                                                                                                         '2024-01-22',
                                                                                                                         124.20762067786906,
                                                                                                                         35.10548679721903,
                                                                                                                         180.90901037833436
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         1,
                                                                                                                         '2024-01-3',
                                                                                                                         1802.9749721114817,
                                                                                                                         1439.4262223131839,
                                                                                                                         384.33803001390106
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         2,
                                                                                                                         '2024-01-15',
                                                                                                                         1153.6909779637965,
                                                                                                                         1388.483733257499,
                                                                                                                         223.52692007015656
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         49,
                                                                                                                         '2024-01-4',
                                                                                                                         1796.895769255505,
                                                                                                                         672.283067235484,
                                                                                                                         84.08609522862703
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         48,
                                                                                                                         '2024-01-16',
                                                                                                                         75.55764576929502,
                                                                                                                         58.557563271689816,
                                                                                                                         421.3561808253351
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         28,
                                                                                                                         '2024-01-13',
                                                                                                                         313.6357474061848,
                                                                                                                         1376.0644136261653,
                                                                                                                         181.77469148115054
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         4,
                                                                                                                         '2024-01-10',
                                                                                                                         807.4936295493642,
                                                                                                                         383.87336314811097,
                                                                                                                         448.1123274724387
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         34,
                                                                                                                         '2024-01-22',
                                                                                                                         594.6587095037444,
                                                                                                                         360.2880794187452,
                                                                                                                         25.025160806067927
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         40,
                                                                                                                         '2024-01-3',
                                                                                                                         1577.6247092792785,
                                                                                                                         1084.7857593270749,
                                                                                                                         322.4816105189741
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         31,
                                                                                                                         '2024-01-26',
                                                                                                                         1676.0990203481094,
                                                                                                                         422.98174683255866,
                                                                                                                         426.3619573379947
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         6,
                                                                                                                         '2024-01-28',
                                                                                                                         339.29771261186124,
                                                                                                                         58.12176370387784,
                                                                                                                         167.89091183057926
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         7,
                                                                                                                         '2024-01-20',
                                                                                                                         1970.596434746344,
                                                                                                                         1042.9759175702548,
                                                                                                                         316.55251371383554
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         1,
                                                                                                                         '2024-01-9',
                                                                                                                         1600.046825254554,
                                                                                                                         1273.254429762544,
                                                                                                                         224.74956277476593
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         24,
                                                                                                                         '2024-01-11',
                                                                                                                         485.97179966369475,
                                                                                                                         1207.7859132253432,
                                                                                                                         346.7081304871928
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         38,
                                                                                                                         '2024-01-6',
                                                                                                                         1235.0567853599102,
                                                                                                                         1181.6959670217727,
                                                                                                                         38.991267274504246
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         40,
                                                                                                                         '2024-01-8',
                                                                                                                         501.05579382155474,
                                                                                                                         976.6933964611463,
                                                                                                                         425.47385723824164
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         48,
                                                                                                                         '2024-01-9',
                                                                                                                         355.4356208364262,
                                                                                                                         1427.3196186819603,
                                                                                                                         375.74415526565264
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         7,
                                                                                                                         '2024-01-14',
                                                                                                                         1018.9838889151825,
                                                                                                                         753.6357259914836,
                                                                                                                         302.635768058716
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         9,
                                                                                                                         '2024-01-21',
                                                                                                                         1801.6096257395313,
                                                                                                                         519.319322377463,
                                                                                                                         31.957105673592
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         44,
                                                                                                                         '2024-01-25',
                                                                                                                         1818.2692637608168,
                                                                                                                         619.5135426933404,
                                                                                                                         435.47349206191535
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         43,
                                                                                                                         '2024-01-20',
                                                                                                                         1332.15256409739,
                                                                                                                         5.0170512441286,
                                                                                                                         346.8106214480968
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         11,
                                                                                                                         '2024-01-21',
                                                                                                                         421.96693005083284,
                                                                                                                         948.5250451681753,
                                                                                                                         499.1862265087341
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         28,
                                                                                                                         '2024-01-24',
                                                                                                                         78.3623188719833,
                                                                                                                         1054.6267546234255,
                                                                                                                         333.74004186922406
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         33,
                                                                                                                         '2024-01-11',
                                                                                                                         1805.2405477068314,
                                                                                                                         1408.136983278379,
                                                                                                                         27.72044710219862
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         40,
                                                                                                                         '2024-01-16',
                                                                                                                         1334.8970191136073,
                                                                                                                         745.084516216425,
                                                                                                                         482.89966151060605
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         23,
                                                                                                                         '2024-01-11',
                                                                                                                         161.64594846853686,
                                                                                                                         317.30139794494863,
                                                                                                                         296.32725619416357
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         47,
                                                                                                                         '2024-01-3',
                                                                                                                         1256.7829540384191,
                                                                                                                         705.0542178127024,
                                                                                                                         407.89547774299245
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         29,
                                                                                                                         '2024-01-10',
                                                                                                                         548.4420559468443,
                                                                                                                         1212.5275657634813,
                                                                                                                         182.17767658890892
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         4,
                                                                                                                         '2024-01-22',
                                                                                                                         1533.1074544765838,
                                                                                                                         658.2183375832898,
                                                                                                                         135.61493872404208
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         49,
                                                                                                                         '2024-01-4',
                                                                                                                         731.2433548893471,
                                                                                                                         846.4186796387379,
                                                                                                                         364.3638130608378
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         2,
                                                                                                                         '2024-01-22',
                                                                                                                         607.7085884846533,
                                                                                                                         776.9626234450658,
                                                                                                                         462.98170805514314
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         27,
                                                                                                                         '2024-01-22',
                                                                                                                         48.32526843893881,
                                                                                                                         718.282265784173,
                                                                                                                         349.61433455733857
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         14,
                                                                                                                         '2024-01-7',
                                                                                                                         517.1745684476692,
                                                                                                                         1133.56481810339,
                                                                                                                         429.46364296261896
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         5,
                                                                                                                         '2024-01-13',
                                                                                                                         614.895418942083,
                                                                                                                         611.4242817939097,
                                                                                                                         435.0519198072381
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         37,
                                                                                                                         '2024-01-5',
                                                                                                                         916.4650293890046,
                                                                                                                         410.99614275275957,
                                                                                                                         79.16203571170932
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         34,
                                                                                                                         '2024-01-19',
                                                                                                                         687.6434274883738,
                                                                                                                         486.73561673677773,
                                                                                                                         344.3213167462968
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         26,
                                                                                                                         '2024-01-18',
                                                                                                                         362.46723972621186,
                                                                                                                         910.445414293776,
                                                                                                                         311.3102964842344
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         44,
                                                                                                                         '2024-01-16',
                                                                                                                         509.88119955785294,
                                                                                                                         1457.1808150453162,
                                                                                                                         398.41569945836403
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         25,
                                                                                                                         '2024-01-24',
                                                                                                                         1425.7989124525698,
                                                                                                                         267.6747824429746,
                                                                                                                         243.01015350536338
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         22,
                                                                                                                         '2024-01-6',
                                                                                                                         1457.5869331029974,
                                                                                                                         1442.7984492292262,
                                                                                                                         207.52976070209905
                                                                                                                     );
INSERT INTO payment_schedule (loan_offer_id, payment_date, payment_amount, principal_amount, interest_amount) VALUES (
                                                                                                                         34,
                                                                                                                         '2024-01-15',
                                                                                                                         701.1709909069837,
                                                                                                                         165.31672690051462,
                                                                                                                         133.03356727684462
                                                                                                                     );

-- Вставка тестовых данных для кредитов
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            76154.9834390466,
                                                            18.066643345058434
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            65388.12676522923,
                                                            19.810699230676224
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            85971.87895615435,
                                                            12.866223006293492
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            80214.76904303824,
                                                            1.6207381331429138
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            90469.99807041259,
                                                            9.417308896847711
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            36035.39825585279,
                                                            11.661311935457523
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            11464.68441155839,
                                                            18.01938800714102
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            97597.64465541017,
                                                            0.6954506023811136
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            58676.05919557356,
                                                            3.2674657148328734
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            71162.83446993807,
                                                            14.217246319237677
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            96328.18300157202,
                                                            5.165698775020289
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            12374.907010125102,
                                                            10.332387054651255
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            69974.02517247728,
                                                            0.5779562362127222
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            23763.361300753615,
                                                            12.580414553910002
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            31879.310119260073,
                                                            16.573543991218997
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            55262.20199270423,
                                                            10.28233737026236
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            41677.31937273862,
                                                            3.183347543931474
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            48568.24627151614,
                                                            5.266738341046753
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            60510.56703318237,
                                                            14.663685117860012
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            46728.55722139251,
                                                            5.722060524505379
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            1504.207007454661,
                                                            15.57219113794726
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            24038.175686778628,
                                                            5.44228596353334
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            47169.919614219005,
                                                            0.7920829868248203
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            78145.7648799683,
                                                            19.877746079116566
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            95217.95814725127,
                                                            17.09819491571333
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            66206.10782076528,
                                                            19.172342178464767
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            48258.89360585388,
                                                            17.940194164790416
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            59984.891775221564,
                                                            2.762978794456994
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            20005.55535357895,
                                                            12.825425122003063
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            41012.57518143574,
                                                            0.13654787805402746
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            90839.52876648925,
                                                            8.015861299262976
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            56200.52651421292,
                                                            17.984331852516643
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            8985.524244534781,
                                                            16.21066891771441
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            6774.058597642385,
                                                            5.263226254228741
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            40.775608739118674,
                                                            19.46792768546193
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            48943.400891044344,
                                                            14.567708890939425
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            17235.57893984129,
                                                            1.826077860982236
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            43425.00111497649,
                                                            0.7360236019806798
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            37554.99929944851,
                                                            5.917694149461743
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            2742.0050640085237,
                                                            15.758564659514313
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            84730.6197300657,
                                                            11.325223397269017
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            50174.170129343955,
                                                            12.825991480922438
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            39115.17966079265,
                                                            1.5103486364565955
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            22293.819456744866,
                                                            1.7491279265960058
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            76581.80099174232,
                                                            0.8556800324024483
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            18215.930528460045,
                                                            3.0022310685469233
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            63843.45768010019,
                                                            3.6894909208920246
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            23006.78966979137,
                                                            8.285750933470679
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            25967.21339900435,
                                                            3.121271904590326
                                                        );
INSERT INTO credit (limit_amount, interest_rate) VALUES (
                                                            10137.078410717126,
                                                            11.774228063771695
                                                        );

-- Вставка тестовых данных для предложений по кредитам
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         14,
                                                                         21,
                                                                         47744.694029805774
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         22,
                                                                         10,
                                                                         20273.77591308681
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         70,
                                                                         50,
                                                                         5742.750171272537
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         75,
                                                                         7,
                                                                         1797.504513710918
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         30,
                                                                         24,
                                                                         33268.78250045374
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         2,
                                                                         24,
                                                                         17957.963693266425
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         41,
                                                                         30,
                                                                         12501.192794468869
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         3,
                                                                         48,
                                                                         17865.486078684462
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         4,
                                                                         37,
                                                                         25205.53214119456
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         8,
                                                                         9,
                                                                         31644.34772799381
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         26,
                                                                         36,
                                                                         38802.24483219439
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         22,
                                                                         26,
                                                                         27135.55898362882
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         80,
                                                                         44,
                                                                         27189.39558684389
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         73,
                                                                         1,
                                                                         36328.55992354469
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         73,
                                                                         14,
                                                                         21280.413207542686
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         64,
                                                                         10,
                                                                         43576.56026628409
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         91,
                                                                         42,
                                                                         25671.944659255176
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         94,
                                                                         21,
                                                                         19886.606295796046
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         43,
                                                                         45,
                                                                         43374.50475123764
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         26,
                                                                         11,
                                                                         18874.27039555799
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         48,
                                                                         39,
                                                                         20118.672195338182
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         15,
                                                                         13,
                                                                         20334.208429562117
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         40,
                                                                         45,
                                                                         3392.1682722383607
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         100,
                                                                         36,
                                                                         16801.641229133562
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         1,
                                                                         37,
                                                                         9068.23134223556
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         5,
                                                                         20,
                                                                         36966.14397364708
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         65,
                                                                         49,
                                                                         253.2786763976058
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         3,
                                                                         5,
                                                                         37347.96234930381
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         10,
                                                                         21,
                                                                         8811.914636227237
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         43,
                                                                         13,
                                                                         20258.414052988504
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         62,
                                                                         1,
                                                                         19919.95697470783
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         19,
                                                                         12,
                                                                         1739.7278139016537
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         7,
                                                                         2,
                                                                         43951.17387808074
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         55,
                                                                         39,
                                                                         7916.0358632084535
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         47,
                                                                         3,
                                                                         18021.059697011
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         25,
                                                                         41,
                                                                         21986.050482076953
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         57,
                                                                         18,
                                                                         11591.020001791168
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         58,
                                                                         39,
                                                                         36949.272310197965
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         78,
                                                                         38,
                                                                         6678.926709828908
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         78,
                                                                         31,
                                                                         41081.424322278915
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         65,
                                                                         49,
                                                                         33427.0856955063
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         22,
                                                                         11,
                                                                         24161.126389845107
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         51,
                                                                         37,
                                                                         16046.22132671913
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         93,
                                                                         21,
                                                                         42498.64423676372
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         2,
                                                                         5,
                                                                         22484.187363877594
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         6,
                                                                         48,
                                                                         19928.89689684234
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         81,
                                                                         11,
                                                                         13560.66027798113
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         68,
                                                                         6,
                                                                         40104.70355402429
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         50,
                                                                         31,
                                                                         3764.18148409049
                                                                     );
INSERT INTO credit_offer (client_id, credit_id, offer_amount) VALUES (
                                                                         58,
                                                                         30,
                                                                         2662.6160796315357
                                                                     );
