Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297A795533
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:35:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lIYDASzOx3xBPIui9KK+5EsmmsaYinnYo/8ut511d7Y=; b=R5qliULLqImjFn
	TlFHDcq8mKFB515m7wCBk2CpQLHRJwtf3ZcQLz+M821q0avBSl44wEUOzWg0az4qoSWxfR3qOyX9P
	aGlit0TUyR9qYOOOHkt9xO9h+8KDKrDqhY63h75rC6AURa317eBQ4PQz2PRIKRSEKuF0pgAQByV2j
	UBgnZOPnm/EJc5ZTA0xj68rAVvRIiI0/ySAAEzbd9mqBgfhC28utLIpg6fyT/5+0Nq4JHO8IrP6y3
	CxBtL57Zvdjbvcdrb8/ShNhq8Cv6TEgt/6Z35XzUD8oHStNKHCkHdpqip0v618S2e2PtGFyWcRgxG
	Iz60VgeGen74hIGfmcrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzuvJ-0000pe-JC; Tue, 20 Aug 2019 03:35:05 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzuv5-0000oI-8y
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:34:54 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 48140A1638;
 Tue, 20 Aug 2019 05:34:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id N1m8x2icF4On; Tue, 20 Aug 2019 05:34:31 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Subject: [PATCH RESEND v11 0/8] openat2(2)
Date: Tue, 20 Aug 2019 13:33:58 +1000
Message-Id: <20190820033406.29796-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_203451_620139_31729CF4 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
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
 Alexei Starovoitov <ast@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 Aleksa Sarai <cyphar@cyphar.com>, Andy Lutomirski <luto@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 linux-parisc@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-api@vger.kernel.org, containers@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Chanho Min <chanho.min@lge.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset is being developed here:
    <https://github.com/cyphar/linux/tree/resolveat/master>

Patch changelog:
 v11: [RESEND: <https://lore.kernel.org/lkml/20190728010207.9781-1-cyphar@cyphar.com/>]
    * Fix checkpatch.pl errors and warnings where reasonable.
    * Minor cleanup to pr_warn logging for may_open_magiclink().
    * Drop kselftests patch to handle %m formatting correctly, and send
      it through the kselftests tree directly. [Shuah Khan]
 v10: <https://lore.kernel.org/lkml/20190719164225.27083-1-cyphar@cyphar.com/>
 v09: <https://lore.kernel.org/lkml/20190706145737.5299-1-cyphar@cyphar.com/>
 v08: <https://lore.kernel.org/lkml/20190520133305.11925-1-cyphar@cyphar.com/>
 v07: <https://lore.kernel.org/lkml/20190507164317.13562-1-cyphar@cyphar.com/>
 v06: <https://lore.kernel.org/lkml/20190506165439.9155-1-cyphar@cyphar.com/>
 v05: <https://lore.kernel.org/lkml/20190320143717.2523-1-cyphar@cyphar.com/>
 v04: <https://lore.kernel.org/lkml/20181112142654.341-1-cyphar@cyphar.com/>
 v03: <https://lore.kernel.org/lkml/20181009070230.12884-1-cyphar@cyphar.com/>
 v02: <https://lore.kernel.org/lkml/20181009065300.11053-1-cyphar@cyphar.com/>
 v01: <https://lore.kernel.org/lkml/20180929103453.12025-1-cyphar@cyphar.com/>

The need for some sort of control over VFS's path resolution (to avoid
malicious paths resulting in inadvertent breakouts) has been a very
long-standing desire of many userspace applications. This patchset is a
revival of Al Viro's old AT_NO_JUMPS[1,2] patchset (which was a variant
of David Drysdale's O_BENEATH patchset[3] which was a spin-off of the
Capsicum project[4]) with a few additions and changes made based on the
previous discussion within [5] as well as others I felt were useful.

