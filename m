Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 016601B29E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/fRyQO82ZvPIqvmarnO71kGjIAR/gFSOWc7s4rpkIrU=; b=kI0fbJk1YQxZmE
	cQUBmZwsvMn7vZCBDKcVIrILpf8dMUqfsVxD24QiVWXQZj8av8MY+OqwCLoHZEWfT0TgiLWbH7Nlk
	jn/816bvbt4bgcl9DxvlnFVOrhrVhPgYoylgtcPuC+WhRxDtcb2XxZ3NiF3+66Bce/f2sQ70742qH
	eutwjL+2u8ykZ27RzTIWq8SPnZ7aKW2RAHnjsWGKyVebZcMCXNkyNWbU2nNJRMWyNb9RXp8XXKRXz
	op/rWz/CeIh/m40QLkPx24a5Yw93pFD1aB01Qpiy20DxEDBugrcecZdHjI+9ZqPkcUzBCMRKtSez6
	bm61caFGQmFPYjqHjeog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtxQ-0007ii-9l; Tue, 21 Apr 2020 14:33:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtrK-0008Q8-Ut
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:26:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C377F101E;
 Tue, 21 Apr 2020 07:26:46 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D7B4B3F68F;
 Tue, 21 Apr 2020 07:26:44 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 19/23] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
