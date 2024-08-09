"use client";

import { createClient } from "@/utils/supabase/client";
import { Button } from "flowbite-react";
import { useRouter } from "next/navigation";
import { HiLogout } from "react-icons/hi";

export default function SignOutButton() {
  const supabase = createClient();
  const router = useRouter();

  const handleSignOut = async () => {
    await supabase.auth.signOut();
    router.refresh();
  };

  return (
    <Button onClick={handleSignOut} className="flex justify-start">
      Sign Out
    </Button>
  );
}
