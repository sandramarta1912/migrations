FROM boxfuse/flyway

COPY migrations /flyway/sql/

CMD ["-url=jdbc:mariadb://mysql:3306/admin", "-user=root", "-password=cms", "migrate"]


