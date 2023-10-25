SELECT pilot.last_name, COUNT (pilot.id) AS flight_count
FROM pilot
    JOIN airplane_pilot ON pilot.pilot_id = airplane_pilot.pilot_id
    JOIN airplane ON airplane.airplane_id = airplane_pilot.airplane_id
WHERE airplane.model = 'Сухой' AND airplane_pilot.flight_date BETWEEN '2022-02-01' AND '2022-02-28'
GROUP BY pilot.pilot_id;