Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC40DD205B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 07:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/Bp/lmkQFpaK4iRnHuYJg2YMjpR/4+FwZq/B6+u9vI=; b=s3q+ZULU1sOsdB
	JQtP4E5a7wzJuFKW3DhX1zRIJM0wdueLERPH0wteRgrogn3jbJUMDpTbxMOnR8EDVd8YvJt++CK7n
	G+vWBclDGE+UlHcRC94AOCcI+SXl9SCU2CRhC2wvtqfgD+/np7NoZMJzhsWwYFdv8pvavSGsaLbqI
	8PVa6ol5OWLOrWHhpCGRfgSYVCkHhnUoplWaxO+PequiYwy2V/fMdB7AWx6o60vFR9FOvKGc5kkpM
	RjKhRZakIJXbpKxPqIMAA7dxznDKZGMC8+2OCYdYqAU2GrKhpmDUZLgAHaCq2jlxkq113ZobxdGBF
	EzhrIo+YcJBEezlRsfNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIREa-0001cx-5D; Thu, 10 Oct 2019 05:43:32 +0000
Received: from mx2a.mailbox.org ([80.241.60.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIRDs-0001LA-K6
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 05:42:50 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 92F5FA366F;
 Thu, 10 Oct 2019 07:42:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id UVLzWHG__ALj; Thu, 10 Oct 2019 07:42:41 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v14 2/6] namei: LOOKUP_IN_ROOT: chroot-like path resolution
Date: Thu, 10 Oct 2019 16:41:36 +1100
Message-Id: <20191010054140.8483-3-cyphar@cyphar.com>
In-Reply-To: <20191010054140.8483-1-cyphar@cyphar.com>
References: <20191010054140.8483-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_224249_004024_72EBF86C 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.219 listed in list.dnswl.org]
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
 linuxppc-dev@lists.ozlabs.org, Aleksa Sarai <cyphar@cyphar.com>,
 Andy Lutomirski <luto@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 libc-alpha@sourceware.org, linux-parisc@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-api@vger.kernel.org,
 Chanho Min <chanho.min@lge.com>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
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
the dirfd root (and ".." components being stuck under the dirfd root[1])
It is much simpler and more straight-forward to provide this
functionality in-kernel (because it can be done far more cheaply and
correctly).

More classical applications that also have this problem (which have
their own potentially buggy userspace path sanitisation code) include
web servers, archive extraction tools, network file servers, and so on.

[1]: At the moment, ".." and magic-link jumping are disallowed for the
     same reason it is disabled for LOOKUP_BENEATH -- currently it is
     not safe to allow it. Future patches may enable it unconditionally
     once we have resolved the possible races (for "..") and semantics
     (for magic-link jumping).

/* Userspace API. */
LOOKUP_IN_ROOT will be exposed to userspace through openat2(2).

There is a slight change in behaviour regarding pathnames -- if the
pathname is absolute then the dirfd is still used as the root of
resolution of LOOKUP_IN_ROOT is specified (this is to avoid obvious
foot-guns, at the cost of a minor API inconsistency).

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 fs/namei.c            | 5 +++++
 include/linux/namei.h | 3 ++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/fs/namei.c b/fs/namei.c
index 54fdbdfbeb94..9d00b138f54c 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -2277,6 +2277,11 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 
 	nd->m_seq = read_seqbegin(&mount_lock);
 
+	/* LOOKUP_IN_ROOT treats absolute paths as being relative-to-dirfd. */
+	if (flags & LOOKUP_IN_ROOT)
+		while (*s == '/')
+			s++;
+
 	/* Figure out the starting path and root (if needed). */
 	if (*s == '/') {
 		error = nd_jump_root(nd);
diff --git a/include/linux/namei.h b/include/linux/namei.h
index 35a1bf074ff1..c7a010570d05 100644
--- a/include/linux/namei.h
+++ b/include/linux/namei.h
@@ -47,8 +47,9 @@ enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
 #define LOOKUP_NO_MAGICLINKS	0x080000 /* No /proc/$pid/fd/ "symlink" crossing. */
 #define LOOKUP_NO_SYMLINKS	0x100000 /* No symlink crossing *at all*.
 					    Implies LOOKUP_NO_MAGICLINKS. */
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
