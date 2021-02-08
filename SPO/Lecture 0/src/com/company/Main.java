package com.company;

import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) {
        Node tree =
                new Node("Times",
                        new Node("Plus",
                                new Node("Var",
                                        new Node("a", null, null),
                                        null),
                                new Node("Var",
                                        new Node("n", null, null),
                                        null)
                        ),
                        new Node("Int",
                                new Node("1", null, null),
                                null
                        )
                );

        System.out.println("Preorder");
        preorder_DFS(tree);
        System.out.println();
        System.out.println("Inorder");
        inorder_DFS(tree);
        System.out.println();
        System.out.println("Postorder");
        postorder_DFS(tree);
        System.out.println();


        System.out.println("Opgave 4");
        List<Character> test = MakeListFromString("a + n * 1");

        for (Character item: test) {
            System.out.println(item + " HEJ");
        }
    }

    public static List<Character> MakeListFromString(String input){
        List<Character> listen = new ArrayList<Character>();
        for (int i = 0; i < input.length(); i++) {
            if (input.charAt(i) != ' '){
                listen.add(input.charAt(i));
            }
        }
        return listen;
    }


    public static void preorder_DFS(Node root){
        if(root == null) {
            return;
        }
        System.out.print(root + " ");
        preorder_DFS(root.left);
        preorder_DFS(root.right);
    }

    public static void inorder_DFS(Node root){
        if(root == null) {
            return;
        }
        inorder_DFS(root.left);
        System.out.print(root+" ");
        inorder_DFS(root.right);
    }

    public static void postorder_DFS(Node root){
        if(root == null) {
            return;
        }
        postorder_DFS(root.left);
        postorder_DFS(root.right);
        System.out.print(root+" ");
    }
}
