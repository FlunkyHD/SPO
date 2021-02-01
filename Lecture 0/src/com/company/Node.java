package com.company;

public class Node {

    public String toString() {
        return value;
    }

    public Node(String value, Node left, Node right) {
        this.value = value;
        this.left = left;
        this.right = right;
    }
    public String value;
    public Node left;
    public Node right;
}
