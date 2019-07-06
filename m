Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCFE61194
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 17:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUTG5Zadv2oWbZS2sF8SEvAK+EpkqOtAYiBQtVP/hr4=; b=UgCh5wfIKFoL8N
	n6jyb7hF83M766SysyZ2+SxGbOxz95QNiB2Qimx2DvXBrP/JD4BXD0z0SfI4TGZt/B3/EEuSpHcVz
	h6+lHBWOydPO7wGn8cgDshic2fDaZx6rcUcM7bZamj8ITr5pc5dokf1ZP9T15QfAqwy6BIsXYNoAB
	rNiLQGBaibnMIxQ8wSvFxngDR7YBOOW5/H1F0yfw24b+SuwhxZJKkgMCDx9WYS2BG48rV1vs4p5pS
	irUpwyATVf870hLz1Bs8fzHvSSPkeGzL2JeN6V8gqwE1EAc2a8/LEuxfUy2TjBViLHibTHI/x0J9T
	ptsMgfb0OhIJIDeo8V/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjmAq-0001ym-4o; Sat, 06 Jul 2019 15:00:24 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjm9k-0001Xv-Gh
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 14:59:19 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id A17F3A01A1;
 Sat,  6 Jul 2019 16:59:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id U_6b85_iy2Pe; Sat,  6 Jul 2019 16:59:05 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Subject: [PATCH v9 03/10] open: O_EMPTYPATH: procfs-less file descriptor
 re-opening
Date: Sun,  7 Jul 2019 00:57:30 +1000
Message-Id: <20190706145737.5299-4-cyphar@cyphar.com>
In-Reply-To: <20190706145737.5299-1-cyphar@cyphar.com>
References: <20190706145737.5299-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_075917_264089_EC5B2883 
X-CRM114-Status: GOOD (  19.35  )
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

Userspace has made use of /proc/self/fd very liberally to allow for
descriptors to be re-opened. There are a wide variety of uses for this
feature, but it has always required constructing a pathname and could
not be done without procfs mounted. The obvious solution for this is to
extend openat(2) to have an AT_EMPTY_PATH-equivalent -- O_EMPTYPATH.

Now that descriptor re-opening has been made safe through the new
magic-link resolution restrictions, we can replicate these restrictions
for O_EMPTYPATH. In particular, we only allow "upgrading" the file
descriptor if the corresponding FMODE_PATH_* bit is set (or the
FMODE_{READ,WRITE} cases for non-O_PATH file descriptors).

When doing openat(O_EMPTYPATH|O_PATH), O_PATH takes precedence and
O_EMPTYPATH is ignored. Very few users ever have a need to O_PATH
re-open an existing file descriptor, and so accommodating them at the
expense of further complicating O_PATH makes little sense. Ultimately,
if users ask for this we can always add RESOLVE_EMPTY_PATH to
resolveat(2) in the future.

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 fs/fcntl.c                       |  2 +-
 fs/namei.c                       | 27 +++++++++++++++++++++++++++
 fs/open.c                        |  7 ++++++-
 include/linux/fcntl.h            |  2 +-
 include/uapi/asm-generic/fcntl.h |  5 +++++
 5 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/fs/fcntl.c b/fs/fcntl.c
index 3d40771e8e7c..4cf05a2fd162 100644
--- a/fs/fcntl.c
+++ b/fs/fcntl.c
@@ -1031,7 +1031,7 @@ static int __init fcntl_init(void)
 	 * Exceptions: O_NONBLOCK is a two bit define on parisc; O_NDELAY
 	 * is defined as O_NONBLOCK on some platforms and not on others.
 	 */
-	BUILD_BUG_ON(21 - 1 /* for O_RDONLY being 0 */ !=
+	BUILD_BUG_ON(22 - 1 /* for O_RDONLY being 0 */ !=
 		HWEIGHT32(
 			(VALID_OPEN_FLAGS & ~(O_NONBLOCK | O_NDELAY)) |
 			__FMODE_EXEC | __FMODE_NONOTIFY));
diff --git a/fs/namei.c b/fs/namei.c
index 4ec6168762db..4895717d2760 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -3605,6 +3605,31 @@ static int do_o_path(struct nameidata *nd, unsigned flags, struct file *file)
 	return error;
 }
 
