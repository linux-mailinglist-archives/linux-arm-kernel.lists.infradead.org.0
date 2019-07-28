Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF3E77CEA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 03:07:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVkYv0R612f+2PTc6vOFGUepfBHybFNy9BhPihpkPdE=; b=CZQXFwyV2OsFbz
	o/RWUxhxYXdaGLhIS/HuCUKyPYiXVfNQfkhH+DwWB+ZAa5SSOgFrX5zAgD7rVImpNN+lKoCia4pOC
	QNZbqRiGSSSjjoGaZVCYIVl4gdhlAfjZSkwX76Sn1wwecMp8A5lSpd8Pq2tSvB9/6JYozr8NP5Jem
	KYNgynaEWZ0d3oSoRuxBNS65HjVyB/pGqWqIjolTXW+OipmbwiiFEvDyStJa/Eu0P5oZrj54U/YWY
	WZ9ZY6wD2EQwMe/IjqiL/P+CUvcnmbK1VDkQKQmZUVEGY6Oh/3ulPGUrFdDOXtX2Z1e3OIcNGNxq2
	v6jaKGJJlMRF79OLdq9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrXfA-0000h5-5d; Sun, 28 Jul 2019 01:07:48 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrXet-0000gj-C2
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 01:07:33 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 9AA3B425D0;
 Sun, 28 Jul 2019 03:07:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id RHHYCCgowNYg; Sun, 28 Jul 2019 03:07:20 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Subject: [PATCH v11 5/8] namei: LOOKUP_IN_ROOT: chroot-like path resolution
Date: Sun, 28 Jul 2019 11:02:04 +1000
Message-Id: <20190728010207.9781-6-cyphar@cyphar.com>
In-Reply-To: <20190728010207.9781-1-cyphar@cyphar.com>
References: <20190728010207.9781-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_180731_709478_9CFD6960 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
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

The primary motivation for the need for this flag is container runtimes
which have to interact with malicious root filesystems in the host
namespaces. One of the first requirements for a container runtime to be
secure against a malicious rootfs is that they correctly scope symlinks
(that is, they should be scoped as though they are chroot(2)ed into the
container's rootfs) and ".."-style paths[*]. The already-existing
LOOKUP_NO_XDEV and LOOKUP_NO_MAGICLINKS help defend against other
potential attacks in a malicious rootfs scenario.

Currently most container runtimes try to do this resolution in
userspace[1], causing many potential race conditions. In addition, the
"obvious" alternative (actually performing a {ch,pivot_}root(2))
requires a fork+exec (for some runtimes) which is *very* costly if
necessary for every filesystem operation involving a container.

[*] At the moment, ".." and magic-link jumping are disallowed for the
    same reason it is disabled for LOOKUP_BENEATH -- currently it is not
    safe to allow it. Future patches may enable it unconditionally once
    we have resolved the possible races (for "..") and semantics (for
    magic-link jumping).

The most significant *at(2) semantic change with LOOKUP_IN_ROOT is that
absolute pathnames no longer cause the dirfd to be ignored completely.

The rationale is that LOOKUP_IN_ROOT must necessarily chroot-scope
symlinks with absolute paths to dirfd, and so doing it for the base path
seems to be the most consistent behaviour (and also avoids foot-gunning
users who want to scope paths that are absolute).

[1]: https://github.com/cyphar/filepath-securejoin

Suggested-by: Christian Brauner <christian@brauner.io>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 fs/namei.c            | 41 +++++++++++++++++++++++++++++++----------
 include/linux/namei.h |  1 +
 2 files changed, 32 insertions(+), 10 deletions(-)

diff --git a/fs/namei.c b/fs/namei.c
index 2e18ce5a313e..0352d275bd13 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -676,7 +676,7 @@ static int unlazy_walk(struct nameidata *nd)
 		goto out1;
 	if (!nd->root.mnt) {
 		/* Restart from path_init() if nd->root was cleared. */
-		if (nd->flags & LOOKUP_BENEATH)
+		if (nd->flags & (LOOKUP_BENEATH | LOOKUP_IN_ROOT))
 			goto out;
 	} else if (!(nd->flags & LOOKUP_ROOT)) {
 		if (unlikely(!legitimize_path(nd, &nd->root, nd->root_seq)))
@@ -809,10 +809,18 @@ static int complete_walk(struct nameidata *nd)
 	return status;
 }
 
-static void set_root(struct nameidata *nd)
+static int set_root(struct nameidata *nd)
 {
 	struct fs_struct *fs = current->fs;
 
+	/*
+	 * Jumping to the real root as part of LOOKUP_IN_ROOT is a BUG in namei,
+	 * but we still have to ensure it doesn't happen because it will cause a
+	 * breakout from the dirfd.
+	 */
+	if (WARN_ON(nd->flags & LOOKUP_IN_ROOT))
+		return -ENOTRECOVERABLE;
+
 	if (nd->flags & LOOKUP_RCU) {
 		unsigned seq;
 
@@ -824,6 +832,7 @@ static void set_root(struct nameidata *nd)
 	} else {
 		get_fs_root(fs, &nd->root);
 	}
+	return 0;
 }
 
 static void path_put_conditional(struct path *path, struct nameidata *nd)
@@ -854,6 +863,11 @@ static int nd_jump_root(struct nameidata *nd)
 		if (nd->path.mnt != NULL && nd->path.mnt != nd->root.mnt)
 			return -EXDEV;
 	}
