SELECT count(id) FROM tickets;

SELECT count(DISTINCT customer_id) FROM tickets;

SELECT round(count(DISTINCT tickets.customer_id) 
            / count(DISTINCT customers.id)::decimal * 100, 2)
       AS percent
  FROM customers
  LEFT JOIN tickets
    ON tickets.customer_id = customers.id;

SELECT events.name, count(tickets.event_id) as popularity 
  FROM events
  JOIN tickets
    ON events.id = tickets.event_id
  GROUP BY events.id
  ORDER BY popularity DESC;


SELECT customers.id, customers.email, count(DISTINCT tickets.event_id) as count
  FROM tickets
  JOIN customers
    ON tickets.customer_id = customers.id
  GROUP BY customers.id
  HAVING count(DISTINCT tickets.event_id) = 3;


SELECT events.name AS event, events.starts_at, sections.name AS section, seats.row, seats.number AS seat
  FROM tickets
    JOIN customers
	    ON tickets.customer_id = customers.id 
    JOIN events
	    ON tickets.event_id = events.id
    JOIN seats
	    ON tickets.seat_id = seats.id
    JOIN sections
	    ON seats.section_id = sections.id
 WHERE customers.email = 'gennaro.rath@mcdermott.co';