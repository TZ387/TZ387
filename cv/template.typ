
#let background = rgb(255, 255, 255)
#let heading_color = rgb(53, 114, 180)
#let body_color = rgb(34, 32, 36)



#let font_en = "Arial"

#let font_title = 18pt
#let font_3p = 10.7pt
#let font_4p = 10.3pt
#let font_s4p = 10.3pt


#let project(body) = {
  // margin
  set page(
    paper: "a4",
    margin: (top: 1.75cm, bottom: 1.75cm, left: 1.75cm, right: 1.75cm),
   
    fill:background,
    header: grid(columns: (1fr,1fr,1fr),
      align(left)[],

      align(right)[],
    )
  )
  set text(size: font_s4p);
  set list(body-indent:3pt)

  set par(justify: true)

  show heading: it => {
    show: smallcaps
    v(0em)
    text(weight: "black",size:font_3p,fill:heading_color)[#it]
    v(-1em)
    line(length: 100%,stroke:0.08em+heading_color)
    v(0.2em)
  }
  body

}

// personal information
#let info(name: "", phone: "", email: "", location: "", github: "") = {
  v(-2em)
  grid(
    columns: (20fr,2fr,5fr),
    align(left+horizon)[
      // Contact information
      #v(1em)
      #text([#name], weight: "black", size:font_title,fill:body_color)
      #set text(size:font_s4p,fill:body_color,)
      #set box(height: 1em,baseline: 20%)
      #v(-0.7em)
      #grid(columns: (6em, 1fr),
      column-gutter: 0.1em,
      row-gutter: 0.55em,
        [#box[#image("img/envelope-solid.svg")]
        #text(weight: "bold")[Email:]],
        link("mailto:" + email),
        [#box[#image("img/phone-solid.svg")]
          #text(weight: "bold")[Phone:]],
        [#v(-0.5pt)#phone],
        [#box[#image("img/location.svg")]
          #text(weight: "bold")[Location:]],
        link("https://en.wikipedia.org/wiki/Ljubljana")[#location],
        //[#box[#image("img/github.svg")]
        //  #text(weight: "bold")[Github:]],
        //link("https://" + github)[#github],
       
      )
    ],
    "",
    //align(horizon)[#image("img/SLIKA_CV.jpg", width: 80%)],
  )
}

// date
#let dateFn(body) = {
  set text(fill: body_color, size: font_s4p)
  place(end, body)
}

// event
#let event(date:"",title:"",event:"",location:"Ljubljana",indentation4:0em,body) ={

  grid(
    columns: (1fr, 11em),
    box()[#text(weight: "bold", size: font_4p, fill: body_color)[#title]],
    align(right+horizon)[#dateFn[#location]],
    [#v(0.55em) #event],
    align(right+horizon)[#v(0.55em) #dateFn[#v(indentation4)#date]],
  ) 
  set text(size: font_s4p, fill: body_color)
  v(-2.1em)

  box()[
    #box(baseline:0%)[]

    #h(0.0em)
    #body
  ]
  v(0.3em)
}
// publication
#let publication(authors:(),title:"",booktitle:"",location:"",number:"",page:"",date:"",doi:"",type:"",addtion:"") ={
  v(0.1em)
  grid(columns: (1.5em,1em, 10fr),
  align()[
    #if type == "patent"{
      box[#image("img/patent.svg")]
    }
    #if type == "software"{
      box[#image("img/software.svg")]
    }
    #if type == "journal"{
      box[#image("img/journal.svg")]
    }
    #if type == "conference"{
      box[#image("img/conference.svg")]
    }
  ],
  "",
  {let auth_n = authors.len()
    if auth_n > 6 {
      [#authors.at(0) _et. al._]
    }else{
      authors.join(", ", last: " and ")
    }
    if title != ""{
      [, "#title"]
    }
    if booktitle != ""{
      [, #emph(booktitle)]
    }
    if location !=""{
      [, #location]
    }
    if number != ""{
      [, No. #number]
    }
    if page != ""{
      [, pp. #page]
    }
    if date != ""{
      [, #date]
    }
    if doi!= ""{
      [, doi: #link("https://doi.org/"+doi)]
    }
    if addtion != ""{
      [, #addtion]
    }
    }
  )
}
#let publication_legend() ={
  let pad_size = 0.2em
  let icon_size = 1em
  // v(-0.3em)
  grid(
    columns: (pad_size, icon_size, 1fr, icon_size, 1fr, icon_size, 1fr, icon_size, 1fr, pad_size),
    gutter: 0.3em,
    "",
    image("img/journal.svg"),
    align(left+horizon)[Journal],
    image("img/conference.svg"),
    align(left+horizon)[Conference],
    image("img/patent.svg"),
    align(left+horizon)[Patent],
    image("img/software.svg"),
    align(left+horizon)[Software Copyright],
    "",
  )
  v(-0.2em)
}