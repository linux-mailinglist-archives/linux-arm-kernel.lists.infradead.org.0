Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E250AC2603
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 20:36:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uhQPfImW0Chply+RauUC/SVUSxO9ds2jUdLA4kX42A=; b=jsiMXLsJAAR0D7
	YvcoJ62lQUI/0/UB8oAXaqHUOlx2S5FM7NdYpYpa4gbSEeRHjFAbD2D4ssQFAgbhGZh64L8yuoofa
	Ti8haX00mZqlsozbJFUp27UBwBpMKFAdWOWjV7KW8BBk36ZfKUb8DAR7rPrqvC4+9BaLZR9cUh1M5
	niHaAfxrw8EzfuXI+uVyV+pZ5AbTPRDP/tbvZFZQaFzmgmqLHUc0x2lRZf64X1PddwQWUu5W2cOM9
	08/mjzjdQCkUDm86v7Fq7/MYOjD6HPtVUJCgeVUM+ZBC0xnWiKozIPwaRCDLA62t1laOtrDCLMUFX
	nwp+l9GPbnJurvupeBuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF0Wj-0002FV-T1; Mon, 30 Sep 2019 18:36:05 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF0WK-00011e-2T
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 18:35:47 +0000
Received: from smtp2.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 1C84CA171B;
 Mon, 30 Sep 2019 20:35:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id e37YkYJHExhD; Mon, 30 Sep 2019 20:35:31 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v13 3/9] open: O_EMPTYPATH: procfs-less file descriptor
 re-opening
Date: Tue,  1 Oct 2019 04:33:10 +1000
Message-Id: <20190930183316.10190-4-cyphar@cyphar.com>
In-Reply-To: <20190930183316.10190-1-cyphar@cyphar.com>
References: <20190930183316.10190-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_113540_540603_5041B208 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
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
 arch/alpha/include/uapi/asm/fcntl.h  |  1 +
 arch/parisc/include/uapi/asm/fcntl.h | 39 ++++++++++++++--------------
 arch/sparc/include/uapi/asm/fcntl.h  |  1 +
 fs/fcntl.c                           |  2 +-
 fs/namei.c                           | 20 ++++++++++++++
 fs/open.c                            |  7 ++++-
 include/linux/fcntl.h                |  2 +-
 include/uapi/asm-generic/fcntl.h     |  4 +++
 8 files changed, 54 insertions(+), 22 deletions(-)

diff --git a/arch/alpha/include/uapi/asm/fcntl.h b/arch/alpha/include/uapi/asm/fcntl.h
index 50bdc8e8a271..1f879bade68b 100644
--- a/arch/alpha/include/uapi/asm/fcntl.h
+++ b/arch/alpha/include/uapi/asm/fcntl.h
@@ -34,6 +34,7 @@
 
 #define O_PATH		040000000
 #define __O_TMPFILE	0100000000
+#define O_EMPTYPATH	0200000000
 
 #define F_GETLK		7
 #define F_SETLK		8
diff --git a/arch/parisc/include/uapi/asm/fcntl.h b/arch/parisc/include/uapi/asm/fcntl.h
index 03ce20e5ad7d..5d709058a76f 100644
--- a/arch/parisc/include/uapi/asm/fcntl.h
+++ b/arch/parisc/include/uapi/asm/fcntl.h
@@ -2,26 +2,27 @@
 #ifndef _PARISC_FCNTL_H
 #define _PARISC_FCNTL_H
 
-#define O_APPEND	000000010
-#define O_BLKSEEK	000000100 /* HPUX only */
-#define O_CREAT		000000400 /* not fcntl */
-#define O_EXCL		000002000 /* not fcntl */
-#define O_LARGEFILE	000004000
-#define __O_SYNC	000100000
+#define O_APPEND	0000000010
+#define O_BLKSEEK	0000000100 /* HPUX only */
+#define O_CREAT		0000000400 /* not fcntl */
+#define O_EXCL		0000002000 /* not fcntl */
+#define O_LARGEFILE	0000004000
+#define __O_SYNC	0000100000
 #define O_SYNC		(__O_SYNC|O_DSYNC)
