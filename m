Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26CAF74BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 14:25:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VgL+GmbWmZI5lz3Mme2xRpGwG4HYNvdfLW4U0eyuA+0=; b=obvLohhCwO5j885zYJgg6bXi8
	RKm5XkWTMtkeZ/MAg5KRs6Mq0fkvJh6GK6KdR3CfBYWNZmZGrpAX3nS9+AfJ36pL7d6/NJJdA64jU
	ohmR722VT4TJgL+neGy0T8Cw3skyXuVwmczi9mjtWUSWGYGpY5mku6uJV/0ceidNAlmN3O6HpQ7vL
	AXi5/iPyUlzorNn+MZQdiS2tc0SiYnIiuZERShygiOQwa9xD6f4hZ8eX8JZ4k3qXpECiMTkgXa4Kj
	+ygS1V+jeGOgrEEbiq0UEgVrkUhOpzrnalQa2wy1xJLaLxxxJX8hp6MKd9HSix2u+sY1USVujd8hx
	G4UXf6png==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU9gv-0004tV-KY; Mon, 11 Nov 2019 13:25:13 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU9gb-0004rM-4b
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 13:24:56 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 47BWnP6ZNCzKmP7;
 Mon, 11 Nov 2019 14:24:41 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id sAtvXj7noaR5; Mon, 11 Nov 2019 14:24:35 +0100 (CET)
Date: Tue, 12 Nov 2019 00:24:04 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>,
 Arnd Bergmann <arnd@arndb.de>, David Howells <dhowells@redhat.com>,
 Shuah Khan <shuah@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v15 0/9] open: introduce openat2(2) syscall
