# Viva Questions and Answers

1. **What is Prolog?**  
   Prolog is a logic programming language used to represent facts and rules and answer queries through logical inference.

2. **What is a fact?**  
   A fact is a statement represented as true in the knowledge base, such as `item(paper, paper, yes, no, no).`

3. **What is a rule?**  
   A rule defines a conclusion that is true when its conditions are satisfied. It uses `:-` (if).

4. **What is a query?**  
   A query asks Prolog whether a goal can be proven or what values satisfy it.

5. **What does `item/5` mean?**  
   It is a predicate named `item` with five arguments.

6. **Why are categories rule-based?**  
   The system uses the stored properties of an item to infer a category instead of manually assigning a recommendation for every query.

7. **Why is hazardous/e-waste checked first?**  
   Safety-related categories take precedence when an item has multiple relevant properties.

8. **What is `\+` in Prolog?**  
   It is negation-as-failure: Prolog succeeds with `\+ Goal` when it cannot prove `Goal`.

9. **What is the purpose of the fallback rule?**  
   It gives a needs-review result when none of the defined categories can be proven.

10. **What is the difference between biodegradable and recyclable?**  
    Biodegradable material can break down naturally; recyclable material can be processed for reuse. They are different classification concepts.

11. **What is a predicate?**  
    A predicate represents a relation or property. Its name and arity identify it, e.g. `category/2`.

12. **What is backtracking?**  
    Prolog searches for alternative ways to satisfy a goal when needed.

13. **What is the knowledge base?**  
    The collection of facts and rules used by the program.

14. **What is the additional challenge you could implement?**  
    Handle mixed materials and add specific rules for paper, glass, plastic, metal and food waste, with priority when an item matches more than one category.

15. **How would you add a new item?**  
    Add a new `item/5` fact using its material and property values, then query `report(item_name).`
