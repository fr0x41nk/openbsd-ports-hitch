# $OpenBSD: Makefile,v 1.0 2025/10/28 00:00:00 user Exp $
COMMENT =       TLS Proxy
CATEGORIES =    net

GH_ACCOUNT =    varnish
GH_PROJECT =    hitch
GH_TAGNAME =    1.8.0

HOMEPAGE =      https://www.hitch-tls.net/
MAINTAINER =    Frank Solli <frank.solli@icloud.com>

AUTORECONF = autoreconf -i 
CONFIGURE_STYLE = autoreconf
AUTOCONF_VERSION = 2.71
AUTOMAKE_VERSION = 1.16

PERMIT_PACKAGE = Yes
BUILD_DEPENDS = devel/bison  \
		textproc/py-docutils \
		devel/py-pkgconfig 

LIB_DEPENDS =   devel/libev

CONFIGURE_ENV =  LDFLAGS="-L/usr/local/lib" \
		 CPPFLAGS="-I/usr/local/include" \
		 YACC="${LOCALBASE}/bin/bison -y"

CONFIGURE_ARGS = --enable-silent-rules \
		 --enable-documentation \
   		 --enable-warnings \
		 --with-lex \
		 --with-yacc

.include <bsd.port.mk>