-#define O_NONBLOCK	000200004 /* HPUX has separate NDELAY & NONBLOCK */
-#define O_NOCTTY	000400000 /* not fcntl */
-#define O_DSYNC		001000000 /* HPUX only */
-#define O_RSYNC		002000000 /* HPUX only */
-#define O_NOATIME	004000000
-#define O_CLOEXEC	010000000 /* set close_on_exec */
-
-#define O_DIRECTORY	000010000 /* must be a directory */
-#define O_NOFOLLOW	000000200 /* don't follow links */
-#define O_INVISIBLE	004000000 /* invisible I/O, for DMAPI/XDSM */
-
-#define O_PATH		020000000
-#define __O_TMPFILE	040000000
+#define O_NONBLOCK	0000200004 /* HPUX has separate NDELAY & NONBLOCK */
+#define O_NOCTTY	0000400000 /* not fcntl */
+#define O_DSYNC		0001000000 /* HPUX only */
+#define O_RSYNC		0002000000 /* HPUX only */
+#define O_NOATIME	0004000000
+#define O_CLOEXEC	0010000000 /* set close_on_exec */
+
+#define O_DIRECTORY	0000010000 /* must be a directory */
+#define O_NOFOLLOW	0000000200 /* don't follow links */
+#define O_INVISIBLE	0004000000 /* invisible I/O, for DMAPI/XDSM */
+
+#define O_PATH		0020000000
+#define __O_TMPFILE	0040000000
+#define O_EMPTYPATH	0100000000
 
 #define F_GETLK64	8
 #define F_SETLK64	9
diff --git a/arch/sparc/include/uapi/asm/fcntl.h b/arch/sparc/include/uapi/asm/fcntl.h
index 67dae75e5274..dc86c9eaf950 100644
--- a/arch/sparc/include/uapi/asm/fcntl.h
+++ b/arch/sparc/include/uapi/asm/fcntl.h
@@ -37,6 +37,7 @@
 
 #define O_PATH		0x1000000
 #define __O_TMPFILE	0x2000000
+#define O_EMPTYPATH	0x4000000
 
 #define F_GETOWN	5	/*  for sockets. */
 #define F_SETOWN	6	/*  for sockets. */
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
index 0e3a47e6f12c..bfeac55b23b7 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -3567,6 +3567,24 @@ static int trailing_magiclink(struct nameidata *nd, int acc_mode,
 	return may_open_magiclink(upgrade_mask, acc_mode);
 }
 
+static int do_emptypath(struct nameidata *nd, const struct open_flags *op,
+			struct file *file)
+{
+	int error;
+	/* We don't support AT_FDCWD (since O_PATH is disallowed here). */
+	struct fd f = fdget_raw(nd->dfd);
+
+	if (!f.file)
+		return -EBADF;
+
+	/* Apply trailing_magiclink()-like restrictions. */
+	error = may_open_magiclink(f.file->f_mode, op->acc_mode);
+	if (!error)
+		error = vfs_open(&f.file->f_path, file);
+	fdput(f);
+	return error;
+}
+
 static struct file *path_openat(struct nameidata *nd,
 			const struct open_flags *op, unsigned flags)
 {
@@ -3579,6 +3597,8 @@ static struct file *path_openat(struct nameidata *nd,
 
 	if (unlikely(file->f_flags & __O_TMPFILE)) {
 		error = do_tmpfile(nd, flags, op, file);
+	} else if (unlikely(file->f_flags & O_EMPTYPATH)) {
+		error = do_emptypath(nd, op, file);
 	} else if (unlikely(file->f_flags & O_PATH)) {
 		/* Inlined path_lookupat() with a trailing_magiclink() check. */
 		fmode_t opath_mask = op->opath_mask;
diff --git a/fs/open.c b/fs/open.c
index 44704f9184cc..a45fd4cbda1f 100644
--- a/fs/open.c
+++ b/fs/open.c
@@ -1023,6 +1023,8 @@ static inline int build_open_flags(int flags, umode_t mode, struct open_flags *o
 		lookup_flags |= LOOKUP_DIRECTORY;
 	if (!(flags & O_NOFOLLOW))
 		lookup_flags |= LOOKUP_FOLLOW;
+	if (flags & O_EMPTYPATH)
+		lookup_flags |= LOOKUP_EMPTY;
 	op->lookup_flags = lookup_flags;
 	return 0;
 }
@@ -1084,14 +1086,17 @@ long do_sys_open(int dfd, const char __user *filename, int flags, umode_t mode)
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
index 9dc0bf0c5a6e..ae6862f69cc2 100644
--- a/include/uapi/asm-generic/fcntl.h
+++ b/include/uapi/asm-generic/fcntl.h
@@ -89,6 +89,10 @@
 #define __O_TMPFILE	020000000
 #endif
 
+#ifndef O_EMPTYPATH
+#define O_EMPTYPATH 040000000
+#endif
+
 /* a horrid kludge trying to make sure that this will fail on old kernels */
 #define O_TMPFILE (__O_TMPFILE | O_DIRECTORY)
 #define O_TMPFILE_MASK (__O_TMPFILE | O_DIRECTORY | O_CREAT)      
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
