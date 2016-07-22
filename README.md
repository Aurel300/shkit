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

By default, build using the `make.hxml` file in the current working directory. `hx run` or the `rx` (shortcut) attempts to run the built files, currently only supported with neko and swf projects.

`hx runonly` or `hx ro` only runs the currently built files (if possible), without building.

### `rx` - shortcut for `hx run` (build and run)

Just a shortcut for ease of use.

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

Uses `nc` to listen at a given port to serve a file and make the browser download it.

```bash
makedl MyFile.zip
```

Now `MyFile.zip` is available at `localhost:1234`. To change the port, use another argument:

```bash
makedl MyOtherFile.zip 4321
```

### `tl` - record a timelapse of your screen(s)

### `zipclean` - clean .zip after Mac archival

Compressing files with the default Compress function on Mac results in an archive containing a number of useless platform-specific files (presumably) containing some metadata, e.g:

```bash
$ zipinfo LICENSE.zip
Archive:  LICENSE.zip   1218 bytes   3 files
-rw-r--r--  2.1 unx     1083 bX defN 22-Jul-16 16:09 LICENSE
drwxrwxr-x  2.1 unx        0 bx stor 22-Jul-16 16:38 __MACOSX/
-rw-r--r--  2.1 unx      247 bX defN 22-Jul-16 16:09 __MACOSX/._LICENSE
3 files, 1330 bytes uncompressed, 784 bytes compressed:  41.1%
```

This is tedious and might potentially lead to some security risks in marginal cases, so `zipclean` gets rid of these files:

```bash
$ zipclean LICENSE.zip
$ zipinfo LICENSE.zip
Archive:  LICENSE.zip   789 bytes   1 file
-rw-r--r--  2.1 unx     1083 bx defN 22-Jul-16 16:09 LICENSE
1 file, 1083 bytes uncompressed, 649 bytes compressed:  40.1%
```

### `macclean` - clean Mac files in directory