Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28E7E5F22
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 21:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W353I4LN8zV2AGnfIZh/zI9IoTtdRSxA9FXd9rphe40=; b=qFaT2WRocSs9OO
	JTyUCjfrrlITGBNzy+aZ6Q6/mKLvLmUyaBT1sGfUqU7zvBg7P4b0aBuACoF6frYxRdI3bFolW/PtU
	lk+xmLmt1b7BcQbs5c7S3Y+xO5WWlVnhtreuSYveFIyqiMYINFmhtqsgsUd3HJ7h/YgnZhTPsHCiu
	iapxamYY/8w18/CXnSt5ig+m2iiRXw0cwt7pUZWrlSLOxCDa3V8Ljy4kTgTB9uBBAPsFnmZlQtcsQ
	lWiOgriq2n1tzVxWcp2QdlRGSZBwMAfrBNIsOYiz20z1K+SltUgKpQ7rsmGX9NCaCo5leha2RV+Fi
	ktv5ad2kC0SvBA/EoEOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iORIc-0006CW-Ao; Sat, 26 Oct 2019 19:00:30 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iORHi-0005IE-D5
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 18:59:37 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 470qz85SdpzKmsD;
 Sat, 26 Oct 2019 20:59:32 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id suRkpnqaA-TF; Sat, 26 Oct 2019 20:59:28 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH RESEND v14 6/6] Documentation: path-lookup: mention
 LOOKUP_MAGICLINK_JUMPED
Date: Sun, 27 Oct 2019 05:57:00 +1100
Message-Id: <20191026185700.10708-7-cyphar@cyphar.com>
In-Reply-To: <20191026185700.10708-1-cyphar@cyphar.com>
References: <20191026185700.10708-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_115935_057400_BBAD75D6 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Now that we have a special flag to signify magic-link jumps, mention it
within the path-lookup docs. And now that "magic link" is the correct
term for nd_jump_link()-style symlinks, clean up references to this type
of "symlink".

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 Documentation/filesystems/path-lookup.rst | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/Documentation/filesystems/path-lookup.rst b/Documentation/filesystems/path-lookup.rst
index 434a07b0002b..2c32795389bd 100644
--- a/Documentation/filesystems/path-lookup.rst
+++ b/Documentation/filesystems/path-lookup.rst
@@ -405,6 +405,10 @@ is requested.  Keeping a reference in the ``nameidata`` ensures that
 only one root is in effect for the entire path walk, even if it races
 with a ``chroot()`` system call.
 
+It should be noted that in the case of ``LOOKUP_IN_ROOT`` or
+``LOOKUP_BENEATH``, the effective root becomes the directory file descriptor
+passed to ``openat2()`` (which exposes these ``LOOKUP_`` flags).
+
 The root is needed when either of two conditions holds: (1) either the
 pathname or a symbolic link starts with a "'/'", or (2) a "``..``"
 component is being handled, since "``..``" from the root must always stay
@@ -1149,7 +1153,7 @@ so ``NULL`` is returned to indicate that the symlink can be released and
 the stack frame discarded.
 
 The other case involves things in ``/proc`` that look like symlinks but
-aren't really::
+aren't really (and are therefore commonly referred to as "magic-links")::
 
      $ ls -l /proc/self/fd/1
      lrwx------ 1 neilb neilb 64 Jun 13 10:19 /proc/self/fd/1 -> /dev/pts/4
@@ -1310,12 +1314,14 @@ longer needed.
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
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
