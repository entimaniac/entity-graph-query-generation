********** SINGLE RESULT DYNAMIC **********
from a1 a1x0_
         left outer join ab b1s1_ on a1x0_.id = b1s1_.a1_id
         left outer join b1 b1x2_ on b1s1_.b1_id = b1x2_.id
         left outer join ab a1s3_ on b1x2_.id = a1s3_.b1_id
where a1x0_.id =?
      ********** CUSTOM RESULT DYNAMIC **********

from a1 a1x0_
         left outer join ab b1s1_ on a1x0_.id = b1s1_.a1_id
         left outer join b1 b1x2_ on b1s1_.b1_id = b1x2_.id
         left outer join ab a1s3_ on b1x2_.id = a1s3_.b1_id
         left outer join a1 a1x4_ on a1s3_.a1_id = a1x4_.id
         left outer join a12 a2s5_ on a1x4_.id = a2s5_.a1_id
         left outer join a2 a2x6_ on a2s5_.a2_id = a2x6_.id
where a1x0_.id =?
      ********** MULTIPLE RESULT DYNAMIC **********

from a1 a1x0_
         left outer join ab b1s1_ on a1x0_.id = b1s1_.a1_id
         left outer join b1 b1x2_ on b1s1_.b1_id = b1x2_.id
         left outer join ab a1s3_ on b1x2_.id = a1s3_.b1_id
         left outer join a1 a1x4_ on a1s3_.a1_id = a1x4_.id
         left outer join a12 a2s5_ on a1x4_.id = a2s5_.a1_id
         left outer join a2 a2x6_ on a2s5_.a2_id = a2x6_.id







********** SINGLE RESULT STATIC **********
from a1 a1x0_
         left outer join ab b1s1_ on a1x0_.id = b1s1_.a1_id
         left outer join b1 b1x2_ on b1s1_.b1_id = b1x2_.id
         left outer join ab a1s3_ on b1x2_.id = a1s3_.b1_id
where a1x0_.id =?
      ********** CUSTOM RESULT STATIC **********
from a1 a1x0_
         left outer join ab b1s1_ on a1x0_.id = b1s1_.a1_id
         left outer join b1 b1x2_ on b1s1_.b1_id = b1x2_.id
         left outer join ab a1s3_ on b1x2_.id = a1s3_.b1_id
         left outer join a1 a1x4_ on a1s3_.a1_id = a1x4_.id
         left outer join a12 a2s5_ on a1x4_.id = a2s5_.a1_id
         left outer join a2 a2x6_ on a2s5_.a2_id = a2x6_.id
where a1x0_.id =?
      ********** MULTIPLE RESULT STATIC **********
from a1 a1x0_
         left outer join ab b1s1_ on a1x0_.id = b1s1_.a1_id
         left outer join b1 b1x2_ on b1s1_.b1_id = b1x2_.id
         left outer join ab a1s3_ on b1x2_.id = a1s3_.b1_id
         left outer join a1 a1x4_ on a1s3_.a1_id = a1x4_.id
         left outer join a12 a2s5_ on a1x4_.id = a2s5_.a1_id
         left outer join a2 a2x6_ on a2s5_.a2_id = a2x6_.id

