(declare-const German Int)
(declare-const Dane Int)
(declare-const Norwegian Int)
(declare-const Brit Int)
(declare-const Swede Int)

(declare-const GreenHouse Int)
(declare-const WhiteHouse Int)
(declare-const RedHouse Int)
(declare-const YellowHouse Int)
(declare-const BlueHouse Int)

(declare-const Water Int)
(declare-const Tea Int)
(declare-const Milk Int)
(declare-const Coffee Int)
(declare-const Beer Int)

(declare-const Blend Int)
(declare-const BlueMaster Int)
(declare-const PallMall Int)
(declare-const Prince Int)
(declare-const Dunhill Int)

(declare-const Cat Int)
(declare-const Dog Int)
(declare-const Horse Int)
(declare-const Fish Int)
(declare-const Bird Int)

; constraints
(assert (and (>= German 1) (<= German 5)))
(assert (and (>= Dane 1) (<= Dane 5)))
(assert (and (>= Norwegian 1) (<= Norwegian 5)))
(assert (and (>= Brit 1) (<= Brit 5)))
(assert (and (>= Swede 1) (<= Swede 5)))

(assert (and (>= GreenHouse 1) (<= GreenHouse 5)))
(assert (and (>= WhiteHouse 1) (<= WhiteHouse 5)))
(assert (and (>= RedHouse 1) (<= RedHouse 5)))
(assert (and (>= YellowHouse 1) (<= YellowHouse 5)))
(assert (and (>= BlueHouse 1) (<= BlueHouse 5)))

(assert (and (>= Water 1) (<= Water 5)))
(assert (and (>= Tea 1) (<= Tea 5)))
(assert (and (>= Milk 1) (<= Milk 5)))
(assert (and (>= Coffee 1) (<= Coffee 5)))
(assert (and (>= Beer 1) (<= Beer 5)))

(assert (and (>= Blend 1) (<= Blend 5)))
(assert (and (>= BlueMaster 1) (<= BlueMaster 5)))
(assert (and (>= PallMall 1) (<= PallMall 5)))
(assert (and (>= Prince 1) (<= Prince 5)))
(assert (and (>= Dunhill 1) (<= Dunhill 5)))

(assert (and (>= Cat 1) (<= Cat 5)))
(assert (and (>= Dog 1) (<= Dog 5)))
(assert (and (>= Horse 1) (<= Horse 5)))
(assert (and (>= Fish 1) (<= Fish 5)))
(assert (and (>= Bird 1) (<= Bird 5)))

(assert (distinct German Dane Norwegian Brit Swede))
(assert (distinct GreenHouse WhiteHouse RedHouse YellowHouse BlueHouse))
(assert (distinct Water Tea Milk Coffee Beer))
(assert (distinct Blend BlueMaster PallMall Prince Dunhill))
(assert (distinct Cat Dog Horse Fish Bird))

(assert (or
    (= (+ (* 10 German) GreenHouse) 13)
    (= (+ (* 10 Dane) WhiteHouse) 13)
    (= (+ (* 10 Norwegian) RedHouse) 13)
    (= (+ (* 10 Brit) YellowHouse) 13)
    (= (+ (* 10 Swede) BlueHouse) 13)))

(assert (or
    (= (+ (* 10 German) Cat) 53)
    (= (+ (* 10 Dane) Dog) 53)
    (= (+ (* 10 Norwegian) Horse) 53)
    (= (+ (* 10 Brit) Fish) 53)
    (= (+ (* 10 Swede) Bird) 53)))

(assert (or
    (= (+ (* 10 German) Water) 24)
    (= (+ (* 10 Dane) Tea) 24)
    (= (+ (* 10 Norwegian) Milk) 24)
    (= (+ (* 10 Brit) Coffee) 24)
    (= (+ (* 10 Swede) Beer) 24)))

(assert (or
    (= (+ (* 10 GreenHouse) WhiteHouse) 24)
    (= (+ (* 10 WhiteHouse) RedHouse) 24)
    (= (+ (* 10 RedHouse) YellowHouse) 24)
    (= (+ (* 10 YellowHouse) BlueHouse) 24)))

(assert (or
    (= (+ (* 10 GreenHouse) Water) 22)
    (= (+ (* 10 WhiteHouse) Tea) 22)
    (= (+ (* 10 RedHouse) Milk) 22)
    (= (+ (* 10 YellowHouse) Coffee) 22)
    (= (+ (* 10 BlueHouse) Beer) 22)))

(assert (or
    (= (+ (* 10 Blend) Cat) 32)
    (= (+ (* 10 BlueMaster) Dog) 32)
    (= (+ (* 10 PallMall) Horse) 32)
    (= (+ (* 10 Prince) Fish) 32)
    (= (+ (* 10 Dunhill) Bird) 32)))

(assert (or
    (= (+ (* 10 GreenHouse) Blend) 52)
    (= (+ (* 10 WhiteHouse) BlueMaster) 52)
    (= (+ (* 10 RedHouse) PallMall) 52)
    (= (+ (* 10 YellowHouse) Prince) 52)
    (= (+ (* 10 BlueHouse) Dunhill) 52)))

(assert (= Milk 3))

(assert (= German 4))

(assert (or
    (= (+ (* 10 Cat) BlueMaster) 15)
    (= (+ (* 10 Dog) PallMall) 15)
    (= (+ (* 10 Horse) Prince) 15)
    (= (+ (* 10 Fish) Dunhill) 15)
    (= (+ (* 10 Dog) Blend) 15)
    (= (+ (* 10 Horse) BlueMaster) 15)
    (= (+ (* 10 Fish) PallMall) 15)
    (= (+ (* 10 Bird) Prince) 15)))

(assert (or
    (= (+ (* 10 Blend) Dog) 25)
    (= (+ (* 10 BlueMaster) Horse) 25)
    (= (+ (* 10 PallMall) Fish) 25)
    (= (+ (* 10 Prince) Bird) 25)
    (= (+ (* 10 BlueMaster) Cat) 25)
    (= (+ (* 10 PallMall) Dog) 25)
    (= (+ (* 10 Prince) Horse) 25)
    (= (+ (* 10 Dunhill) Fish) 25)))

(assert (or
    (= (+ (* 10 Blend) Water) 11)
    (= (+ (* 10 BlueMaster) Tea) 11)
    (= (+ (* 10 PallMall) Milk) 11)
    (= (+ (* 10 Prince) Coffee) 11)
    (= (+ (* 10 Dunhill) Beer) 11)))

(assert (or
    (= (+ (* 10 German) Blend) 34)
    (= (+ (* 10 Dane) BlueMaster) 34)
    (= (+ (* 10 Norwegian) PallMall) 34)
    (= (+ (* 10 Brit) Prince) 34)
    (= (+ (* 10 Swede) Dunhill) 34)))

(assert (= WhiteHouse 1))

(assert (or
    (= (+ (* 10 Blend) Tea) 55)
    (= (+ (* 10 BlueMaster) Milk) 55)
    (= (+ (* 10 PallMall) Coffee) 55)
    (= (+ (* 10 Prince) Beer) 55)
    (= (+ (* 10 BlueMaster) Water) 55)
    (= (+ (* 10 PallMall) Tea) 55)
    (= (+ (* 10 Prince) Milk) 55)
    (= (+ (* 10 Dunhill) Coffee) 55)))

(check-sat)
(get-model)

