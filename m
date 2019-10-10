Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9296D204E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 07:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mW/JZX7O54Dse66rZ8lg/eAT77tgSnW50R6YMdHPa0=; b=nXdSqudtOw8V9S
	PkUdPRwQaBHyNlNTIf0N6V8vcpFCl6eaykYplq9btAIHIJg+p1BYJq9X8wY+8iuHuX8OxznVpRnhA
	foZw8GdgK1rwYQ6l++YSgUV4wj5RmQhagXUzbyaZsN1vt8MF7bUoHtrhC8gvrB07mzWvvqpvnRSPN
	HxodQD6BbieMtssZ0HUAvaQo0KSHqLrnjBX3SQokWYUhsJf26/NHMPUU/wFjTyTnTAi/Wo7n/caBe
	PUAqxUZqdNlxy7mFGyq7yywI29qBkdXvk5L8CQAjAhTxthOWayrVAhsDX49K0NDLPUY+3XM28RfkG
	KTz8UpeSNy88/oO4YMaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIREE-0001Mj-RS; Thu, 10 Oct 2019 05:43:10 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIRDb-00018Z-4d
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 05:42:34 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 7A62BA1254;
 Thu, 10 Oct 2019 07:42:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id sEksGeNjkrpV; Thu, 10 Oct 2019 07:42:23 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v14 1/6] namei: O_BENEATH-style resolution restriction flags
Date: Thu, 10 Oct 2019 16:41:35 +1100
Message-Id: <20191010054140.8483-2-cyphar@cyphar.com>
In-Reply-To: <20191010054140.8483-1-cyphar@cyphar.com>
References: <20191010054140.8483-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_224231_509909_E73FFEC6 
X-CRM114-Status: GOOD (  25.39  )
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
The need for some sort of control over VFS's path resolution (to avoid
malicious paths resulting in inadvertent breakouts) has been a very
long-standing desire of many userspace applications throughout the
history of Unix. While some improvements have been made (such as
O_NOFOLLOW or AT_NO_AUTOMOUNT), most of the new APIs have involved
restricting the final component in a path's lookup -- completely
ignoring the rest of the path components.

Userspace programs have thus been forced to implement their own (and
usually subtly broken) methods of ensuring path components they don't
wish to resolve are detected. Aside from making it more complicated to
write such programs safely, there are some things which are effectively
impossible to safely handle correctly (for instance, magic-links cannot
reliably be differentiated from symlinks on filesystems that may contain
magic-links). It would be a massive improvement to provide these types
of resolution restriction features to userspace.

This is a refresh of Al's AT_NO_JUMPS patchset[1] (which was a variation
on David Drysdale's O_BENEATH patchset[2], which in turn was based on
the Capsicum project[3]). Input from Linus and Andy in the AT_NO_JUMPS
thread[4] determined most of the API changes made in this refresh.

/* Userspace API. */
These flags will be exposed to userspace through openat2(2).