+static int do_o_emptypath(struct nameidata *nd, struct file *newfile)
+{
+	int error;
+	struct fd f;
+
+	/* We don't support AT_FDCWD since O_PATH cannot be set here. */
+	f = fdget_raw(nd->dfd);
+	if (!f.file)
+		return -EBADF;
+
+	/* Update opath_mask as though we went through trailing_symlink(). */
+	if (!(f.file->f_mode & (FMODE_READ | FMODE_PATH_READ)))
+		nd->opath_mask &= ~FMODE_PATH_READ;
+	if (!(f.file->f_mode & (FMODE_WRITE | FMODE_PATH_WRITE)))
+		nd->opath_mask &= ~FMODE_PATH_WRITE;
+
+	/* Obey the same restrictions as magic-links. */
+	error = may_open_magiclink(f.file->f_mode, nd->acc_mode);
+	if (!error)
+		error = vfs_open(&f.file->f_path, newfile);
+
+	fdput(f);
+	return error;
+}
+
 static struct file *path_openat(struct nameidata *nd,
 			const struct open_flags *op, unsigned flags)
 {
@@ -3620,6 +3645,8 @@ static struct file *path_openat(struct nameidata *nd,
 
 	if (unlikely(file->f_flags & __O_TMPFILE)) {
 		error = do_tmpfile(nd, flags, op, file);
+	} else if (unlikely(file->f_flags & O_EMPTYPATH)) {
+		error = do_o_emptypath(nd, file);
 	} else if (unlikely(file->f_flags & O_PATH)) {
 		error = do_o_path(nd, flags, file);
 	} else {
diff --git a/fs/open.c b/fs/open.c
index ab20eae39df7..bdca45528524 100644
--- a/fs/open.c
+++ b/fs/open.c
@@ -996,6 +996,8 @@ static inline int build_open_flags(int flags, umode_t mode, struct open_flags *o
 		lookup_flags |= LOOKUP_DIRECTORY;
 	if (!(flags & O_NOFOLLOW))
 		lookup_flags |= LOOKUP_FOLLOW;
+	if (flags & O_EMPTYPATH)
+		lookup_flags |= LOOKUP_EMPTY;
 	op->lookup_flags = lookup_flags;
 	return 0;
 }
@@ -1057,14 +1059,17 @@ long do_sys_open(int dfd, const char __user *filename, int flags, umode_t mode)
 {
 	struct open_flags op;
 	int fd = build_open_flags(flags, mode, &op);
+	int empty = 0;
 	struct filename *tmp;
 
 	if (fd)
 		return fd;
 
-	tmp = getname(filename);
+	tmp = getname_flags(filename, op.lookup_flags, &empty);
 	if (IS_ERR(tmp))
 		return PTR_ERR(tmp);
+	if (!empty)
+		op.open_flag &= ~O_EMPTYPATH;
 
 	fd = get_unused_fd_flags(flags);
 	if (fd >= 0) {
diff --git a/include/linux/fcntl.h b/include/linux/fcntl.h
index d019df946cb2..2868ae6c8fc1 100644
--- a/include/linux/fcntl.h
+++ b/include/linux/fcntl.h
@@ -9,7 +9,7 @@
 	(O_RDONLY | O_WRONLY | O_RDWR | O_CREAT | O_EXCL | O_NOCTTY | O_TRUNC | \
 	 O_APPEND | O_NDELAY | O_NONBLOCK | O_NDELAY | __O_SYNC | O_DSYNC | \
 	 FASYNC	| O_DIRECT | O_LARGEFILE | O_DIRECTORY | O_NOFOLLOW | \
-	 O_NOATIME | O_CLOEXEC | O_PATH | __O_TMPFILE)
+	 O_NOATIME | O_CLOEXEC | O_PATH | __O_TMPFILE | O_EMPTYPATH)
 
 #ifndef force_o_largefile
 #define force_o_largefile() (!IS_ENABLED(CONFIG_ARCH_32BIT_OFF_T))
diff --git a/include/uapi/asm-generic/fcntl.h b/include/uapi/asm-generic/fcntl.h
index 9dc0bf0c5a6e..307f7c414a51 100644
--- a/include/uapi/asm-generic/fcntl.h
+++ b/include/uapi/asm-generic/fcntl.h
@@ -89,6 +89,11 @@
 #define __O_TMPFILE	020000000
 #endif
 
+#ifndef O_EMPTYPATH
+#define O_EMPTYPATH 040000000
+#endif
+
+
 /* a horrid kludge trying to make sure that this will fail on old kernels */
 #define O_TMPFILE (__O_TMPFILE | O_DIRECTORY)
 #define O_TMPFILE_MASK (__O_TMPFILE | O_DIRECTORY | O_CREAT)      
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
