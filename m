Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411AF162603
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 13:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FkHQe0rpl1I1bG7B/C4aTJV2VwrYBSKVYXJD9aLaRl0=; b=ceIU5TlQzAKT+h
	c2GDhgeQykIULnGC6cQ84oL/chs+gK3Ufx8EM7JHeoZgOilxaAJDR210e89SFiPSAkGSy0654N6en
	LsIUDr3H4R7eR5tQyvVDqgTYBOZ1+L8pU5sdgdCOTqzZ2vusKcDc/gd366DJa3OFw6GSSGYZJOQ/6
	QSjOie5xDejF7p2+aN+fTScZIsIvKaYADxr5hGl8pr0vtvCFU+cgcTHJSXdB0amqpyicwfNZnxvex
	bj3n0lBYZrpLe8eRboIqRgpMf1GQSbruIUdKuwdgwSw23pSTesI514AY31Sxqf+tmFOD9DPioiSIA
	i7Ouv67nKLr0+6zJqQAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j41uT-0008LO-Ls; Tue, 18 Feb 2020 12:23:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j41uM-0008Ks-PA
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 12:23:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5CA681FB;
 Tue, 18 Feb 2020 04:23:20 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 27ACF3F6CF;
 Tue, 18 Feb 2020 04:23:19 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH] mm: Avoid creating virtual address aliases in
 brk()/mmap()/mremap()
Date: Tue, 18 Feb 2020 12:23:10 +0000
Message-Id: <20200218122310.72710-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_042322_903746_90242B35 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Florian Weimer <fweimer@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Victor Stinner <vstinner@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the arm64 kernel ignores the top address byte passed to brk(),
mmap() and mremap(). When the user is not aware of the 56-bit address
limit or relies on the kernel to return an error, untagging such
pointers has the potential to create address aliases in user-space.
Passing a tagged address to munmap(), madvise() is permitted since the
tagged pointer is expected to be inside an existing mapping.

Remove untagging in the above functions by partially reverting commit
ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk"). In
addition, update the arm64 tagged-address-abi.rst document accordingly.

Fixes: ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk")
Cc: <stable@vger.kernel.org> # 5.4.x-
Cc: Andrey Konovalov <andreyknvl@google.com>
Cc: Will Deacon <will@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Florian Weimer <fweimer@redhat.com>
Reported-by: Victor Stinner <vstinner@redhat.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 Documentation/arm64/tagged-address-abi.rst | 7 +++++--
 mm/mmap.c                                  | 4 ----
 mm/mremap.c                                | 1 -
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/Documentation/arm64/tagged-address-abi.rst b/Documentation/arm64/tagged-address-abi.rst
index d4a85d535bf9..1771a8b5712e 100644
--- a/Documentation/arm64/tagged-address-abi.rst
+++ b/Documentation/arm64/tagged-address-abi.rst
@@ -44,8 +44,11 @@ The AArch64 Tagged Address ABI has two stages of relaxation depending
 how the user addresses are used by the kernel:
 
 1. User addresses not accessed by the kernel but used for address space
-   management (e.g. ``mmap()``, ``mprotect()``, ``madvise()``). The use
-   of valid tagged pointers in this context is always allowed.
+   management (e.g. ``mprotect()``, ``madvise()``). The use of valid
+   tagged pointers in this context is allowed with the exception of
+   ``brk()``, ``mmap()`` and the ``new_address`` argument to
+   ``mremap()`` as these have the potential of aliasing with existing
+   user addresses.
 
 2. User addresses accessed by the kernel (e.g. ``write()``). This ABI
    relaxation is disabled by default and the application thread needs to
diff --git a/mm/mmap.c b/mm/mmap.c
index 6756b8bb0033..d681a20eb4ea 100644
--- a/mm/mmap.c
+++ b/mm/mmap.c
@@ -195,8 +195,6 @@ SYSCALL_DEFINE1(brk, unsigned long, brk)
 	bool downgraded = false;
 	LIST_HEAD(uf);
 
-	brk = untagged_addr(brk);
-
 	if (down_write_killable(&mm->mmap_sem))
 		return -EINTR;
 
@@ -1557,8 +1555,6 @@ unsigned long ksys_mmap_pgoff(unsigned long addr, unsigned long len,
 	struct file *file = NULL;
 	unsigned long retval;
 
-	addr = untagged_addr(addr);
-
 	if (!(flags & MAP_ANONYMOUS)) {
 		audit_mmap_fd(fd, flags);
 		file = fget(fd);
diff --git a/mm/mremap.c b/mm/mremap.c
index 122938dcec15..af363063ea23 100644
--- a/mm/mremap.c
+++ b/mm/mremap.c
@@ -607,7 +607,6 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
 	LIST_HEAD(uf_unmap);
 
 	addr = untagged_addr(addr);
-	new_addr = untagged_addr(new_addr);
 
 	if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE))
 		return ret;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
