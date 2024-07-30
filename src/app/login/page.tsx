import { login, signup, google } from "./actions";

export default function LoginPage() {
  return (
    <>
      <form>
        <label htmlFor="email">Email:</label>
        <input id="email" name="email" type="email" required />
        <label htmlFor="password">Password:</label>
        <input id="password" name="password" type="password" required />
        <button formAction={login}>Log in</button>
        <button formAction={signup}>Sign up</button>
      </form>

      <form>
        <button formAction={google}>Google</button>
      </form>
    </>
  );
}
