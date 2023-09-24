select score from iq_test where person_id=(
    select person_id from action_connection where object_id=(
            select id from tree_object where tree_id=(
                    select id from tree where tree_type_id=1
                ) limit 1
        )
);

select * from iq_test join person p on p.id = iq_test.person_id join action_connection e on e.person_id = p.id join tree_object t on t.id = tree_id where t.t;


