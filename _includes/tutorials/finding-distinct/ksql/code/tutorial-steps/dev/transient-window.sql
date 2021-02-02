SELECT
    IP_ADDRESS,
    URL,
    TIMESTAMP
FROM CLICKS WINDOW TUMBLING (SIZE 2 MINUTES)
GROUP BY IP_ADDRESS, URL, TIMESTAMP
HAVING COUNT(IP_ADDRESS)=1
EMIT CHANGES
LIMIT 3;
