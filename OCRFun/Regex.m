//
//  Regex.m
//  VerseReferenceFilter
//
//  Created by Reardon, Tyler on 10/18/16.
//  Copyright © 2016 Reardon, Tyler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Regex.h"

@implementation Regex


-(NSString*)parseBook:(NSString *)bookName
{
    bookName = bookName.lowercaseString;
    NSString *genesis = @"ge.,gen.,gen,ge,gn,gn.,genesis";
    NSArray *genesisArray = [genesis componentsSeparatedByString:@","];
    NSString *exodus = @"exo.,exo,ex.,ex,exod,exod.,exodus";
    NSArray *exodusArray = [exodus componentsSeparatedByString:@","];
    NSString *leviticus = @"le.,lev.,le,leviticus,lev,lv";
    NSArray *leviticusArray = [leviticus componentsSeparatedByString:@","];
    NSString *numbers = @"nu.,num.,nu,num,numbers,nm";
    NSArray *numbersArray = [numbers componentsSeparatedByString:@","];
    NSString *deuteronomy = @"de.,de,deuteronomy,deut.,dt.,deut,deu,deu.,du,du.,dt";
    NSArray *deuteronomyArray = [deuteronomy componentsSeparatedByString:@","];
    NSString *joshua = @"josh.,jos.,jos,josh,joshua,joshua";
    NSArray *joshuaArray = [joshua componentsSeparatedByString:@","];
    NSString *judges = @"jdg.,jdg,judges,judg.,judg,jgs,jud";
    NSArray *judgesArray = [judges componentsSeparatedByString:@","];
    NSString *ruth = @"ru.,ru,ruth,rth,rth.";
    NSArray *ruthArray = [ruth componentsSeparatedByString:@","];
    NSString *onesamuel = @"1 sa,1sa,1sa.,1 samuel,1 sam.,1 sam,1 sa.,1sam,1 kingdoms,i samuel,1-sam,1-sam.,1-sa,1-samuel,1sam.,first samuel,1 sm,1sm,1 samuel";
    NSArray *onesamuelArray = [onesamuel componentsSeparatedByString:@","];
    NSString *twosamuel = @"2 sa,2sa,2sa.,2 samuel,2 sam.,2 sam,2 sa.,2sam,2 kingdoms,ii samuel,2-sam,2-sam.,2-sa,2-samuel,2sam.,second samuel,2 sm,2sm";
    NSArray *twosamuelArray = [twosamuel componentsSeparatedByString:@","];
    NSString *onekings = @"1 ki,1ki,1ki.,1 kings,1 kgs.,1 kgs,1 kin,1 kin.,1 ki.,i kings,1kings,3 kingdoms,1-kings,1-ki,1-king,1-kin.,1kin.,first kings,1kgs.,1kg";
    NSArray *onekingsArray = [onekings componentsSeparatedByString:@","];
    NSString *twokings = @"2 ki,2ki,2ki.,2 kings,2 kgs.,2 kgs,2 kin,2 kin.,2 ki.,ii kings,2kings,4 kingdoms,2-kings,2-ki,2-king,2-kin.,2kin.,second kings,2kgs.,2kg";
    NSArray *twokingsArray = [twokings componentsSeparatedByString:@","];
    NSString *onechronicles = @"1 ch,1ch,1 chronicles,1 chr.,1 chr,1 ch.,1 chron.,1 chron,1chron,i chronicles,1-ch,1-chr,1-chr.,1-chron,1-chronicles,1chron.,first chronicles";
    NSArray *onechroniclesArray = [onechronicles componentsSeparatedByString:@","];
    NSString *twochronicles = @"2 ch,2ch,2 chronicles,2 chr.,2 chr,2 ch.,2 chron.,2 chron,2chron,ii chronicles,2-ch,2-chr,2-chr.,2-chron,2-chronicles,2chron.,second chronicles";
    NSArray *twochroniclesArray = [twochronicles componentsSeparatedByString:@","];
    NSString *ezra = @"ezr,ezra,ezr.";
    NSArray *ezraArray = [ezra componentsSeparatedByString:@","];
    NSString *nehemiah = @"ne,neh,nehemiah,neh.,ne.";
    NSArray *nehemiahArray = [nehemiah componentsSeparatedByString:@","];
    NSString *esther = @"es,esther,es.,esth.,esth,est,est.";
    NSArray *estherArray = [esther componentsSeparatedByString:@","];
    NSString *job = @"jb,job,jb.";
    NSArray *jobArray = [job componentsSeparatedByString:@","];
    NSString *psalms = @"ps,psalm,psa.,ps.,psalms,psa,pss.,pss,psalm";
    NSArray *psalmsArray = [psalms componentsSeparatedByString:@","];
    NSString *proverbs = @"pr,proverbs,pro.,pr.,prov.,pro,prov,prv,proverbs";
    NSArray *proverbsArray = [proverbs componentsSeparatedByString:@","];
    NSString *ecclesiastes = @"ec,ecc,ecclesiastes,ecc.,ec.,eccl.,eccles.,eccles,ecclesiastics,eccl,ecclesiastes";
    NSArray *ecclesiastesArray = [ecclesiastes componentsSeparatedByString:@","];
    NSString *songofsongs = @"cant,song,song of songs,song of solomon,cant.,song.,ss,so,sg";
    NSArray *songofsongsArray = [songofsongs componentsSeparatedByString:@","];
    NSString *isaiah = @"is.,isaiah,is,isa.,isa,isaiah";
    NSArray *isaiahArray = [isaiah componentsSeparatedByString:@","];
    NSString *jeremiah = @"je,jeremiah,jer.,jer,je.,jr,jeremiah";
    NSArray *jeremiahArray = [jeremiah componentsSeparatedByString:@","];
    NSString *lamentations = @"la,lamentations,lam.,lam,la.,lm,lamentations";
    NSArray *lamentationsArray = [lamentations componentsSeparatedByString:@","];
    NSString *ezekiel = @"ez,ezekiel,ezk.,ez.,ezek.,ezek,ezk,eze";
    NSArray *ezekielArray = [ezekiel componentsSeparatedByString:@","];
    NSString *daniel = @"da,daniel,dan.,dan,da.,dn";
    NSArray *danielArray = [daniel componentsSeparatedByString:@","];
    NSString *hosea = @"ho,hosea,hs.,hos.,hos,ho.,hs";
    NSArray *hoseaArray = [hosea componentsSeparatedByString:@","];
    NSString *joel = @"jl,joel,jl.,joe";
    NSArray *joelArray = [joel componentsSeparatedByString:@","];
    NSString *amos = @"am,amos,am.";
    NSArray *amosArray = [amos componentsSeparatedByString:@","];
    NSString *obadiah = @"ob,obadiah,obad.,ob.,obad";
    NSArray *obadiahArray = [obadiah componentsSeparatedByString:@","];
    NSString *jonah = @"jnh,jonah,jnh.,jon.,jon";
    NSArray *jonahArray = [jonah componentsSeparatedByString:@","];
    NSString *micha = @"mi,micah,mic.,mic,mi.,mc";
    NSArray *michaArray = [micha componentsSeparatedByString:@","];
    NSString *nahum = @"na,nahum,nah.,nah,na.";
    NSArray *nahumArray = [nahum componentsSeparatedByString:@","];
    NSString *habakkuk = @"hab,habakkuk,hab.";
    NSArray *habakkukArray = [habakkuk componentsSeparatedByString:@","];
    NSString *zephaniah = @"zep,zephaniah,zeph.,zeph,zep.,zph";
    NSArray *zephaniahArray = [zephaniah componentsSeparatedByString:@","];
    NSString *haggai = @"hag,haggai,hag.,hg";
    NSArray *haggaiArray = [haggai componentsSeparatedByString:@","];
    NSString *zechariah = @"zech,zec,zechariah,zec.,zech.,zch";
    NSArray *zechariahArray = [zechariah componentsSeparatedByString:@","];
    NSString *malachi = @"mal,malachi,mal.,malachi";
    NSArray *malachiArray = [malachi componentsSeparatedByString:@","];
    NSString *matthew = @"mat,matthew,matt.,mt.,mat.,mt,matt,matthew";
    NSArray *matthewArray = [matthew componentsSeparatedByString:@","];
    NSString *mark = @"mar,mark,mk.,mar.,mk,mr.,mark";
    NSArray *markArray = [mark componentsSeparatedByString:@","];
    NSString *luke = @"lk,luke,lk.,luke.,lu,lu.,luke";
    NSArray *lukeArray = [luke componentsSeparatedByString:@","];
    NSString *john = @"jn,john,jn.,john.,joh,john";
    NSArray *johnArray = [john componentsSeparatedByString:@","];
    NSString *acts = @"ac,acts,ac.,acts.,act,actsoftheaopostles";
    NSArray *actsArray = [acts componentsSeparatedByString:@","];
    NSString *romans = @"rm,romans,rom.,roman,rm.,rom,ro,ro.,romans";
    NSArray *romansArray = [romans componentsSeparatedByString:@","];
    NSString *onecorinthians = @"1cor,1cor.,1 co,1 co.,1co,1co.,1 corinthians,1 cor.,1 cor,i cor.,i cor,i corinthians,i. corinthians,i corinthains,1c,1c.,1-cor,1-co,1-cor.,1-corinthians,first corinthians,1 corinthians";
    NSArray *onecorinthiansArray = [onecorinthians componentsSeparatedByString:@","];
    NSString *twocorinthians = @"2cor,2cor.,2 co,2 co.,2co,2co.,2 corinthians,2 cor.,2 cor,ii cor.,ii cor,ii corinthians,ii. corinthians,ii corinthains,2c,2c.,2-cor,2-co,2-cor.,2-corinthians,second corinthians,2 corinthians";
    NSArray *twocorinthiansArray = [twocorinthians componentsSeparatedByString:@","];
    NSString *galatians = @"ga,galatians,gal.,ga.,gal,gl";
    NSArray *galatiansArray = [galatians componentsSeparatedByString:@","];
    NSString *ephesians = @"ep,ephesians,eph.,ep.,eph,ephesians";
    NSArray *ephesiansArray = [ephesians componentsSeparatedByString:@","];
    NSString *philippians = @"phil,philippians,phil.,php,philipians,phillipians,php.,philippians";
    NSArray *philippiansArray = [philippians componentsSeparatedByString:@","];
    NSString *colossians = @"col,colossians,col.,co,co.";
    NSArray *colossiansArray = [colossians componentsSeparatedByString:@","];
    NSString *onethessalonians = @"1 th,1th,1 th.,1th.,1 thessalonians,1 thess.,1 thess,1 thes,1 thes.,1thess.,i thessalonians,i thess.,1 thessalonians.,1-thess,1-th,1-thess.,1-thessalonians,first thessalonians,1 thessalonians";
    NSArray *onethessaloniansArray = [onethessalonians componentsSeparatedByString:@","];
    NSString *twothessalonians = @"2 th,2th,2 th.,2th.,2 thessalonians,2 thess.,2 thess,2 thes,2 thes.,2thess.,ii thessalonians,ii thess.,2 thessalonians.,2-thess,2-th,2-thess.,2-thessalonians,second thessalonians";
    NSArray *twothessaloniansArray = [twothessalonians componentsSeparatedByString:@","];
    NSString *onetimothy = @"1 ti,1ti,1 ti.,1ti.,1 timothy,1 tim.,1 tim,i timothy,i tim.,1-ti,1-tim,1-tim.,1-timothy,1tim.,first timothy,1 tm,1tm";
    NSArray *onetimothyArray = [onetimothy componentsSeparatedByString:@","];
    NSString *twotimothy = @"2 ti,2ti,2 ti.,2ti.,2 timothy,2 tim.,2 tim,2tim,ii timothy,ii tim.,2-ti,2-tim,2-tim.,2-timothy,2tim.,second timothy,2 tm,1tm,2 timothy";
    NSArray *twotimothyArray = [twotimothy componentsSeparatedByString:@","];
    NSString *titus = @"ti,titus,tit.,ti.,tit";
    NSArray *titusArray = [titus componentsSeparatedByString:@","];
    NSString *philemon = @"philemon,phile,philemon,phlm.,phile.,philm.,phlm,philm,pm,pm.,philem.,philem,phm";
    NSArray *philemonArray = [philemon componentsSeparatedByString:@","];
    NSString *hebrews = @"hb,hebrews,heb.,heb,hb.,hebrews";
    NSArray *hebrewsArray = [hebrews componentsSeparatedByString:@","];
    NSString *james = @"ja,james,jas.,jms.,ja.,jas,jms,james";
    NSArray *jamesArray = [james componentsSeparatedByString:@","];
    NSString *onepeter = @"1 pe,1 pe.,1pe,1pe.,1 peter,1 pet.,1 pet,i peter,i pet.,1-pe,1-pet,1-pet.,1-peter,1pet.,first peter,1 pt,1pt,1 peter";
    NSArray *onepeterArray = [onepeter componentsSeparatedByString:@","];
    NSString *twopeter = @"2 pe,2 pe.,2pe,2pe.,2 peter,2 pet.,2 pet,ii peter,ii pet.,2-pe,2-pet,2-pet.,2-peter,2pet.,second peter,2 pt,2pt";
    NSArray *twopeterArray = [twopeter componentsSeparatedByString:@","];
    NSString *onejohn = @"1 jn,1jn,1jn.,1 john,1 jn.,i john,1-jn,1-jn.,1-john,first john,1jo,1john";
    NSArray *onejohnArray = [onejohn componentsSeparatedByString:@","];
    NSString *twojohn = @"2 jn,2jn,2jn.,2 john,2 jn.,ii john,2-jn,2-jn.,2-john,second john,2jo";
    NSArray *twojohnArray = [twojohn componentsSeparatedByString:@","];
    NSString *threejohn = @"3 jn,3jn,3jn.,3 john,3 jn.,iii john,3-jn,3-jn.,3-john,third john,3jo";
    NSArray *threejohnArray = [threejohn componentsSeparatedByString:@","];
    NSString *jude = @"jde,jude,jde.,jd";
    NSArray *judeArray = [jude componentsSeparatedByString:@","];
    NSString *revelation = @"apoc,revelation,revelations,rev.,rev,rv,rv.,re";
    NSArray *revelationArray = [revelation componentsSeparatedByString:@","];
    NSString *tobit = @"tobit,to.,tb,tob.,tob";
    NSArray *tobitArray = [tobit componentsSeparatedByString:@","];
    NSString *judith = @"jth,judith,jth.";
    NSArray *judithArray = [judith componentsSeparatedByString:@","];
    NSString *additionstoesther = @"additionstoesther,add.";
    NSArray *additionstoestherArray = [additionstoesther componentsSeparatedByString:@","];
    NSString *wisdomofsolomon = @"wissol,wisd,wis,wisdom,wissol.,wisd.,wisdom of solomon";
    NSArray *wisdomofsolomonArray = [wisdomofsolomon componentsSeparatedByString:@","];
    NSString *sirach = @"sirach,ecclesia,sir.,sir";
    NSArray *sirachArray = [sirach componentsSeparatedByString:@","];
    NSString *baruch = @"baruch,ba,ba.,bar";
    NSArray *baruchArray = [baruch componentsSeparatedByString:@","];
    NSString *letterofjeremiah = @"letterofjeremiah";
    NSArray *letterofjeremiahArray = [letterofjeremiah componentsSeparatedByString:@","];
    NSString *letterofazariah = @"az,letter of azariah,azar,azar.,az.";
    NSArray *letterofazariahArray = [letterofazariah componentsSeparatedByString:@","];
    NSString *suzanna = @"suzanna,su,su.,suz,suz.";
    NSArray *suzannaArray = [suzanna componentsSeparatedByString:@","];
    NSString *bellandthedragon = @"bellandthedragon,bel,bel.";
    NSArray *bellandthedragonArray = [bellandthedragon componentsSeparatedByString:@","];
    NSString *onemaccabees = @"1 ma,1 ma.,1ma,1ma.,1 maccabees,1mac,1mac.,1 mac,1 mac.,1-mac,1-mac.,1-macc,1-macc.,1-maccabees,first maccabees,1 mc,i maccabees,1 macc";
    NSArray *onemaccabeesArray = [onemaccabees componentsSeparatedByString:@","];
    NSString *twomaccabees = @"2 ma,2 ma.,2ma,2ma.,2 maccabees,2mac,2mac.,2 mac,2 mac.,2-mac,2-mac.,2-macc,2-macc.,2-maccabees,second maccabees,2 mc,ii maccabees,2 macc";
    NSArray *twomaccabeesArray = [twomaccabees componentsSeparatedByString:@","];
    NSString *oneesdras = @"1 es,1 es.,1es,1es.,1 esdras";
    NSArray *oneesdrasArray = [oneesdras componentsSeparatedByString:@","];
    NSString *prayerofmanasseh = @"prayerofmanasseh,man.";
    NSArray *prayerofmanassehArray = [prayerofmanasseh componentsSeparatedByString:@","];
    NSString *psalmonefiftyone = @"psalm151,psalms 151,p151,ps151";
    NSArray *psalmonefiftyoneArray = [psalmonefiftyone componentsSeparatedByString:@","];
    NSString *threemaccabees = @"3 ma,3 ma.,3ma,3ma.,3 maccabees,3mac,3mac.,3 macc,3 macc.,3-mac,3-mac.,3-macc,3-macc.,3-maccabees,third maccabees";
    NSArray *threemaccabeesArray = [threemaccabees componentsSeparatedByString:@","];
    NSString *twoesdras = @"2 es,2 es.,2es,2es.,2 esdras,second esdras";
    NSArray *twoesdrasArray = [twoesdras componentsSeparatedByString:@","];
    NSString *fourmaccabees = @"4 ma,4ma,4 ma.,4ma.,4 maccabees,4mac,4mac.,4 mac,4 mac.,4-mac,4-mac.,4-macc,4-macc.,4-maccabees,fourth maccabees";
    NSArray *fourmaccabeesArray = [fourmaccabees componentsSeparatedByString:@","];
    NSString *additionstodaniel = @"ada,ada.,adan,adan.,additions to daniel";
    NSArray *additionstodanielArray = [additionstodaniel componentsSeparatedByString:@","];
    
    if ([genesisArray containsObject:bookName]){
        return @"1";
    }else if ([exodusArray containsObject:bookName]){
        return @"2";
    }
    else if ([leviticusArray containsObject:bookName]){
        return @"3";
    }
    else if ([numbersArray containsObject:bookName]){
        return @"4";
    }
    else if ([deuteronomyArray containsObject:bookName]){
        return @"5";
    }
    else if ([joshuaArray containsObject:bookName]){
        return @"6";
    }
    else if ([judgesArray containsObject:bookName]){
        return @"7";
    }
    else if ([ruthArray containsObject:bookName]){
        return @"8";
    }
    else if ([onesamuelArray containsObject:bookName]){
        return @"9";
    }
    else if ([twosamuelArray containsObject:bookName]){
        return @"10";
    }
    else if ([onekingsArray containsObject:bookName]){
        return @"11";
    }
    else if ([twokingsArray containsObject:bookName]){
        return @"12";
    }
    else if ([onechroniclesArray containsObject:bookName]){
        return @"13";
    }
    else if ([twochroniclesArray containsObject:bookName]){
        return @"14";
    }
    else if ([ezraArray containsObject:bookName]){
        return @"15";
    }
    else if ([nehemiahArray containsObject:bookName]){
        return @"16";
    }
    else if ([estherArray containsObject:bookName]){
        return @"17";
    }
    else if ([jobArray containsObject:bookName]){
        return @"18";
    }
    else if ([psalmsArray containsObject:bookName]){
        return @"19";
    }
    else if ([proverbsArray containsObject:bookName]){
        return @"20";
    }
    else if ([ecclesiastesArray containsObject:bookName]){
        return @"21";
    }
    else if ([songofsongsArray containsObject:bookName]){
        return @"22";
    }
    else if ([isaiahArray containsObject:bookName]){
        return @"23";
    }
    else if ([jeremiahArray containsObject:bookName]){
        return @"24";
    }
    else if ([lamentationsArray containsObject:bookName]){
        return @"25";
    }
    else if ([ezekielArray containsObject:bookName]){
        return @"26";
    }
    else if ([danielArray containsObject:bookName]){
        return @"27";
    }
    else if ([hoseaArray containsObject:bookName]){
        return @"28";
    }
    else if ([joelArray containsObject:bookName]){
        return @"29";
    }
    else if ([amosArray containsObject:bookName]){
        return @"30";
    }
    else if ([obadiahArray containsObject:bookName]){
        return @"31";
    }
    else if ([jonahArray containsObject:bookName]){
        return @"32";
    }
    else if ([michaArray containsObject:bookName]){
        return @"33";
    }
    else if ([nahumArray containsObject:bookName]){
        return @"34";
    }
    else if ([habakkukArray containsObject:bookName]){
        return @"35";
    }
    else if ([zephaniahArray containsObject:bookName]){
        return @"36";
    }
    else if ([haggaiArray containsObject:bookName]){
        return @"37";
    }
    else if ([zechariahArray containsObject:bookName]){
        return @"38";
    }
    else if ([malachiArray containsObject:bookName]){
        return @"39";
    }
    else if ([matthewArray containsObject:bookName]){
        return @"40";
    }
    else if ([markArray containsObject:bookName]){
        return @"41";
    }
    else if ([lukeArray containsObject:bookName]){
        return @"42";
    }
    else if ([johnArray containsObject:bookName]){
        return @"43";
    }
    else if ([actsArray containsObject:bookName]){
        return @"44";
    }
    else if ([romansArray containsObject:bookName]){
        return @"45";
    }
    else if ([onecorinthiansArray containsObject:bookName]){
        return @"46";
    }
    else if ([twocorinthiansArray containsObject:bookName]){
        return @"47";
    }
    else if ([galatiansArray containsObject:bookName]){
        return @"48";
    }
    else if ([ephesiansArray containsObject:bookName]){
        return @"49";
    }
    else if ([philippiansArray containsObject:bookName]){
        return @"50";
    }
    else if ([colossiansArray containsObject:bookName]){
        return @"51";
    }
    else if ([onethessaloniansArray containsObject:bookName]){
        return @"52";
    }
    else if ([twothessaloniansArray containsObject:bookName]){
        return @"53";
    }
    else if ([onetimothyArray containsObject:bookName]){
        return @"54";
    }
    else if ([twotimothyArray containsObject:bookName]){
        return @"55";
    }
    else if ([titusArray containsObject:bookName]){
        return @"56";
    }
    else if ([philemonArray containsObject:bookName]){
        return @"57";
    }
    else if ([hebrewsArray containsObject:bookName]){
        return @"58";
    }
    else if ([jamesArray containsObject:bookName]){
        return @"59";
    }
    else if ([onepeterArray containsObject:bookName]){
        return @"60";
    }
    else if ([twopeterArray containsObject:bookName]){
        return @"61";
    }
    else if ([onejohnArray containsObject:bookName]){
        return @"62";
    }
    else if ([twojohnArray containsObject:bookName]){
        return @"63";
    }
    else if ([threejohnArray containsObject:bookName]){
        return @"64";
    }
    else if ([judeArray containsObject:bookName]){
        return @"65";
    }
    else if ([revelationArray containsObject:bookName]){
        return @"66";
    }
    else if ([tobitArray containsObject:bookName]){
        return @"67";
    }
    else if ([judithArray containsObject:bookName]){
        return @"68";
    }
    else if ([additionstoestherArray containsObject:bookName]){
        return @"69";
    }
    else if ([wisdomofsolomonArray containsObject:bookName]){
        return @"70";
    }
    else if ([sirachArray containsObject:bookName]){
        return @"71";
    }
    else if ([baruchArray containsObject:bookName]){
        return @"72";
    }
    else if ([letterofjeremiahArray containsObject:bookName]){
        return @"73";
    }
    else if ([letterofazariahArray containsObject:bookName]){
        return @"74";
    }
    else if ([suzannaArray containsObject:bookName]){
        return @"75";
    }
    else if ([bellandthedragonArray containsObject:bookName]){
        return @"76";
    }
    else if ([onemaccabeesArray containsObject:bookName]){
        return @"77";
    }
    else if ([twomaccabeesArray containsObject:bookName]){
        return @"78";
    }
    else if ([oneesdrasArray containsObject:bookName]){
        return @"79";
    }
    else if ([prayerofmanassehArray containsObject:bookName]){
        return @"80";
    }
    else if ([psalmonefiftyoneArray containsObject:bookName]){
        return @"81";
    }
    else if ([threemaccabeesArray containsObject:bookName]){
        return @"82";
    }
    else if ([twoesdrasArray containsObject:bookName]){
        return @"83";
    }
    else if ([fourmaccabeesArray containsObject:bookName]){
        return @"84";
    }
    else if ([additionstodanielArray containsObject:bookName]){
        return @"85";
    }
    else{
        return nil;
    }
}