Message-ID: <20191111132404.y523iqicbn6fivx5@yavin.dot.cyphar.com>
References: <20191105090553.6350-1-cyphar@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <20191105090553.6350-1-cyphar@cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_052453_495437_AAB943D9 
X-CRM114-Status: GOOD (  38.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 Jiri Olsa <jolsa@redhat.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Andy Lutomirski <luto@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 libc-alpha@sourceware.org, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============4003304312786444859=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4003304312786444859==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4hvzidklzgb7ppdy"
Content-Disposition: inline


--4hvzidklzgb7ppdy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-11-05, Aleksa Sarai <cyphar@cyphar.com> wrote:
> This patchset is being developed here:
>   <https://github.com/cyphar/linux/tree/openat2/master>
>=20
> Patch changelog:
>  v15:
>   * Fix code style for LOOKUP_IN_ROOT handling in path_init(). [Linus Tor=
valds]
>   * Split out patches for each individual LOOKUP flag.
>   * Reword commit messages to give more background information about the
>     series, as well as mention the semantics of each flag in more detail.
>  v14: <https://lore.kernel.org/lkml/20191010054140.8483-1-cyphar@cyphar.c=
om/>
>       <https://lore.kernel.org/lkml/20191026185700.10708-1-cyphar@cyphar.=
com>
>  v13: <https://lore.kernel.org/lkml/20190930183316.10190-1-cyphar@cyphar.=
com/>
>  v12: <https://lore.kernel.org/lkml/20190904201933.10736-1-cyphar@cyphar.=
com/>
>  v11: <https://lore.kernel.org/lkml/20190820033406.29796-1-cyphar@cyphar.=
com/>
>       <https://lore.kernel.org/lkml/20190728010207.9781-1-cyphar@cyphar.c=
om/>
>  v10: <https://lore.kernel.org/lkml/20190719164225.27083-1-cyphar@cyphar.=
com/>
>  v09: <https://lore.kernel.org/lkml/20190706145737.5299-1-cyphar@cyphar.c=
om/>
>  v08: <https://lore.kernel.org/lkml/20190520133305.11925-1-cyphar@cyphar.=
com/>
>  v07: <https://lore.kernel.org/lkml/20190507164317.13562-1-cyphar@cyphar.=
com/>
>  v06: <https://lore.kernel.org/lkml/20190506165439.9155-1-cyphar@cyphar.c=
om/>
>  v05: <https://lore.kernel.org/lkml/20190320143717.2523-1-cyphar@cyphar.c=
om/>
>  v04: <https://lore.kernel.org/lkml/20181112142654.341-1-cyphar@cyphar.co=
m/>
>  v03: <https://lore.kernel.org/lkml/20181009070230.12884-1-cyphar@cyphar.=
com/>
>  v02: <https://lore.kernel.org/lkml/20181009065300.11053-1-cyphar@cyphar.=
com/>
>  v01: <https://lore.kernel.org/lkml/20180929103453.12025-1-cyphar@cyphar.=
com/>
>=20
> For a very long time, extending openat(2) with new features has been
> incredibly frustrating. This stems from the fact that openat(2) is
> possibly the most famous counter-example to the mantra "don't silently
> accept garbage from userspace" -- it doesn't check whether unknown flags
> are present[1].
>=20
> This means that (generally) the addition of new flags to openat(2) has
> been fraught with backwards-compatibility issues (O_TMPFILE has to be
> defined as __O_TMPFILE|O_DIRECTORY|[O_RDWR or O_WRONLY] to ensure old
> kernels gave errors, since it's insecure to silently ignore the
> flag[2]). All new security-related flags therefore have a tough road to
> being added to openat(2).
>=20
> Furthermore, the need for some sort of control over VFS's path resolution=
 (to
> avoid malicious paths resulting in inadvertent breakouts) has been a very
> long-standing desire of many userspace applications. This patchset is a r=
evival
> of Al Viro's old AT_NO_JUMPS[3] patchset (which was a variant of David
> Drysdale's O_BENEATH patchset[4] which was a spin-off of the Capsicum
> project[5]) with a few additions and changes made based on the previous
> discussion within [6] as well as others I felt were useful.
>=20
> In line with the conclusions of the original discussion of AT_NO_JUMPS, t=
he
> flag has been split up into separate flags. However, instead of being an
> openat(2) flag it is provided through a new syscall openat2(2) which prov=
ides
> several other improvements to the openat(2) interface (see the patch
> description for more details). The following new LOOKUP_* flags are added:
>=20
>   * LOOKUP_NO_XDEV blocks all mountpoint crossings (upwards, downwards,
>     or through absolute links). Absolute pathnames alone in openat(2) do =
not
>     trigger this. Magic-link traversal which implies a vfsmount jump is a=
lso
>     blocked (though magic-link jumps on the same vfsmount are permitted).
>=20
>   * LOOKUP_NO_MAGICLINKS blocks resolution through /proc/$pid/fd-style
>     links. This is done by blocking the usage of nd_jump_link() during
>     resolution in a filesystem. The term "magic-links" is used to match
>     with the only reference to these links in Documentation/, but I'm
>     happy to change the name.
>=20
>     It should be noted that this is different to the scope of
>     ~LOOKUP_FOLLOW in that it applies to all path components. However,
>     you can do openat2(NO_FOLLOW|NO_MAGICLINKS) on a magic-link and it
>     will *not* fail (assuming that no parent component was a
>     magic-link), and you will have an fd for the magic-link.
>=20
>     In order to correctly detect magic-links, the introduction of a new
>     LOOKUP_MAGICLINK_JUMPED state flag was required.
>=20
>   * LOOKUP_BENEATH disallows escapes to outside the starting dirfd's
>     tree, using techniques such as ".." or absolute links. Absolute
>     paths in openat(2) are also disallowed. Conceptually this flag is to
>     ensure you "stay below" a certain point in the filesystem tree --
>     but this requires some additional to protect against various races
>     that would allow escape using "..".
>=20
>     Currently LOOKUP_BENEATH implies LOOKUP_NO_MAGICLINKS, because it
>     can trivially beam you around the filesystem (breaking the
>     protection). In future, there might be similar safety checks done as
>     in LOOKUP_IN_ROOT, but that requires more discussion.
>=20
> In addition, two new flags are added that expand on the above ideas:
>=20
>   * LOOKUP_NO_SYMLINKS does what it says on the tin. No symlink
>     resolution is allowed at all, including magic-links. Just as with
>     LOOKUP_NO_MAGICLINKS this can still be used with NOFOLLOW to open an
>     fd for the symlink as long as no parent path had a symlink
>     component.
>=20
>   * LOOKUP_IN_ROOT is an extension of LOOKUP_BENEATH that, rather than
>     blocking attempts to move past the root, forces all such movements
>     to be scoped to the starting point. This provides chroot(2)-like
>     protection but without the cost of a chroot(2) for each filesystem
>     operation, as well as being safe against race attacks that chroot(2)
>     is not.
>=20
>     If a race is detected (as with LOOKUP_BENEATH) then an error is
>     generated, and similar to LOOKUP_BENEATH it is not permitted to cross
>     magic-links with LOOKUP_IN_ROOT.
>=20
>     The primary need for this is from container runtimes, which
>     currently need to do symlink scoping in userspace[7] when opening
>     paths in a potentially malicious container. There is a long list of
>     CVEs that could have bene mitigated by having RESOLVE_THIS_ROOT
>     (such as CVE-2017-1002101, CVE-2017-1002102, CVE-2018-15664, and
>     CVE-2019-5736, just to name a few).
>=20
> In order to make all of the above more usable, I'm working on
> libpathrs[8] which is a C-friendly library for safe path resolution. It
> features a userspace-emulated backend if the kernel doesn't support
> openat2(2). Hopefully we can get userspace to switch to using it, and
> thus get openat2(2) support for free once it's ready.
>=20
> Future work would include implementing things like RESOLVE_NO_AUTOMOUNT a=
nd
> possibly a RESOLVE_NO_REMOTE (to allow programs to be sure they don't hit=
 DoSes
> though stale NFS handles).
>=20
> [1]: https://lwn.net/Articles/588444/
> [2]: https://lore.kernel.org/lkml/CA+55aFyyxJL1LyXZeBsf2ypriraj5ut1XkNDsu=
nRBqgVjZU_6Q@mail.gmail.com
> [3]: https://lore.kernel.org/lkml/20170429220414.GT29622@ZenIV.linux.org.=
uk
> [4]: https://lore.kernel.org/lkml/1415094884-18349-1-git-send-email-drysd=
ale@google.com
> [5]: https://lore.kernel.org/lkml/1404124096-21445-1-git-send-email-drysd=
ale@google.com
> [6]: https://lwn.net/Articles/723057/
> [7]: https://github.com/cyphar/filepath-securejoin
> [8]: https://github.com/openSUSE/libpathrs
>=20
> The current draft of the openat2(2) man-page is included below.
>=20
> --8<---------------------------------------------------------------------=
------
> OPENAT2(2)                          Linux Programmer's Manual            =
              OPENAT2(2)
