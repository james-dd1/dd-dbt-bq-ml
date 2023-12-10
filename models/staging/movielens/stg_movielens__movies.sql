with source as (
    select *
    from {{ source ('movielens','movielens_movies_raw') }}
),

renamed as (
    select
        movieId as movie_id,
        title,
        genres

    from source
)

select * from renamed

