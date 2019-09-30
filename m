Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DBCC260C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 20:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZPVCOzfc2+KtfkkLj0CNbNrqtS6dCixcRE0Oh/Bl4U=; b=Gn9IqHjVYfKpJp
	3Wjt5r9oisABgVcB/hniBxRd4NJqcf2rOvSqffZVvhTw46d0N7dh5E/Jf625dvFvl+WRW8FvMK4to
	9p3+GyTHh4hMWho15I8fteBmQ+MIeTy1OuEHU0R1Zu8jkZn3K4yiTCWIkX6PdN59k/hOk9vQX5YIv
	nqa7FPqBI5RRYqWTtBwtj4coTFQ6Y66e7E/PuaYG+4LAv+7ikhZKl4f64vaV+v00SxGCM0IDY2YpY
	rsgnZCy3UsMGgoUJzdwUacg4MT9J+V3jelQj8qwWM4MOpap5+tf2ycDbRDZkhDYS+a0I/n+f3J1v4
	H9WCXTiYARB4cWEKFjvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF0Ya-0004iu-PU; Mon, 30 Sep 2019 18:38:00 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF0XK-0003Wf-Vd
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 18:36:45 +0000
Received: from smtp2.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 54E42A1AF7;
 Mon, 30 Sep 2019 20:36:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id 4ffal-qoRL_A; Mon, 30 Sep 2019 20:36:30 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v13 6/9] namei: permit ".." resolution with LOOKUP_{IN_ROOT,
 BENEATH}
Date: Tue,  1 Oct 2019 04:33:13 +1000
Message-Id: <20190930183316.10190-7-cyphar@cyphar.com>
In-Reply-To: <20190930183316.10190-1-cyphar@cyphar.com>
References: <20190930183316.10190-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_113643_425517_FA922C61 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patch allows for LOOKUP_BENEATH and LOOKUP_IN_ROOT to safely permit
".." resolution (in the case of LOOKUP_BENEATH the resolution will still
fail if ".." resolution would resolve a path outside of the root --
while LOOKUP_IN_ROOT will chroot(2)-style scope it). Magic-link jumps
are still disallowed entirely[*].

The need for this patch (and the original no-".." restriction) is
explained by observing there is a fairly easy-to-exploit race condition
with chroot(2) (and thus by extension LOOKUP_IN_ROOT and LOOKUP_BENEATH
if ".." is allowed) where a rename(2) of a path can be used to "skip
over" nd->root and thus escape to the filesystem above nd->root.

  thread1 [attacker]:
    for (;;)
      renameat2(AT_FDCWD, "/a/b/c", AT_FDCWD, "/a/d", RENAME_EXCHANGE);
  thread2 [victim]:
    for (;;)
      openat2(dirb, "b/c/../../etc/shadow",
              { .flags = O_PATH, .resolve = RESOLVE_IN_ROOT } );

With fairly significant regularity, thread2 will resolve to
"/etc/shadow" rather than "/a/b/etc/shadow". There is also a similar
(though somewhat more privileged) attack using MS_MOVE.

With this patch, such cases will be detected *during* ".." resolution
and will return -EAGAIN for userspace to decide to either retry or abort
the lookup. It should be noted that ".." is the weak point of chroot(2)
-- walking *into* a subdirectory tautologically cannot result in you
walking *outside* nd->root (except through a bind-mount or magic-link).
There is also no other way for a directory's parent to change (which is
the primary worry with ".." resolution here) other than a rename or
MS_MOVE.

This is a first-pass implementation, where -EAGAIN will be returned if
any rename or mount occurs anywhere on the host (in any namespace). This
will result in spurious errors, but there isn't a satisfactory
alternative (other than denying ".." altogether).

One other possible alternative (which previous versions of this patch
used) would be to check with path_is_under() if there was a racing
rename or mount (after re-taking the relevant seqlocks). While this does
work, it results in possible O(n*m) behaviour if there are many renames
or mounts occuring *anywhere on the system*.

A variant of the above attack is included in the selftests for
openat2(2) later in this patch series. I've run this test on several
machines for several days and no instances of a breakout were detected.
While this is not concrete proof that this is safe, when combined with
the above argument it should lend some trustworthiness to this
construction.

[*] It may be acceptable in the future to do a path_is_under() check (as
    with the alternative solution for "..") for magic-links after they
    are resolved. However this seems unlikely to be a feature that
    people *really* need -- it can be added later if it turns out a lot
    of people want it.

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 fs/namei.c | 43 +++++++++++++++++++++++++++++--------------
 1 file changed, 29 insertions(+), 14 deletions(-)

diff --git a/fs/namei.c b/fs/namei.c
index efed62c6136e..9c35768fcf4f 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -491,7 +491,7 @@ struct nameidata {
 	struct path	root;
 	struct inode	*inode; /* path.dentry.d_inode */
 	unsigned int	flags;
-	unsigned	seq, m_seq;
+	unsigned	seq, m_seq, r_seq;
 	int		last_type;
 	unsigned	depth;
 	int		total_link_count;
@@ -1766,22 +1766,35 @@ static inline int handle_dots(struct nameidata *nd, int type)
 	if (type == LAST_DOTDOT) {
 		int error = 0;
 
-		/*
-		 * Scoped-lookup flags resolving ".." is not currently safe --
-		 * races can cause our parent to have moved outside of the root
-		 * and us to skip over it.
-		 */
-		if (unlikely(nd->flags & LOOKUP_DIRFD_SCOPE_FLAGS))
-			return -EXDEV;
 		if (!nd->root.mnt) {
 			error = set_root(nd);
 			if (error)
 				return error;
 		}
-		if (nd->flags & LOOKUP_RCU) {
-			return follow_dotdot_rcu(nd);
-		} else
-			return follow_dotdot(nd);
+		if (nd->flags & LOOKUP_RCU)
+			error = follow_dotdot_rcu(nd);
+		else
+			error = follow_dotdot(nd);
+		if (error)
+			return error;
+
+		if (unlikely(nd->flags & LOOKUP_DIRFD_SCOPE_FLAGS)) {
+			bool m_retry = read_seqretry(&mount_lock, nd->m_seq);
+			bool r_retry = read_seqretry(&rename_lock, nd->r_seq);
+
+			/*
+			 * If there was a racing rename or mount along our
+			 * path, then we can't be sure that ".." hasn't jumped
+			 * above nd->root (and so userspace should retry or use
+			 * some fallback).
+			 *
+			 * In future we could do a path_is_under() check here
+			 * instead, but there are O(n*m) performance
+			 * considerations with such a setup.
+			 */
+			if (unlikely(m_retry || r_retry))
+				return -EAGAIN;
+		}
 	}
 	return 0;
 }
@@ -2251,6 +2264,10 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 	nd->last_type = LAST_ROOT; /* if there are only slashes... */
 	nd->flags = flags | LOOKUP_JUMPED | LOOKUP_PARENT;
 	nd->depth = 0;
+
+	nd->m_seq = read_seqbegin(&mount_lock);
+	nd->r_seq = read_seqbegin(&rename_lock);
+
 	if (flags & LOOKUP_ROOT) {
 		struct dentry *root = nd->root.dentry;
 		struct inode *inode = root->d_inode;
@@ -2272,8 +2289,6 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 	nd->path.mnt = NULL;
 	nd->path.dentry = NULL;
 
-	nd->m_seq = read_seqbegin(&mount_lock);
-
 	/* LOOKUP_IN_ROOT treats absolute paths as being relative-to-dirfd. */
 	if (flags & LOOKUP_IN_ROOT)
 		while (*s == '/')
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
