CREATE TABLE "authors" (
	"name" TEXT NOT NULL,
	"token" TEXT NOT NULL,
	PRIMARY KEY("token")
) WITHOUT ROWID;

CREATE TABLE "ratings" (
	"comment" TEXT NOT NULL,
	"author_token" TEXT NOT NULL,
	FOREIGN KEY("author_token") REFERENCES "authors"("token")
);

CREATE VIEW ratings_with_author AS
SELECT
	r.*,
	a.name AS author_name
FROM ratings AS r
INNER JOIN authors AS a
ON r.author_token = a.token;
