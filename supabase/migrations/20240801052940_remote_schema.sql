create table "public"."vehicle_categories" (
    "id" bigint generated by default as identity not null,
    "created_at" timestamp with time zone not null default now(),
    "name" character varying not null
);


alter table "public"."vehicle_categories" enable row level security;

CREATE UNIQUE INDEX vehicle_categories_pkey ON public.vehicle_categories USING btree (id);

alter table "public"."vehicle_categories" add constraint "vehicle_categories_pkey" PRIMARY KEY using index "vehicle_categories_pkey";

grant delete on table "public"."vehicle_categories" to "anon";

grant insert on table "public"."vehicle_categories" to "anon";

grant references on table "public"."vehicle_categories" to "anon";

grant select on table "public"."vehicle_categories" to "anon";

grant trigger on table "public"."vehicle_categories" to "anon";

grant truncate on table "public"."vehicle_categories" to "anon";

grant update on table "public"."vehicle_categories" to "anon";

grant delete on table "public"."vehicle_categories" to "authenticated";

grant insert on table "public"."vehicle_categories" to "authenticated";

grant references on table "public"."vehicle_categories" to "authenticated";

grant select on table "public"."vehicle_categories" to "authenticated";

grant trigger on table "public"."vehicle_categories" to "authenticated";

grant truncate on table "public"."vehicle_categories" to "authenticated";

grant update on table "public"."vehicle_categories" to "authenticated";

grant delete on table "public"."vehicle_categories" to "service_role";

grant insert on table "public"."vehicle_categories" to "service_role";

grant references on table "public"."vehicle_categories" to "service_role";

grant select on table "public"."vehicle_categories" to "service_role";

grant trigger on table "public"."vehicle_categories" to "service_role";

grant truncate on table "public"."vehicle_categories" to "service_role";

grant update on table "public"."vehicle_categories" to "service_role";


