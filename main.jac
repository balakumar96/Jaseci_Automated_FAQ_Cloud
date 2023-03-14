# import the graph and walker made earlier.
import {*} with "./graph.jac";
import {*} with "./ask.jac";


walker init {
    root {
        spawn here ++> graph::faq;
        spawn here walker::ask;
    }
}
