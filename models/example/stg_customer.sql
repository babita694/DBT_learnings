with sales as (
    select 
        sales_id,
        sales_date
    from `bigquerymigration-476107.CustomerDetails.sales`
),

department as (
    select
        DeptId,
        DepCategory,
        DepHod,
        sales_id
    from `bigquerymigration-476107.CustomerDetails.Department`
),

joined as (
    select
        s.sales_id,
        s.sales_date,
        d.DeptId,
        d.DepCategory,
        d.DepHod
    from sales s
    left join department d
    on s.sales_id = d.sales_id
)

select * from joined

