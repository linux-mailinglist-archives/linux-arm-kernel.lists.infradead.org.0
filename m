Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D4215168
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPDdkZrsF38iPfGoKmbzfL7D63Jm60v2n8JMxVmVtI8=; b=U3ocsxcTTHAxwf
	2FU53Hk3RasuV6XxxE8TlfIgtIFi/MOYV1757jYZMN3G8NaZzk2gJBxI44qPeaAvVNFA56IE8w/bk
	UezSkCofyLG5zmwOxfxv0KH4x36BIxph1MwH6SyclndOn7IxvQ4qDi3LgfafmSTpg64l6l0edn+ef
	BniHiq6K7tf5YD/R1TKrqF/LrpAGQRsKJxUtvi+hxii+5d/Z9FgXhUo0jGMZPAciVLrGrkTDN7NCn
	dZ/oS0Gneq3RbHDEtVwev0oKEjJJk54M9k0tjjZd59ZrWprwjx8kK3mKXbZ7UZn3t/6I6lypW12D6
	hZbUDDEVNZT3fEpgEmnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgXH-0007jK-Pe; Mon, 06 May 2019 16:32:15 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWP-0006hm-E8
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:31:36 +0000
Received: by mail-qt1-x849.google.com with SMTP id 36so5883620qtc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Sr7h/i5NUs830xdi49brXpX8Xgw0zOZ/j8t+7szlSas=;
 b=QtsvoV7Po8irxE95A4IUTt073AlSokSt5f4jeGs4J/vpwmlE8X7RX7QaS8TwwKINpl
 TYcWXr9HFIcM42Ycd53FSk54sTBSqAMHSAhMt0EZG0AAmalLsHR3vNmr8Kbaizl/g+E6
 8qaMKdsm6n/yHXXFV3NheiioJSmzpsY1Wy3R0lq3UIo4BBuPF4/kJK/8mOY90T2xvxsA
 bMKpuJXvoZdi1mFhAMHBjIFf431SlOAUzSTpe0BtJBdAjyR5vJIwOnaxG5WHyE4Pv3Ci
 fvIOy7ndXSyTTgu1eLM4neGHGs/MtdmojiyjvM2WCtRX/wJLos+VufLd/KEpp1n9c6L9
 hixw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Sr7h/i5NUs830xdi49brXpX8Xgw0zOZ/j8t+7szlSas=;
 b=ePM8M8rf3CQWQSybnW8gg5jbQTeRQMCW1uy5S5aXbminJ9BpPCLEWEvUx4qoyzj8Hx
 G8k2SYO7k595Hmpp/3js7+XihAPTRk9lJO1/RcSf+N8gii455LioPkslXk3leTf8YN/K
 SMtdq3TTwz0lRvVfMrCJWPYEgRL28KFHr2lFFdW2sO/zHJZce+Z0OjrJipvyQlk+UHHI
 NHn+Xh69bQRm9nZTaExsDl1zMcvwbhfO0fzuOygMbS/cIL8TQX6bHlNsW1yCwJ5cTTzc
 JK4skuWS0rbGS4MOS6En+jxhG/TadFWykwZAeX640o47BDlrODg2CnKWCRlO88bnUU58
 X/Kg==
X-Gm-Message-State: APjAAAWwASord5aCnQXXWOAfkOtxLjbnBrTZDYhW7TXcSFB0jgCi2qp9
 TmZuifLU+D0V0cjeXlCKdJ7EAxbEfAoYGvlOn7yAwe2n08u4sCBY4zXdVppLkpyaQ1dZbfARj05
 ZIrPPSOxmYWV/FCGj2eJGy4+juEf1Cky+pM0mAdC0+Z9huNZZeqRITy9CXR3XgHcgvYppLJiyXS
 HoPkeyWnM54tdDBs4=
X-Google-Smtp-Source: APXvYqyaWQ/h+7sj687R+mj1QFxVIEtzzPUk+MQp1scC/FCB729CtR4M/2QotRWtcYpbZ35YmOmSTMTfxcN37OLC
X-Received: by 2002:ac8:930:: with SMTP id t45mr5432058qth.357.1557160279586; 
 Mon, 06 May 2019 09:31:19 -0700 (PDT)
