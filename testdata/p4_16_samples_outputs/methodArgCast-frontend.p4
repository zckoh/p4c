extern E {
    E();
    void setValue(in bit<32> arg);
}

control c() {
    @name("c.e") E() e;
    apply {
        e.setValue(32w10);
    }
}

control proto();
package top(proto p);
top(c()) main;