+	if (!nd->root.mnt) {
+		int error = set_root(nd);
+		if (error)
+			return error;
+	}
 	if (nd->flags & LOOKUP_RCU) {
 		struct dentry *d;
 		nd->path = nd->root;
@@ -1100,15 +1114,13 @@ const char *get_link(struct nameidata *nd)
 			if (unlikely(nd->flags & LOOKUP_NO_MAGICLINKS))
 				return ERR_PTR(-ELOOP);
 			/* Not currently safe. */
-			if (unlikely(nd->flags & LOOKUP_BENEATH))
+			if (unlikely(nd->flags & (LOOKUP_BENEATH | LOOKUP_IN_ROOT)))
 				return ERR_PTR(-EXDEV);
 		}
 		if (IS_ERR_OR_NULL(res))
 			return res;
 	}
 	if (*res == '/') {
-		if (!nd->root.mnt)
-			set_root(nd);
 		error = nd_jump_root(nd);
 		if (unlikely(error))
 			return ERR_PTR(error);
@@ -1744,15 +1756,20 @@ static inline int may_lookup(struct nameidata *nd)
 static inline int handle_dots(struct nameidata *nd, int type)
 {
 	if (type == LAST_DOTDOT) {
+		int error = 0;
+
 		/*
 		 * LOOKUP_BENEATH resolving ".." is not currently safe -- races
 		 * can cause our parent to have moved outside of the root and
 		 * us to skip over it.
 		 */
-		if (unlikely(nd->flags & LOOKUP_BENEATH))
+		if (unlikely(nd->flags & (LOOKUP_BENEATH | LOOKUP_IN_ROOT)))
 			return -EXDEV;
-		if (!nd->root.mnt)
-			set_root(nd);
+		if (!nd->root.mnt) {
+			error = set_root(nd);
+			if (error)
+				return error;
+		}
 		if (nd->flags & LOOKUP_RCU) {
 			return follow_dotdot_rcu(nd);
 		} else
@@ -2251,9 +2268,13 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 
 	nd->m_seq = read_seqbegin(&mount_lock);
 
+	/* LOOKUP_IN_ROOT treats absolute paths as being relative-to-dirfd. */
+	if (flags & LOOKUP_IN_ROOT)
+		while (*s == '/')
+			s++;
+
 	/* Figure out the starting path and root (if needed). */
 	if (*s == '/') {
-		set_root(nd);
 		error = nd_jump_root(nd);
 		if (unlikely(error))
 			return ERR_PTR(error);
@@ -2298,7 +2319,7 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 		fdput(f);
 	}
 	/* For scoped-lookups we need to set the root to the dirfd as well. */
-	if (flags & LOOKUP_BENEATH) {
+	if (flags & (LOOKUP_BENEATH | LOOKUP_IN_ROOT)) {
 		nd->root = nd->path;
 		if (flags & LOOKUP_RCU)
 			nd->root_seq = nd->seq;
diff --git a/include/linux/namei.h b/include/linux/namei.h
index be407415c28a..ec2c6c588ea7 100644
--- a/include/linux/namei.h
+++ b/include/linux/namei.h
@@ -57,6 +57,7 @@ enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
 #define LOOKUP_NO_MAGICLINKS	0x080000 /* No /proc/$pid/fd/ "symlink" crossing. */
 #define LOOKUP_NO_SYMLINKS	0x100000 /* No symlink crossing *at all*.
 					    Implies LOOKUP_NO_MAGICLINKS. */
+#define LOOKUP_IN_ROOT		0x200000 /* Treat dirfd as %current->fs->root. */
 
 extern int path_pts(struct path *path);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
