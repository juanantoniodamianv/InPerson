import { createClient } from "@/utils/supabase/server";

export default async function Users() {
  const supabase = createClient();

  let { data: users, error } = await supabase.from("users").select("*");

  console.log({ users });

  return <div>Users</div>;
}
