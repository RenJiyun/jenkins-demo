package com.example.jenkinsdemo;

public abstract class Hello {
    public String say() {
        return "Hello";
    }
    public String say(String name) {
        return "Hello " + name;
    }
}