Date: Mon,  6 May 2019 18:30:50 +0200
In-Reply-To: <cover.1557160186.git.andreyknvl@google.com>
Message-Id: <55496bc72542ec14c4c8de23a4df235644013911.1557160186.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v15 04/17] mm: add ksys_ wrappers to memory syscalls
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_093122_182480_9131936B 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Lee Smith <Lee.Smith@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is a part of a series that extends arm64 kernel ABI to allow to
pass tagged user pointers (with the top byte set to something else other
than 0x00) as syscall arguments.

This patch adds ksys_ wrappers to the following memory syscalls:

brk, get_mempolicy (renamed kernel_get_mempolicy -> ksys_get_mempolicy),
madvise, mbind (renamed kernel_mbind -> ksys_mbind), mincore,
mlock (renamed do_mlock -> ksys_mlock), mlock2, mmap_pgoff,
mprotect (renamed do_mprotect_pkey -> ksys_mprotect_pkey), mremap, msync,
munlock, munmap, remap_file_pages, shmat, shmdt.

The next patch in this series will add a custom implementation for these
syscalls that makes them accept tagged pointers on arm64.

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 include/linux/syscalls.h |  22 +++++++
 ipc/shm.c                |   7 ++-
 mm/madvise.c             | 129 ++++++++++++++++++++-------------------
 mm/mempolicy.c           |  21 +++----
 mm/mincore.c             |  57 +++++++++--------
 mm/mlock.c               |  20 ++++--
 mm/mmap.c                |  30 ++++++---
 mm/mprotect.c            |   6 +-
 mm/mremap.c              |  27 +++++---
 mm/msync.c               |  35 ++++++-----
 10 files changed, 213 insertions(+), 141 deletions(-)

diff --git a/include/linux/syscalls.h b/include/linux/syscalls.h
index e446806a561f..70008f5ed84f 100644
--- a/include/linux/syscalls.h
+++ b/include/linux/syscalls.h
@@ -1260,6 +1260,28 @@ int ksys_ipc(unsigned int call, int first, unsigned long second,
 	unsigned long third, void __user * ptr, long fifth);
 int compat_ksys_ipc(u32 call, int first, int second,
 	u32 third, u32 ptr, u32 fifth);
