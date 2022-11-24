
export default {
  label: "HelloCorredor",
  description: "My First Server Script in corredor",

  triggers (t) {
     return t.on('manual')
     .for('system')
     //.for('compose:namespace')
     //.where('module', 'personne')
     .uiProp('app', 'compose') // Necessaire pour que ça soit visible sur la liste des scripts widgets automation
  },
  async exec(args, ctx) {
    // passage des arguments
    console.log(args);
    return {result : [{"hello": "from corredor"}, {"ohmyzh": "Oh my ZH"}]};
  }

}



