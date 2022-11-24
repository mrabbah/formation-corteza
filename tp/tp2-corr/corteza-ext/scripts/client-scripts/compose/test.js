export default {
  label: "label goes here1",
  description: "description goes here1",

  triggers({ before }) {
    return before('formSubmit')
      .for('ui:compose:record-page')
      .where('module.handle', 'pertenaire')
      .where('namespace.slug', 'prospection')
  },


  async exec(args, ctx) {
    /*if (args.$record.values.name == "Test") {
      args.$record.values.name = "Change Test"
    }*/
    console.log("Hello From Client Script");
  },
}