+unsigned long ksys_mremap(unsigned long addr, unsigned long old_len,
+			unsigned long new_len, unsigned long flags,
+			unsigned long new_addr);
+int ksys_munmap(unsigned long addr, size_t len);
+unsigned long ksys_brk(unsigned long brk);
+int ksys_get_mempolicy(int __user *policy, unsigned long __user *nmask,
+		unsigned long maxnode, unsigned long addr, unsigned long flags);
+int ksys_madvise(unsigned long start, size_t len_in, int behavior);
+long ksys_mbind(unsigned long start, unsigned long len,
+		unsigned long mode, const unsigned long __user *nmask,
+		unsigned long maxnode, unsigned int flags);
+__must_check int ksys_mlock(unsigned long start, size_t len, vm_flags_t flags);
+__must_check int ksys_mlock2(unsigned long start, size_t len, vm_flags_t flags);
+int ksys_munlock(unsigned long start, size_t len);
+int ksys_mprotect_pkey(unsigned long start, size_t len,
+		unsigned long prot, int pkey);
+int ksys_msync(unsigned long start, size_t len, int flags);
+long ksys_mincore(unsigned long start, size_t len, unsigned char __user *vec);
+unsigned long ksys_remap_file_pages(unsigned long start, unsigned long size,
+		unsigned long prot, unsigned long pgoff, unsigned long flags);
+long ksys_shmat(int shmid, char __user *shmaddr, int shmflg);
+long ksys_shmdt(char __user *shmaddr);
 
 /*
  * The following kernel syscall equivalents are just wrappers to fs-internal
diff --git a/ipc/shm.c b/ipc/shm.c
index ce1ca9f7c6e9..557b43968c0e 100644
--- a/ipc/shm.c
+++ b/ipc/shm.c
@@ -1588,7 +1588,7 @@ long do_shmat(int shmid, char __user *shmaddr, int shmflg,
 	return err;
 }
 
-SYSCALL_DEFINE3(shmat, int, shmid, char __user *, shmaddr, int, shmflg)
+long ksys_shmat(int shmid, char __user *shmaddr, int shmflg)
 {
 	unsigned long ret;
 	long err;
@@ -1600,6 +1600,11 @@ SYSCALL_DEFINE3(shmat, int, shmid, char __user *, shmaddr, int, shmflg)
 	return (long)ret;
 }
 
+SYSCALL_DEFINE3(shmat, int, shmid, char __user *, shmaddr, int, shmflg)
+{
+	return ksys_shmat(shmid, shmaddr, shmflg);
+}
+
 #ifdef CONFIG_COMPAT
 
 #ifndef COMPAT_SHMLBA
diff --git a/mm/madvise.c b/mm/madvise.c
index 21a7881a2db4..c27f5f14e2ee 100644
--- a/mm/madvise.c
+++ b/mm/madvise.c
@@ -738,68 +738,7 @@ madvise_behavior_valid(int behavior)
 	}
 }
 
-/*
- * The madvise(2) system call.
- *
- * Applications can use madvise() to advise the kernel how it should
- * handle paging I/O in this VM area.  The idea is to help the kernel
- * use appropriate read-ahead and caching techniques.  The information
- * provided is advisory only, and can be safely disregarded by the
- * kernel without affecting the correct operation of the application.
- *
- * behavior values:
- *  MADV_NORMAL - the default behavior is to read clusters.  This
- *		results in some read-ahead and read-behind.
- *  MADV_RANDOM - the system should read the minimum amount of data
- *		on any access, since it is unlikely that the appli-
- *		cation will need more than what it asks for.
- *  MADV_SEQUENTIAL - pages in the given range will probably be accessed
- *		once, so they can be aggressively read ahead, and
- *		can be freed soon after they are accessed.
- *  MADV_WILLNEED - the application is notifying the system to read
- *		some pages ahead.
- *  MADV_DONTNEED - the application is finished with the given range,
- *		so the kernel can free resources associated with it.
- *  MADV_FREE - the application marks pages in the given range as lazy free,
- *		where actual purges are postponed until memory pressure happens.
- *  MADV_REMOVE - the application wants to free up the given range of
- *		pages and associated backing store.
- *  MADV_DONTFORK - omit this area from child's address space when forking:
- *		typically, to avoid COWing pages pinned by get_user_pages().
- *  MADV_DOFORK - cancel MADV_DONTFORK: no longer omit this area when forking.
- *  MADV_WIPEONFORK - present the child process with zero-filled memory in this
- *              range after a fork.
- *  MADV_KEEPONFORK - undo the effect of MADV_WIPEONFORK
- *  MADV_HWPOISON - trigger memory error handler as if the given memory range
- *		were corrupted by unrecoverable hardware memory failure.
- *  MADV_SOFT_OFFLINE - try to soft-offline the given range of memory.
- *  MADV_MERGEABLE - the application recommends that KSM try to merge pages in
- *		this area with pages of identical content from other such areas.
- *  MADV_UNMERGEABLE- cancel MADV_MERGEABLE: no longer merge pages with others.
- *  MADV_HUGEPAGE - the application wants to back the given range by transparent
- *		huge pages in the future. Existing pages might be coalesced and
- *		new pages might be allocated as THP.
- *  MADV_NOHUGEPAGE - mark the given range as not worth being backed by
- *		transparent huge pages so the existing pages will not be
- *		coalesced into THP and new pages will not be allocated as THP.
- *  MADV_DONTDUMP - the application wants to prevent pages in the given range
- *		from being included in its core dump.
- *  MADV_DODUMP - cancel MADV_DONTDUMP: no longer exclude from core dump.
- *
- * return values:
- *  zero    - success
- *  -EINVAL - start + len < 0, start is not page-aligned,
- *		"behavior" is not a valid value, or application
- *		is attempting to release locked or shared pages,
- *		or the specified address range includes file, Huge TLB,
- *		MAP_SHARED or VMPFNMAP range.
- *  -ENOMEM - addresses in the specified range are not currently
- *		mapped, or are outside the AS of the process.
- *  -EIO    - an I/O error occurred while paging in data.
- *  -EBADF  - map exists, but area maps something that isn't a file.
- *  -EAGAIN - a kernel resource was temporarily unavailable.
- */
-SYSCALL_DEFINE3(madvise, unsigned long, start, size_t, len_in, int, behavior)
+int ksys_madvise(unsigned long start, size_t len_in, int behavior)
 {
 	unsigned long end, tmp;
 	struct vm_area_struct *vma, *prev;
@@ -894,3 +833,69 @@ SYSCALL_DEFINE3(madvise, unsigned long, start, size_t, len_in, int, behavior)
 
 	return error;
 }
