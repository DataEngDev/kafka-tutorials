SELECT *, ROWTIME
FROM TEMPERATURE_READINGS_EVENTTIME
EMIT CHANGES
LIMIT 10;