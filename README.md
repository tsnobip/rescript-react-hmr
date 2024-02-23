# HMR with Vite and @rescript/react

This is repo is meant to showcase a working setup for HMR with vite and rescript-react.

It's just the translation to rescript of the basic vite react js template. I left the original App.jsx and main.jsx to see how close to the original it is.

To test it, run in a terminal:

```sh
yarn rescript build -w
```

and in another one:

```sh
yarn dev
```

Make changes in App.res, save and see how it fast refreshes.

## Troubleshooting

### 1. Export only one react component per file

Make sure to create `.resi` interface files for your `.res` component files so that only the component is exported.

### 2. Include your generated JS files

Make sure in `vite.config.js` that the extension matches the one you have in `rescript.json`, for example:

```js
// in vite.config.js
react({
    include: ["**/*.res.mjs"],
}),
```

### 3. Set the right jsx runtime mode

By default `@vite/plugin-react` uses the automatic mode (see the [docs](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react/README.md#jsxruntime)).

If you use the classic mode, change vite config accordingly:

```js
// in vite.config.js
react({
    jsxRuntime: "classic",
    include: ["**/*.res.mjs"],
}),
```

> [!NOTE] 
> `@vitejs/plugin-react-swc` doesn't work for now, but the `@vitejs/plugin-react` already provides a quite fast experience.