>=20
> NAME
>        openat2 - open and possibly create a file (extended)
>=20
> SYNOPSIS
>        #include <sys/types.h>
>        #include <sys/stat.h>
>        #include <fcntl.h>
>=20
>        int openat2(int dirfd, const char *pathname, struct open_how *how,=
 size_t size);
>=20
>        Note: There is no glibc wrapper for this system call; see NOTES.
>=20
> DESCRIPTION
>        The  openat2()  system  call  opens the file specified by pathname=
=2E  If the specified file
>        does not exist, it may optionally (if O_CREAT is specified in  how=
=2Eflags)  be  created  by
>        openat2().
>=20
>        As  with openat(2), if pathname is relative, then it is interprete=
d relative to the direc-
>        tory referred to by the file descriptor dirfd (or the current  wor=
king  directory  of  the
>        calling  process,  if dirfd is the special value AT_FDCWD.)  If pa=
thname is absolute, then
>        dirfd is ignored (unless how.resolve contains RESOLVE_IN_ROOT, in =
which case  pathname  is
>        resolved relative to dirfd.)
>=20
>        The  openat2()  system  call  is  an extension of openat(2) and pr=
ovides a superset of its
>        functionality.  Rather than taking a single flag argument, an exte=
nsible  structure  (how)
>        is  passed  instead  to  allow  for  future extensions.  size must=
 be set to sizeof(struct
>        open_how), to facilitate future extensions (see the "Extensibility=
" section of  the  NOTES
>        for more detail on how extensions are handled.)
>=20
>    The open_how structure
>        The following structure indicates how pathname should be opened, a=
nd acts as a superset of
>        the flag and mode arguments to openat(2).
>=20
>            struct open_how {
>                __aligned_u64 flags;         /* O_* flags. */
>                __u16         mode;          /* Mode for O_{CREAT,TMPFILE}=
=2E */
>                __u16         __padding[3];  /* Must be zeroed. */
>                __aligned_u64 resolve;       /* RESOLVE_* flags. */
>            };
>=20
>        Any future extensions to openat2() will be implemented as new fiel=
ds appended to the above
>        structure (or through reuse of pre-existing padding space), with t=
he zero value of the new
>        fields acting as though the extension were not present.
>=20
>        The meaning of each field is as follows:
>=20
>               flags
>                      The file creation and status flags to use for this o=
peration.   All  of  the
>                      O_* flags defined for openat(2) are valid openat2() =
flag values.
>=20
>                      Unlike openat(2), it is an error to provide openat2(=
) unknown or conflicting
>                      flags in flags.
>=20
>               mode
>                      File mode for the new file, with identical semantics=
 to the mode argument to
