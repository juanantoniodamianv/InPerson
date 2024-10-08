import { redirect } from "next/navigation";

import { createClient } from "@/utils/supabase/server";
import Users from "@/src/components/users";

export default async function PrivatePage() {
  const supabase = createClient();

  const { data, error } = await supabase.auth.getUser();

  if (error || !data?.user) {
    redirect("/login");
  }

  return (
    <>
      <p>Hello {data.user.email}, this is your dashboard</p>
      <Users />
    </>
  );
}
