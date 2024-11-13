import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import { rescriptRelayVitePlugin } from "rescript-relay-router";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    react({
      include: ["src/*.bs.mjs"],
    }),
    rescriptRelayVitePlugin(),
  ],
  server: {
    watch: {
      ignored: [
        "**/.bsb.lock",
        "**/*.res",
        "**/*.resi",
        "**/lib/bs/**/*",
        "**/lib/ocaml/**/*",
        "**/rewatch.lock",
      ],
    },
  },
});
