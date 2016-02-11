# $OpenBSD$

COMMENT =	DataDog monitoring agent

MODPY_EGG_VERSION = 5.6.3
GH_ACCOUNT =	DataDog
GH_PROJECT =	dd-agent
GH_TAGNAME =	${MODPY_EGG_VERSION}
PKGNAME=	datadog-agent-${MODPY_EGG_VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/DataDog/dd-agent

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/python
BUILD_DEPENDS += devel/py-simplejson \
		textproc/py-yaml \
		www/py-tornado
RUN_DEPENDS += ${BUILD_DEPENDS}
TEST_DEPENDS =	${BUILD_PKGPATH} \
		devel/py-nose
MODPY_SETUPTOOLS =	Yes


.include <bsd.port.mk>
