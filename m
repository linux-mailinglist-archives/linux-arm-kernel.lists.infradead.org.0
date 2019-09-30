Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B992C2609
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 20:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kbo670mbZI5o58j0IUYmPPWnbtkzW+eluxYiAp+hGc0=; b=dFBxXU6WlEec/s
	BNKi3fi41rC89nDspg0iyKpRkQUHxe/CyHokcEIjV9gf1Z6h2J86FadJSwAjP3IhBlhb8MI/2EFdy
	VzS2Z3Lujo54W2xREP2hJIKImxZ1HqOoa7TuK+abg07grd1JRR8M4MzKOU7WqugAd7vP/CQJbC6Jz
	rieHDoca/bqeXKv4TtZPW/EflASuwIUxbljQi92qJo4YfDuljDZbo1Xrs+tyRvJpEFyI4LOKi2aJe
	fR8yIvFOla63DVNuLaA7przPPhfb0FlKHB2ZkvXKsSAnbJBPU/IWYC6/2DQb3DKJ0J1S7XuWtb/aF
	fwBcsF2tPRjfTnirTgIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF0Xx-00042C-9U; Mon, 30 Sep 2019 18:37:21 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF0Ww-0002ce-5M
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 18:36:20 +0000
Received: from smtp2.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id E26AFA1889;
 Mon, 30 Sep 2019 20:36:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id MmwYvW0_-1k4; Mon, 30 Sep 2019 20:36:10 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v13 5/9] namei: LOOKUP_IN_ROOT: chroot-like path resolution
Date: Tue,  1 Oct 2019 04:33:12 +1000
Message-Id: <20190930183316.10190-6-cyphar@cyphar.com>
In-Reply-To: <20190930183316.10190-1-cyphar@cyphar.com>
References: <20190930183316.10190-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_113618_522333_54811EC6 
X-CRM114-Status: GOOD (  15.86  )
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

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 fs/namei.c            | 5 +++++
 include/linux/namei.h | 3 ++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/fs/namei.c b/fs/namei.c
index b80efc0ae0f3..efed62c6136e 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -2274,6 +2274,11 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 
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
index 88b610ca4d83..1ace31052237 100644
--- a/include/linux/namei.h
+++ b/include/linux/namei.h
@@ -48,8 +48,9 @@ enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
 #define LOOKUP_NO_MAGICLINKS	0x080000 /* No /proc/$pid/fd/ "symlink" crossing. */
 #define LOOKUP_NO_SYMLINKS	0x100000 /* No symlink crossing *at all*.
 					    Implies LOOKUP_NO_MAGICLINKS. */
+#define LOOKUP_IN_ROOT		0x200000 /* Treat dirfd as %current->fs->root. */
 /* LOOKUP_* flags which do scope-related checks based on the dirfd. */
-#define LOOKUP_DIRFD_SCOPE_FLAGS LOOKUP_BENEATH
+#define LOOKUP_DIRFD_SCOPE_FLAGS (LOOKUP_BENEATH | LOOKUP_IN_ROOT)
 
 extern int path_pts(struct path *path);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
