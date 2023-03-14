// Defining the nodes
node faq_root;
node faq_state {
    has question;
    has answer;
}


// Static graph definition
graph faq {
    has anchor faq_root;
    spawn {
        // Spawning the nodes
        faq_root = spawn node::faq_root;

        faq_answer_1 = spawn node::faq_state(
            question="What do you mean by Amazon Web Services (AWS?)",
            answer="Amazon Web Services, Inc. (AWS) is a subsidiary of Amazon that provides on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered, pay-as-you-go basis."
        );
        faq_answer_2 = spawn node::faq_state(
            question="What is Cloud Computing?",
            answer="Cloud Computing is the delivery of computing services—including servers, storage, databases, networking, software, analytics, and intelligence—over the Internet to offer faster innovation, flexible resources, and economies of scale."
        );
        faq_answer_3 = spawn node::faq_state(
            question="List down major Cloud Service Providers?",
            answer=" 01. Amazon Web Services\n 02. Microsoft Azure\n 03. Google Cloud Platform\n 04. Alibab Cloud"
        );
        faq_answer_4 = spawn node::faq_state(
            question="What are the services offered by AWS?",
            answer=" 01. Compute\n 02. Storage\n 03. Database\n 04. Networking & Content Delivery\n 05. Analytics"
        );
        faq_answer_5 = spawn node::faq_state(
            question="Why Cloud Computing is important?",
            answer="Cloud Technology means that companies can scale and adapt at speed and scale, accelerate innovation, drive business agility, streamline operations, and reduce costs."
        );

        // Connecting the nodes together
        faq_root ++> faq_answer_1;
        faq_root ++> faq_answer_2;
        faq_root ++> faq_answer_3;
        faq_root ++> faq_answer_4;
        faq_root ++> faq_answer_5;
    }
}