+
+/*
+ * The madvise(2) system call.
+ *
+ * Applications can use madvise() to advise the kernel how it should
+ * handle paging I/O in this VM area.  The idea is to help the kernel
+ * use appropriate read-ahead and caching techniques.  The information
+ * provided is advisory only, and can be safely disregarded by the
+ * kernel without affecting the correct operation of the application.
+ *
+ * behavior values:
+ *  MADV_NORMAL - the default behavior is to read clusters.  This
+ *		results in some read-ahead and read-behind.
+ *  MADV_RANDOM - the system should read the minimum amount of data
+ *		on any access, since it is unlikely that the appli-
+ *		cation will need more than what it asks for.
+ *  MADV_SEQUENTIAL - pages in the given range will probably be accessed
+ *		once, so they can be aggressively read ahead, and
+ *		can be freed soon after they are accessed.
+ *  MADV_WILLNEED - the application is notifying the system to read
+ *		some pages ahead.
+ *  MADV_DONTNEED - the application is finished with the given range,
+ *		so the kernel can free resources associated with it.
+ *  MADV_FREE - the application marks pages in the given range as lazy free,
+ *		where actual purges are postponed until memory pressure happens.
+ *  MADV_REMOVE - the application wants to free up the given range of
+ *		pages and associated backing store.
+ *  MADV_DONTFORK - omit this area from child's address space when forking:
+ *		typically, to avoid COWing pages pinned by get_user_pages().
+ *  MADV_DOFORK - cancel MADV_DONTFORK: no longer omit this area when forking.
+ *  MADV_WIPEONFORK - present the child process with zero-filled memory in this
+ *              range after a fork.
+ *  MADV_KEEPONFORK - undo the effect of MADV_WIPEONFORK
+ *  MADV_HWPOISON - trigger memory error handler as if the given memory range
+ *		were corrupted by unrecoverable hardware memory failure.
+ *  MADV_SOFT_OFFLINE - try to soft-offline the given range of memory.
+ *  MADV_MERGEABLE - the application recommends that KSM try to merge pages in
+ *		this area with pages of identical content from other such areas.
+ *  MADV_UNMERGEABLE- cancel MADV_MERGEABLE: no longer merge pages with others.
+ *  MADV_HUGEPAGE - the application wants to back the given range by transparent
+ *		huge pages in the future. Existing pages might be coalesced and
+ *		new pages might be allocated as THP.
+ *  MADV_NOHUGEPAGE - mark the given range as not worth being backed by
+ *		transparent huge pages so the existing pages will not be
+ *		coalesced into THP and new pages will not be allocated as THP.
+ *  MADV_DONTDUMP - the application wants to prevent pages in the given range
+ *		from being included in its core dump.
+ *  MADV_DODUMP - cancel MADV_DONTDUMP: no longer exclude from core dump.
+ *
+ * return values:
+ *  zero    - success
+ *  -EINVAL - start + len < 0, start is not page-aligned,
+ *		"behavior" is not a valid value, or application
+ *		is attempting to release locked or shared pages,
+ *		or the specified address range includes file, Huge TLB,
+ *		MAP_SHARED or VMPFNMAP range.
+ *  -ENOMEM - addresses in the specified range are not currently
+ *		mapped, or are outside the AS of the process.
+ *  -EIO    - an I/O error occurred while paging in data.
+ *  -EBADF  - map exists, but area maps something that isn't a file.
+ *  -EAGAIN - a kernel resource was temporarily unavailable.
+ */
+SYSCALL_DEFINE3(madvise, unsigned long, start, size_t, len_in, int, behavior)
+{
+	return ksys_madvise(start, len_in, behavior);
+}
diff --git a/mm/mempolicy.c b/mm/mempolicy.c
index 2219e747df49..c2f82a045ceb 100644
--- a/mm/mempolicy.c
+++ b/mm/mempolicy.c
@@ -1352,9 +1352,9 @@ static int copy_nodes_to_user(unsigned long __user *mask, unsigned long maxnode,
 	return copy_to_user(mask, nodes_addr(*nodes), copy) ? -EFAULT : 0;
 }
 
