Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB8477CB4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 03:04:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GX4WLWRYO4Hu5YOm2czXn7PihBE7scif3Qv1Y7NuQGo=; b=nJX4e/fmoGa8nL
	W2SEihNXe5Axdust2pkRoD4k18io1FZSeh4GkYS1pTtHJUUaLEOylTjkwBg92MMzmmZpvLzcQpkYX
	Y+wQMCCwFzdoItRzOW1Z5R7jnAL9ljQwvnoYYSfcEg9pYcO25UlROybIEgmxH1BwCM7E18ifM5XoN
	kRcMaNTLwaObpdN3M7nCGLuCp/YYOFQOAhLPxBu/AsPusoSYOWtfzG0i0bodwso27eV35+82l3vTd
	4SBaFVlpNG2UK3TBrP7eFGKt2QhBvJSKCpdv5WFtzlLLLtIlOnKXiVCG/pzrLfr19i2kSNHyBaPar
	OBYWi8EAjcdKUfm6CMfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrXbm-0006iX-8V; Sun, 28 Jul 2019 01:04:18 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrXbV-0006hm-2o
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 01:04:03 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id DDCA65161A;
 Sun, 28 Jul 2019 03:03:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id OluY9GV7_R0w; Sun, 28 Jul 2019 03:03:46 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Subject: [PATCH v11 1/8] namei: obey trailing magic-link DAC permissions
