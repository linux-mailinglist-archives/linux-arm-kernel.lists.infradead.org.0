Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E6F6E948
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 18:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dlbNarQQ1G5xuf90vXZt1QYyGwUM+22Yv1LGaDHlVoA=; b=aJabzhEBZYKgsX
	OXYUi8haqBPMA+2ZAAwAtjG3Mch90XZ0cmJUC3RBJ0xM0WVdE9cJmKAsTv9HLRGHwlHXiMwOB8l0M
	wdKuTgO0EzCuyR/eGlt4t6opuHM0Jk6b/h6cemILsx0Sb4glYHRIcPxCPf9k9RxWWSO4nBSkRD9jP
	hvduZnA8NUhoCcrmkxWLEot7KbsGOMblb+dgiC+Y3m4Q+4qbIOZeCMz1tSXcnF3vloJudPeVcfTG1
	8VJ0ZcP5nqvxzHrHkaERcUZs/mAMeiKoIIfEG4YuJhL+rG7uQfEfC0OctdOP34Sl0YfcjVkfRVF4W
	GNVWkSyli6kOIVEOWcOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoW0W-0000n2-Mq; Fri, 19 Jul 2019 16:45:20 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoVzS-0008Qa-CZ
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 16:44:17 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 866C5A0187;
 Fri, 19 Jul 2019 18:44:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id mNRFI6iRIvFB; Fri, 19 Jul 2019 18:44:07 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Subject: [PATCH v10 4/9] namei: O_BENEATH-style path resolution flags
Date: Sat, 20 Jul 2019 02:42:20 +1000
Message-Id: <20190719164225.27083-5-cyphar@cyphar.com>
In-Reply-To: <20190719164225.27083-1-cyphar@cyphar.com>
References: <20190719164225.27083-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_094414_927922_CB579FDC 
X-CRM114-Status: GOOD (  26.17  )
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
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 linux-kernel@vger.kernel.org, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the following flags to allow various restrictions on path resolution
(these affect the *entire* resolution, rather than just the final path
component -- as is the case with LOOKUP_FOLLOW).

The primary justification for these flags is to allow for programs to be
far more strict about how they want path resolution to handle symlinks,
mountpoint crossings, and paths that escape the dirfd (through an
absolute path or ".." shenanigans).

This is of particular concern to container runtimes that want to be very
careful about malicious root filesystems that a container's init might
have screwed around with (and there is no real way to protect against
this in userspace if you consider potential races against a malicious
container's init). More classical applications (which have their own
potentially buggy userspace path sanitisation code) include web servers,
archive extraction tools, network file servers, and so on.

These flags are exposed to userspace through openat2(2) in a later
patchset.

* LOOKUP_NO_XDEV: Disallow mount-point crossing (both *down* into one,
  or *up* from one). Both bind-mounts and cross-filesystem mounts are
  blocked by this flag. The naming is based on "find -xdev" as well as
  -EXDEV (though find(1) doesn't walk upwards, the semantics seem
  obvious).

* LOOKUP_NO_MAGICLINKS: Disallows ->get_link "symlink" (or rather,
  magic-link) jumping. This is a very specific restriction, and it
  exists because /proc/$pid/fd/... "symlinks" allow for access outside
  nd->root and pose risk to container runtimes that don't want to be
  tricked into accessing a host path (but do want to allow
  no-funny-business symlink resolution).

* LOOKUP_NO_SYMLINKS: Disallows resolution through symlinks of any kind
  (including magic-links).

* LOOKUP_BENEATH: Disallow "escapes" from the starting point of the
  filesystem tree during resolution (you must stay "beneath" the
  starting point at all times). Currently this is done by disallowing
  ".." and absolute paths (either in the given path or found during
  symlink resolution) entirely, as well as all magic-link jumping.

  The wholesale banning of ".." is because it is currently not safe to
  allow ".." resolution (races can cause the path to be moved outside of
  the root -- this is conceptually similar to historical chroot(2)
  escape attacks). Future patches in this series will address this, and
  will re-enable ".." resolution once it is safe. With those patches,
  ".." resolution will only be allowed if it remains in the root
  throughout resolution (such as "a/../b" not "a/../../outside/b").

  The banning of magic-link jumping is done because it is not clear
  whether semantically they should be allowed -- while some magic-links
  are safe there are many that can cause escapes (and once a
  resolution is outside of the root, O_BENEATH will no longer detect
  it). Future patches may re-enable magic-link jumping when such jumps
  would remain inside the root.

The LOOKUP_NO_*LINK flags return -ELOOP if path resolution would
violates their requirement, while the others all return -EXDEV.

