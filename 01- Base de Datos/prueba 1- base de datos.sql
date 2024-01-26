USE happydata;

#Insertamos los datos a la base
INSERT INTO traffic VALUES ('19-58-33-40-6E-66', 'BGP', 233109, 974446);
INSERT INTO traffic VALUES ('19-58-33-40-6E-66', 'DNS', 260151, 56050);
INSERT INTO traffic VALUES ('19-58-33-40-6E-66', 'DNS', 808450, 78154);
INSERT INTO traffic VALUES ('19-58-33-40-6E-66', 'POP', 626847, 432101);
INSERT INTO traffic VALUES ('19-58-33-40-6E-66', 'SNP', 156130, 861098);
INSERT INTO traffic VALUES ('9E-43-EA-54-0A-E7', 'BGP', 931533, 393935);
INSERT INTO traffic VALUES ('9E-43-EA-54-0A-E7', 'DNS', 322727, 767978);
INSERT INTO traffic VALUES ('9E-43-EA-54-0A-E7', 'HTTP', 519008, 114712);
INSERT INTO traffic VALUES ('9E-43-EA-54-0A-E7', 'HTTPS', 997873, 660955); 
INSERT INTO traffic VALUES ('A6-B6-94-1E-07-FE', 'BGP', 16598, 460181); 
INSERT INTO traffic VALUES ('A6-B6-94-1E-07-FE', 'DHCP', 932759, 636364); 
INSERT INTO traffic VALUES ('A6-B6-94-1E-07-FE', 'DNS', 311364, 189234);
INSERT INTO traffic VALUES ('A6-B6-94-1E-07-FE', 'HTTPS', 364181, 193177);
INSERT INTO traffic VALUES ('A6-B6-94-1E-07-FE', 'TCP', 309463, 301272);
INSERT INTO traffic VALUES ('BB-0B-0C-1D-24-F4', 'IMAP', 822503, 793792);
INSERT INTO traffic VALUES ('BB-0B-0C-1D-24-F4', 'POP', 440950, 157635);
INSERT INTO traffic VALUES ('BB-0B-0C-1D-24-F4', 'SNP', 94997, 660654);
INSERT INTO traffic VALUES ('BB-0B-0C-1D-24-F4', 'TCP', 554635, 361496);
INSERT INTO traffic VALUES ('E4-00-CE-46-3F-26', 'DNS', 478782, 523512);
INSERT INTO traffic VALUES ('E4-00-CE-46-3F-26', 'IMAP', 381783, 938555);

#-----RESULTADO-----#
#Seleccionamos las columnas que necesitamos que son:
#client y protocol, pero con algunas especificaciones. 
#Dentro del FROM, agrupamos los datos utilizando una subconsulta para obtener el tráfico total
#que es calculado sumando traffic_in and traffic_out
#por cliente y protocolo. Luego, en la consulta principal, 
#agrupamos nuevamente por cliente, generamos una lista ordenada 
#de protocolos según el tráfico total y luego organizamos de manera ascendente por cliente.

SELECT client,
 GROUP_CONCAT(protocol ORDER BY total_traffic DESC SEPARATOR ', ') AS protocols
FROM (
    SELECT client, protocol, SUM(traffic_in + traffic_out) AS total_traffic
    FROM traffic
    GROUP BY client, protocol
) AS protocol_totals
GROUP BY client
ORDER BY client ASC;








