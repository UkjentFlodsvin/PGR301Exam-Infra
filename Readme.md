#Oppgaver løst
Jeg har gjort og fullført oppgave 1 og 2 (Basic pipeline og docker)
Slet lenge med å få til push til heroku registry, så prøvde å pushe til en annen service 
(dockerhub). Fikk dette til og tilegnet meg nok kunnskap for å klare den faktiske oppgaven også.
Koden har derfor en jobb for build/push mot heroku og en til dockerhub. Push til dockerhub kan kjøres
manuelt eller ignoreres etter ønske.


#Setup
For å kunne kjøre må filen credentials_example.yaml endres navn på til credentials-yaml
og fylles inn med brukbar data. Dette er gjort for å opprettholde punktet om config fra 12 faktor app
samt holde min identitet skult for eksaminator. Sensitiv info finnes også vanligvis i varibles.tf filen
men i mitt tilfelle lastes nødvendige variabler inn fra credentials fila, varibles.tf trenger derfor ikke å endres

#Annet
Prøvde å cache maven filene og Dockerfilen gjør dette om den kjøres manuelt, men fikk det ikke til 
gjennom concourse dessverre. Beregn derfor god tid til bygg av docker images :(