In line with the conclusions of the original discussion of AT_NO_JUMPS,
the flag has been split up into separate flags. However, instead of
being an openat(2) flag it is provided through a new syscall openat2(2)
which provides several other improvements to the openat(2) interface (see the
patch description for more details). The following new LOOKUP_* flags are
added:

  * LOOKUP_NO_XDEV blocks all mountpoint crossings (upwards, downwards,
    or through absolute links). Absolute pathnames alone in openat(2) do
    not trigger this.

  * LOOKUP_NO_MAGICLINKS blocks resolution through /proc/$pid/fd-style
    links. This is done by blocking the usage of nd_jump_link() during
    resolution in a filesystem. The term "magic-links" is used to match
    with the only reference to these links in Documentation/, but I'm
    happy to change the name.

    It should be noted that this is different to the scope of
    ~LOOKUP_FOLLOW in that it applies to all path components. However,
    you can do openat2(NO_FOLLOW|NO_MAGICLINKS) on a magic-link and it
    will *not* fail (assuming that no parent component was a
    magic-link), and you will have an fd for the magic-link.

  * LOOKUP_BENEATH disallows escapes to outside the starting dirfd's
    tree, using techniques such as ".." or absolute links. Absolute
    paths in openat(2) are also disallowed. Conceptually this flag is to
    ensure you "stay below" a certain point in the filesystem tree --
    but this requires some additional to protect against various races
    that would allow escape using "..".

    Currently LOOKUP_BENEATH implies LOOKUP_NO_MAGICLINKS, because it
    can trivially beam you around the filesystem (breaking the
    protection). In future, there might be similar safety checks done as
    in LOOKUP_IN_ROOT, but that requires more discussion.

In addition, two new flags are added that expand on the above ideas:

  * LOOKUP_NO_SYMLINKS does what it says on the tin. No symlink
    resolution is allowed at all, including magic-links. Just as with
    LOOKUP_NO_MAGICLINKS this can still be used with NOFOLLOW to open an
    fd for the symlink as long as no parent path had a symlink
    component.

  * LOOKUP_IN_ROOT is an extension of LOOKUP_BENEATH that, rather than
    blocking attempts to move past the root, forces all such movements
    to be scoped to the starting point. This provides chroot(2)-like
    protection but without the cost of a chroot(2) for each filesystem
    operation, as well as being safe against race attacks that chroot(2)
    is not.

    If a race is detected (as with LOOKUP_BENEATH) then an error is
    generated, and similar to LOOKUP_BENEATH it is not permitted to cross
    magic-links with LOOKUP_IN_ROOT.

    The primary need for this is from container runtimes, which
    currently need to do symlink scoping in userspace[6] when opening
    paths in a potentially malicious container. There is a long list of
    CVEs that could have bene mitigated by having RESOLVE_THIS_ROOT
    (such as CVE-2017-1002101, CVE-2017-1002102, CVE-2018-15664, and
    CVE-2019-5736, just to name a few).

And further, several semantics of file descriptor "re-opening" are now
changed to prevent attacks like CVE-2019-5736 by restricting how
magic-links can be resolved (based on their mode). This required some
other changes to the semantics of the modes of O_PATH file descriptor's
associated /proc/self/fd magic-links. openat2(2) has the ability to
further restrict re-opening of its own O_PATH fds, so that users can
make even better use of this feature.

Finally, O_EMPTYPATH was added so that users can do /proc/self/fd-style
re-opening without depending on procfs. The new restricted semantics for
magic-links are applied here too.

In order to make all of the above more usable, I'm working on
libpathrs[7] which is a C-friendly library for safe path resolution. It
features a userspace-emulated backend if the kernel doesn't support
openat2(2). Hopefully we can get userspace to switch to using it, and
thus get openat2(2) support for free once it's ready.

Cc: Al Viro <viro@zeniv.linux.org.uk>
Cc: Eric Biederman <ebiederm@xmission.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: David Howells <dhowells@redhat.com>
Cc: Jann Horn <jannh@google.com>
Cc: Christian Brauner <christian@brauner.io>
Cc: David Drysdale <drysdale@google.com>
Cc: Tycho Andersen <tycho@tycho.ws>
Cc: Kees Cook <keescook@chromium.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: <containers@lists.linux-foundation.org>
Cc: <linux-fsdevel@vger.kernel.org>
Cc: <linux-api@vger.kernel.org>

[1]: https://lwn.net/Articles/721443/
[2]: https://lore.kernel.org/patchwork/patch/784221/
[3]: https://lwn.net/Articles/619151/
[4]: https://lwn.net/Articles/603929/
[5]: https://lwn.net/Articles/723057/
[6]: https://github.com/cyphar/filepath-securejoin
[7]: https://github.com/openSUSE/libpathrs