/* Semantics. */
The following new LOOKUP flags are defined, and (in contrast to most
other LOOKUP flags, they apply to all components of path resolution as
opposed to only the final component).

  LOOKUP_NO_XDEV
    Disallow mount-point crossing (both *down* into one, or *up* from
    one). Both bind-mounts and cross-filesystem mounts are blocked by
    this flag. The naming is based on "find -xdev" as well as -EXDEV
    (though find(1) doesn't walk upwards, the semantics seem obvious).

  LOOKUP_NO_MAGICLINKS
    Disallows "magic-link" resolution ("symlinks" that are resolved
    through nd_jump_link()). This is important to provide explicitly,
    because magic-links can be used to trick privileged programs into
    bypassing normal path resolution restriction mechanisms (such as
    mount namespaces). Such programs likely want to permit ordinary
    symlink resolution, but don't wish to permit magic-links.

    It should be noted that prior to this, there was no way for
    userspace to unambiguously verify whether a symlink was a
    magic-link.

  LOOKUP_NO_SYMLINKS
    Disallows resolution through symlinks (includes magic-links).

  LOOKUP_BENEATH
    Disallow "escapes" from the starting point of the filesystem tree
    during resolution (you must stay "beneath" the starting point at all
    times). Currently this is done by disallowing ".." and absolute
    paths (either in the given path or found during symlink resolution)
    entirely, as well as all magic-link jumping.

    The wholesale banning of ".." is because it is currently not safe to
    allow ".." resolution (races can cause the path to be moved outside
    of the root -- this is conceptually similar to historical chroot(2)
    escape attacks). Future patches in this series will address this,
    and will re-enable ".." resolution once it is safe. With those
    patches, ".." resolution will only be allowed if it remains in the
    root throughout resolution (such as "a/../b" not
    "a/../../outside/b").

    The banning of magic-link jumping is done because it is not clear
    whether semantically they should be allowed -- while some
    magic-links are safe there are many that can cause escapes (and once
    a resolution is outside of the root, O_BENEATH will no longer detect
    it). Future patches may re-enable magic-link jumping when such jumps
    would remain inside the root.

The LOOKUP_NO_*LINK flags return -ELOOP if path resolution would
violates their requirement, while the others all return -EXDEV.

[1]: https://lore.kernel.org/lkml/20170429220414.GT29622@ZenIV.linux.org.uk/
[2]: https://lore.kernel.org/lkml/1415094884-18349-1-git-send-email-drysdale@google.com/
[3]: https://lore.kernel.org/lkml/1404124096-21445-1-git-send-email-drysdale@google.com/
[4]: https://lwn.net/Articles/723057/

Cc: Christian Brauner <christian@brauner.io>
Suggested-by: David Drysdale <drysdale@google.com>
Suggested-by: Al Viro <viro@zeniv.linux.org.uk>
Suggested-by: Andy Lutomirski <luto@kernel.org>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 fs/namei.c            | 135 +++++++++++++++++++++++++++++++++++-------
 include/linux/namei.h |  11 ++++
 2 files changed, 125 insertions(+), 21 deletions(-)

diff --git a/fs/namei.c b/fs/namei.c
index 671c3c1a3425..54fdbdfbeb94 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -504,6 +504,9 @@ struct nameidata {
 	struct filename	*name;
 	struct nameidata *saved;
 	struct inode	*link_inode;
+	struct {
+		bool same_mnt;
+	} last_magiclink;
 	unsigned	root_seq;
 	int		dfd;
 } __randomize_layout;
@@ -641,6 +644,14 @@ static bool legitimize_links(struct nameidata *nd)
 
 static bool legitimize_root(struct nameidata *nd)
 {
+	/*
+	 * For scoped-lookups (where nd->root has been zeroed), we need to
+	 * restart the whole lookup from scratch -- because set_root() is wrong
+	 * for these lookups (nd->dfd is the root, not the filesystem root).
+	 */
+	if (!nd->root.mnt && (nd->flags & LOOKUP_IS_SCOPED))
+		return false;
+	/* Nothing to do if nd->root is zero or is managed by the VFS user. */
 	if (!nd->root.mnt || (nd->flags & LOOKUP_ROOT))
 		return true;
 	nd->flags |= LOOKUP_ROOT_GRABBED;
@@ -776,7 +787,11 @@ static int complete_walk(struct nameidata *nd)
 	int status;
 
 	if (nd->flags & LOOKUP_RCU) {
-		if (!(nd->flags & LOOKUP_ROOT))
+		/*
+		 * We don't want to zero nd->root for scoped-lookups or
+		 * externally-managed nd->root.
+		 */
+		if (!(nd->flags & (LOOKUP_ROOT | LOOKUP_IS_SCOPED)))
 			nd->root.mnt = NULL;
 		if (unlikely(unlazy_walk(nd)))
 			return -ECHILD;
@@ -798,10 +813,18 @@ static int complete_walk(struct nameidata *nd)
 	return status;
 }
 
-static void set_root(struct nameidata *nd)
+static int set_root(struct nameidata *nd)
 {
 	struct fs_struct *fs = current->fs;
 
+	/*
+	 * Jumping to the real root in a scoped-lookup is a BUG in namei, but we
+	 * still have to ensure it doesn't happen because it will cause a breakout
+	 * from the dirfd.
+	 */
+	if (WARN_ON(nd->flags & LOOKUP_IS_SCOPED))
+		return -ENOTRECOVERABLE;
+
 	if (nd->flags & LOOKUP_RCU) {
 		unsigned seq;
 
@@ -814,6 +837,7 @@ static void set_root(struct nameidata *nd)
 		get_fs_root(fs, &nd->root);
 		nd->flags |= LOOKUP_ROOT_GRABBED;
 	}
+	return 0;
 }
 
 static void path_put_conditional(struct path *path, struct nameidata *nd)
@@ -837,6 +861,18 @@ static inline void path_to_nameidata(const struct path *path,
 
 static int nd_jump_root(struct nameidata *nd)
 {
+	if (unlikely(nd->flags & LOOKUP_BENEATH))
+		return -EXDEV;
+	if (unlikely(nd->flags & LOOKUP_NO_XDEV)) {
+		/* Absolute path arguments to path_init() are allowed. */
+		if (nd->path.mnt != NULL && nd->path.mnt != nd->root.mnt)
+			return -EXDEV;
+	}
+	if (!nd->root.mnt) {
+		int error = set_root(nd);
+		if (error)
+			return error;
+	}
 	if (nd->flags & LOOKUP_RCU) {
 		struct dentry *d;
 		nd->path = nd->root;
@@ -862,11 +898,13 @@ static int nd_jump_root(struct nameidata *nd)
 void nd_jump_link(struct path *path)
 {
 	struct nameidata *nd = current->nameidata;
+
+	nd->last_magiclink.same_mnt = (nd->path.mnt == path->mnt);
 	path_put(&nd->path);
 
 	nd->path = *path;
 	nd->inode = nd->path.dentry->d_inode;
-	nd->flags |= LOOKUP_JUMPED;
+	nd->flags |= LOOKUP_JUMPED | LOOKUP_MAGICLINK_JUMPED;
 }
 
 static inline void put_link(struct nameidata *nd)
@@ -1045,6 +1083,9 @@ const char *get_link(struct nameidata *nd)
 	int error;
 	const char *res;
 
+	if (unlikely(nd->flags & LOOKUP_NO_SYMLINKS))
+		return ERR_PTR(-ELOOP);
+
 	if (!(nd->flags & LOOKUP_RCU)) {
 		touch_atime(&last->link);
 		cond_resched();
@@ -1060,6 +1101,7 @@ const char *get_link(struct nameidata *nd)
 		return ERR_PTR(error);
 
 	nd->last_type = LAST_BIND;
+	nd->flags &= ~LOOKUP_MAGICLINK_JUMPED;
 	res = READ_ONCE(inode->i_link);
 	if (!res) {
 		const char * (*get)(struct dentry *, struct inode *,
@@ -1075,14 +1117,24 @@ const char *get_link(struct nameidata *nd)
 		} else {
 			res = get(dentry, inode, &last->done);
 		}
+		if (nd->flags & LOOKUP_MAGICLINK_JUMPED) {
+			if (unlikely(nd->flags & LOOKUP_NO_MAGICLINKS))
+				return ERR_PTR(-ELOOP);
+			if (unlikely(nd->flags & LOOKUP_NO_XDEV)) {
+				if (!nd->last_magiclink.same_mnt)
+					return ERR_PTR(-EXDEV);
+			}
+			/* Not currently safe for scoped-lookups. */
+			if (unlikely(nd->flags & LOOKUP_IS_SCOPED))
+				return ERR_PTR(-EXDEV);
+		}
 		if (IS_ERR_OR_NULL(res))
 			return res;
 	}
 	if (*res == '/') {
-		if (!nd->root.mnt)
-			set_root(nd);
-		if (unlikely(nd_jump_root(nd)))
-			return ERR_PTR(-ECHILD);
+		error = nd_jump_root(nd);
+		if (unlikely(error))
+			return ERR_PTR(error);
 		while (unlikely(*++res == '/'))
 			;
 	}
@@ -1263,12 +1315,16 @@ static int follow_managed(struct path *path, struct nameidata *nd)
 		break;
 	}
 
-	if (need_mntput && path->mnt == mnt)
-		mntput(path->mnt);
+	if (need_mntput) {
+		if (path->mnt == mnt)
+			mntput(path->mnt);
+		if (unlikely(nd->flags & LOOKUP_NO_XDEV))
+			ret = -EXDEV;
+		else
+			nd->flags |= LOOKUP_JUMPED;
+	}
 	if (ret == -EISDIR || !ret)
 		ret = 1;
-	if (need_mntput)
-		nd->flags |= LOOKUP_JUMPED;
 	if (unlikely(ret < 0))
 		path_put_conditional(path, nd);
 	return ret;
@@ -1325,6 +1381,8 @@ static bool __follow_mount_rcu(struct nameidata *nd, struct path *path,
 		mounted = __lookup_mnt(path->mnt, path->dentry);
 		if (!mounted)
 			break;
+		if (unlikely(nd->flags & LOOKUP_NO_XDEV))
+			return false;
 		path->mnt = &mounted->mnt;
 		path->dentry = mounted->mnt.mnt_root;
 		nd->flags |= LOOKUP_JUMPED;
@@ -1345,8 +1403,11 @@ static int follow_dotdot_rcu(struct nameidata *nd)
 	struct inode *inode = nd->inode;
 
 	while (1) {
-		if (path_equal(&nd->path, &nd->root))
+		if (path_equal(&nd->path, &nd->root)) {
+			if (unlikely(nd->flags & LOOKUP_BENEATH))
+				return -EXDEV;
 			break;
+		}
 		if (nd->path.dentry != nd->path.mnt->mnt_root) {
 			struct dentry *old = nd->path.dentry;
 			struct dentry *parent = old->d_parent;
@@ -1371,6 +1432,8 @@ static int follow_dotdot_rcu(struct nameidata *nd)
 				return -ECHILD;
 			if (&mparent->mnt == nd->path.mnt)
 				break;
+			if (unlikely(nd->flags & LOOKUP_NO_XDEV))
+				return -EXDEV;
 			/* we know that mountpoint was pinned */
 			nd->path.dentry = mountpoint;
 			nd->path.mnt = &mparent->mnt;
@@ -1385,6 +1448,8 @@ static int follow_dotdot_rcu(struct nameidata *nd)
 			return -ECHILD;
 		if (!mounted)
 			break;
+		if (unlikely(nd->flags & LOOKUP_NO_XDEV))
+			return -EXDEV;
 		nd->path.mnt = &mounted->mnt;
 		nd->path.dentry = mounted->mnt.mnt_root;
 		inode = nd->path.dentry->d_inode;
@@ -1473,8 +1538,11 @@ static int path_parent_directory(struct path *path)
 static int follow_dotdot(struct nameidata *nd)
 {
 	while(1) {
-		if (path_equal(&nd->path, &nd->root))
+		if (path_equal(&nd->path, &nd->root)) {
+			if (unlikely(nd->flags & LOOKUP_BENEATH))
+				return -EXDEV;
 			break;
+		}
 		if (nd->path.dentry != nd->path.mnt->mnt_root) {
 			int ret = path_parent_directory(&nd->path);
 			if (ret)
@@ -1483,6 +1551,8 @@ static int follow_dotdot(struct nameidata *nd)
 		}
 		if (!follow_up(&nd->path))
 			break;
+		if (unlikely(nd->flags & LOOKUP_NO_XDEV))
+			return -EXDEV;
 	}
 	follow_mount(&nd->path);
 	nd->inode = nd->path.dentry->d_inode;
@@ -1697,8 +1767,20 @@ static inline int may_lookup(struct nameidata *nd)
 static inline int handle_dots(struct nameidata *nd, int type)
 {
 	if (type == LAST_DOTDOT) {
-		if (!nd->root.mnt)
-			set_root(nd);
+		int error = 0;
+
+		/*
+		 * Scoped-lookup flags resolving ".." is not currently safe --
+		 * races can cause our parent to have moved outside of the root
+		 * and us to skip over it.
+		 */
+		if (unlikely(nd->flags & LOOKUP_IS_SCOPED))
+			return -EXDEV;
+		if (!nd->root.mnt) {
+			error = set_root(nd);
+			if (error)
+				return error;
+		}
 		if (nd->flags & LOOKUP_RCU) {
 			return follow_dotdot_rcu(nd);
 		} else
@@ -2161,6 +2243,7 @@ static int link_path_walk(const char *name, struct nameidata *nd)
 /* must be paired with terminate_walk() */
 static const char *path_init(struct nameidata *nd, unsigned flags)
 {
+	int error;
 	const char *s = nd->name->name;
 
 	if (!*s)
@@ -2193,11 +2276,12 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 	nd->path.dentry = NULL;
 
 	nd->m_seq = read_seqbegin(&mount_lock);
+
+	/* Figure out the starting path and root (if needed). */
 	if (*s == '/') {
-		set_root(nd);
-		if (likely(!nd_jump_root(nd)))
-			return s;
-		return ERR_PTR(-ECHILD);
+		error = nd_jump_root(nd);
+		if (unlikely(error))
+			return ERR_PTR(error);
 	} else if (nd->dfd == AT_FDCWD) {
 		if (flags & LOOKUP_RCU) {
 			struct fs_struct *fs = current->fs;
@@ -2213,7 +2297,6 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 			get_fs_pwd(current->fs, &nd->path);
 			nd->inode = nd->path.dentry->d_inode;
 		}
-		return s;
 	} else {
 		/* Caller must check execute permissions on the starting path component */
 		struct fd f = fdget_raw(nd->dfd);
@@ -2238,8 +2321,18 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 			nd->inode = nd->path.dentry->d_inode;
 		}
 		fdput(f);
-		return s;
 	}
+	/* For scoped-lookups we need to set the root to the dirfd as well. */
+	if (flags & LOOKUP_IS_SCOPED) {
+		nd->root = nd->path;
+		if (flags & LOOKUP_RCU) {
+			nd->root_seq = nd->seq;
+		} else {
+			path_get(&nd->root);
+			nd->flags |= LOOKUP_ROOT_GRABBED;
+		}
+	}
+	return s;
 }
 
 static const char *trailing_symlink(struct nameidata *nd)
diff --git a/include/linux/namei.h b/include/linux/namei.h
index 397a08ade6a2..35a1bf074ff1 100644
--- a/include/linux/namei.h
+++ b/include/linux/namei.h
@@ -2,6 +2,7 @@
 #ifndef _LINUX_NAMEI_H
 #define _LINUX_NAMEI_H
 
+#include <linux/fs.h>
 #include <linux/kernel.h>
 #include <linux/path.h>
 #include <linux/fcntl.h>
@@ -38,6 +39,16 @@ enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
 #define LOOKUP_JUMPED		0x1000
 #define LOOKUP_ROOT		0x2000
 #define LOOKUP_ROOT_GRABBED	0x0008
+#define LOOKUP_MAGICLINK_JUMPED	0x10000
+
+/* Scoping flags for lookup. */
+#define LOOKUP_BENEATH		0x020000 /* No escaping from starting point. */
+#define LOOKUP_NO_XDEV		0x040000 /* No mountpoint crossing. */
+#define LOOKUP_NO_MAGICLINKS	0x080000 /* No /proc/$pid/fd/ "symlink" crossing. */
+#define LOOKUP_NO_SYMLINKS	0x100000 /* No symlink crossing *at all*.
+					    Implies LOOKUP_NO_MAGICLINKS. */
+/* LOOKUP_* flags which do scope-related checks based on the dirfd. */
+#define LOOKUP_IS_SCOPED LOOKUP_BENEATH
 
 extern int path_pts(struct path *path);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
