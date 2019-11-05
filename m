Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 250F3EF80E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 10:08:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9XDBVmcbK2DtmpeEN6VBAEfFEFvtqH83JrNjBLbGrY=; b=ua8s1uKki23YF0
	w1uPfd4shCdPaeSlrCyus2n2+xnpd+3Y4KUCT8c7gE7JXkg4sZZvc0vG+oK/hqMZTrWO2wxDy4rgD
	yDB91xKIuwcPQTXDiCHL0dHqCO1qApN/uvO8WxFlfDfujutzhz9vetGyx7aeqxfpOwNAjB+VFCms3
	lNNLOBCX+ltD6wFw2QwjQZDmvopohVcTmjmnkbKujTlSXBnmNpjAQjTDw13D4aYUB5E34vPGLogEX
	HKloL+vDqjb01qYg/NWkGYS3kpQMovNVJc1UjrgKuyz4uz4cmqOY9oCBMc38+4Eog9iH1cotmD3A8
	zWGBGRc3+gf396HO8Cqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRupX-0001A1-AQ; Tue, 05 Nov 2019 09:08:51 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRupD-0000yG-HE
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 09:08:33 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 476kNZ1fKKzQlBB;
 Tue,  5 Nov 2019 10:08:30 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id XFEh1KaOuye9; Tue,  5 Nov 2019 10:08:24 +0100 (CET)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v15 5/9] namei: LOOKUP_IN_ROOT: chroot-like scoped resolution
Date: Tue,  5 Nov 2019 20:05:49 +1100
Message-Id: <20191105090553.6350-6-cyphar@cyphar.com>
In-Reply-To: <20191105090553.6350-1-cyphar@cyphar.com>
References: <20191105090553.6350-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_010831_905501_0CAC04CC 
X-CRM114-Status: GOOD (  19.26  )
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
 Christian Brauner <christian.brauner@ubuntu.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 Aleksa Sarai <cyphar@cyphar.com>, Andy Lutomirski <luto@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>, libc-alpha@sourceware.org,
 linux-parisc@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

/* Background. */
Container runtimes or other administrative management processes will
often interact with root filesystems while in the host mount namespace,
because the cost of doing a chroot(2) on every operation is too
prohibitive (especially in Go, which cannot safely use vfork). However,
a malicious program can trick the management process into doing
operations on files outside of the root filesystem through careful
crafting of symlinks.

Most programs that need this feature have attempted to make this process
safe, by doing all of the path resolution in userspace (with symlinks
being scoped to the root of the malicious root filesystem).
Unfortunately, this method is prone to foot-guns and usually such
implementations have subtle security bugs.

Thus, what userspace needs is a way to resolve a path as though it were
in a chroot(2) -- with all absolute symlinks being resolved relative to
the dirfd root (and ".." components being stuck under the dirfd root).
It is much simpler and more straight-forward to provide this
functionality in-kernel (because it can be done far more cheaply and
correctly).

More classical applications that also have this problem (which have
their own potentially buggy userspace path sanitisation code) include
web servers, archive extraction tools, network file servers, and so on.

/* Userspace API. */
LOOKUP_IN_ROOT will be exposed to userspace through openat2(2).

/* Semantics. */
Unlike most other LOOKUP flags (most notably LOOKUP_FOLLOW),
LOOKUP_IN_ROOT applies to all components of the path.

With LOOKUP_IN_ROOT, any path component which attempts to cross the
starting point of the pathname lookup (the dirfd passed to openat) will
remain at the starting point. Thus, all absolute paths and symlinks will
be scoped within the starting point.

There is a slight change in behaviour regarding pathnames -- if the
pathname is absolute then the dirfd is still used as the root of
resolution of LOOKUP_IN_ROOT is specified (this is to avoid obvious
foot-guns, at the cost of a minor API inconsistency).

As with LOOKUP_BENEATH, Jann's security concern about ".."[1] applies to
LOOKUP_IN_ROOT -- therefore ".." resolution is blocked. This restriction
will be lifted in a future patch, but requires more work to ensure that
permitting ".." is done safely.

Magic-link jumps are also blocked, because they can beam the path lookup
across the starting point. It would be possible to detect and block
only the "bad" crossings with path_is_under() checks, but it's unclear
whether it makes sense to permit magic-links at all. However, userspace
is recommended to pass LOOKUP_NO_MAGICLINKS if they want to ensure that
magic-link crossing is entirely disabled.

/* Testing. */
LOOKUP_IN_ROOT is tested as part of the openat2(2) selftests.

[1]: https://lore.kernel.org/lkml/CAG48ez1jzNvxB+bfOBnERFGp=oMM0vHWuLD6EULmne3R6xa53w@mail.gmail.com/

Cc: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 fs/namei.c            | 15 ++++++++++++---
 include/linux/namei.h |  3 ++-
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/fs/namei.c b/fs/namei.c
index 54fdbdfbeb94..a3d199a60708 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -2277,12 +2277,20 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 
 	nd->m_seq = read_seqbegin(&mount_lock);
 
-	/* Figure out the starting path and root (if needed). */
-	if (*s == '/') {
+	/* Absolute pathname -- fetch the root. */
+	if (flags & LOOKUP_IN_ROOT) {
+		/* With LOOKUP_IN_ROOT, act as a relative path. */
+		while (*s == '/')
+			s++;
+	} else if (*s == '/') {
 		error = nd_jump_root(nd);
 		if (unlikely(error))
 			return ERR_PTR(error);
-	} else if (nd->dfd == AT_FDCWD) {
+		return s;
+	}
+
+	/* Relative pathname -- get the starting-point it is relative to. */
+	if (nd->dfd == AT_FDCWD) {
 		if (flags & LOOKUP_RCU) {
 			struct fs_struct *fs = current->fs;
 			unsigned seq;
@@ -2322,6 +2330,7 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 		}
 		fdput(f);
 	}
+
 	/* For scoped-lookups we need to set the root to the dirfd as well. */
 	if (flags & LOOKUP_IS_SCOPED) {
 		nd->root = nd->path;
diff --git a/include/linux/namei.h b/include/linux/namei.h
index 12f4f36835c2..96b374e08230 100644
--- a/include/linux/namei.h
+++ b/include/linux/namei.h
@@ -46,8 +46,9 @@ enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
 #define LOOKUP_NO_MAGICLINKS	0x040000 /* No /proc/$pid/fd/ "symlink" crossing. */
 #define LOOKUP_NO_XDEV		0x080000 /* No mountpoint crossing. */
 #define LOOKUP_BENEATH		0x100000 /* No escaping from starting point. */
+#define LOOKUP_IN_ROOT		0x200000 /* Treat dirfd as %current->fs->root. */
 /* LOOKUP_* flags which do scope-related checks based on the dirfd. */
-#define LOOKUP_IS_SCOPED LOOKUP_BENEATH
+#define LOOKUP_IS_SCOPED (LOOKUP_BENEATH | LOOKUP_IN_ROOT)
 
 extern int path_pts(struct path *path);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
