-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Creato il: Mag 22, 2018 alle 11:50
-- Versione del server: 5.6.25
-- Versione PHP: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotynovi`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `autore`
--

CREATE TABLE IF NOT EXISTS `autore` (
  `ID_autore` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cognome` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `nomeBand` varchar(200) NOT NULL,
  `tipo` varchar(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `autore`
--

INSERT INTO `autore` (`ID_autore`, `nome`, `cognome`, `alias`, `nomeBand`, `tipo`) VALUES
(1, 'Nicola', 'Albera', 'Nitro', '', 'S'),
(2, 'Maurizio', 'Pisciottu', 'Salmo', '', 'S'),
(3, '', '', 'Mezzosangue', '', 'S');

-- --------------------------------------------------------

--
-- Struttura della tabella `canzone`
--

CREATE TABLE IF NOT EXISTS `canzone` (
  `ID_canzone` int(11) NOT NULL,
  `titolo` varchar(200) NOT NULL,
  `id_autore` int(11) NOT NULL,
  `album` varchar(200) NOT NULL,
  `testo` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `canzone`
--

INSERT INTO `canzone` (`ID_canzone`, `titolo`, `id_autore`, `album`, `testo`) VALUES
(1, 'Margot\r\n', 1, 'Danger', 'Ciao, dimmi come sto\r\nMi rispondi “non lo so” perché sai già che tornerò\r\nPrendi tutto ciò che ho come Margot\r\nQuante volte hai detto “si” e pensavi “no” però…\r\nTi dispiace? Tutto tace\r\nMentre cerco pace non sono capace\r\nPerché sai che più fa male più mi piace\r\nLei loquace quanto audace e capricciosa\r\nPerspicace, in più vorace e vanitosa\r\nMa la notte non si piace e giace sola\r\nNel suo letto, stretto per una persona\r\nBalleremo ancora in mezzo al fango mentre canto\r\nTu sei come Marla: sei il mio cancro\r\nQuando siamo a letto, spesso io non parlo\r\nE c’ho l’inferno dentro anche se sembro calmo\r\nPiango e guardo questa Venere\r\nChe spegne sigarette sul mio cuore portacenere\r\nNon ci posso credere\r\nA vedere che sei fredda come l’Everest\r\nLa quintessenza come l’etere per ledere\r\nLe vertebre e lasciarmi sempre fra le tenebre\r\nFammi accendere già di mattina\r\nPrima che questo malessere mi opprima\r\nLanci mille piatti per l’adrenalina\r\nE balli con i tacchi sulla mia autostima\r\nSignorina, non pretendo più il tuo tempo\r\nSe finisco il mio pacchetto finché aspetto\r\nTe l’ho mai detto?\r\nResto su questo muretto\r\nE sto ripetendo a me stesso che domani smetto\r\nTu mi fai lo stesso effetto\r\nMa c’ho buchi nel cervello che non curi con l’affetto\r\nQuale rapporto diretto?\r\nCerco il tuo rispetto ma sei solo una bambina col rossetto\r\nE adesso non rifletto\r\nVoglio aprirti il petto per vedere se sei bella dentro\r\n\r\nNo, era tutto un film in testa\r\nA chi interessa se ogni mia parola ti è indigesta\r\nNon canto le tue gesta principessa\r\nSe un rapporto sembra guerra resta merda\r\nStop! Tieni la finestra aperta\r\nSenza l’aria la tristezza che mi smembra\r\nVedi da te che questa cella è già più fredda\r\nE chiedi di me perché non è più come sembra\r\nAccetta che la fretta mi accarezza\r\nCon la tua dolcezza e viceversa\r\nLa consapevolezza della tua bellezza\r\nTi ha resa una bambola di pezza\r\nE che amarezza\r\nVedere che si prega per la tua salvezza\r\nQuando annega ogni certezza\r\nE se non piega, adesso spezza\r\nLascio quella, balzo questa\r\nPazzo in testa, tu sorridi\r\nE io di scatto vado in bestia\r\nCazzo c’entra ‘sta faccenda\r\nSei depressa quale “diversa”\r\nSei la stessa più complessa\r\nDella mia stella resta la luce riflessa\r\nQuale promessa sei la mia scommessa persa\r\nLa vendetta va servita sempre fredda\r\nSi aspetta e si progetta per averla\r\nDopodiché si accetta quello che ci spetta\r\nScrivo di te perché sei bella e maledetta\r\nChe disdetta quando ho detto “sei perfetta”\r\nAlmeno accetta che mi prenda la mia fetta\r\nLei si accerta, mi corteggia e mi ammanetta\r\nCerca sicurezze in mezza sigaretta\r\nE adesso è spenta\r\nMentre lei tenta di spiegare una bugia già detta\r\nQuando amare è la certezza che più la spaventa\r\nC’è chi cerca una conferma\r\nIo ti tengo stretta fino a quando il cuore ti si ferma'),
(2, 'Without you', 1, 'Danger', '\r\nL''ansia cola dal soffitto come umidità\r\nL''unicità di ciò che ho scritto non mi da nessun diritto alla mia felicità\r\nPer questo resto zitto\r\nPensando a delle possibilità di avere un minimo profitto\r\nLa verità è che l''istinto sfocia nel banale e da un conflitto esistenziale ad un affitto da pagare\r\nSei convinto oppure sei un''altro sconfitto\r\nChe tentando di volare è caduto a capofitto\r\nE ti fa male, come gli schiaffi compensati da mia madre per farmi rigare dritto tendono a farmi migliorare\r\nInvece di ostentare\r\nUna vita da criminale troppo finto e derelitto per sognare\r\nCome se fosse il tempo a farmi maturare per non rimanere afflitto e perdonare mai\r\nSarà pure un gran difetto ma non riesco a cancellare ogni delitto\r\n\r\nSai che c''e''?\r\nSembra tutto più perfetto pure senza di te\r\nPer il modo in cui mi guardi dopo tutti gli schiaffi\r\nChe ho preso e non ti ho chiesto il perché\r\nOra dimmi se sai che c''e''?\r\nSembra tutto più perfetto pure senza di te\r\nMe ne vado dal tuo mondo però non mi nascondo\r\nE tu non mi chiedere perché non ti rispondo più\r\n\r\nNella stanza della cera\r\nI miei propositi si fondono nel cielo con la luce e l''atmosfera\r\nE se il vero mi conduce ad una chimera\r\nCredo in chi ha le mani aperte verso il cielo e non giunte in preghiera\r\nCerco una regina vera e non una bambina miss poco seria che sta bene in giarrettiera o senza slip\r\nDopo un''altra fattucchiera che ha provato a confinare il mio ”io” nella cerniera dei suoi jeans\r\nMio Dio, questa luce passeggera fa pensare a quella sera in cui io ho detto ”prendo e vado via da qui”\r\nE'' da una vita intera\r\nChe io ti regalo il pane per i denti\r\nE adesso porti la dentiera\r\nE ti fa male\r\nCome gli schiaffi che ho scagliato su quel tale per farlo restare zitto tendono a farmi esasperare\r\nMa la cosa più grave è che se vedo che stai male me ne sbatto e ne approfitto\r\nè naturale\r\nQui l''aria è così rarefatta che non riesco a respirare\r\nE per quanto io combatta sono pronto già a volare\r\nDopo voglio poter dirti ”ce l''ho fatta ed è speciale”\r\n\r\nAnche adesso non sorrido e tu lo sai perché\r\nResta impresso nel mio viso ciò che fai per me\r\nE so che mi cercherai però non mi troverai\r\nIo ho deciso che adesso non ci sarò mai per te\r\nParlerai dal profondo di ogni tuo tabù\r\nLa mia testa resta alta ma il tuo volto è giù\r\nMe ne vado dal tuo mondo però non mi nascondo\r\nE tu non mi chiedere perché non ti rispondo più\r\n\r\nSai che c''e''?\r\nSembra tutto più perfetto pure senza di te\r\nPer il modo in cui mi guardi dopo tutti gli schiaffi\r\nChe ho preso e non ti ho chiesto il perché\r\nOra dimmi se sai che c''e''?\r\nSembra tutto più perfetto pure senza di te\r\nMe ne vado dal tuo mondo però non mi nascondo\r\nE tu non mi chiedere perché non ti rispondo più'),
(3, 'Mr. Anderson', 1, 'Danger', 'Come lei ben sa le apparenze possono ingannare il che riporta la nostra conversazione alla ragione percui siamo qui\r\nNoi non siamo qui perchè siamo liberi, siamo qui perchè non siamo liberi\r\n\r\nSalgo sul palco col machete mille gradi Fahrenheit\r\nPer guardare oltre la siepe che tu non hai visto mai\r\nViviamo vite online dentro wi-fi chat\r\nAspettandoci dei guai come in Eyes Wide Shut\r\n\r\nNon è Mars Attack gli squamati fra gli umani\r\nStanno ai vertici mondiali dei poteri finanziari\r\nEmissari e messaggeri per vangeli virtuali\r\nSiamo zeri messi in riga sopra codici binari\r\n\r\nL''uomo del duemila resta in fila con la giacca\r\nGira con il cappio al collo e te la spaccia per cravatta\r\nIngoio due compresse perchè so che non mi basta\r\nMischio l''odio con lo stress finchè il caffè scioglie la tazza\r\n\r\nDivento fumo passo e chiudo poi scompaio\r\nConsumo il pasto nudo finchè asciugo il calamaio\r\nNoi stiamo nell''oscuro nel formicaio d''acciaio\r\nMa le macchine nel buio sono più vicine a Zion\r\n\r\n"Siamo qui per togliere a lei quello che lei ha cercato di togliere a noi."\r\n\r\nSe non ti bastano la droga e l''alcool\r\nConnetti il tuo midollo allo spinotto dello smartphone\r\nDiventeremo cyborg\r\nCi vendono emozioni dentro confezioni in nylon\r\n\r\nI''m a psycho\r\nTrema il globo finchè prende fuoco holy bible\r\nLoro cercano un teen idol\r\nPer lasciarci mutilati e imprigionati dentro un firewall\r\n\r\nVai mò, compra, spendi, paga e dopo consuma\r\nPerò non dire alla tua donna che non le puoi comprar la luna\r\nE piegati alla fortuna vivi in posti numerati\r\nTra chi deruba la tua cultura tra zombie e supermercati\r\n\r\nDopo cancella tutti i dati masterizzati dal tuo ingegno\r\nNasci, vivi, lavora e muori che tanto ti senti meglio\r\nQui siamo tutti anestetizzati sei pronto per il risveglio?\r\nClicca su "mi piace" droga gratis del terzo millennio questa è Matrix\r\n\r\nQuesto è Matrix\r\nQuesto è Matrix'),
(4, 'Back Again', 1, 'Danger', 'E yo one, two, three, four\r\nMicrophone check-a\r\nIl tuo pc resetta, sembra serva fargli un back up\r\nSotto co sta merda da prima che uscisse blackout\r\nSta gente non si sveglia c''ha la merda in testa, wake up (wake up)\r\nNon ho tempo per un mazzo di fiori\r\nQuindi ti aspetto sull''altare già col cazzo di fuori\r\nIo ho voluto far le scale, tu hai voluto gli ascensori\r\nMa se cado io mi faccio male\r\nSe lo fai tu muori\r\nGuardandoti negli occhi cazzo vuoi che possa leggere?\r\nChe al club degli idioti non danno nemmeno le tessere\r\nSti poveri viziati senza nervi e senza vertebre\r\nDa depilati, sembrano i vermi che vogliono essere\r\nDevi mettere più savoir faire\r\nMi basta un piatto, un micro e un palco, nitro one man band\r\nPensi sia soltanto la corona a fare il re?\r\nAlle stronzate credici ancora te\r\nWe take it back again\r\n\r\nIo faccio il rapper non racconto barzellette\r\nMagari smetto domani, ti piacerebbe\r\n(I-I-I ain''t no joke)\r\nIo faccio il rapper non scrivo canzonette\r\nMagari smetto domani, ti piacerebbe\r\n\r\nMister N.I.T.R.O\r\nCaro amigo sono il tipo che fa schifo anche al tuo rapper preferito\r\nMi vorresti più addolcito tipo "I love you baby"\r\nForse non hai capito chico, "Fuck you, pay me"\r\nE tu che parli in giro ma alla fine chi ti caga?\r\nSe non vali un quattrino cerchi sempre chi ti paga\r\nSei forte sopra il web ma con i testi scritti nada\r\nCon i sassi nelle scarpe posso farci un''intifada\r\nQuindi tutti zitti brotha, la guerra è legittimata\r\nFino a quando chi ti infama dichiara la ritirata\r\nSaluto la puttana che m''ha rotto il cuore in petto\r\nPer vedermi il fine settimana si paga il biglietto\r\nMi hanno detto tutti attento quando parti perchè cambi\r\nPoi ritorni a casa e scopri che sono cambiati gli altri\r\nSu YouTube hai 500 caratteri per odiarmi\r\nIo ne ho solo 1 e basta ad ammazzarvi tutti quanti\r\nPer di più da come mi parli e da come mi guardi\r\nCapisco che sembra impossibile ascoltarti\r\nFare il rap\r\nC''è chi ne parla e chi lo fa\r\nIo sto coi secondi ma il tuo king da che parte sta?\r\n\r\nIo faccio il rapper non racconto barzellette\r\nMagari smetto domani, ti piacerebbe\r\n(I-I-I ain''t no joke)\r\nIo faccio il rapper non scrivo canzonette\r\nMagari smetto domani, ti piacerebbe'),
(5, '0', 1, 'Danger', '"Certo che sei uno che non molla, bisogna ammetterlo\r\nTi ammazzano e tu continui a rialzarti!"\r\n"Sono come Terminator!"\r\n"Forse lo eri una volta, ma ormai sei stato rimpiazzato."\r\n"Senti, io non capisco: perchè non mi hai fatto a pezzi quando ne hai avuto la possibilità?"\r\n"Troppo facile, gran bastardo! Guardati: bipolare, con tendenze sadomaso..."\r\n"Anfetaminico, drogato di violenza, accoltellato, fatto a pezzi, mentre urli in mezzo al tuo sangue e ai tuoi escrementi! Sarebbe... sarebbe il massimo, una morte da guerriero. Probabilmente ti piacerebbe!"\r\n\r\n[Verse]\r\nQuesta è la rabbia che il primo non conosce mai per davvero\r\nE che raccoglie il secondo, che si sente numero zero\r\nSe sei bravo per davvero alla gente gli rode\r\nMa se sei pericoloso mettono i bastoni fra le ruote\r\nNon ho decoro e non rispetto le scadenze\r\nNon ho un lavoro perchè c''ho già troppe dipendenze\r\nVivo sempre nell''inferno dell''eterno secondo\r\nMa quando rappo fermo il tempo e divento un secondo eterno\r\nSono pronto! Fammi dire ciò che voglio\r\nIo non ho mai avuto niente, a parte le mie penne e un foglio\r\nSon nemico dell''orgoglio, non della sconfitta\r\nMi sento un doppio zero come la farina e chi la pippa\r\nLa vista si raddrizza mentre ballo con i mostri\r\nParlo a Kafka alla mia destra, alla sinistra c''è Bukowski\r\nUn pazzo è un artista senza un pubblico e nient''altro\r\nMa adesso che c''ho un pubblico ed un palco, cazzi vostri!\r\n\r\n[Chorus]\r\nIo che son sempre stato la seconda scelta\r\nDalla peggior troietta al migliore amico di merda\r\nEro quello in cameretta che non se ne andava ai party\r\nE se c''andava, si annoiava e guardava ballare gli altri. (Ehi!)\r\nFermo questi istanti in bianco e nero sopra i palchi\r\nPer ricordarmi quanto è vero che siamo distanti\r\nSon primi tutti quanti fin quando cambi sentiero\r\nIo valgo meno, e ne vado fiero: io sono il numero zero!\r\n\r\nSono il re degli sconfitti, ma non sono mai andato al tappeto!\r\nE i nomi di ''ste merde quando sarà il momento\r\nHai comprato un CD vuoto perché io non son nessuno\r\nMa ricorda che lo zero viene prima del numero uno'),
(6, '1984', 2, 'Hellvisback', '1-9-8-4\nVengo al mondo d’estate\nDio mi parla nel sonno\nMi dice: “Scusi, quanto state?”\n"Ho il permesso di soggiorno\nSono nuovo da queste parti\nParto ma non so se torno\nNon stare sveglio ad aspettarmi"\n\n[Strofa 1]\nQuesto è l’anno dei miracoli\nCraxi mangia coi tentacoli\nMuore Berlinguer e Maradona è al Napoli\nIo sempre col pallone in mano, sette su sette\nPiedi nudi sull’asfalto tra le vie strette\nL’anno in cui la Apple prova il primo Mac\nCrystal Ball, Crystal Meth\nBallo sulle croci tipo “Cristotech”\nCozze crude col limone, dinastia di pescatori\nMio padre non fa il buttafuori ma ti pesta fuori\nRinchiusi dentro il bunker a fumarle tutte\nNiente router, no computer\nPezzi di ricambio per gli scooter\nFermo il tempo che scorre\nBuco il Sole e risorge\nSoffio sull’occhio di George Orwell\nI primi bling Fossil, io solo film sui mostri\nLe prime donne stuprate da Bill Cosby\nCresco in fretta, parlo poco, sembro autistico\nL’arte è cibo per la mente, frequento l’artistico\nSe il treno passerà una volta sola, sarò di parola\nDopo scuola lascerò il mio nome sopra con il viola\nE tu che aspetti in coda e guardi la firma se cola\nMi hai visto nascere e morire per rifarlo ancora\nOlbia City, motorino sempre in due\nPoi la vita è diventata più veloce: ognuno per le sue\nÈ una gara senza freni, non ci sono premi\nDove cazzo vai se non sai da dove vieni?\n\n[Ritornello]\nNo-me, no-me, no-me (Ah)\nOra tutti sanno il no-me, no-me, no-me (Ah)\nOra tutti sanno il no-me, no-me, no-me (Ah)\nOra tutti sanno il no-me, no-me, no-me (Ah)\nS-A-L-M-O\n\n[Bridge]\nCoprimi di soldi, Jerry Maguire\nÈ quello che hai pensato quando eri nei guai\nVoglio portarti via con me tipo McDrive\nBack in the days brah, Marty McFly\nLa mia zona era la ZB, Heavy Metal Kids\nLa versione beta dell’MC\nHo fatto i peggiori lavori per ripagarmi i CD\nSognando un futuro migliore, tipo questo qui\n\n[Strofa 2]\nNah mean?\nIn 5 su un Volkswagen dell’84 verso Londra\nÈ un po’ come nuotare verso l’onda\nSono affogato e poi resuscitato sulla sponda, insomma\nHo perso quando ho fatto a pugni contro l’ombra\nDalle esperienze impari, spali merda a quintali\nE anche se mi spari, c''ho la pelle come i cinghiali\nSardo come Zedda Piras, ho fatto il viaggio in ketamina\nAdesso riempio i locali e parcheggi in terza fila\nSapevi che il mio primo disco\nHa fatto la storia ma dopo i Sangue Misto\nAncora scioccato per quanto sangue ho visto\nIl mio flow vi ha benedetto, è sangue di Cristo\n2012 è la svolta\nMachete Crew mi guarda le spalle tipo la scorta\nCapo come John Gotti, sveglio tutte le notti\nVivevo in una casa con il bagno di Trainspotting\nPoi la mia passione è diventata professione\nDevozione, mani intrecciate come alla confessione\nRingrazierò la sorte per gentile concessione\nÈ importante ciò che lasci, non la conclusione\n\n[Ritornello]\nOra tutti sanno il no-me, no-me, no-me (Ah)\nOra tutti sanno il no-me, no-me, no-me (Ah)\nOra tutti sanno il no-me\n1-9-8-4\nVengo al mondo d’estate\nDio mi parla nel sonno\nMi dice: "Hey boy, guarda che ora tutti sanno il\nNo-me, no-me, no-me" (Ah)\nOra tutti sanno il no-me, no-me, no-me\nS-A-L-M-O\n\n[Outro]\nPuoi odiarlo a morte, puoi gridarlo forte\nOra tutti sanno che il no-me è S-A-L-M-O\nPuoi odiarlo a morte, puoi gridarlo forte\nOra tutti sanno che il no-me è S-A-L-M-O\nPuoi odiarlo a morte o puoi gridarlo forte\nOra tutti sanno che il no-me è S-A-L-M-O'),
(7, 'IO SONO MEZZOSANGE', 3, 'TREE-ROOTS', 'Chiuso nelle mie prigioni come Pellico,\r\nZion,\r\napri i tuoi cancelli o te li spacco col mortaio..\r\nQua ognuno ha le sue celle, la sua prigione mentale ma\r\nsta vita è l’enigmista: t’ha chiuso in testa la chiave..\r\nSapersi elevare è arte e parte della soluzione\r\nma ho ansie e paranoie e somigliano quasi al sole\r\nperché sorgono sempre, tramontano sempre,\r\ne aiutano a guardare finché un giorno non le fissi attentamente\r\ne là finisce che ti bruci gli occhi..\r\nIo do valore a certe cose,\r\nbravo tu che te ne fotti.\r\nBravi tutti dentro bolle di niente, pronti a morirci,\r\nnon t’ho chiesto di sentirmi man, t’ho chiesto di sentirti\r\nsono spiccioli per un clochard..\r\nGradini per salire gli inferi,\r\nma è l’incipit,\r\nè solamente l’incipit:\r\npaura è malattia?\r\nbhè il coraggio è uno dei sintomi..\r\nUn uomo lo misuri dai suoi sogni o dai suoi incubi?\r\n\r\n\r\n \r\nDigli che non cedi non li preghi e che hai le braccia per rialzarti sempre\r\nDigli che ci vedi in mezzo ai ciechi perché avere gli occhi aperti serve\r\nDigli che c’hai il cuore con le spine e poi\r\nche un giorno all’orizzonte vedrà le tue spalle..\r\nChe ammetterai a te stesso sono come voi:\r\nIo sono Mezzosangue\r\n\r\nUn mezzosangue non ha scelta è a disagio in ogni posto\r\nA un uomo libero sta stretta anche la libertà ma un mostro lascia ogni ferita aperta\r\nLo spirito non perde sangue\r\nScavami la carne dai\r\nChe almeno là dovrai fermarti all’osso,\r\nho un rendesvouz con l’arte e le emozioni\r\ncon chi prima di ascoltarle ha già in mano i pomodori,\r\ngioco a carte con il mondo là fuori, qua fuori..\r\nma ho in mano quadri e cuori dove regnano denara e bastoni,\r\nso che un giorno cambieremo il mondo,\r\ninfondo siamo tutto quanto quello che vediamo fino in fondo\r\nsiamo i denti che teniamo stretti giorno dopo giorno\r\nSo che un uomo non è un uomo finché è un uomo senza un sogno..\r\nIo lo so che un giorno sarò pronto, grande,\r\nun treno deragliante sulle rotaie,\r\ndritto dalle strade degli Aò, daje!\r\nLa mia stella parla già per me,\r\nlontana dalle tante altre,\r\nIo sono MezzoSangue.');

-- --------------------------------------------------------

--
-- Struttura della tabella `playlist`
--

CREATE TABLE IF NOT EXISTS `playlist` (
  `ID_playlist` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `id_canzone` int(11) NOT NULL,
  `id_utente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `sintesi`
--

CREATE TABLE IF NOT EXISTS `sintesi` (
  `ID_sintesi` int(11) NOT NULL,
  `id_utente` int(11) NOT NULL,
  `id_canzone` int(11) NOT NULL,
  `sintesi` text NOT NULL,
  `punti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE IF NOT EXISTS `utenti` (
  `ID_utente` int(11) NOT NULL,
  `cognome` varchar(200) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nome` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`ID_utente`, `cognome`, `mail`, `nickname`, `password`, `nome`) VALUES
(1, 'NOVARA', 'danielenovara1999@gmail', 'novi', 'novi', 'dani'),
(3, 'Pisano', 'xpisi1999@gmail.com', 'pisi', '123', 'Filippo'),
(54, 'sas', 'sss@gmail.org', 'arro', '111', 'Aronne'),
(55, 'aronne', 'a@com', 'adsas', '123', 'ab');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `autore`
--
ALTER TABLE `autore`
  ADD PRIMARY KEY (`ID_autore`);

--
-- Indici per le tabelle `canzone`
--
ALTER TABLE `canzone`
  ADD PRIMARY KEY (`ID_canzone`),
  ADD KEY `id_autore` (`id_autore`);

--
-- Indici per le tabelle `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`ID_playlist`),
  ADD KEY `id_canzone` (`id_canzone`),
  ADD KEY `id_utente` (`id_utente`);

--
-- Indici per le tabelle `sintesi`
--
ALTER TABLE `sintesi`
  ADD PRIMARY KEY (`ID_sintesi`),
  ADD KEY `id_canzone` (`id_canzone`),
  ADD KEY `id_utente` (`id_utente`),
  ADD KEY `id_utente_2` (`id_utente`),
  ADD KEY `id_canzone_2` (`id_canzone`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`ID_utente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `autore`
--
ALTER TABLE `autore`
  MODIFY `ID_autore` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `canzone`
--
ALTER TABLE `canzone`
  MODIFY `ID_canzone` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT per la tabella `playlist`
--
ALTER TABLE `playlist`
  MODIFY `ID_playlist` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `sintesi`
--
ALTER TABLE `sintesi`
  MODIFY `ID_sintesi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `ID_utente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `canzone`
--
ALTER TABLE `canzone`
  ADD CONSTRAINT `canzone_ibfk_1` FOREIGN KEY (`id_autore`) REFERENCES `autore` (`ID_autore`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`id_utente`) REFERENCES `utenti` (`ID_utente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_2` FOREIGN KEY (`id_canzone`) REFERENCES `canzone` (`ID_canzone`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `sintesi`
--
ALTER TABLE `sintesi`
  ADD CONSTRAINT `sintesi_ibfk_1` FOREIGN KEY (`id_canzone`) REFERENCES `canzone` (`ID_canzone`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sintesi_ibfk_2` FOREIGN KEY (`id_utente`) REFERENCES `utenti` (`ID_utente`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
