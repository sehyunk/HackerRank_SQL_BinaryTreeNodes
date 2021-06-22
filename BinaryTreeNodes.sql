select N, if(P is null, 'Root', # 부모노드가 Null이면, 'Root'이다.
            if(N in (select P from BST), 'Inner',  # N이 누군가의 부모노드이고, 위 조건에서 누군가의 자식노드로 분류되었기에 'Inner'이다.
            'Leaf')) # 그 외는 'Leaf'이다.
from bst
order by N