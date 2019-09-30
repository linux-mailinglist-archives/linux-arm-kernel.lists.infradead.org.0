Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0E3C2611
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 20:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqH2Gkgp5BfNwn15lD+AKVZopTaHg+aQA9IB6Ezd96I=; b=X4GGPEEbeagJv0
	ah9fw+v7bIaOsmhbL/w6BZOcRP1muDG3+1Gsvrh6NdG4ZeOCtgreVtkVs7g4+CmiijsSK4zfxHrTe
	jsmGb9ODAKVepb/dOBnBp3gRGbVbzQ3eAhZ++Cp1DmWpAnjE/42EZJfv3C6PTbXgnnmb5vR/0HTct
	0cWlzER/Y++TOzySTkFDprNtR7+CxtnVCh2zizqgJTcNc2L+C+A0PWnRfiZwM9ORl9ug51psvXSvi
	wfQ/tm6AgjXFNegrsBZXeoMufiTOF3qrHKW55T9Gmd7MO2uurnXPVKTATcApYTcPYhekiujn6dnHq
	5GGJ0MZ51AiPZfnbpUYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF0Zx-0005qV-65; Mon, 30 Sep 2019 18:39:25 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF0YJ-0004f1-06
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 18:37:49 +0000
Received: from smtp2.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 71D6CA164B;
 Mon, 30 Sep 2019 20:37:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id 3S-0EmaE9R3C; Mon, 30 Sep 2019 20:37:31 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v13 9/9] Documentation: update path-lookup to mention trailing
 magic-links
Date: Tue,  1 Oct 2019 04:33:16 +1000
Message-Id: <20190930183316.10190-10-cyphar@cyphar.com>
In-Reply-To: <20190930183316.10190-1-cyphar@cyphar.com>
References: <20190930183316.10190-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_113743_434221_8255C51D 
X-CRM114-Status: GOOD (  25.15  )
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

We've introduced new (somewhat subtle) behaviour regarding trailing
magic-links, so it's best to make sure everyone can follow along with
the reasoning behind trailing_magiclink().

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 Documentation/filesystems/path-lookup.rst | 80 ++++++++++++++++++-----
 1 file changed, 63 insertions(+), 17 deletions(-)

diff --git a/Documentation/filesystems/path-lookup.rst b/Documentation/filesystems/path-lookup.rst
index 434a07b0002b..c30145b3d9ba 100644
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
@@ -1149,22 +1153,61 @@ so ``NULL`` is returned to indicate that the symlink can be released and
 the stack frame discarded.
 
 The other case involves things in ``/proc`` that look like symlinks but
-aren't really::
+aren't really (and are therefore commonly referred to as "magic-links")::
 
      $ ls -l /proc/self/fd/1
      lrwx------ 1 neilb neilb 64 Jun 13 10:19 /proc/self/fd/1 -> /dev/pts/4
 
 Every open file descriptor in any process is represented in ``/proc`` by
-something that looks like a symlink.  It is really a reference to the
-target file, not just the name of it.  When you ``readlink`` these
-objects you get a name that might refer to the same file - unless it
-has been unlinked or mounted over.  When ``walk_component()`` follows
-one of these, the ``->follow_link()`` method in "procfs" doesn't return
-a string name, but instead calls ``nd_jump_link()`` which updates the
-``nameidata`` in place to point to that target.  ``->follow_link()`` then
-returns ``NULL``.  Again there is no final component and ``get_link()``
-reports this by leaving the ``last_type`` field of ``nameidata`` as
-``LAST_BIND``.
+a magic-link.  It is really a reference to the target file, not just the
+name of it (hence making them "magical" compared to ordinary symlinks).
+When you ``readlink`` these objects you get a name that might refer to
+the same file - unless it has been unlinked or mounted over.  When
+``walk_component()`` follows one of these, the ``->follow_link()`` method
+in "procfs" doesn't return a string name, but instead calls
+``nd_jump_link()`` which updates the ``nameidata`` in place to point to
+that target.  ``->follow_link()`` then returns ``NULL``. Again there is
+no final component and ``get_link()`` reports this by leaving the
+``last_type`` field of ``nameidata`` as ``LAST_BIND``.
+
+In order to avoid potential re-opening attacks (especially in the context
+of containers), it is necessary to restrict the ability for a trailing
+magic-link to be opened. The restrictions are as follows (and are
+implemented in ``trailing_magiclink()``):
+
+* If the ``open()`` is an "ordinary open" (without ``O_PATH``), the
+  access-mode of the ``open()`` call must be permitted by one of the
+  octets in the magic-link's file mode (elsewhere in Linux, ordinary
+  symlinks have a file mode of ``0777`` but this doesn't apply to
+  magic-links). Each "ordinary" file in ``/proc/self/fd/$n`` has the user
+  octet of its file mode set to correspond to the access-mode it was
+  opened with.
+
+  This restriction means that you cannot re-open an ``O_RDONLY`` file
+  descriptor through ``/proc/self/fd/$n`` with ``O_RDWR``.
+
+With a "half-open" (with ``O_PATH``), there is no ``-EACCES``-enforced
+restrictions on ``open()``, but there are rules about the mode shown in
+``/proc/self/fd/$n``:
+
+* If the target of the ``open()`` is not a magic-link, then the group
+  octet of the file mode is set to permit all access modes.
+
+* Otherwise, the mode of the new ``O_PATH`` descriptor is set to
+  effectively the same mode as the magic-link (though the permissions are
+  set in the group octet of the mode). This means that an ``O_PATH`` of a
+  magic-link gives you no more re-open permissions than the magic-link
+  itself.
+
+With these ``O_PATH`` restrictions, it is still possible to re-open an
+``O_PATH`` file descriptor but you cannot use ``O_PATH`` to work around
+the above restrictions on "ordinary opens" of magic-links.
+
+In order to avoid certain race conditions (where a file descriptor
+associated with a magic-link is swapped, causing the ``link_inode`` of
+``nameidata`` to become stale during magic-link traversal),
+``nd_jump_link()`` stores the mode of the magic-link during traversal in
+``last_magiclink``.
 
 Following the symlink in the final component
 --------------------------------------------
@@ -1187,7 +1230,8 @@ handles the final component.  If the final component is a symlink
 that needs to be followed, then ``trailing_symlink()`` is called to set
 things up properly and the loop repeats, calling ``link_path_walk()``
 again.  This could loop as many as 40 times if the last component of
-each symlink is another symlink.
+each symlink is another symlink. ``trailing_magiclink()`` is then called to
+deal with permission checks relevant to ``/proc/$pid/fd``-style "symlinks".
 
 The various functions that examine the final component and possibly
 report that it is a symlink are ``lookup_last()``, ``mountpoint_last()``
@@ -1310,12 +1354,14 @@ longer needed.
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