Date: Tue, 21 Apr 2020 15:25:59 +0100
Message-Id: <20200421142603.3894-20-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421142603.3894-1-catalin.marinas@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_072647_091784_E825FE83 
X-CRM114-Status: GOOD (  21.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Luis Machado <luis.machado@linaro.org>, Omair Javaid <omair.javaid@linaro.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for bulk setting/getting of the MTE tags in a tracee's
address space at 'addr' in the ptrace() syscall prototype. 'data' points
to a struct iovec in the tracer's address space with iov_base
representing the address of a tracer's buffer of length iov_len. The
tags to be copied to/from the tracer's buffer are stored as one tag per
byte.

On successfully copying at least one tag, ptrace() returns 0 and updates
the tracer's iov_len with the number of tags copied. In case of error,
either -EIO or -EFAULT is returned, trying to follow the ptrace() man
page.

Note that the tag copying functions are not performance critical,
therefore they lack optimisations found in typical memory copy routines.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Alan Hayward <Alan.Hayward@arm.com>
Cc: Luis Machado <luis.machado@linaro.org>
Cc: Omair Javaid <omair.javaid@linaro.org>
---

Notes:
    New in v3.

 arch/arm64/include/asm/mte.h         |  17 ++++
 arch/arm64/include/uapi/asm/ptrace.h |   3 +
 arch/arm64/kernel/mte.c              | 127 +++++++++++++++++++++++++++
 arch/arm64/kernel/ptrace.c           |  15 +++-
 arch/arm64/lib/mte.S                 |  50 +++++++++++
 5 files changed, 211 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/mte.h b/arch/arm64/include/asm/mte.h
index 22eb3e06f311..0ca2aaff07a1 100644
--- a/arch/arm64/include/asm/mte.h
+++ b/arch/arm64/include/asm/mte.h
@@ -2,12 +2,21 @@
 #ifndef __ASM_MTE_H
 #define __ASM_MTE_H
 
+#define MTE_ALLOC_SIZE	UL(16)
+#define MTE_ALLOC_MASK	(~(MTE_ALLOC_SIZE - 1))
+#define MTE_TAG_SHIFT	(56)
+#define MTE_TAG_SIZE	(4)
+
 #ifndef __ASSEMBLY__
 
 #include <linux/sched.h>
 
 /* Memory Tagging API */
 int mte_memcmp_pages(const void *page1_addr, const void *page2_addr);
+unsigned long mte_copy_tags_from_user(void *to, const void __user *from,
+				      unsigned long n);
+unsigned long mte_copy_tags_to_user(void __user *to, void *from,
+				    unsigned long n);
 
 #ifdef CONFIG_ARM64_MTE
 void flush_mte_state(void);
@@ -15,6 +24,8 @@ void mte_thread_switch(struct task_struct *next);
 void mte_suspend_exit(void);
 long set_mte_ctrl(unsigned long arg);
 long get_mte_ctrl(void);
+int mte_ptrace_copy_tags(struct task_struct *child, long request,
+			 unsigned long addr, unsigned long data);
 #else
 static inline void flush_mte_state(void)
 {
@@ -33,6 +44,12 @@ static inline long get_mte_ctrl(void)
 {
 	return 0;
 }
+static inline int mte_ptrace_copy_tags(struct task_struct *child,
+				       long request, unsigned long addr,
+				       unsigned long data)
+{
+	return -EIO;
+}
 #endif
 
 #endif /* __ASSEMBLY__ */
diff --git a/arch/arm64/include/uapi/asm/ptrace.h b/arch/arm64/include/uapi/asm/ptrace.h
index 1daf6dda8af0..cd2a4a164de3 100644
--- a/arch/arm64/include/uapi/asm/ptrace.h
+++ b/arch/arm64/include/uapi/asm/ptrace.h
@@ -67,6 +67,9 @@
 /* syscall emulation path in ptrace */
 #define PTRACE_SYSEMU		  31
 #define PTRACE_SYSEMU_SINGLESTEP  32
+/* MTE allocation tag access */
+#define PTRACE_PEEKMTETAGS	  33
+#define PTRACE_POKEMTETAGS	  34
 
 #ifndef __ASSEMBLY__
 
diff --git a/arch/arm64/kernel/mte.c b/arch/arm64/kernel/mte.c
index fa4a4196b248..0cb496ed9bf9 100644
--- a/arch/arm64/kernel/mte.c
+++ b/arch/arm64/kernel/mte.c
@@ -3,12 +3,17 @@
  * Copyright (C) 2020 ARM Ltd.
  */
 
+#include <linux/kernel.h>
+#include <linux/mm.h>
 #include <linux/prctl.h>
 #include <linux/sched.h>
+#include <linux/sched/mm.h>
 #include <linux/thread_info.h>
+#include <linux/uio.h>
 
 #include <asm/cpufeature.h>
 #include <asm/mte.h>
+#include <asm/ptrace.h>
 #include <asm/sysreg.h>
 
 static void update_sctlr_el1_tcf0(u64 tcf0)
@@ -133,3 +138,125 @@ long get_mte_ctrl(void)
 
 	return ret;
 }
+
+/*
+ * Access MTE tags in another process' address space as given in mm. Update
+ * the number of tags copied. Return 0 if any tags copied, error otherwise.
+ * Inspired by __access_remote_vm().
+ */
+static int __access_remote_tags(struct task_struct *tsk, struct mm_struct *mm,
+				unsigned long addr, struct iovec *kiov,
+				unsigned int gup_flags)
+{
+	struct vm_area_struct *vma;
+	void __user *buf = kiov->iov_base;
+	size_t len = kiov->iov_len;
+	int ret;
+	int write = gup_flags & FOLL_WRITE;
+
+	if (down_read_killable(&mm->mmap_sem))
+		return -EIO;
+
+	if (!access_ok(buf, len))
+		return -EFAULT;
+
+	while (len) {
+		unsigned long tags, offset;
+		void *maddr;
+		struct page *page = NULL;
+
+		ret = get_user_pages_remote(tsk, mm, addr, 1, gup_flags,
+					    &page, &vma, NULL);
+		if (ret <= 0)
+			break;
+
+		/* limit access to the end of the page */
+		offset = offset_in_page(addr);
+		tags = min(len, (PAGE_SIZE - offset) / MTE_ALLOC_SIZE);
+
+		maddr = page_address(page);
+		if (write) {
+			tags = mte_copy_tags_from_user(maddr + offset, buf, tags);
+			set_page_dirty_lock(page);
+		} else {
+			tags = mte_copy_tags_to_user(buf, maddr + offset, tags);
+		}
+		put_page(page);
+
+		/* error accessing the tracer's buffer */
+		if (!tags)
+			break;
+
+		len -= tags;
+		buf += tags;
+		addr += tags * MTE_ALLOC_SIZE;
+	}
+	up_read(&mm->mmap_sem);
+
+	/* return an error if no tags copied */
+	kiov->iov_len = buf - kiov->iov_base;
+	if (!kiov->iov_len) {
+		/* check for error accessing the tracee's address space */
+		if (ret <= 0)
+			return -EIO;
+		else
+			return -EFAULT;
+	}
+
+	return 0;
+}
+
+/*
+ * Copy MTE tags in another process' address space at 'addr' to/from tracer's
+ * iovec buffer. Return 0 on success. Inspired by ptrace_access_vm().
+ */
+static int access_remote_tags(struct task_struct *tsk, unsigned long addr,
+			      struct iovec *kiov, unsigned int gup_flags)
+{
+	struct mm_struct *mm;
+	int ret;
+
+	mm = get_task_mm(tsk);
+	if (!mm)
+		return -EPERM;
+
+	if (!tsk->ptrace || (current != tsk->parent) ||
+	    ((get_dumpable(mm) != SUID_DUMP_USER) &&
+	     !ptracer_capable(tsk, mm->user_ns))) {
+		mmput(mm);
+		return -EPERM;
+	}
+
+	ret = __access_remote_tags(tsk, mm, addr, kiov, gup_flags);
+	mmput(mm);
+
+	return ret;
+}
+
+int mte_ptrace_copy_tags(struct task_struct *child, long request,
+			 unsigned long addr, unsigned long data)
+{
+	int ret;
+	struct iovec kiov;
+	struct iovec __user *uiov = (void __user *)data;
+	unsigned int gup_flags = FOLL_FORCE;
+
+	if (!system_supports_mte())
+		return -EIO;
+
+	if (get_user(kiov.iov_base, &uiov->iov_base) ||
+	    get_user(kiov.iov_len, &uiov->iov_len))
+		return -EFAULT;
+
+	if (request == PTRACE_POKEMTETAGS)
+		gup_flags |= FOLL_WRITE;
+
+	/* align addr to the MTE tag granule */
+	addr &= MTE_ALLOC_MASK;
+
+	ret = access_remote_tags(child, addr, &kiov, gup_flags);
+	if (!ret)
+		ret = __put_user(kiov.iov_len, &uiov->iov_len);
+
+	return ret;
+}
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index 077e352495eb..1fdb841ad536 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -34,6 +34,7 @@
 #include <asm/cpufeature.h>
 #include <asm/debug-monitors.h>
 #include <asm/fpsimd.h>
+#include <asm/mte.h>
 #include <asm/pgtable.h>
 #include <asm/pointer_auth.h>
 #include <asm/stacktrace.h>
@@ -1797,7 +1798,19 @@ const struct user_regset_view *task_user_regset_view(struct task_struct *task)
 long arch_ptrace(struct task_struct *child, long request,
 		 unsigned long addr, unsigned long data)
 {
-	return ptrace_request(child, request, addr, data);
+	int ret;
+
+	switch (request) {
+	case PTRACE_PEEKMTETAGS:
+	case PTRACE_POKEMTETAGS:
+		ret = mte_ptrace_copy_tags(child, request, addr, data);
+		break;
+	default:
+		ret = ptrace_request(child, request, addr, data);
+		break;
+	}
+
+	return ret;
 }
 
 enum ptrace_syscall_dir {
diff --git a/arch/arm64/lib/mte.S b/arch/arm64/lib/mte.S
index bd51ea7e2fcb..45be04a8c73c 100644
--- a/arch/arm64/lib/mte.S
+++ b/arch/arm64/lib/mte.S
@@ -5,6 +5,7 @@
 #include <linux/linkage.h>
 
 #include <asm/assembler.h>
+#include <asm/mte.h>
 
 /*
  * Compare tags of two pages
@@ -44,3 +45,52 @@ SYM_FUNC_START(mte_memcmp_pages)
 
 	ret
 SYM_FUNC_END(mte_memcmp_pages)
+
+/*
+ * Read tags from a user buffer (one tag per byte) and set the corresponding
+ * tags at the given kernel address. Used by PTRACE_POKEMTETAGS.
+ *   x0 - kernel address (to)
+ *   x1 - user buffer (from)
+ *   x2 - number of tags/bytes (n)
+ * Returns:
+ *   x0 - number of tags read/set
+ */
+SYM_FUNC_START(mte_copy_tags_from_user)
+	mov	x3, x1
+1:
+USER(2f, ldtrb	w4, [x1])
+	lsl	x4, x4, #MTE_TAG_SHIFT
+	stg	x4, [x0], #MTE_ALLOC_SIZE
+	add	x1, x1, #1
+	subs	x2, x2, #1
+	b.ne	1b
+
+	// exception handling and function return
+2:	sub	x0, x1, x3		// update the number of tags set
+	ret
+SYM_FUNC_END(mte_copy_tags_from_user)
+
+/*
+ * Get the tags from a kernel address range and write the tag values to the
+ * given user buffer (one tag per byte). Used by PTRACE_PEEKMTETAGS.
+ *   x0 - user buffer (to)
+ *   x1 - kernel address (from)
+ *   x2 - number of tags/bytes (n)
+ * Returns:
+ *   x0 - number of tags read/set
+ */
+SYM_FUNC_START(mte_copy_tags_to_user)
+	mov	x3, x0
+1:
+	ldg	x4, [x1]
+	ubfx	x4, x4, #MTE_TAG_SHIFT, #MTE_TAG_SIZE
+USER(2f, sttrb	w4, [x0])
+	add	x0, x0, #1
+	add	x1, x1, #MTE_ALLOC_SIZE
+	subs	x2, x2, #1
+	b.ne	1b
+
+	// exception handling and function return
+2:	sub	x0, x0, x3		// update the number of tags copied
+	ret
+SYM_FUNC_END(mte_copy_tags_from_user)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