Aleksa Sarai (8):
  namei: obey trailing magic-link DAC permissions
  procfs: switch magic-link modes to be more sane
  open: O_EMPTYPATH: procfs-less file descriptor re-opening
  namei: O_BENEATH-style path resolution flags
  namei: LOOKUP_IN_ROOT: chroot-like path resolution
  namei: aggressively check for nd->root escape on ".." resolution
  open: openat2(2) syscall
  selftests: add openat2(2) selftests

 Documentation/filesystems/path-lookup.rst     |  12 +-
 arch/alpha/include/uapi/asm/fcntl.h           |   1 +
 arch/alpha/kernel/syscalls/syscall.tbl        |   1 +
 arch/arm/tools/syscall.tbl                    |   1 +
 arch/arm64/include/asm/unistd.h               |   2 +-
 arch/arm64/include/asm/unistd32.h             |   2 +
 arch/ia64/kernel/syscalls/syscall.tbl         |   1 +
 arch/m68k/kernel/syscalls/syscall.tbl         |   1 +
 arch/microblaze/kernel/syscalls/syscall.tbl   |   1 +
 arch/mips/kernel/syscalls/syscall_n32.tbl     |   1 +
 arch/mips/kernel/syscalls/syscall_n64.tbl     |   1 +
 arch/mips/kernel/syscalls/syscall_o32.tbl     |   1 +
 arch/parisc/include/uapi/asm/fcntl.h          |  39 +-
 arch/parisc/kernel/syscalls/syscall.tbl       |   1 +
 arch/powerpc/kernel/syscalls/syscall.tbl      |   1 +
 arch/s390/kernel/syscalls/syscall.tbl         |   1 +
 arch/sh/kernel/syscalls/syscall.tbl           |   1 +
 arch/sparc/include/uapi/asm/fcntl.h           |   1 +
 arch/sparc/kernel/syscalls/syscall.tbl        |   1 +
 arch/x86/entry/syscalls/syscall_32.tbl        |   1 +
 arch/x86/entry/syscalls/syscall_64.tbl        |   1 +
 arch/xtensa/kernel/syscalls/syscall.tbl       |   1 +
 fs/fcntl.c                                    |   2 +-
 fs/internal.h                                 |   1 +
 fs/namei.c                                    | 270 ++++++++++--
 fs/open.c                                     | 112 ++++-
 fs/proc/base.c                                |  20 +-
 fs/proc/fd.c                                  |  23 +-
 fs/proc/namespaces.c                          |   2 +-
 include/linux/fcntl.h                         |  17 +-
 include/linux/fs.h                            |   8 +-
 include/linux/namei.h                         |   9 +
 include/linux/syscalls.h                      |  17 +-
 include/uapi/asm-generic/fcntl.h              |   4 +
 include/uapi/asm-generic/unistd.h             |   5 +-
 include/uapi/linux/fcntl.h                    |  42 ++
 tools/testing/selftests/Makefile              |   1 +
 tools/testing/selftests/memfd/memfd_test.c    |   7 +-
 tools/testing/selftests/openat2/.gitignore    |   1 +
 tools/testing/selftests/openat2/Makefile      |   8 +
 tools/testing/selftests/openat2/helpers.c     | 162 +++++++
 tools/testing/selftests/openat2/helpers.h     | 116 +++++
 .../testing/selftests/openat2/linkmode_test.c | 333 +++++++++++++++
 .../selftests/openat2/rename_attack_test.c    | 127 ++++++
 .../testing/selftests/openat2/resolve_test.c  | 402 ++++++++++++++++++
 45 files changed, 1655 insertions(+), 107 deletions(-)
 create mode 100644 tools/testing/selftests/openat2/.gitignore
 create mode 100644 tools/testing/selftests/openat2/Makefile
 create mode 100644 tools/testing/selftests/openat2/helpers.c
 create mode 100644 tools/testing/selftests/openat2/helpers.h
 create mode 100644 tools/testing/selftests/openat2/linkmode_test.c
 create mode 100644 tools/testing/selftests/openat2/rename_attack_test.c
 create mode 100644 tools/testing/selftests/openat2/resolve_test.c

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
