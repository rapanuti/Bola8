import System.Random (randomRIO)

pick r xs = r (0, length xs - 1) >>= return . (xs !!)

outcomes = ["Es cierto", "Es decididamente así", "Sin duda", "Sí, definitivamente", "Puedes confiar en ello", "Tal como lo veo, sí", "Lo más probable", "Las perspectivas son buenas", "Las señales apuntan a que sí", "Sí", "Respuesta confusa, inténtalo de nuevo", "Pregunta de nuevo más tarde", "Mejor no te lo digo ahora", "No puedo predecir ahora", "Concéntrate y pregunta de nuevo", "No cuentes con ello", "Mi respuesta es no", "Mis fuentes dicen que no", "Las perspectivas no son tan buenas", "Muy dudoso"]


main = putStrLn =<< pick randomRIO outcomes
