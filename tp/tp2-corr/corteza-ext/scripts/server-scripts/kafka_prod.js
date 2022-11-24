import { Kafka } from 'kafkajs';

export default {
   label: "Kafka",
   description: "publish a record",

   triggers({ before, after, on, at }) {
      return after('create', 'update')
         .for('compose:record')
         .where('module.handle', 'pertenaire')
         .where('namespace.slug', 'prospection')
   },
   async exec(args, ctx) {

      console.log(args);
      const kafka = new Kafka({
         clientId: 'my-app',
         brokers: ['192.168.8.126:29092'],
      });



      const producer = kafka.producer();

      await producer.connect();

      console.log(args.rawRecord);
      await producer.send({
         topic: 'test-topic',
         messages: [
            { key: '' + args.rawRecord.recordID, value: JSON.stringify(args.rawRecord) },
         ],
      });



      await producer.disconnect();


   }

}