Date: Sun, 28 Jul 2019 11:02:00 +1000
Message-Id: <20190728010207.9781-2-cyphar@cyphar.com>
In-Reply-To: <20190728010207.9781-1-cyphar@cyphar.com>
References: <20190728010207.9781-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_180401_425696_865961F1 
X-CRM114-Status: GOOD (  30.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
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

The ability for userspace to "re-open" file descriptors through
/proc/self/fd has been a very useful tool for all sorts of usecases
(container runtimes are one common example). However, the current
interface for doing this has resulted in some pretty subtle security
holes. Userspace can re-open a file descriptor with more permissions
than the original, which can result in cases such as /proc/$pid/exe
being re-opened O_RDWR at a later date even though (by definition)
/proc/$pid/exe cannot be opened for writing. When combined with O_PATH
the results can get even more confusing.

We cannot block this outright. Aside from userspace already depending on
it, it's a useful feature which can actually increase the security of
userspace. For instance, LXC keeps an O_PATH of the container's
/dev/pts/ptmx that gets re-opened to create new ptys and then uses
TIOCGPTPEER to get the slave end. This allows for pty allocation without
resolving paths inside an (untrusted) container's rootfs. There isn't a
trivial way of doing this that is as straight-forward and safe as O_PATH
re-opening.

Instead we have to restrict it in such a way that it doesn't break
(good) users but does block potential attackers. The solution applied in
this patch is to restrict *re-opening* (not resolution through)
magic-links by requiring that mode of the link be obeyed. Normal
symlinks have modes of a+rwx but magic-links have other modes. These
magic-link modes were historically ignored during path resolution, but
they've now been re-purposed for more useful ends.

It is also necessary to define semantics for the mode of an O_PATH
descriptor, since re-opening a magic-link through an O_PATH needs to be
just as restricted as the corresponding magic-link -- otherwise the
above protection can be bypassed. There are two distinct cases:

 1. The target is a regular file (not a magic-link). Userspace depends
    on being able to re-open the O_PATH of a regular file, so we must
    define the mode to be a+rwx.

 2. The target is a magic-link. In this case, we simply copy the mode of
    the magic-link. This results in an O_PATH of a magic-link
    effectively acting as a no-op in terms of how much re-opening
    privileges a process has.

CAP_DAC_OVERRIDE can be used to override all of these restrictions, but
we only permit &init_userns's capabilities to affect these semantics.
The reason for this is that there isn't a clear way to track what
user_ns is the original owner of a given O_PATH chain -- thus an
unprivileged user could create a new userns and O_PATH the file
descriptor, owning it. All signs would indicate that the user really
does have CAP_DAC_OVERRIDE over the new descriptor and the protection
would be bypassed. We thus opt for the more conservative approach.

I have run this patch on several machines for several days. So far, the
only processes which have hit this case ("loadkeys" and "kbd_mode" from
the kbd package[1]) gracefully handle the permission error and do not
cause any user-visible problems. In order to give users a heads-up, a
warning is output to dmesg whenever may_open_magiclink() refuses access.

[1]: http://git.altlinux.org/people/legion/packages/kbd.git

Suggested-by: Andy Lutomirski <luto@kernel.org>
Suggested-by: Christian Brauner <christian@brauner.io>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 Documentation/filesystems/path-lookup.rst |  12 +--
 fs/internal.h                             |   1 +
 fs/namei.c                                | 105 +++++++++++++++++++---
 fs/open.c                                 |   3 +-
 fs/proc/fd.c                              |  23 ++++-
 include/linux/fs.h                        |   4 +
 include/linux/namei.h                     |   1 +
 7 files changed, 130 insertions(+), 19 deletions(-)

diff --git a/Documentation/filesystems/path-lookup.rst b/Documentation/filesystems/path-lookup.rst
index 434a07b0002b..a57d78ec8bee 100644
--- a/Documentation/filesystems/path-lookup.rst
+++ b/Documentation/filesystems/path-lookup.rst
@@ -1310,12 +1310,14 @@ longer needed.
 ``LOOKUP_JUMPED`` means that the current dentry was chosen not because
 it had the right name but for some other reason.  This happens when
 following "``..``", following a symlink to ``/``, crossing a mount point
-or accessing a "``/proc/$PID/fd/$FD``" symlink.  In this case the
-filesystem has not been asked to revalidate the name (with
-``d_revalidate()``).  In such cases the inode may still need to be
-revalidated, so ``d_op->d_weak_revalidate()`` is called if
+or accessing a "``/proc/$PID/fd/$FD``" symlink (also known as a "magic
+link"). In this case the filesystem has not been asked to revalidate the
+name (with ``d_revalidate()``).  In such cases the inode may still need
+to be revalidated, so ``d_op->d_weak_revalidate()`` is called if
 ``LOOKUP_JUMPED`` is set when the look completes - which may be at the
-final component or, when creating, unlinking, or renaming, at the penultimate component.
+final component or, when creating, unlinking, or renaming, at the
+penultimate component. ``LOOKUP_MAGICLINK_JUMPED`` is set alongside
+``LOOKUP_JUMPED`` if a magic-link was traversed.
 
 Final-component flags
 ~~~~~~~~~~~~~~~~~~~~~
diff --git a/fs/internal.h b/fs/internal.h
index 315fcd8d237c..f48449a43626 100644
--- a/fs/internal.h
+++ b/fs/internal.h
@@ -119,6 +119,7 @@ struct open_flags {
 	int acc_mode;
 	int intent;
 	int lookup_flags;
+	fmode_t opath_mask;
 };
 extern struct file *do_filp_open(int dfd, struct filename *pathname,
 		const struct open_flags *op);
diff --git a/fs/namei.c b/fs/namei.c
index 209c51a5226c..54d57dad0f91 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -872,7 +872,7 @@ void nd_jump_link(struct path *path)
 
 	nd->path = *path;
 	nd->inode = nd->path.dentry->d_inode;
-	nd->flags |= LOOKUP_JUMPED;
+	nd->flags |= LOOKUP_JUMPED | LOOKUP_MAGICLINK_JUMPED;
 }
 
 static inline void put_link(struct nameidata *nd)
@@ -1066,6 +1066,7 @@ const char *get_link(struct nameidata *nd)
 		return ERR_PTR(error);
 
 	nd->last_type = LAST_BIND;
+	nd->flags &= ~LOOKUP_MAGICLINK_JUMPED;
 	res = READ_ONCE(inode->i_link);
 	if (!res) {
 		const char * (*get)(struct dentry *, struct inode *,
@@ -3501,16 +3502,73 @@ static int do_tmpfile(struct nameidata *nd, unsigned flags,
 	return error;
 }
 
-static int do_o_path(struct nameidata *nd, unsigned flags, struct file *file)
+/**
+ * may_reopen_magiclink - Check permissions for opening a trailing magic-link
+ * @upgrade_mask: the upgrade-mask of the magic-link
+ * @acc_mode: ACC_MODE which the user is attempting
+ *
+ * We block magic-link re-opening if the @upgrade_mask is more strict than the
+ * @acc_mode being requested, unless the user is capable(CAP_DAC_OVERRIDE).
+ *
+ * Returns 0 if successful, -EACCES on error.
+ */
+static int may_open_magiclink(fmode_t upgrade_mask, int acc_mode)
 {
-	struct path path;
-	int error = path_lookupat(nd, flags, &path);
-	if (!error) {
-		audit_inode(nd->name, path.dentry, 0);
-		error = vfs_open(&path, file);
-		path_put(&path);
-	}
-	return error;
+	/*
+	 * We only allow for init_userns to be able to override magic-links.
+	 * This is done to avoid cases where an unprivileged userns could take
+	 * an O_PATH of the fd, resulting in it being very unclear whether
+	 * CAP_DAC_OVERRIDE should work on the new O_PATH fd (given that it
+	 * pipes through to the underlying file).
+	 */
+	if (capable(CAP_DAC_OVERRIDE))
+		return 0;
+
+	if ((acc_mode & MAY_READ) &&
+	    !(upgrade_mask & (FMODE_READ | FMODE_PATH_READ)))
+		goto err;
+	if ((acc_mode & MAY_WRITE) &&
+	    !(upgrade_mask & (FMODE_WRITE | FMODE_PATH_WRITE)))
+		goto err;
+
+	return 0;
+
+err:
+	pr_warn_ratelimited("%s[%d]: magic-link re-open blocked ('%s%s%s' requested with an upgrade-mask of '%s%s%s%s')",
+		current->comm, task_pid_nr(current),
+		(acc_mode & MAY_READ) ? "r" : "",
+		(acc_mode & MAY_WRITE) ? "w" : "",
+		(acc_mode & MAY_EXEC) ? "x" : "",
+		(upgrade_mask & FMODE_READ) ? "r" : "",
+		(upgrade_mask & FMODE_PATH_READ) ? "R" : "",
+		(upgrade_mask & FMODE_WRITE) ? "w" : "",
+		(upgrade_mask & FMODE_PATH_WRITE) ? "W" : "");
+	return -EACCES;
+}
+
+static int trailing_magiclink(struct nameidata *nd, int acc_mode,
+			      fmode_t *opath_mask)
+{
+	struct inode *inode = nd->link_inode;
+	fmode_t upgrade_mask = 0;
+
+	/* Was the trailing_symlink() a magic-link? */
+	if (!(nd->flags & LOOKUP_MAGICLINK_JUMPED))
+		return 0;
+
+	/*
+	 * Figure out the upgrade-mask of the link_inode. Since these aren't
+	 * strictly POSIX semantics we don't do an acl_permission_check() here,
+	 * so we only care that at least one bit is set for each upgrade-mode.
+	 */
+	if (inode->i_mode & S_IRUGO)
+		upgrade_mask |= FMODE_PATH_READ;
+	if (inode->i_mode & S_IWUGO)
+		upgrade_mask |= FMODE_PATH_WRITE;
+	/* Restrict the O_PATH upgrade-mask of the caller. */
+	if (opath_mask)
+		*opath_mask &= upgrade_mask;
+	return may_open_magiclink(upgrade_mask, acc_mode);
 }
 
 static struct file *path_openat(struct nameidata *nd,
@@ -3526,13 +3584,38 @@ static struct file *path_openat(struct nameidata *nd,
 	if (unlikely(file->f_flags & __O_TMPFILE)) {
 		error = do_tmpfile(nd, flags, op, file);
 	} else if (unlikely(file->f_flags & O_PATH)) {
-		error = do_o_path(nd, flags, file);
+		/* Inlined path_lookupat() with a trailing_magiclink() check. */
+		fmode_t opath_mask = op->opath_mask;
+		const char *s = path_init(nd, flags);
+
+		while (!(error = link_path_walk(s, nd))
+			&& ((error = lookup_last(nd)) > 0)) {
+			s = trailing_symlink(nd);
+			error = trailing_magiclink(nd, op->acc_mode, &opath_mask);
+			if (error)
+				s = ERR_PTR(error);
+		}
+		if (!error)
+			error = complete_walk(nd);
+
+		if (!error && nd->flags & LOOKUP_DIRECTORY)
+			if (!d_can_lookup(nd->path.dentry))
+				error = -ENOTDIR;
+		if (!error) {
+			audit_inode(nd->name, nd->path.dentry, 0);
+			error = vfs_open(&nd->path, file);
+			file->f_mode |= opath_mask;
+		}
+		terminate_walk(nd);
 	} else {
 		const char *s = path_init(nd, flags);
 		while (!(error = link_path_walk(s, nd)) &&
 			(error = do_last(nd, file, op)) > 0) {
 			nd->flags &= ~(LOOKUP_OPEN|LOOKUP_CREATE|LOOKUP_EXCL);
 			s = trailing_symlink(nd);
+			error = trailing_magiclink(nd, op->acc_mode, NULL);
+			if (error)
+				s = ERR_PTR(error);
 		}
 		terminate_walk(nd);
 	}
diff --git a/fs/open.c b/fs/open.c
index b5b80469b93d..ab20eae39df7 100644
--- a/fs/open.c
+++ b/fs/open.c
@@ -982,8 +982,9 @@ static inline int build_open_flags(int flags, umode_t mode, struct open_flags *o
 		acc_mode |= MAY_APPEND;
 
 	op->acc_mode = acc_mode;
-
 	op->intent = flags & O_PATH ? 0 : LOOKUP_OPEN;
+	/* For O_PATH backwards-compatibility we default to an all-set mask. */
+	op->opath_mask = FMODE_PATH_READ | FMODE_PATH_WRITE;
 
 	if (flags & O_CREAT) {
 		op->intent |= LOOKUP_CREATE;
diff --git a/fs/proc/fd.c b/fs/proc/fd.c
index 81882a13212d..9b7d8becb002 100644
--- a/fs/proc/fd.c
+++ b/fs/proc/fd.c
@@ -104,11 +104,30 @@ static void tid_fd_update_inode(struct task_struct *task, struct inode *inode,
 	task_dump_owner(task, 0, &inode->i_uid, &inode->i_gid);
 
 	if (S_ISLNK(inode->i_mode)) {
+		/*
+		 * Always set +x (depending on the fmode type), since there
+		 * currently aren't FMODE_PATH_EXEC restrictions and there is
+		 * no O_MAYEXEC yet. This might change in the future, in which
+		 * case we will restrict +x.
+		 */
 		unsigned i_mode = S_IFLNK;
+		if (f_mode & FMODE_PATH)
+			i_mode |= S_IXGRP;
+		else
+			i_mode |= S_IXUSR;
+		/*
+		 * Construct the mode bits based on the open-mode. The u+rwx
+		 * bits are for "ordinary" open modes while g+rwx are for
+		 * O_PATH modes.
+		 */
 		if (f_mode & FMODE_READ)
-			i_mode |= S_IRUSR | S_IXUSR;
+			i_mode |= S_IRUSR;
 		if (f_mode & FMODE_WRITE)
-			i_mode |= S_IWUSR | S_IXUSR;
+			i_mode |= S_IWUSR;
+		if (f_mode & FMODE_PATH_READ)
+			i_mode |= S_IRGRP;
+		if (f_mode & FMODE_PATH_WRITE)
+			i_mode |= S_IWGRP;
 		inode->i_mode = i_mode;
 	}
 	security_task_to_inode(task, inode);
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 56b8e358af5c..dc0f5660af43 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -173,6 +173,10 @@ typedef int (dio_iodone_t)(struct kiocb *iocb, loff_t offset,
 /* File does not contribute to nr_files count */
 #define FMODE_NOACCOUNT		((__force fmode_t)0x20000000)
 
+/* File is an O_PATH descriptor which can be upgraded to (read, write). */
+#define FMODE_PATH_READ		((__force fmode_t)0x40000000)
+#define FMODE_PATH_WRITE	((__force fmode_t)0x80000000)
+
 /*
  * Flag for rw_copy_check_uvector and compat_rw_copy_check_uvector
  * that indicates that they should check the contents of the iovec are
diff --git a/include/linux/namei.h b/include/linux/namei.h
index 9138b4471dbf..bd6d3eb7764d 100644
--- a/include/linux/namei.h
+++ b/include/linux/namei.h
@@ -49,6 +49,7 @@ enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
 #define LOOKUP_ROOT		0x2000
 #define LOOKUP_EMPTY		0x4000
 #define LOOKUP_DOWN		0x8000
+#define LOOKUP_MAGICLINK_JUMPED	0x10000
 
 extern int path_pts(struct path *path);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
