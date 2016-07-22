shkit
===
A bunch of useful scripts for the (OS X) terminal, especially useful for haxe development.

### Using shkit

To use these tools, simply download the tools you'd like or clone this repository:

    ```bash
    git clone https://github.com/Aurel300/shkit.git
    ```

Then add the resulting `shkit` directory to your `PATH` environment variable, by adding this line to your `~/.profile`:

    ```bash
    export PATH="/path/to/shkit/bin:$PATH"
    ```

### Compatibility

Most of these scripts are tested only on OS X, but some will probably work without any difficulty on any Linux machine.

Scripts included
===

### `hx` - haxe code utility

### `rx` - shortcut for `hx run` (build and run)

### `nuhx` - create a new haxe project

Creates a new haxe project / class in the current working directory.

```bash
nuhx neko nekoproject
nuhx eneko autoexecnekoproject
nuhx js javascriptproject
nuhx flash swfproject
nuhx ludum ludumdaregame
nuhx flash swfproject 320 240 60
```

When creating classes, `nuhx` tries to locate a `make.hxml` file in the directory structure. If found, the package for the class is set accordingly. Use a dummy `make.hxml` file at the root of a library structure to make use of this feature if needed.

```bash
nuhx cl MyClass
```

Creates `MyClass.hx` containing a skeleton class `MyClass`.

```bash
nuhx cl MyBetterClass MyClass
```

Creates a skeleton class `MyBetterClass` that extends `MyClass`.

### `makedl` - temporary one-file HTTP server

### `tl` - record a timelapse of your screen(s)

### `zipclean` - clean .zip after Mac archival

### `macclean` - clean Mac files in directory