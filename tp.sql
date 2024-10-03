CREATE OR REPLACE PROCEDURE Afficher_Categories_Par_Acteur ( x int )  
BEGIN
     
        SELECT libelleGenre, COUNT(numFilm) AS nombreFilms
        FROM genre 
        JOIN genrefilm  ON genrefilm.codeGenre = genre.codeGenre 
        JOIN acteur  ON acteur.numFilm = film.numFilm
        WHERE numIndividu = x
        GROUP BY libelleGenre
    
END //

**************

SELECT text
FROM all_source
WHERE name = 'AFFICHER_CATEGORIES_PAR_ACTEUR'
AND type = 'PROCEDURE'
ORDER BY line;

