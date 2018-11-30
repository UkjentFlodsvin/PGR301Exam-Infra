#Hemmeligheter
//TODO credentials.yaml
Men det er ikke bare i concourse pipelinen hvor vi legger inn data. 
Også opprettelsen av kjøremiljøer gjennom terraform trenger dette ved bl.a heroku provider mail. 
For å løse dette har jeg tatt i bruk en terraform.tfvars fil, dette er en fil terraform automatisk
leter etter og oppretter varibles for hvert nøkkelpar funnet i filen.
Dette filen er, for å ikke bryte med prinsipp 3 i "The Twelve Factor App", ikke skjekket inn til versjonskontroll.
Jeg har derfor laget en sample versjon slik at du ser hva du trenger. 
VIKTIG: Fjern "-sample" fra terraform-sample.tfvars og fyll inn en fungerende heroku_provider mailadresse for å 
kunne kjøre Infra jobben. 