-static long kernel_mbind(unsigned long start, unsigned long len,
-			 unsigned long mode, const unsigned long __user *nmask,
-			 unsigned long maxnode, unsigned int flags)
+long ksys_mbind(unsigned long start, unsigned long len,
+		unsigned long mode, const unsigned long __user *nmask,
+		unsigned long maxnode, unsigned int flags)
 {
 	nodemask_t nodes;
 	int err;
@@ -1377,7 +1377,7 @@ SYSCALL_DEFINE6(mbind, unsigned long, start, unsigned long, len,
 		unsigned long, mode, const unsigned long __user *, nmask,
 		unsigned long, maxnode, unsigned int, flags)
 {
-	return kernel_mbind(start, len, mode, nmask, maxnode, flags);
+	return ksys_mbind(start, len, mode, nmask, maxnode, flags);
 }
 
 /* Set the process memory policy */
@@ -1507,11 +1507,8 @@ SYSCALL_DEFINE4(migrate_pages, pid_t, pid, unsigned long, maxnode,
 
 
 /* Retrieve NUMA policy */
-static int kernel_get_mempolicy(int __user *policy,
-				unsigned long __user *nmask,
-				unsigned long maxnode,
-				unsigned long addr,
-				unsigned long flags)
+int ksys_get_mempolicy(int __user *policy, unsigned long __user *nmask,
+		unsigned long maxnode, unsigned long addr, unsigned long flags)
 {
 	int err;
 	int uninitialized_var(pval);
@@ -1538,7 +1535,7 @@ SYSCALL_DEFINE5(get_mempolicy, int __user *, policy,
 		unsigned long __user *, nmask, unsigned long, maxnode,
 		unsigned long, addr, unsigned long, flags)
 {
-	return kernel_get_mempolicy(policy, nmask, maxnode, addr, flags);
+	return ksys_get_mempolicy(policy, nmask, maxnode, addr, flags);
 }
 
 #ifdef CONFIG_COMPAT
@@ -1559,7 +1556,7 @@ COMPAT_SYSCALL_DEFINE5(get_mempolicy, int __user *, policy,
 	if (nmask)
 		nm = compat_alloc_user_space(alloc_size);
 
-	err = kernel_get_mempolicy(policy, nm, nr_bits+1, addr, flags);
+	err = ksys_get_mempolicy(policy, nm, nr_bits+1, addr, flags);
 
 	if (!err && nmask) {
 		unsigned long copy_size;
@@ -1613,7 +1610,7 @@ COMPAT_SYSCALL_DEFINE6(mbind, compat_ulong_t, start, compat_ulong_t, len,
 			return -EFAULT;
 	}
 
-	return kernel_mbind(start, len, mode, nm, nr_bits+1, flags);
+	return ksys_mbind(start, len, mode, nm, nr_bits+1, flags);
 }
 
 COMPAT_SYSCALL_DEFINE4(migrate_pages, compat_pid_t, pid,
diff --git a/mm/mincore.c b/mm/mincore.c
index 218099b5ed31..a609bd8128da 100644
--- a/mm/mincore.c
+++ b/mm/mincore.c
@@ -197,32 +197,7 @@ static long do_mincore(unsigned long addr, unsigned long pages, unsigned char *v
 	return (end - addr) >> PAGE_SHIFT;
 }
 
-/*
- * The mincore(2) system call.
- *
- * mincore() returns the memory residency status of the pages in the
- * current process's address space specified by [addr, addr + len).
- * The status is returned in a vector of bytes.  The least significant
- * bit of each byte is 1 if the referenced page is in memory, otherwise
- * it is zero.
- *
- * Because the status of a page can change after mincore() checks it
- * but before it returns to the application, the returned vector may
- * contain stale information.  Only locked pages are guaranteed to
- * remain in memory.
- *
- * return values:
- *  zero    - success
- *  -EFAULT - vec points to an illegal address
- *  -EINVAL - addr is not a multiple of PAGE_SIZE
- *  -ENOMEM - Addresses in the range [addr, addr + len] are
- *		invalid for the address space of this process, or
- *		specify one or more pages which are not currently
- *		mapped
- *  -EAGAIN - A kernel resource was temporarily unavailable.
- */
-SYSCALL_DEFINE3(mincore, unsigned long, start, size_t, len,
-		unsigned char __user *, vec)
+long ksys_mincore(unsigned long start, size_t len, unsigned char __user *vec)
 {
 	long retval;
 	unsigned long pages;
@@ -271,3 +246,33 @@ SYSCALL_DEFINE3(mincore, unsigned long, start, size_t, len,
 	free_page((unsigned long) tmp);
 	return retval;
 }
+
+/*
+ * The mincore(2) system call.
+ *
+ * mincore() returns the memory residency status of the pages in the
+ * current process's address space specified by [addr, addr + len).
+ * The status is returned in a vector of bytes.  The least significant
+ * bit of each byte is 1 if the referenced page is in memory, otherwise
+ * it is zero.
+ *
+ * Because the status of a page can change after mincore() checks it
+ * but before it returns to the application, the returned vector may
+ * contain stale information.  Only locked pages are guaranteed to
+ * remain in memory.
+ *
+ * return values:
+ *  zero    - success
+ *  -EFAULT - vec points to an illegal address
+ *  -EINVAL - addr is not a multiple of PAGE_SIZE
+ *  -ENOMEM - Addresses in the range [addr, addr + len] are
+ *		invalid for the address space of this process, or
+ *		specify one or more pages which are not currently
+ *		mapped
+ *  -EAGAIN - A kernel resource was temporarily unavailable.
+ */
+SYSCALL_DEFINE3(mincore, unsigned long, start, size_t, len,
+		unsigned char __user *, vec)
+{
+	return ksys_mincore(start, len, vec);
+}
diff --git a/mm/mlock.c b/mm/mlock.c
index 080f3b36415b..09e449447539 100644
--- a/mm/mlock.c
+++ b/mm/mlock.c
@@ -668,7 +668,7 @@ static int count_mm_mlocked_page_nr(struct mm_struct *mm,
 	return count >> PAGE_SHIFT;
 }
 
-static __must_check int do_mlock(unsigned long start, size_t len, vm_flags_t flags)
+__must_check int ksys_mlock(unsigned long start, size_t len, vm_flags_t flags)
 {
 	unsigned long locked;
 	unsigned long lock_limit;
@@ -715,10 +715,10 @@ static __must_check int do_mlock(unsigned long start, size_t len, vm_flags_t fla
 
 SYSCALL_DEFINE2(mlock, unsigned long, start, size_t, len)
 {
-	return do_mlock(start, len, VM_LOCKED);
+	return ksys_mlock(start, len, VM_LOCKED);
 }
 
-SYSCALL_DEFINE3(mlock2, unsigned long, start, size_t, len, int, flags)
+__must_check int ksys_mlock2(unsigned long start, size_t len, vm_flags_t flags)
 {
 	vm_flags_t vm_flags = VM_LOCKED;
 
@@ -728,10 +728,15 @@ SYSCALL_DEFINE3(mlock2, unsigned long, start, size_t, len, int, flags)
 	if (flags & MLOCK_ONFAULT)
 		vm_flags |= VM_LOCKONFAULT;
 
-	return do_mlock(start, len, vm_flags);
+	return ksys_mlock(start, len, vm_flags);
 }
 
-SYSCALL_DEFINE2(munlock, unsigned long, start, size_t, len)
+SYSCALL_DEFINE3(mlock2, unsigned long, start, size_t, len, int, flags)
+{
+	return ksys_mlock2(start, len, flags);
+}
+
+int ksys_munlock(unsigned long start, size_t len)
 {
 	int ret;
 
@@ -746,6 +751,11 @@ SYSCALL_DEFINE2(munlock, unsigned long, start, size_t, len)
 	return ret;
 }
 
+SYSCALL_DEFINE2(munlock, unsigned long, start, size_t, len)
+{
+	return ksys_munlock(start, len);
+}
+
 /*
  * Take the MCL_* flags passed into mlockall (or 0 if called from munlockall)
  * and translate into the appropriate modifications to mm->def_flags and/or the
diff --git a/mm/mmap.c b/mm/mmap.c
index bd7b9f293b39..09bfaf36b961 100644
--- a/mm/mmap.c
+++ b/mm/mmap.c
@@ -189,7 +189,8 @@ static struct vm_area_struct *remove_vma(struct vm_area_struct *vma)
 
 static int do_brk_flags(unsigned long addr, unsigned long request, unsigned long flags,
 		struct list_head *uf);
-SYSCALL_DEFINE1(brk, unsigned long, brk)
+
+unsigned long ksys_brk(unsigned long brk)
 {
 	unsigned long retval;
 	unsigned long newbrk, oldbrk, origbrk;
@@ -288,6 +289,11 @@ SYSCALL_DEFINE1(brk, unsigned long, brk)
 	return retval;
 }
 
+SYSCALL_DEFINE1(brk, unsigned long, brk)
+{
+	return ksys_brk(brk);
+}
+
 static long vma_compute_subtree_gap(struct vm_area_struct *vma)
 {
 	unsigned long max, prev_end, subtree_gap;
@@ -2870,18 +2876,19 @@ int vm_munmap(unsigned long start, size_t len)
 }
 EXPORT_SYMBOL(vm_munmap);
 
-SYSCALL_DEFINE2(munmap, unsigned long, addr, size_t, len)
+int ksys_munmap(unsigned long addr, size_t len)
 {
 	profile_munmap(addr);
 	return __vm_munmap(addr, len, true);
 }
 
+SYSCALL_DEFINE2(munmap, unsigned long, addr, size_t, len)
+{
+	return ksys_munmap(addr, len);
+}
 
-/*
- * Emulation of deprecated remap_file_pages() syscall.
- */
-SYSCALL_DEFINE5(remap_file_pages, unsigned long, start, unsigned long, size,
-		unsigned long, prot, unsigned long, pgoff, unsigned long, flags)
+unsigned long ksys_remap_file_pages(unsigned long start, unsigned long size,
+		unsigned long prot, unsigned long pgoff, unsigned long flags)
 {
 
 	struct mm_struct *mm = current->mm;
@@ -2976,6 +2983,15 @@ SYSCALL_DEFINE5(remap_file_pages, unsigned long, start, unsigned long, size,
 	return ret;
 }
 
+/*
+ * Emulation of deprecated remap_file_pages() syscall.
+ */
+SYSCALL_DEFINE5(remap_file_pages, unsigned long, start, unsigned long, size,
+		unsigned long, prot, unsigned long, pgoff, unsigned long, flags)
+{
+	return ksys_remap_file_pages(start, size, prot, pgoff, flags);
+}
+
 /*
  *  this is really a simplified "do_mmap".  it only handles
  *  anonymous maps.  eventually we may be able to do some
diff --git a/mm/mprotect.c b/mm/mprotect.c
index 028c724dcb1a..07344bdd7a04 100644
--- a/mm/mprotect.c
+++ b/mm/mprotect.c
@@ -454,7 +454,7 @@ mprotect_fixup(struct vm_area_struct *vma, struct vm_area_struct **pprev,
 /*
  * pkey==-1 when doing a legacy mprotect()
  */
-static int do_mprotect_pkey(unsigned long start, size_t len,
+int ksys_mprotect_pkey(unsigned long start, size_t len,
 		unsigned long prot, int pkey)
 {
 	unsigned long nstart, end, tmp, reqprot;
@@ -578,7 +578,7 @@ static int do_mprotect_pkey(unsigned long start, size_t len,
 SYSCALL_DEFINE3(mprotect, unsigned long, start, size_t, len,
 		unsigned long, prot)
 {
-	return do_mprotect_pkey(start, len, prot, -1);
+	return ksys_mprotect_pkey(start, len, prot, -1);
 }
 
 #ifdef CONFIG_ARCH_HAS_PKEYS
@@ -586,7 +586,7 @@ SYSCALL_DEFINE3(mprotect, unsigned long, start, size_t, len,
 SYSCALL_DEFINE4(pkey_mprotect, unsigned long, start, size_t, len,
 		unsigned long, prot, int, pkey)
 {
-	return do_mprotect_pkey(start, len, prot, pkey);
+	return ksys_mprotect_pkey(start, len, prot, pkey);
 }
 
 SYSCALL_DEFINE2(pkey_alloc, unsigned long, flags, unsigned long, init_val)
diff --git a/mm/mremap.c b/mm/mremap.c
index e3edef6b7a12..fec1f9911388 100644
--- a/mm/mremap.c
+++ b/mm/mremap.c
@@ -584,16 +584,9 @@ static int vma_expandable(struct vm_area_struct *vma, unsigned long delta)
 	return 1;
 }
 
-/*
- * Expand (or shrink) an existing mapping, potentially moving it at the
- * same time (controlled by the MREMAP_MAYMOVE flag and available VM space)
- *
- * MREMAP_FIXED option added 5-Dec-1999 by Benjamin LaHaise
- * This option implies MREMAP_MAYMOVE.
- */
-SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
-		unsigned long, new_len, unsigned long, flags,
-		unsigned long, new_addr)
+unsigned long ksys_mremap(unsigned long addr, unsigned long old_len,
+			unsigned long new_len, unsigned long flags,
+			unsigned long new_addr)
 {
 	struct mm_struct *mm = current->mm;
 	struct vm_area_struct *vma;
@@ -726,3 +719,17 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
 	userfaultfd_unmap_complete(mm, &uf_unmap);
 	return ret;
 }
+
+/*
+ * Expand (or shrink) an existing mapping, potentially moving it at the
+ * same time (controlled by the MREMAP_MAYMOVE flag and available VM space)
+ *
+ * MREMAP_FIXED option added 5-Dec-1999 by Benjamin LaHaise
+ * This option implies MREMAP_MAYMOVE.
+ */
+SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
+		unsigned long, new_len, unsigned long, flags,
+		unsigned long, new_addr)
+{
+	return ksys_mremap(addr, old_len, new_len, flags, new_addr);
+}
diff --git a/mm/msync.c b/mm/msync.c
index ef30a429623a..b5a013549626 100644
--- a/mm/msync.c
+++ b/mm/msync.c
@@ -15,21 +15,7 @@
 #include <linux/syscalls.h>
 #include <linux/sched.h>
 
-/*
- * MS_SYNC syncs the entire file - including mappings.
- *
- * MS_ASYNC does not start I/O (it used to, up to 2.5.67).
- * Nor does it marks the relevant pages dirty (it used to up to 2.6.17).
- * Now it doesn't do anything, since dirty pages are properly tracked.
- *
- * The application may now run fsync() to
- * write out the dirty pages and wait on the writeout and check the result.
- * Or the application may run fadvise(FADV_DONTNEED) against the fd to start
- * async writeout immediately.
- * So by _not_ starting I/O in MS_ASYNC we provide complete flexibility to
- * applications.
- */
-SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
+int ksys_msync(unsigned long start, size_t len, int flags)
 {
 	unsigned long end;
 	struct mm_struct *mm = current->mm;
@@ -106,3 +92,22 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
 out:
 	return error ? : unmapped_error;
 }
+
+/*
+ * MS_SYNC syncs the entire file - including mappings.
+ *
+ * MS_ASYNC does not start I/O (it used to, up to 2.5.67).
+ * Nor does it marks the relevant pages dirty (it used to up to 2.6.17).
+ * Now it doesn't do anything, since dirty pages are properly tracked.
+ *
+ * The application may now run fsync() to
+ * write out the dirty pages and wait on the writeout and check the result.
+ * Or the application may run fadvise(FADV_DONTNEED) against the fd to start
+ * async writeout immediately.
+ * So by _not_ starting I/O in MS_ASYNC we provide complete flexibility to
+ * applications.
+ */
+SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
+{
+	return ksys_msync(start, len, flags);
+}
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
