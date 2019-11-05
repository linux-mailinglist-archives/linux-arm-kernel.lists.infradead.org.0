Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E7AEF7D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 10:07:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23JjGqbITSyzN1R/AO0JUcLjnXeNh4mdovkvZNCUKsc=; b=MNA0bEl2ozPx0a
	4yxdTqXuNBXPLYWrb2dikAanDCydqv4g2RAfMArVUnLjdDmzz/b713M3xFohp4FxAYpzcU5jfAyUf
	j/7klUVgNeIViSjcRlnAk/Y4ue94hZL6hy2CwTRh+nR3+ACcMyQHmv/dL5VFSSu8ZAOGHnzYLePEJ
	qKW+LCUFGLc+E8z23QxxeN/XhEazDUWyHowBWau5e2OJGEgcu9Z3Aa26QLHoiYiScpL9R8PfsBn8r
	jF4dcyPd60sjAWrGBIIKtZ26hVYBvoziDklBBOF5qMX2ZC7h9wVbfTkpG1kD8U7hKN5Drphw1QqQE
	c7kr8ywuUm8VHPZyxQFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRuoG-0008UG-Qq; Tue, 05 Nov 2019 09:07:32 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRuo7-0008ST-Fz
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 09:07:25 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 476kMD5BTTzQlBr;
 Tue,  5 Nov 2019 10:07:20 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id hBZfkmaeX9ST; Tue,  5 Nov 2019 10:07:08 +0100 (CET)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v15 1/9] namei: LOOKUP_NO_SYMLINKS: block symlink resolution
Date: Tue,  5 Nov 2019 20:05:45 +1100
Message-Id: <20191105090553.6350-2-cyphar@cyphar.com>
In-Reply-To: <20191105090553.6350-1-cyphar@cyphar.com>
References: <20191105090553.6350-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_010723_838393_9DDEBCFA 
X-CRM114-Status: GOOD (  11.47  )
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
Userspace cannot easily resolve a path without resolving symlinks, and
would have to manually resolve each path component with O_PATH and
O_NOFOLLOW. This is clearly inefficient, and can be fairly easy to screw
up (resulting in possible security bugs). Linus has mentioned that Git
has a particular need for this kind of flag[1]. It also resolves a
fairly long-standing perceived deficiency in O_NOFOLLOw -- that it only
blocks the opening of trailing symlinks.

This is part of a refresh of Al's AT_NO_JUMPS patchset[2] (which was a
variation on David Drysdale's O_BENEATH patchset[3], which in turn was
based on the Capsicum project[4]).

/* Userspace API. */
LOOKUP_NO_SYMLINKS will be exposed to userspace through openat2(2).

/* Semantics. */
Unlike most other LOOKUP flags (most notably LOOKUP_FOLLOW),
LOOKUP_NO_SYMLINKS applies to all components of the path.

With LOOKUP_NO_SYMLINKS, any symlink path component encountered during
path resolution will yield -ELOOP. If the trailing component is a
symlink (and no other components were symlinks), then O_PATH|O_NOFOLLOW
will not error out and will instead provide a handle to the trailing
symlink -- without resolving it.

/* Testing. */
LOOKUP_NO_SYMLINKS is tested as part of the openat2(2) selftests.

[1]: https://lore.kernel.org/lkml/CA+55aFyOKM7DW7+0sdDFKdZFXgptb5r1id9=Wvhd8AgSP7qjwQ@mail.gmail.com/
[2]: https://lore.kernel.org/lkml/20170429220414.GT29622@ZenIV.linux.org.uk/
[3]: https://lore.kernel.org/lkml/1415094884-18349-1-git-send-email-drysdale@google.com/
[4]: https://lore.kernel.org/lkml/1404124096-21445-1-git-send-email-drysdale@google.com/

Cc: Christian Brauner <christian.brauner@ubuntu.com>
Suggested-by: Al Viro <viro@zeniv.linux.org.uk>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 fs/namei.c            | 3 +++
 include/linux/namei.h | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/fs/namei.c b/fs/namei.c
index 671c3c1a3425..4e85d6fa4048 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -1045,6 +1045,9 @@ const char *get_link(struct nameidata *nd)
 	int error;
 	const char *res;
 
+	if (unlikely(nd->flags & LOOKUP_NO_SYMLINKS))
+		return ERR_PTR(-ELOOP);
+
 	if (!(nd->flags & LOOKUP_RCU)) {
 		touch_atime(&last->link);
 		cond_resched();
diff --git a/include/linux/namei.h b/include/linux/namei.h
index 397a08ade6a2..ee2e35af387f 100644
--- a/include/linux/namei.h
+++ b/include/linux/namei.h
@@ -39,6 +39,9 @@ enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
 #define LOOKUP_ROOT		0x2000
 #define LOOKUP_ROOT_GRABBED	0x0008
 
+/* Scoping flags for lookup. */
+#define LOOKUP_NO_SYMLINKS	0x020000 /* No symlink crossing. */
+
 extern int path_pts(struct path *path);
 
 extern int user_path_at_empty(int, const char __user *, unsigned, struct path *, int *empty);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