-(NSArray*)findVerseRefs:(NSString *)text
{
    
    NSRegularExpression *bookChapterVerse = [NSRegularExpression regularExpressionWithPattern:@"(ge.|gen.|gen|ge|gn|gn.|genesis|exo.|exo|ex.|ex|exod|exod.|exodus|le.|lev.|le|leviticus|lev|lv|nu.|num.|nu|num|numbers|nm|de.|de|deuteronomy|deut.|dt.|deut|deu|deu.|du|du.|dt|josh.|jos.|jos|josh|joshua|joshua|jdg.|jdg|judges|judg.|judg|jgs|jud|ru.|ru|ruth|rth|rth.|1 sa|1sa|1sa.|1 samuel|1 sam.|1 sam|1 sa.|1sam|1 kingdoms|i samuel|1-sam|1-sam.|1-sa|1-samuel|1sam.|first samuel|1 sm|1sm|1 samuel|2 sa|2sa|2sa.|2 samuel|2 sam.|2 sam|2 sa.|2sam|2 kingdoms|ii samuel|2-sam|2-sam.|2-sa|2-samuel|2sam.|second samuel|2 sm|2sm|1 ki|1ki|1ki.|1 kings|1 kgs.|1 kgs|1 kin|1 kin.|1 ki.|i kings|1kings|3 kingdoms|1-kings|1-ki|1-king|1-kin.|1kin.|first kings|1kgs.|1kg|2 ki|2ki|2ki.|2 kings|2 kgs.|2 kgs|2 kin|2 kin.|2 ki.|ii kings|2kings|4 kingdoms|2-kings|2-ki|2-king|2-kin.|2kin.|second kings|2kgs.|2kg|1 ch|1ch|1 chronicles|1 chr.|1 chr|1 ch.|1 chron.|1 chron|1chron|i chronicles|1-ch|1-chr|1-chr.|1-chron|1-chronicles|1chron.|first chronicles|2 ch|2ch|2 chronicles|2 chr.|2 chr|2 ch.|2 chron.|2 chron|2chron|ii chronicles|2-ch|2-chr|2-chr.|2-chron|2-chronicles|2chron.|second chronicles|ezr|ezra|ezr.|ne|neh|nehemiah|neh.|ne.|es|esther|es.|esth.|esth|est|est.|jb|job|jb.|ps|psalm|psa.|ps.|psalms|psa|pss.|pss|psalm|pr|proverbs|pro.|pr.|prov.|pro|prov|prv|proverbs|ec|ecc|ecclesiastes|ecc.|ec.|eccl.|eccles.|eccles|ecclesiastics|eccl|ecclesiastes|cant|song|song of songs|song of solomon|cant.|song.|ss|so|sg|is.|isaiah|is|isa.|isa|isaiah|je|jeremiah|jer.|jer|je.|jr|jeremiah|la|lamentations|lam.|lam|la.|lm|lamentations|ez|ezekiel|ezk.|ez.|ezek.|ezek|ezk|eze|da|daniel|dan.|dan|da.|dn|ho|hosea|hs.|hos.|hos|ho.|hs|jl|joel|jl.|joe|am|amos|am.|ob|obadiah|obad.|ob.|obad|jnh|jonah|jnh.|jon.|jon|mi|micah|mic.|mic|mi.|mc|na|nahum|nah.|nah|na.|hab|habakkuk|hab.|zep|zephaniah|zeph.|zeph|zep.|zph|hag|haggai|hag.|hg|zech|zec|zechariah|zec.|zech.|zch|mal|malachi|mal.|malachi|mat|matthew|matt.|mt.|mat.|mt|matt|matthew|mar|mark|mk.|mar.|mk|mr.mark|lk|luke|lk.|luke.|lu|lu.|luke|jn|john|jn.|john.|joh|john|ac|acts|ac.|acts.|act|rm|romans|rom.|roman|rm.|rom|ro|ro.|romans|1cor|1cor.|1 co|1 co.|1co|1co.|1 corinthians|1 cor.|1 cor|i cor.|i cor|i corinthians|i. corinthians|i corinthains|1c|1c.|1-cor|1-co|1-cor.|1-corinthians|first corinthians|1 corinthians|2cor|2cor.|2 co|2 co.|2co|2co.|2 corinthians|2 cor.|2 cor|ii cor.|ii cor|ii corinthians|ii. corinthians|ii corinthains|2c|2c.|2-cor|2-co|2-cor.|2-corinthians|second corinthians|2 corinthians|ga|galatians|gal.|ga.|gal|gl|ep|ephesians|eph.|ep.|eph|ephesians|phil|philippians|phil.|php|philipians|phillipians|php.|philippians|col|colossians|col.|co|co.|1 th|1th|1 th.|1th.|1 thessalonians|1 thess.|1 thess|1 thes|1 thes.|1thess.|i thessalonians|i thess.|1 thessalonians.|1-thess|1-th|1-thess.|1-thessalonians|first thessalonians|1 thessalonians|2 th|2th|2 th.|2th.|2 thessalonians|2 thess.|2 thess|2 thes|2 thes.|2thess.|ii thessalonians|ii thess.|2 thessalonians.|2-thess|2-th|2-thess.|2-thessalonians|second thessalonians|1 ti|1ti|1 ti.|1ti.|1 timothy|1 tim.|1 tim|i timothy|i tim.|1-ti|1-tim|1-tim.|1-timothy|1tim.|first timothy|1 tm|1tm|2 ti|2ti|2 ti.|2ti.|2 timothy|2 tim.|2 tim|2tim|ii timothy|ii tim.|2-ti|2-tim|2-tim.|2-timothy|2tim.|second timothy|2 tm|1tm|2 timothy|ti|titus|tit.|ti.|tit|philemon|phile|philemon|phlm.|phile.|philm.|phlm|philm|pm|pm.|philem.|philem|phm|hb|hebrews|heb.|heb|hb.|hebrews|ja|james|jas.|jms.|ja.|jas|jms|james|1 pe|1 pe.|1pe|1pe.|1 peter|1 pet.|1 pet|i peter|i pet.|1-pe|1-pet|1-pet.|1-peter|1pet.|first peter|1 pt|1pt|1 peter|2 pe|2 pe.|2pe|2pe.|2 peter|2 pet.|2 pet|ii peter|ii pet.|2-pe|2-pet|2-pet.|2-peter|2pet.|second peter|2 pt|2pt|1 jn|1jn|1jn.|1 john|1 jn.|i john|1-jn|1-jn.|1-john|first john|1jo|1john|2 jn|2jn|2jn.|2 john|2 jn.|ii john|2-jn|2-jn.|2-john|second john|2jo|3 jn|3jn|3jn.|3 john|3 jn.|iii john|3-jn|3-jn.|3-john|third john|3jo|jde|jude|jde.|jd|apoc|revelation|rev.|rev|rv|rv.|re|tobit|to.|tb|tob.|tob|jth|judith|jth.|additionstoesther|add.|wissol|wisd|wis|wisdom|wissol.|wisd.|wisdom of solomon|sirach|ecclesia|sir.|sir|baruch|ba|ba.|bar|letterofjeremiah|az|letter of azariah|azar|azar.|az.|suzanna|su|su.|suz|suz.|bellandthedragon|bel|bel.|1 ma|1 ma.|1ma|1ma.|1 maccabees|1mac|1mac.|1 mac|1 mac.|1-mac|1-mac.|1-macc|1-macc.|1-maccabees|first maccabees|1 mc|i maccabees|1 macc|2 ma|2 ma.|2ma|2ma.|2 maccabees|2mac|2mac.|2 mac|2 mac.|2-mac|2-mac.|2-macc|2-macc.|2-maccabees|second maccabees|2 mc|ii maccabees|2 macc|1 es|1 es.|1es|1es.|1 esdras|prayerofmanasseh|man.|psalm151|psalms 151|p151|ps151|3 ma|3 ma.|3ma|3ma.|3 maccabees|3mac|3mac.|3 macc|3 macc.|3-mac|3-mac.|3-macc|3-macc.|3-maccabees|third maccabees|2 es|2 es.|2es|2es.|2 esdras|second esdras|4 ma|4ma|4 ma.|4ma.|4 maccabees|4mac|4mac.|4 mac|4 mac.|4-mac|4-mac.|4-macc|4-macc.|4-maccabees|fourth maccabees|ada|ada.|adan|adan.|additions to daniel)\\s+(\\d+):(\\d+)" options:NSRegularExpressionCaseInsensitive error:NULL];
    NSRegularExpression *bookChapter =[NSRegularExpression regularExpressionWithPattern:@"(ge.|gen.|gen|ge|gn|gn.|genesis|exo.|exo|ex.|ex|exod|exod.|exodus|le.|lev.|le|leviticus|lev|lv|nu.|num.|nu|num|numbers|nm|de.|de|deuteronomy|deut.|dt.|deut|deu|deu.|du|du.|dt|josh.|jos.|jos|josh|joshua|joshua|jdg.|jdg|judges|judg.|judg|jgs|jud|ru.|ru|ruth|rth|rth.|1 sa|1sa|1sa.|1 samuel|1 sam.|1 sam|1 sa.|1sam|1 kingdoms|i samuel|1-sam|1-sam.|1-sa|1-samuel|1sam.|first samuel|1 sm|1sm|1 samuel|2 sa|2sa|2sa.|2 samuel|2 sam.|2 sam|2 sa.|2sam|2 kingdoms|ii samuel|2-sam|2-sam.|2-sa|2-samuel|2sam.|second samuel|2 sm|2sm|1 ki|1ki|1ki.|1 kings|1 kgs.|1 kgs|1 kin|1 kin.|1 ki.|i kings|1kings|3 kingdoms|1-kings|1-ki|1-king|1-kin.|1kin.|first kings|1kgs.|1kg|2 ki|2ki|2ki.|2 kings|2 kgs.|2 kgs|2 kin|2 kin.|2 ki.|ii kings|2kings|4 kingdoms|2-kings|2-ki|2-king|2-kin.|2kin.|second kings|2kgs.|2kg|1 ch|1ch|1 chronicles|1 chr.|1 chr|1 ch.|1 chron.|1 chron|1chron|i chronicles|1-ch|1-chr|1-chr.|1-chron|1-chronicles|1chron.|first chronicles|2 ch|2ch|2 chronicles|2 chr.|2 chr|2 ch.|2 chron.|2 chron|2chron|ii chronicles|2-ch|2-chr|2-chr.|2-chron|2-chronicles|2chron.|second chronicles|ezr|ezra|ezr.|ne|neh|nehemiah|neh.|ne.|es|esther|es.|esth.|esth|est|est.|jb|job|jb.|ps|psalm|psa.|ps.|psalms|psa|pss.|pss|psalm|pr|proverbs|pro.|pr.|prov.|pro|prov|prv|proverbs|ec|ecc|ecclesiastes|ecc.|ec.|eccl.|eccles.|eccles|ecclesiastics|eccl|ecclesiastes|cant|song|song of songs|song of solomon|cant.|song.|ss|so|sg|is.|isaiah|is|isa.|isa|isaiah|je|jeremiah|jer.|jer|je.|jr|jeremiah|la|lamentations|lam.|lam|la.|lm|lamentations|ez|ezekiel|ezk.|ez.|ezek.|ezek|ezk|eze|da|daniel|dan.|dan|da.|dn|ho|hosea|hs.|hos.|hos|ho.|hs|jl|joel|jl.|joe|am|amos|am.|ob|obadiah|obad.|ob.|obad|jnh|jonah|jnh.|jon.|jon|mi|micah|mic.|mic|mi.|mc|na|nahum|nah.|nah|na.|hab|habakkuk|hab.|zep|zephaniah|zeph.|zeph|zep.|zph|hag|haggai|hag.|hg|zech|zec|zechariah|zec.|zech.|zch|mal|malachi|mal.|malachi|mat|matthew|matt.|mt.|mat.|mt|matt|matthew|mar|mark|mk.|mar.|mk|mr.mark|lk|luke|lk.|luke.|lu|lu.|luke|jn|john|jn.|john.|joh|john|ac|acts|ac.|acts.|act|rm|romans|rom.|roman|rm.|rom|ro|ro.|romans|1cor|1cor.|1 co|1 co.|1co|1co.|1 corinthians|1 cor.|1 cor|i cor.|i cor|i corinthians|i. corinthians|i corinthains|1c|1c.|1-cor|1-co|1-cor.|1-corinthians|first corinthians|1 corinthians|2cor|2cor.|2 co|2 co.|2co|2co.|2 corinthians|2 cor.|2 cor|ii cor.|ii cor|ii corinthians|ii. corinthians|ii corinthains|2c|2c.|2-cor|2-co|2-cor.|2-corinthians|second corinthians|2 corinthians|ga|galatians|gal.|ga.|gal|gl|ep|ephesians|eph.|ep.|eph|ephesians|phil|philippians|phil.|php|philipians|phillipians|php.|philippians|col|colossians|col.|co|co.|1 th|1th|1 th.|1th.|1 thessalonians|1 thess.|1 thess|1 thes|1 thes.|1thess.|i thessalonians|i thess.|1 thessalonians.|1-thess|1-th|1-thess.|1-thessalonians|first thessalonians|1 thessalonians|2 th|2th|2 th.|2th.|2 thessalonians|2 thess.|2 thess|2 thes|2 thes.|2thess.|ii thessalonians|ii thess.|2 thessalonians.|2-thess|2-th|2-thess.|2-thessalonians|second thessalonians|1 ti|1ti|1 ti.|1ti.|1 timothy|1 tim.|1 tim|i timothy|i tim.|1-ti|1-tim|1-tim.|1-timothy|1tim.|first timothy|1 tm|1tm|2 ti|2ti|2 ti.|2ti.|2 timothy|2 tim.|2 tim|2tim|ii timothy|ii tim.|2-ti|2-tim|2-tim.|2-timothy|2tim.|second timothy|2 tm|1tm|2 timothy|ti|titus|tit.|ti.|tit|philemon|phile|philemon|phlm.|phile.|philm.|phlm|philm|pm|pm.|philem.|philem|phm|hb|hebrews|heb.|heb|hb.|hebrews|ja|james|jas.|jms.|ja.|jas|jms|james|1 pe|1 pe.|1pe|1pe.|1 peter|1 pet.|1 pet|i peter|i pet.|1-pe|1-pet|1-pet.|1-peter|1pet.|first peter|1 pt|1pt|1 peter|2 pe|2 pe.|2pe|2pe.|2 peter|2 pet.|2 pet|ii peter|ii pet.|2-pe|2-pet|2-pet.|2-peter|2pet.|second peter|2 pt|2pt|1 jn|1jn|1jn.|1 john|1 jn.|i john|1-jn|1-jn.|1-john|first john|1jo|1john|2 jn|2jn|2jn.|2 john|2 jn.|ii john|2-jn|2-jn.|2-john|second john|2jo|3 jn|3jn|3jn.|3 john|3 jn.|iii john|3-jn|3-jn.|3-john|third john|3jo|jde|jude|jde.|jd|apoc|revelation|rev.|rev|rv|rv.|re|tobit|to.|tb|tob.|tob|jth|judith|jth.|additionstoesther|add.|wissol|wisd|wis|wisdom|wissol.|wisd.|wisdom of solomon|sirach|ecclesia|sir.|sir|baruch|ba|ba.|bar|letterofjeremiah|az|letter of azariah|azar|azar.|az.|suzanna|su|su.|suz|suz.|bellandthedragon|bel|bel.|1 ma|1 ma.|1ma|1ma.|1 maccabees|1mac|1mac.|1 mac|1 mac.|1-mac|1-mac.|1-macc|1-macc.|1-maccabees|first maccabees|1 mc|i maccabees|1 macc|2 ma|2 ma.|2ma|2ma.|2 maccabees|2mac|2mac.|2 mac|2 mac.|2-mac|2-mac.|2-macc|2-macc.|2-maccabees|second maccabees|2 mc|ii maccabees|2 macc|1 es|1 es.|1es|1es.|1 esdras|prayerofmanasseh|man.|psalm151|psalms 151|p151|ps151|3 ma|3 ma.|3ma|3ma.|3 maccabees|3mac|3mac.|3 macc|3 macc.|3-mac|3-mac.|3-macc|3-macc.|3-maccabees|third maccabees|2 es|2 es.|2es|2es.|2 esdras|second esdras|4 ma|4ma|4 ma.|4ma.|4 maccabees|4mac|4mac.|4 mac|4 mac.|4-mac|4-mac.|4-macc|4-macc.|4-maccabees|fourth maccabees|ada|ada.|adan|adan.|additions to daniel)\\s+(\\d+)(?!:|\\d)" options:NSRegularExpressionCaseInsensitive error:NULL];
    NSRegularExpression *book =[NSRegularExpression regularExpressionWithPattern:@"(ge.|gen.|gen|ge|gn|gn.|genesis|exo.|exo|ex.|ex|exod|exod.|exodus|le.|lev.|le|leviticus|lev|lv|nu.|num.|nu|num|numbers|nm|de.|de|deuteronomy|deut.|dt.|deut|deu|deu.|du|du.|dt|josh.|jos.|jos|josh|joshua|joshua|jdg.|jdg|judges|judg.|judg|jgs|jud|ru.|ru|ruth|rth|rth.|1 sa|1sa|1sa.|1 samuel|1 sam.|1 sam|1 sa.|1sam|1 kingdoms|i samuel|1-sam|1-sam.|1-sa|1-samuel|1sam.|first samuel|1 sm|1sm|1 samuel|2 sa|2sa|2sa.|2 samuel|2 sam.|2 sam|2 sa.|2sam|2 kingdoms|ii samuel|2-sam|2-sam.|2-sa|2-samuel|2sam.|second samuel|2 sm|2sm|1 ki|1ki|1ki.|1 kings|1 kgs.|1 kgs|1 kin|1 kin.|1 ki.|i kings|1kings|3 kingdoms|1-kings|1-ki|1-king|1-kin.|1kin.|first kings|1kgs.|1kg|2 ki|2ki|2ki.|2 kings|2 kgs.|2 kgs|2 kin|2 kin.|2 ki.|ii kings|2kings|4 kingdoms|2-kings|2-ki|2-king|2-kin.|2kin.|second kings|2kgs.|2kg|1 ch|1ch|1 chronicles|1 chr.|1 chr|1 ch.|1 chron.|1 chron|1chron|i chronicles|1-ch|1-chr|1-chr.|1-chron|1-chronicles|1chron.|first chronicles|2 ch|2ch|2 chronicles|2 chr.|2 chr|2 ch.|2 chron.|2 chron|2chron|ii chronicles|2-ch|2-chr|2-chr.|2-chron|2-chronicles|2chron.|second chronicles|ezr|ezra|ezr.|ne|neh|nehemiah|neh.|ne.|es|esther|es.|esth.|esth|est|est.|jb|job|jb.|ps|psalm|psa.|ps.|psalms|psa|pss.|pss|psalm|pr|proverbs|pro.|pr.|prov.|pro|prov|prv|proverbs|ec|ecc|ecclesiastes|ecc.|ec.|eccl.|eccles.|eccles|ecclesiastics|eccl|ecclesiastes|cant|song|song of songs|song of solomon|cant.|song.|ss|so|sg|is.|isaiah|is|isa.|isa|isaiah|je|jeremiah|jer.|jer|je.|jr|jeremiah|la|lamentations|lam.|lam|la.|lm|lamentations|ez|ezekiel|ezk.|ez.|ezek.|ezek|ezk|eze|da|daniel|dan.|dan|da.|dn|ho|hosea|hs.|hos.|hos|ho.|hs|jl|joel|jl.|joe|am|amos|am.|ob|obadiah|obad.|ob.|obad|jnh|jonah|jnh.|jon.|jon|mi|micah|mic.|mic|mi.|mc|na|nahum|nah.|nah|na.|hab|habakkuk|hab.|zep|zephaniah|zeph.|zeph|zep.|zph|hag|haggai|hag.|hg|zech|zec|zechariah|zec.|zech.|zch|mal|malachi|mal.|malachi|mat|matthew|matt.|mt.|mat.|mt|matt|matthew|mar|mark|mk.|mar.|mk|mr.mark|lk|luke|lk.|luke.|lu|lu.|luke|jn|john|jn.|john.|joh|john|ac|acts|ac.|acts.|act|rm|romans|rom.|roman|rm.|rom|ro|ro.|romans|1cor|1cor.|1 co|1 co.|1co|1co.|1 corinthians|1 cor.|1 cor|i cor.|i cor|i corinthians|i. corinthians|i corinthains|1c|1c.|1-cor|1-co|1-cor.|1-corinthians|first corinthians|1 corinthians|2cor|2cor.|2 co|2 co.|2co|2co.|2 corinthians|2 cor.|2 cor|ii cor.|ii cor|ii corinthians|ii. corinthians|ii corinthains|2c|2c.|2-cor|2-co|2-cor.|2-corinthians|second corinthians|2 corinthians|ga|galatians|gal.|ga.|gal|gl|ep|ephesians|eph.|ep.|eph|ephesians|phil|philippians|phil.|php|philipians|phillipians|php.|philippians|col|colossians|col.|co|co.|1 th|1th|1 th.|1th.|1 thessalonians|1 thess.|1 thess|1 thes|1 thes.|1thess.|i thessalonians|i thess.|1 thessalonians.|1-thess|1-th|1-thess.|1-thessalonians|first thessalonians|1 thessalonians|2 th|2th|2 th.|2th.|2 thessalonians|2 thess.|2 thess|2 thes|2 thes.|2thess.|ii thessalonians|ii thess.|2 thessalonians.|2-thess|2-th|2-thess.|2-thessalonians|second thessalonians|1 ti|1ti|1 ti.|1ti.|1 timothy|1 tim.|1 tim|i timothy|i tim.|1-ti|1-tim|1-tim.|1-timothy|1tim.|first timothy|1 tm|1tm|2 ti|2ti|2 ti.|2ti.|2 timothy|2 tim.|2 tim|2tim|ii timothy|ii tim.|2-ti|2-tim|2-tim.|2-timothy|2tim.|second timothy|2 tm|1tm|2 timothy|ti|titus|tit.|ti.|tit|philemon|phile|philemon|phlm.|phile.|philm.|phlm|philm|pm|pm.|philem.|philem|phm|hb|hebrews|heb.|heb|hb.|hebrews|ja|james|jas.|jms.|ja.|jas|jms|james|1 pe|1 pe.|1pe|1pe.|1 peter|1 pet.|1 pet|i peter|i pet.|1-pe|1-pet|1-pet.|1-peter|1pet.|first peter|1 pt|1pt|1 peter|2 pe|2 pe.|2pe|2pe.|2 peter|2 pet.|2 pet|ii peter|ii pet.|2-pe|2-pet|2-pet.|2-peter|2pet.|second peter|2 pt|2pt|1 jn|1jn|1jn.|1 john|1 jn.|i john|1-jn|1-jn.|1-john|first john|1jo|1john|2 jn|2jn|2jn.|2 john|2 jn.|ii john|2-jn|2-jn.|2-john|second john|2jo|3 jn|3jn|3jn.|3 john|3 jn.|iii john|3-jn|3-jn.|3-john|third john|3jo|jde|jude|jde.|jd|apoc|revelation|rev.|rev|rv|rv.|re|tobit|to.|tb|tob.|tob|jth|judith|jth.|additionstoesther|add.|wissol|wisd|wis|wisdom|wissol.|wisd.|wisdom of solomon|sirach|ecclesia|sir.|sir|baruch|ba|ba.|bar|letterofjeremiah|az|letter of azariah|azar|azar.|az.|suzanna|su|su.|suz|suz.|bellandthedragon|bel|bel.|1 ma|1 ma.|1ma|1ma.|1 maccabees|1mac|1mac.|1 mac|1 mac.|1-mac|1-mac.|1-macc|1-macc.|1-maccabees|first maccabees|1 mc|i maccabees|1 macc|2 ma|2 ma.|2ma|2ma.|2 maccabees|2mac|2mac.|2 mac|2 mac.|2-mac|2-mac.|2-macc|2-macc.|2-maccabees|second maccabees|2 mc|ii maccabees|2 macc|1 es|1 es.|1es|1es.|1 esdras|prayerofmanasseh|man.|psalm151|psalms 151|p151|ps151|3 ma|3 ma.|3ma|3ma.|3 maccabees|3mac|3mac.|3 macc|3 macc.|3-mac|3-mac.|3-macc|3-macc.|3-maccabees|third maccabees|2 es|2 es.|2es|2es.|2 esdras|second esdras|4 ma|4ma|4 ma.|4ma.|4 maccabees|4mac|4mac.|4 mac|4 mac.|4-mac|4-mac.|4-macc|4-macc.|4-maccabees|fourth maccabees|ada|ada.|adan|adan.|additions to daniel)(?!\\d)" options:NSRegularExpressionCaseInsensitive error:NULL];
    
    NSArray *bcvMatches = [bookChapterVerse matchesInString:text options:0 range:NSMakeRange(0, [text length])];
    NSArray *bcMatches = [bookChapter matchesInString:text options:0 range:NSMakeRange(0, [text length])];
    NSArray *bMatches = [bookChapter matchesInString:text options:0 range:NSMakeRange(0, [text length])];
    
    NSString *bcvMatchString = @"";
    NSString *bcMatchString = @"";
    NSString *bMatchString = @"";
    
    for (NSTextCheckingResult *match in bcvMatches){
        NSRange matchRange = [match range];
        NSString *matchSubstring = [text substringWithRange:matchRange];
        bcvMatchString = [bcvMatchString stringByAppendingString:matchSubstring];
        bcvMatchString = [bcvMatchString stringByAppendingString:@","];
    }
    for (NSTextCheckingResult *match in bcMatches){
        NSRange matchRange = [match range];
        NSString *matchSubstring = [text substringWithRange:matchRange];
        bcMatchString = [bcMatchString stringByAppendingString:matchSubstring];
        bcMatchString = [bcMatchString stringByAppendingString:@","];
    }
    for (NSTextCheckingResult *match in bMatches){
        NSRange matchRange = [match range];
        NSString *matchSubstring = [text substringWithRange:matchRange];
        bMatchString = [bMatchString stringByAppendingString:matchSubstring];
        bMatchString = [bMatchString stringByAppendingString:@","];
    }
    
    
    NSArray *bcvStringArray = [bcvMatchString componentsSeparatedByString:@","];
    NSArray *bcStringArray = [bcMatchString componentsSeparatedByString:@","];
    NSArray *bStringArray = [bMatchString componentsSeparatedByString:@","];
    
    //put matches through number standardization
    NSString *returnValues = @"";
    
    for (NSString *raw in bcvStringArray){
        NSString *bookName = [bookChapterVerse stringByReplacingMatchesInString:raw options:0 range:NSMakeRange(0, [raw length]) withTemplate:@"$1"];
        NSString *bookNum = [self parseBook:bookName];
        if (!bookNum)
            continue;
        
        NSString *chapterVerseNum = [bookChapterVerse stringByReplacingMatchesInString:raw options:0 range:NSMakeRange(0, [raw length]) withTemplate:@".$2.$3,"];
        NSString *finalBCV = [bookNum stringByAppendingString:chapterVerseNum];
        returnValues = [returnValues stringByAppendingString:finalBCV];
    }
    for (NSString *raw in bcStringArray){
        NSString *bookName = [bookChapter stringByReplacingMatchesInString:raw options:0 range:NSMakeRange(0, [raw length]) withTemplate:@"$1"];
        NSString *bookNum = [self parseBook:bookName];
        if (!bookNum)
            continue;
        
        NSString *chapterVerseNum = @"";
        if ([bookNum isEqualToString:@"31"]||[bookNum isEqualToString:@"57"]||[bookNum isEqualToString:@"63"]||[bookNum isEqualToString:@"64"]||[bookNum isEqualToString:@"65"]){
            chapterVerseNum = [bookChapter stringByReplacingMatchesInString:raw options:0 range:NSMakeRange(0, [raw length]) withTemplate:@".1.$2,"];
        }
        else{
            chapterVerseNum = [bookChapter stringByReplacingMatchesInString:raw options:0 range:NSMakeRange(0, [raw length]) withTemplate:@".$2.1,"];
        }
        NSString *finalBCV = [bookNum stringByAppendingString:chapterVerseNum];
        returnValues = [returnValues stringByAppendingString:finalBCV];
    }
    for (NSString *raw in bStringArray){
        NSString *bookNum = [self parseBook:raw];
        if (!bookNum)
            continue;
        
        NSString *chapterVerseNum = @".1.1,";
        NSString *finalBCV = [bookNum stringByAppendingString:chapterVerseNum];
        returnValues = [returnValues stringByAppendingString:finalBCV];
    }
    
    NSArray *returnBCV = [returnValues componentsSeparatedByString:@","];
    
    return returnBCV;
    
}

@end