>                      openat(2).   However,  unlike openat(2), it is an er=
ror to provide openat2()
>                      with a mode which contains bits other than 0777.
>=20
>                      It is an error to provide openat2() a non-zero mode =
if flags does  not  con-
>                      tain O_CREAT or O_TMPFILE.
>=20
>               resolve
>                      Change  how  the  components  of pathname will be re=
solved (see path_resolu-
>                      tion(7) for background information.)  The primary us=
e case for  these  flags
>                      is  to  allow trusted programs to restrict how untru=
sted paths (or paths in-
>                      side untrusted directories) are resolved.  The full =
list of resolve flags is
>                      given below.
>=20
>                      RESOLVE_NO_XDEV
>                             Disallow  traversal of mount points during pa=
th resolution (including
>                             all bind mounts).
>=20
>                             Users of this flag are encouraged to make its=
 use  configurable  (un-
>                             less  it is used for a specific security purp=
ose), as bind mounts are
>                             very widely used by end-users.  Setting this =
flag indiscrimnately for
>                             all  uses  of  openat2() may result in spurio=
us errors on previously-
>                             functional systems.
>=20
>                      RESOLVE_NO_SYMLINKS
>                             Disallow resolution of symbolic links during =
path  resolution.   This
>                             option implies RESOLVE_NO_MAGICLINKS.
>=20
>                             If the trailing component is a symbolic link,=
 and flags contains both
>                             O_PATH and O_NOFOLLOW, then an O_PATH file de=
scriptor referencing the
>                             symbolic link will be returned.
>=20
>                             Users  of  this flag are encouraged to make i=
ts use configurable (un-
>                             less it is used for a specific security purpo=
se), as  symbolic  links
>                             are very widely used by end-users.  Setting t=
his flag indiscrimnately
>                             for all uses of openat2() may result in  spur=
ious  errors  on  previ-
>                             ously-functional systems.
>=20
>                      RESOLVE_NO_MAGICLINKS
>                             Disallow all magic link resolution during pat=
h resolution.
>=20
>                             If  the  trailing  component is a magic link,=
 and flags contains both
