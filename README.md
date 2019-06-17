# Bootsnap bug test case

This is a minimal reproducer for a bug in
[bootsnap](https://github.com/Shopify/bootsnap/), or at least a
behavior difference vs vanilla MRI.

To reproduce, compare output between:

```
$ bundle exec ruby require.rb
```
and
```
$ env BOOTSNAP_CACHE_DIR=$(pwd)/cache bundle exec ruby require.rb
```

You will see that the first run never requires `a/file.rb`, and
returns `false` on the second `require` call, whereas the second
invocation requires both files.
