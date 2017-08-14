if [ -e usr/share/glib-2.0/schemas ]; then
  if [ -x /usr/bin/glib-compile-schemas ]; then
    /usr/bin/glib-compile-schemas usr/share/glib-2.0/schemas >/dev/null 2>&1
  fi
fi

if ! grep -q ^colord: /etc/group ; then
  groupadd -g 303 colord
  useradd -d /var/lib/colord -u 303 -g colord -s /bin/false colord
fi
