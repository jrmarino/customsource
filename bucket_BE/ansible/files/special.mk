POST_PLIST_TARGET=	autolist

autolist:
	@${ECHO_MSG} "autogenerating manifest for lib ..."
	@(cd ${STAGEDIR}${PREFIX} && ${FIND} lib \
	\( -type f -o -type l \) 2>/dev/null | ${SORT}) \
	>> ${WRKDIR}/.manifest.primary.mktmp
