Libc_DragonFly=		libc.so.8
Libc_FreeBSD=		libc.so.7

Libm_DragonFly=		libm.so.4
Libm_FreeBSD=		libm.so.5

Libutil_DragonFly=	libutil.so.4
Libutil_FreeBSD=	libutil.so.9

Libusb_DragonFly=	libusb.so.2
Libusb_FreeBSD=		libusb.so.3

Libusbhid_DragonFly=	libusbhid.so.4
Libusbhid_FreeBSD=	libusbhid.so.4

Libcrypt_DragonFly=	libcrypt.so.4
Libcrypt_FreeBSD=	libcrypt.so.5

Libkvm_DragonFly=	libkvm.so.3
Libkvm_FreeBSD=		libkvm.so.7

Librt_DragonFly=	librt.so.0
Librt_FreeBSD=		librt.so.1

Librpcsvc_DragonFly=	librpcsvc.so.3
Librpcsvc_FreeBSD=	librpcsvc.so.5

Libcam_DragonFly=	libcam.so.3
Libcam_FreeBSD=		libcam.so.7

# Override bmake settings (important for bootstraps and sysroot rebases)
OPSYS=			${SYSTEM:H:H:H:H:H}
ARCH=			${SYSTEM:H:H:H:H:T}
ARCH_STANDARD=		${SYSTEM:H:H:H:T}
OSVERSION=		${SYSTEM:H:H:T}
OSREL=			${SYSTEM:H:T}
MAJOR=			${SYSTEM:T}

SYSPATH=		share${RAVENBASE}/sysroot/${OPSYS}
RSYS=			${PREFIX}/${SYSPATH}
FOS=			${WRKDIR}/${OPSYS:tl}