>                             O_PATH and O_NOFOLLOW, then an O_PATH file de=
scriptor referencing the
>                             magic link will be returned.
>=20
>                             Magic-links  are  symbolic  link-like  object=
s  that are most notably
>                             found   in   proc(5)   (examples    include  =
  /proc/[pid]/exe    and
>                             /proc/[pid]/fd/*.)   Due to the potential dan=
ger of unknowingly open-
>                             ing these magic links, it may be  preferable =
 for  users  to  disable
>                             their resolution entirely (see symboliclink(7=
) for more details.)
>=20
>                      RESOLVE_BENEATH
>                             Do  not permit the path resolution to succeed=
 if any component of the
>                             resolution is not a descendant of the directo=
ry indicated  by  dirfd.
>                             This results in absolute symbolic links (and =
absolute values of path-
>                             name) to be rejected.
>=20
>                             Currently, this flag also disables magic link=
  resolution.   However,
>                             this  may change in the future.  The caller s=
hould explicitly specify
>                             RESOLVE_NO_MAGICLINKS to ensure that magic li=
nks are not resolved.
>=20
>                      RESOLVE_IN_ROOT
>                             Treat dirfd as the root directory while resol=
ving pathname (as though
>                             the user called chroot(2) with dirfd as the a=
rgument.)  Absolute sym-
>                             bolic links and ".." path components will be =
 scoped  to  dirfd.   If
>                             pathname is an absolute path, it is also trea=
ted relative to dirfd.
>=20
>                             However,  unlike  chroot(2) (which changes th=
e filesystem root perma-
>                             nently for a process), RESOLVE_IN_ROOT  allow=
s  a  program  to  effi-
>                             ciently  restrict  path  resolution  for only=
 certain operations.  It
>                             also has several hardening features (such det=
ecting  escape  attempts
>                             during ..  resolution) which chroot(2) does n=
ot.
>=20
>                             Currently,  this  flag also disables magic li=
nk resolution.  However,
>                             this may change in the future.  The caller sh=
ould explicitly  specify
>                             RESOLVE_NO_MAGICLINKS to ensure that magic li=
nks are not resolved.
>=20
>                      It is an error to provide openat2() unknown flags in=
 resolve.
>=20
> RETURN VALUE
>        On success, a new file descriptor is returned.  On error, -1 is re=
turned, and errno is set
>        appropriately.
>=20
> ERRORS
>        The set of errors returned by openat2() includes all of the errors=
 returned by  openat(2),
>        as well as the following additional errors:
>=20
>        EINVAL An unknown flag or invalid value was specified in how.
>=20
>        EINVAL mode is non-zero, but flags does not contain O_CREAT or O_T=
MPFILE.
>=20
>        EINVAL size was smaller than any known version of struct open_how.
>=20
>        E2BIG  An  extension  was specified in how, which the current kern=
el does not support (see
>               the "Extensibility" section of the NOTES for more detail on=
 how extensions are han-
>               dled.)
>=20
>        EAGAIN resolve  contains  either  RESOLVE_IN_ROOT or RESOLVE_BENEA=
TH, and the kernel could
>               not ensure that a ".." component didn't escape (due to a ra=
ce condition  or  poten-
>               tial attack.)  Callers may choose to retry the openat2() ca=
ll.
>=20
>        EXDEV  resolve  contains either RESOLVE_IN_ROOT or RESOLVE_BENEATH=
, and an escape from the
>               root during path resolution was detected.
>=20
>        EXDEV  resolve contains RESOLVE_NO_XDEV, and a path component atte=
mpted to cross  a  mount
>               point.
>=20
>        ELOOP  resolve contains RESOLVE_NO_SYMLINKS, and one of the path c=
omponents was a symbolic
>               link (or magic link).
>=20
>        ELOOP  resolve contains RESOLVE_NO_MAGICLINKS, and one of the path=
 components was a  magic
>               link.
>=20
> VERSIONS
>        openat2() was added to Linux in kernel 5.FOO.
>=20
> CONFORMING TO
>        This system call is Linux-specific.
>=20
>        The semantics of RESOLVE_BENEATH were modelled after FreeBSD's O_B=
ENEATH.
>=20
> NOTES
>        Glibc does not provide a wrapper for this system call; call it usi=
ng systemcall(2).
>=20
>    Extensibility
>        In order to allow for struct open_how to be extended in future ker=
nel revisions, openat2()
>        requires userspace to specify the size of struct open_how structur=
e they are passing.   By
>        providing  this  information,  it  is possible for openat2() to pr=
ovide both forwards- and
>        backwards-compatibility =E2=80=94 with size acting as an implicit =
version number (because new  ex-
>        tension  fields will always be appended, the size will always incr=
ease.)  This extensibil-
>        ity  design  is  very  similar  to   other   system   calls   such=
   as   perf_setattr(2),
>        perf_event_open(2), and clone(3).
>=20
>        If  we let usize be the size of the structure according to userspa=
ce and ksize be the size
>        of the structure which the kernel supports, then there are only th=
ree cases to consider:
>=20
>               *  If ksize equals usize, then there is no version mismatch=
 and  how  can  be  used
>                  verbatim.
>=20
>               *  If  ksize  is  larger than usize, then there are some ex=
tensions the kernel sup-
>                  ports which the userspace program is unaware of.  Becaus=
e  all  extensions  must
>                  have their zero values be a no-op, the kernel treats all=
 of the extension fields
>                  not set by userspace to have zero values.  This  provide=
s  backwards-compatibil-
>                  ity.
>=20
>               *  If  ksize  is  smaller  than  usize,  then  there  are s=
ome extensions which the
>                  userspace program is aware of but the kernel does not su=
pport.  Because all  ex-
>                  tensions  must  have  their zero values be a no-op, the =
kernel can safely ignore
>                  the unsupported extension fields if they are all-zero.  =
If any  unsupported  ex-
>                  tension  fields  are  non-zero,  then  -1 is returned an=
d errno is set to E2BIG.
>                  This provides forwards-compatibility.
>=20
>        Therefore, most userspace programs will not need to have any speci=
al  handling  of  exten-
>        sions.   However,  if  a userspace program wishes to determine wha=
t extensions the running
>        kernel supports, they may conduct a binary search on size (to find=
 the largest value which
>        doesn't produce an error of E2BIG.)
>=20
> SEE ALSO
>        openat(2), path_resolution(7), symlink(7)
>=20
> Linux                                       2019-11-05                   =
              OPENAT2(2)
> --8<---------------------------------------------------------------------=
------
>=20
> Aleksa Sarai (9):
>   namei: LOOKUP_NO_SYMLINKS: block symlink resolution
>   namei: LOOKUP_NO_MAGICLINKS: block magic-link resolution
>   namei: LOOKUP_NO_XDEV: block mountpoint crossing
>   namei: LOOKUP_BENEATH: O_BENEATH-like scoped resolution
>   namei: LOOKUP_IN_ROOT: chroot-like scoped resolution
>   namei: LOOKUP_{IN_ROOT,BENEATH}: permit limited ".." resolution
>   open: introduce openat2(2) syscall
>   selftests: add openat2(2) selftests
>   Documentation: path-lookup: mention LOOKUP_MAGICLINK_JUMPED
>=20
>  CREDITS                                       |   4 +-
>  Documentation/filesystems/path-lookup.rst     |  18 +-
>  arch/alpha/kernel/syscalls/syscall.tbl        |   1 +
>  arch/arm/tools/syscall.tbl                    |   1 +
>  arch/arm64/include/asm/unistd.h               |   2 +-
>  arch/arm64/include/asm/unistd32.h             |   2 +
>  arch/ia64/kernel/syscalls/syscall.tbl         |   1 +
>  arch/m68k/kernel/syscalls/syscall.tbl         |   1 +
>  arch/microblaze/kernel/syscalls/syscall.tbl   |   1 +
>  arch/mips/kernel/syscalls/syscall_n32.tbl     |   1 +
>  arch/mips/kernel/syscalls/syscall_n64.tbl     |   1 +
>  arch/mips/kernel/syscalls/syscall_o32.tbl     |   1 +
>  arch/parisc/kernel/syscalls/syscall.tbl       |   1 +
>  arch/powerpc/kernel/syscalls/syscall.tbl      |   1 +
>  arch/s390/kernel/syscalls/syscall.tbl         |   1 +
>  arch/sh/kernel/syscalls/syscall.tbl           |   1 +
>  arch/sparc/kernel/syscalls/syscall.tbl        |   1 +
>  arch/x86/entry/syscalls/syscall_32.tbl        |   1 +
>  arch/x86/entry/syscalls/syscall_64.tbl        |   1 +
>  arch/xtensa/kernel/syscalls/syscall.tbl       |   1 +
>  fs/namei.c                                    | 176 +++++-
>  fs/open.c                                     | 149 +++--
>  include/linux/fcntl.h                         |  12 +-
>  include/linux/namei.h                         |  11 +
>  include/linux/syscalls.h                      |   3 +
>  include/uapi/asm-generic/unistd.h             |   5 +-
>  include/uapi/linux/fcntl.h                    |  41 ++
>  tools/testing/selftests/Makefile              |   1 +
>  tools/testing/selftests/openat2/.gitignore    |   1 +
>  tools/testing/selftests/openat2/Makefile      |   8 +
>  tools/testing/selftests/openat2/helpers.c     | 109 ++++
>  tools/testing/selftests/openat2/helpers.h     | 107 ++++
>  .../testing/selftests/openat2/openat2_test.c  | 316 +++++++++++
>  .../selftests/openat2/rename_attack_test.c    | 160 ++++++
>  .../testing/selftests/openat2/resolve_test.c  | 523 ++++++++++++++++++
>  35 files changed, 1591 insertions(+), 73 deletions(-)
>  create mode 100644 tools/testing/selftests/openat2/.gitignore
>  create mode 100644 tools/testing/selftests/openat2/Makefile
>  create mode 100644 tools/testing/selftests/openat2/helpers.c
>  create mode 100644 tools/testing/selftests/openat2/helpers.h
>  create mode 100644 tools/testing/selftests/openat2/openat2_test.c
>  create mode 100644 tools/testing/selftests/openat2/rename_attack_test.c
>  create mode 100644 tools/testing/selftests/openat2/resolve_test.c
>=20
>=20
> base-commit: a99d8080aaf358d5d23581244e5da23b35e340b9

Ping -- this patch hasn't been touched for a week. Thanks.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--4hvzidklzgb7ppdy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXclg8QAKCRCdlLljIbnQ
Ei1dAQCncMViOVQMwb6jw4ltKT8oRQsAdcBI+jtjCA9SFBrutwD9H2NepQLshLtD
T7vCqLh4MzCUNaT1fwk03V0KARDAYgg=
=GrSk
-----END PGP SIGNATURE-----

--4hvzidklzgb7ppdy--


--===============4003304312786444859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4003304312786444859==--

