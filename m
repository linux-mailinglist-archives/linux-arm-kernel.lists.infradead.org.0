Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F4EEF7EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 10:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0aDuLkh752wJGkaJ9BHMzdACyg5vpuRr0VOC/Yo9Jk0=; b=hKFV5NeWAg1JCD
	SBgwS29+QW4k6ZktWjJsV0fLYGP225h1P8Vq+xqTwAoWIwc20bFp4eVo7TuJoKKaIHKmDy1MOliPe
	B6+tkBlV9NTSnEFk0QOMWszVR3Y0BR/x0gUkuEfPFDX+gzCqVp1nbVuscnht5KIhTntTuXSoWMUb5
	6soOHKvcKQqVXPQBLVfRFGCysnmXCmNjod4g730ZBjzfgHRXPMToW//Md3rgzwfZMNMaKooaRpClT
	3UvWxkWEVOtrkvOxPVKUMnXFKo21AxvD0Dkwkotc8MGUyUHtSoiq/oZwSloEt2rEWL3JGyE6Mjgqm
	zR6fyh9rCYdH3PmzBW0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRuok-0000Mm-R0; Tue, 05 Nov 2019 09:08:02 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRuoY-0000Lu-86
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 09:07:52 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 476kMm3cMqzKmZ4;
 Tue,  5 Nov 2019 10:07:48 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id zzFBXk6XVzBI; Tue,  5 Nov 2019 10:07:28 +0100 (CET)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v15 2/9] namei: LOOKUP_NO_MAGICLINKS: block magic-link
 resolution
Date: Tue,  5 Nov 2019 20:05:46 +1100
Message-Id: <20191105090553.6350-3-cyphar@cyphar.com>
In-Reply-To: <20191105090553.6350-1-cyphar@cyphar.com>
References: <20191105090553.6350-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_010750_608533_B74A4B73 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Christian Brauner <christian.brauner@ubuntu.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 Aleksa Sarai <cyphar@cyphar.com>, Andy Lutomirski <luto@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>, libc-alpha@sourceware.org,
 linux-parisc@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

/* Background. */
There has always been a special class of symlink-like objects in procfs
(and a few other pseudo-filesystems) which allow for non-lexical
resolution of paths using nd_jump_link(). These "magic-links" do not
follow traditional mount namespace boundaries, and have been used
consistently in container escape attacks because they can be used to
trick unsuspecting privileged processes into resolving unexpected paths.

It is also non-trivial for userspace to unambiguously avoid resolving
magic-links, because they do not have a reliable indication that they
are a magic-link (in order to verify them you'd have to manually open
the path given by readlink(2) and then verify that the two file
descriptors reference the same underlying file, which is plagued with
possible race conditions or supplementary attack scenarios).

It would therefore be very helpful for userspace to be able to avoid
these symlinks easily, thus hopefully removing a tool from attackers'
toolboxes.

This is part of a refresh of Al's AT_NO_JUMPS patchset[1] (which was a
variation on David Drysdale's O_BENEATH patchset[2], which in turn was
based on the Capsicum project[3]).

/* Userspace API. */
LOOKUP_NO_MAGICLINKS will be exposed to userspace through openat2(2).

/* Semantics. */
Unlike most other LOOKUP flags (most notably LOOKUP_FOLLOW),
LOOKUP_NO_MAGICLINKS applies to all components of the path.

With LOOKUP_NO_MAGICLINKS, any magic-link path component encountered
during path resolution will yield -ELOOP. The handling of ~LOOKUP_FOLLOW
for a trailing magic-link is identical to LOOKUP_NO_SYMLINKS.

LOOKUP_NO_SYMLINKS implies LOOKUP_NO_MAGICLINKS.

/* Testing. */
LOOKUP_NO_MAGICLINKS is tested as part of the openat2(2) selftests.

[1]: https://lore.kernel.org/lkml/20170429220414.GT29622@ZenIV.linux.org.uk/
[2]: https://lore.kernel.org/lkml/1415094884-18349-1-git-send-email-drysdale@google.com/
[3]: https://lore.kernel.org/lkml/1404124096-21445-1-git-send-email-drysdale@google.com/

Cc: Christian Brauner <christian.brauner@ubuntu.com>
Suggested-by: David Drysdale <drysdale@google.com>
Suggested-by: Al Viro <viro@zeniv.linux.org.uk>
Suggested-by: Andy Lutomirski <luto@kernel.org>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 fs/namei.c            | 7 ++++++-
 include/linux/namei.h | 2 ++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/fs/namei.c b/fs/namei.c
index 4e85d6fa4048..1f0d871199e5 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -866,7 +866,7 @@ void nd_jump_link(struct path *path)
 
 	nd->path = *path;
 	nd->inode = nd->path.dentry->d_inode;
-	nd->flags |= LOOKUP_JUMPED;
+	nd->flags |= LOOKUP_JUMPED | LOOKUP_MAGICLINK_JUMPED;
 }
 
 static inline void put_link(struct nameidata *nd)
@@ -1063,6 +1063,7 @@ const char *get_link(struct nameidata *nd)
 		return ERR_PTR(error);
 
 	nd->last_type = LAST_BIND;
+	nd->flags &= ~LOOKUP_MAGICLINK_JUMPED;
 	res = READ_ONCE(inode->i_link);
 	if (!res) {
 		const char * (*get)(struct dentry *, struct inode *,
@@ -1078,6 +1079,10 @@ const char *get_link(struct nameidata *nd)
 		} else {
 			res = get(dentry, inode, &last->done);
 		}
+		if (nd->flags & LOOKUP_MAGICLINK_JUMPED) {
+			if (unlikely(nd->flags & LOOKUP_NO_MAGICLINKS))
+				return ERR_PTR(-ELOOP);
+		}
 		if (IS_ERR_OR_NULL(res))
 			return res;
 	}
diff --git a/include/linux/namei.h b/include/linux/namei.h
index ee2e35af387f..a8b3f93338da 100644
--- a/include/linux/namei.h
+++ b/include/linux/namei.h
@@ -38,9 +38,11 @@ enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
 #define LOOKUP_JUMPED		0x1000
 #define LOOKUP_ROOT		0x2000
 #define LOOKUP_ROOT_GRABBED	0x0008
+#define LOOKUP_MAGICLINK_JUMPED	0x10000
 
 /* Scoping flags for lookup. */
 #define LOOKUP_NO_SYMLINKS	0x020000 /* No symlink crossing. */
+#define LOOKUP_NO_MAGICLINKS	0x040000 /* No /proc/$pid/fd/ "symlink" crossing. */
 
 extern int path_pts(struct path *path);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
