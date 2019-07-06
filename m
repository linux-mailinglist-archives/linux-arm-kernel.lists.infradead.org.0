Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77909611A2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 17:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sJgstfLcH9cJ77foUYEURoWywzpLkC1ytC4SCLgzZQ=; b=MAOjMOGDi4sAej
	K+azY9iBBKUFvy/ZgrnHoVddkV/b+zWz2U+CwcXH3ZzCWjFegE+37JEu797/pPwmTWNaXgiNN5b2h
	405WZ7rYv3vCPl6SOUHrL3tEh9MTyEAuJEoOkL+jogX0UG9HddkuE/iUsceqKlB2klk91T4/KTiW3
	GMfXStEbh6cUvNumR4PD8/xc16ItHu5vxwmGhgVhDtUIoidVegAdzWEG1652lH1uSCbZd+sp0Y+aF
	gcXU4anY3P3m4EqTBUhmhh2i3u2s4r5i7CsRtgHzBEdow7uMkazl4y4cN6i2oh2b++sy4Htn01RtF
	6qNwbidvoUyg0ehZT57Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjmB8-0003Vm-Rk; Sat, 06 Jul 2019 15:00:42 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjmA0-0001mA-Oy
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 14:59:35 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 1C229A01B0;
 Sat,  6 Jul 2019 16:59:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id UYQQdEKKt3Aq; Sat,  6 Jul 2019 16:59:21 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Subject: [PATCH v9 04/10] namei: split out nd->dfd handling to dirfd_path_init
Date: Sun,  7 Jul 2019 00:57:31 +1000
Message-Id: <20190706145737.5299-5-cyphar@cyphar.com>
In-Reply-To: <20190706145737.5299-1-cyphar@cyphar.com>
References: <20190706145737.5299-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_075933_155256_72CEFB31 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
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

Previously, path_init's handling of *at(dfd, ...) was only done once,
but with LOOKUP_BENEATH (and LOOKUP_IN_ROOT) we have to parse the
initial nd->path at different times (before or after absolute path
handling) depending on whether we have been asked to scope resolution
within a root.

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 fs/namei.c | 103 ++++++++++++++++++++++++++++++-----------------------
 1 file changed, 59 insertions(+), 44 deletions(-)

diff --git a/fs/namei.c b/fs/namei.c
index 4895717d2760..b490bcf855f8 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -2257,9 +2257,59 @@ static int link_path_walk(const char *name, struct nameidata *nd)
 	}
 }
 
+/*
+ * Configure nd->path based on the nd->dfd. This is only used as part of
+ * path_init().
+ */
+static inline int dirfd_path_init(struct nameidata *nd)
+{
+	if (nd->dfd == AT_FDCWD) {
+		if (nd->flags & LOOKUP_RCU) {
+			struct fs_struct *fs = current->fs;
+			unsigned seq;
+
+			do {
+				seq = read_seqcount_begin(&fs->seq);
+				nd->path = fs->pwd;
+				nd->inode = nd->path.dentry->d_inode;
+				nd->seq = __read_seqcount_begin(&nd->path.dentry->d_seq);
+			} while (read_seqcount_retry(&fs->seq, seq));
+		} else {
+			get_fs_pwd(current->fs, &nd->path);
+			nd->inode = nd->path.dentry->d_inode;
+		}
+	} else {
+		/* Caller must check execute permissions on the starting path component */
+		struct fd f = fdget_raw(nd->dfd);
+		struct dentry *dentry;
+
+		if (!f.file)
+			return -EBADF;
+
+		dentry = f.file->f_path.dentry;
+
+		if (*nd->name->name && unlikely(!d_can_lookup(dentry))) {
+			fdput(f);
+			return -ENOTDIR;
+		}
+
+		nd->path = f.file->f_path;
+		if (nd->flags & LOOKUP_RCU) {
+			nd->inode = nd->path.dentry->d_inode;
+			nd->seq = read_seqcount_begin(&nd->path.dentry->d_seq);
+		} else {
+			path_get(&nd->path);
+			nd->inode = nd->path.dentry->d_inode;
+		}
+		fdput(f);
+	}
+	return 0;
+}
+
 /* must be paired with terminate_walk() */
 static const char *path_init(struct nameidata *nd, unsigned flags)
 {
+	int error;
 	const char *s = nd->name->name;
 
 	if (!*s)
@@ -2293,52 +2343,17 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 
 	nd->m_seq = read_seqbegin(&mount_lock);
 	if (*s == '/') {
-		set_root(nd);
-		if (likely(!nd_jump_root(nd)))
-			return s;
-		return ERR_PTR(-ECHILD);
-	} else if (nd->dfd == AT_FDCWD) {
-		if (flags & LOOKUP_RCU) {
-			struct fs_struct *fs = current->fs;
-			unsigned seq;
-
-			do {
-				seq = read_seqcount_begin(&fs->seq);
-				nd->path = fs->pwd;
-				nd->inode = nd->path.dentry->d_inode;
-				nd->seq = __read_seqcount_begin(&nd->path.dentry->d_seq);
-			} while (read_seqcount_retry(&fs->seq, seq));
-		} else {
-			get_fs_pwd(current->fs, &nd->path);
-			nd->inode = nd->path.dentry->d_inode;
-		}
-		return s;
-	} else {
-		/* Caller must check execute permissions on the starting path component */
-		struct fd f = fdget_raw(nd->dfd);
-		struct dentry *dentry;
-
-		if (!f.file)
-			return ERR_PTR(-EBADF);
-
-		dentry = f.file->f_path.dentry;
-
-		if (*s && unlikely(!d_can_lookup(dentry))) {
-			fdput(f);
-			return ERR_PTR(-ENOTDIR);
-		}
-
-		nd->path = f.file->f_path;
-		if (flags & LOOKUP_RCU) {
-			nd->inode = nd->path.dentry->d_inode;
-			nd->seq = read_seqcount_begin(&nd->path.dentry->d_seq);
-		} else {
-			path_get(&nd->path);
-			nd->inode = nd->path.dentry->d_inode;
-		}
-		fdput(f);
+		if (likely(!nd->root.mnt))
+			set_root(nd);
+		error = nd_jump_root(nd);
+		if (unlikely(error))
+			s = ERR_PTR(error);
 		return s;
 	}
+	error = dirfd_path_init(nd);
+	if (unlikely(error))
+		return ERR_PTR(error);
+	return s;
 }
 
 static const char *trailing_symlink(struct nameidata *nd)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