This is a refresh of Al's AT_NO_JUMPS patchset[1] (which was a variation
on David Drysdale's O_BENEATH patchset[2], which in turn was based on
the Capsicum project[3]). Input from Linus and Andy in the AT_NO_JUMPS
thread[4] determined most of the API changes made in this refresh.

[1]: https://lwn.net/Articles/721443/
[2]: https://lwn.net/Articles/619151/
[3]: https://lwn.net/Articles/603929/
[4]: https://lwn.net/Articles/723057/

Cc: Christian Brauner <christian@brauner.io>
Suggested-by: David Drysdale <drysdale@google.com>
Suggested-by: Al Viro <viro@zeniv.linux.org.uk>
Suggested-by: Andy Lutomirski <luto@kernel.org>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 fs/namei.c            | 85 ++++++++++++++++++++++++++++++++++++-------
 include/linux/namei.h |  7 ++++
 2 files changed, 78 insertions(+), 14 deletions(-)

diff --git a/fs/namei.c b/fs/namei.c
index 165861d621c2..9df4aa35aedc 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -674,7 +674,11 @@ static int unlazy_walk(struct nameidata *nd)
 		goto out2;
 	if (unlikely(!legitimize_path(nd, &nd->path, nd->seq)))
 		goto out1;
-	if (nd->root.mnt && !(nd->flags & LOOKUP_ROOT)) {
+	if (!nd->root.mnt) {
+		/* Restart from path_init() if nd->root was cleared. */
+		if (nd->flags & LOOKUP_BENEATH)
+			goto out;
+	} else if (!(nd->flags & LOOKUP_ROOT)) {
 		if (unlikely(!legitimize_path(nd, &nd->root, nd->root_seq)))
 			goto out;
 	}
@@ -843,6 +847,13 @@ static inline void path_to_nameidata(const struct path *path,
 
 static int nd_jump_root(struct nameidata *nd)
 {
+	if (unlikely(nd->flags & LOOKUP_BENEATH))
+		return -EXDEV;
+	if (unlikely(nd->flags & LOOKUP_NO_XDEV)) {
+		/* Absolute path arguments to path_init() are allowed. */
+		if (nd->path.mnt != NULL && nd->path.mnt != nd->root.mnt)
+			return -EXDEV;
+	}
 	if (nd->flags & LOOKUP_RCU) {
 		struct dentry *d;
 		nd->path = nd->root;
@@ -1051,6 +1062,9 @@ const char *get_link(struct nameidata *nd)
 	int error;
 	const char *res;
 
+	if (unlikely(nd->flags & LOOKUP_NO_SYMLINKS))
+		return ERR_PTR(-ELOOP);
+
 	if (!(nd->flags & LOOKUP_RCU)) {
 		touch_atime(&last->link);
 		cond_resched();
@@ -1082,14 +1096,22 @@ const char *get_link(struct nameidata *nd)
 		} else {
 			res = get(dentry, inode, &last->done);
 		}
+		if (nd->flags & LOOKUP_MAGICLINK_JUMPED) {
+			if (unlikely(nd->flags & LOOKUP_NO_MAGICLINKS))
+				return ERR_PTR(-ELOOP);
+			/* Not currently safe. */
+			if (unlikely(nd->flags & LOOKUP_BENEATH))
+				return ERR_PTR(-EXDEV);
+		}
 		if (IS_ERR_OR_NULL(res))
 			return res;
 	}
 	if (*res == '/') {
 		if (!nd->root.mnt)
 			set_root(nd);
-		if (unlikely(nd_jump_root(nd)))
-			return ERR_PTR(-ECHILD);
+		error = nd_jump_root(nd);
+		if (unlikely(error))
+			return ERR_PTR(error);
 		while (unlikely(*++res == '/'))
 			;
 	}
@@ -1270,12 +1292,16 @@ static int follow_managed(struct path *path, struct nameidata *nd)
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
@@ -1332,6 +1358,8 @@ static bool __follow_mount_rcu(struct nameidata *nd, struct path *path,
 		mounted = __lookup_mnt(path->mnt, path->dentry);
 		if (!mounted)
 			break;
+		if (unlikely(nd->flags & LOOKUP_NO_XDEV))
+			return false;
 		path->mnt = &mounted->mnt;
 		path->dentry = mounted->mnt.mnt_root;
 		nd->flags |= LOOKUP_JUMPED;
@@ -1352,8 +1380,11 @@ static int follow_dotdot_rcu(struct nameidata *nd)
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
@@ -1378,6 +1409,8 @@ static int follow_dotdot_rcu(struct nameidata *nd)
 				return -ECHILD;
 			if (&mparent->mnt == nd->path.mnt)
 				break;
+			if (unlikely(nd->flags & LOOKUP_NO_XDEV))
+				return -EXDEV;
 			/* we know that mountpoint was pinned */
 			nd->path.dentry = mountpoint;
 			nd->path.mnt = &mparent->mnt;
@@ -1392,6 +1425,8 @@ static int follow_dotdot_rcu(struct nameidata *nd)
 			return -ECHILD;
 		if (!mounted)
 			break;
+		if (unlikely(nd->flags & LOOKUP_NO_XDEV))
+			return -EXDEV;
 		nd->path.mnt = &mounted->mnt;
 		nd->path.dentry = mounted->mnt.mnt_root;
 		inode = nd->path.dentry->d_inode;
@@ -1480,8 +1515,11 @@ static int path_parent_directory(struct path *path)
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
@@ -1490,6 +1528,8 @@ static int follow_dotdot(struct nameidata *nd)
 		}
 		if (!follow_up(&nd->path))
 			break;
+		if (unlikely(nd->flags & LOOKUP_NO_XDEV))
+			return -EXDEV;
 	}
 	follow_mount(&nd->path);
 	nd->inode = nd->path.dentry->d_inode;
@@ -1704,6 +1744,13 @@ static inline int may_lookup(struct nameidata *nd)
 static inline int handle_dots(struct nameidata *nd, int type)
 {
 	if (type == LAST_DOTDOT) {
+		/*
+		 * LOOKUP_BENEATH resolving ".." is not currently safe -- races can
+		 * cause our parent to have moved outside of the root and us to skip
+		 * over it.
+		 */
+		if (unlikely(nd->flags & LOOKUP_BENEATH))
+			return -EXDEV;
 		if (!nd->root.mnt)
 			set_root(nd);
 		if (nd->flags & LOOKUP_RCU) {
@@ -2170,6 +2217,7 @@ static int link_path_walk(const char *name, struct nameidata *nd)
 /* must be paired with terminate_walk() */
 static const char *path_init(struct nameidata *nd, unsigned flags)
 {
+	int error;
 	const char *s = nd->name->name;
 
 	if (!*s)
@@ -2202,11 +2250,13 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 	nd->path.dentry = NULL;
 
 	nd->m_seq = read_seqbegin(&mount_lock);
+
+	/* Figure out the starting path and root (if needed). */
 	if (*s == '/') {
 		set_root(nd);
-		if (likely(!nd_jump_root(nd)))
-			return s;
-		return ERR_PTR(-ECHILD);
+		error = nd_jump_root(nd);
+		if (unlikely(error))
+			return ERR_PTR(error);
 	} else if (nd->dfd == AT_FDCWD) {
 		if (flags & LOOKUP_RCU) {
 			struct fs_struct *fs = current->fs;
@@ -2222,7 +2272,6 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 			get_fs_pwd(current->fs, &nd->path);
 			nd->inode = nd->path.dentry->d_inode;
 		}
-		return s;
 	} else {
 		/* Caller must check execute permissions on the starting path component */
 		struct fd f = fdget_raw(nd->dfd);
@@ -2247,8 +2296,16 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 			nd->inode = nd->path.dentry->d_inode;
 		}
 		fdput(f);
-		return s;
 	}
+	/* For scoped-lookups we need to set the root to the dirfd as well. */
+	if (flags & LOOKUP_BENEATH) {
+		nd->root = nd->path;
+		if (flags & LOOKUP_RCU)
+			nd->root_seq = nd->seq;
+		else
+			path_get(&nd->root);
+	}
+	return s;
 }
 
 static const char *trailing_symlink(struct nameidata *nd)
diff --git a/include/linux/namei.h b/include/linux/namei.h
index bd6d3eb7764d..be407415c28a 100644
--- a/include/linux/namei.h
+++ b/include/linux/namei.h
@@ -51,6 +51,13 @@ enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
 #define LOOKUP_DOWN		0x8000
 #define LOOKUP_MAGICLINK_JUMPED	0x10000
 
+/* Scoping flags for lookup. */
+#define LOOKUP_BENEATH		0x020000 /* No escaping from starting point. */
+#define LOOKUP_NO_XDEV		0x040000 /* No mountpoint crossing. */
+#define LOOKUP_NO_MAGICLINKS	0x080000 /* No /proc/$pid/fd/ "symlink" crossing. */
+#define LOOKUP_NO_SYMLINKS	0x100000 /* No symlink crossing *at all*.
+					    Implies LOOKUP_NO_MAGICLINKS. */
+
 extern int path_pts(struct path *path);
 
 extern int user_path_at_empty(int, const char __user *, unsigned, struct path *, int *empty);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
