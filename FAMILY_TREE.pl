% Facts defining the relationships in the family tree
parent(john, mary).
parent(john, adam).
parent(eve, mary).
parent(eve, adam).
parent(mary, julie).
parent(adam, peter).

% Rules for defining various relationships
father(Father, Child) :-
    parent(Father, Child),
    male(Father).

mother(Mother, Child) :-
    parent(Mother, Child),
    female(Mother).

sibling(Person1, Person2) :-
    parent(Parent, Person1),
    parent(Parent, Person2),
    Person1 \= Person2. % Ensuring they are not the same person

brother(Brother, Person) :-
    sibling(Brother, Person),
    male(Brother).

sister(Sister, Person) :-
    sibling(Sister, Person),
    female(Sister).

grandparent(Grandparent, Grandchild) :-
    parent(Grandparent, Parent),
    parent(Parent, Grandchild).

% Predicates for genders (can be extended with more details)
male(john).
male(adam).
male(peter).

female(eve).
female(mary).
female(julie).