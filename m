Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EA917541B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 07:49:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dSXS+afBCqE8jVRSaMyttKuScthCc4WcG6E1faaIA84=; b=YaRDoPrukOOIIOO0dAYWmA/1KS
	n9Rf3okDtMQH8aW9CCM92OF0w1J1L1eSQm9EO65LxlPwk6rmYK3K651QodQxmviLabNYv5liz4myz
	nX7tPSz8o8YTpsy/wbhDvwukFU+pJWOWBGjMZqloDAXcmLkxzQuvvPqFVJ3W50Hz2OkahMmyhC0pF
	W1U2eRUKFZpaQXgLYwFXyn9LlH2L0EsKwmy+KwNifrX3OtAAcJFabYJ+1at9/H0+3EJrfaheTUPoW
	8YBUHt7aILXDg2Y2zBCNFxRMak4UJiSe0rEP0ta1VWNA2fHlaSkkB2rKblfbftYK+CjqBYJJsweqJ
	rDZffVzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8esw-0000b7-V2; Mon, 02 Mar 2020 06:49:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8esJ-0000BP-P3
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 06:48:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA3EC1045;
 Sun,  1 Mar 2020 22:48:22 -0800 (PST)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 439B13F6CF;
 Sun,  1 Mar 2020 22:52:09 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [RFC 2/3] mm/vma: Introduce VM_ACCESS_FLAGS
Date: Mon,  2 Mar 2020 12:17:45 +0530
Message-Id: <1583131666-15531-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583131666-15531-1-git-send-email-anshuman.khandual@arm.com>
References: <1583131666-15531-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_224823_949273_B8C20D0D 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Russell King <linux@armlinux.org.uk>,
 Ley Foon Tan <ley.foon.tan@intel.com>, Mark Salter <msalter@redhat.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Rob Springer <rspringer@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are many places where all basic VMA access flags (read, write, exec)
are initialized or checked against as a group. One such example is during
page fault. Existing vma_is_accessible() wrapper already creates the notion
of VMA accessibility as a group access permissions. Hence lets just create
VM_ACCESS_FLAGS (VM_READ|VM_WRITE|VM_EXEC) which will not only reduce code
duplication but also extend the VMA accessibility concept in general.

Cc: Russell King <linux@armlinux.org.uk>
CC: Catalin Marinas <catalin.marinas@arm.com>
CC: Mark Salter <msalter@redhat.com>
Cc: Nick Hu <nickhu@andestech.com>
CC: Ley Foon Tan <ley.foon.tan@intel.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: Guan Xuetao <gxt@pku.edu.cn>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Rob Springer <rspringer@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-c6x-dev@linux-c6x.org
Cc: nios2-dev@lists.rocketboards.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: linux-sh@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Cc: linux-mm@kvack.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm/mm/fault.c                  | 2 +-
 arch/arm64/mm/fault.c                | 2 +-
 arch/c6x/include/asm/processor.h     | 2 +-
 arch/nds32/mm/fault.c                | 2 +-
 arch/nios2/include/asm/processor.h   | 2 +-
 arch/powerpc/mm/book3s64/pkeys.c     | 2 +-
 arch/s390/mm/fault.c                 | 2 +-
 arch/sh/include/asm/processor_64.h   | 2 +-
 arch/unicore32/mm/fault.c            | 2 +-
 arch/x86/mm/pkeys.c                  | 2 +-
 drivers/staging/gasket/gasket_core.c | 2 +-
 include/linux/mm.h                   | 4 +++-
 mm/mmap.c                            | 4 ++--
 mm/mprotect.c                        | 7 +++----
 14 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
index bd0f4821f7e1..2c71028d9d6b 100644
--- a/arch/arm/mm/fault.c
+++ b/arch/arm/mm/fault.c
@@ -189,7 +189,7 @@ void do_bad_area(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
  */
 static inline bool access_error(unsigned int fsr, struct vm_area_struct *vma)
 {
-	unsigned int mask = VM_READ | VM_WRITE | VM_EXEC;
+	unsigned int mask = VM_ACCESS_FLAGS;
 
 	if ((fsr & FSR_WRITE) && !(fsr & FSR_CM))
 		mask = VM_WRITE;
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 85566d32958f..63f31206a12e 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -445,7 +445,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	const struct fault_info *inf;
 	struct mm_struct *mm = current->mm;
 	vm_fault_t fault, major = 0;
-	unsigned long vm_flags = VM_READ | VM_WRITE | VM_EXEC;
+	unsigned long vm_flags = VM_ACCESS_FLAGS;
 	unsigned int mm_flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
 
 	if (kprobe_page_fault(regs, esr))
diff --git a/arch/c6x/include/asm/processor.h b/arch/c6x/include/asm/processor.h
index 1456f5e11de3..77372b8c28d7 100644
--- a/arch/c6x/include/asm/processor.h
+++ b/arch/c6x/include/asm/processor.h
@@ -57,7 +57,7 @@ struct thread_struct {
 }
 
 #define INIT_MMAP { \
-	&init_mm, 0, 0, NULL, PAGE_SHARED, VM_READ | VM_WRITE | VM_EXEC, 1, \
+	&init_mm, 0, 0, NULL, PAGE_SHARED, VM_ACCESS_FLAGS, 1, \
 	NULL, NULL }
 
 #define task_pt_regs(task) \
diff --git a/arch/nds32/mm/fault.c b/arch/nds32/mm/fault.c
index 906dfb25353c..55387a31bf42 100644
--- a/arch/nds32/mm/fault.c
+++ b/arch/nds32/mm/fault.c
@@ -79,7 +79,7 @@ void do_page_fault(unsigned long entry, unsigned long addr,
 	struct vm_area_struct *vma;
 	int si_code;
 	vm_fault_t fault;
-	unsigned int mask = VM_READ | VM_WRITE | VM_EXEC;
+	unsigned int mask = VM_ACCESS_FLAGS;
 	unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
 
 	error_code = error_code & (ITYPE_mskINST | ITYPE_mskETYPE);
diff --git a/arch/nios2/include/asm/processor.h b/arch/nios2/include/asm/processor.h
index 94bcb86f679f..fbfb3ab14cfc 100644
--- a/arch/nios2/include/asm/processor.h
+++ b/arch/nios2/include/asm/processor.h
@@ -51,7 +51,7 @@ struct thread_struct {
 };
 
 #define INIT_MMAP \
-	{ &init_mm, (0), (0), __pgprot(0x0), VM_READ | VM_WRITE | VM_EXEC }
+	{ &init_mm, (0), (0), __pgprot(0x0), VM_ACCESS_FLAGS }
 
 # define INIT_THREAD {			\
 	.kregs	= NULL,			\
diff --git a/arch/powerpc/mm/book3s64/pkeys.c b/arch/powerpc/mm/book3s64/pkeys.c
index 59e0ebbd8036..11fd52b24f68 100644
--- a/arch/powerpc/mm/book3s64/pkeys.c
+++ b/arch/powerpc/mm/book3s64/pkeys.c
@@ -315,7 +315,7 @@ int __execute_only_pkey(struct mm_struct *mm)
 static inline bool vma_is_pkey_exec_only(struct vm_area_struct *vma)
 {
 	/* Do this check first since the vm_flags should be hot */
-	if ((vma->vm_flags & (VM_READ | VM_WRITE | VM_EXEC)) != VM_EXEC)
+	if ((vma->vm_flags & VM_ACCESS_FLAGS) != VM_EXEC)
 		return false;
 
 	return (vma_pkey(vma) == vma->vm_mm->context.execute_only_pkey);
diff --git a/arch/s390/mm/fault.c b/arch/s390/mm/fault.c
index 7b0bb475c166..b2cb3c0d0e1a 100644
--- a/arch/s390/mm/fault.c
+++ b/arch/s390/mm/fault.c
@@ -584,7 +584,7 @@ void do_dat_exception(struct pt_regs *regs)
 	int access;
 	vm_fault_t fault;
 
-	access = VM_READ | VM_EXEC | VM_WRITE;
+	access = VM_ACCESS_FLAGS;
 	fault = do_exception(regs, access);
 	if (unlikely(fault))
 		do_fault_error(regs, access, fault);
diff --git a/arch/sh/include/asm/processor_64.h b/arch/sh/include/asm/processor_64.h
index 53efc9f51ef1..3b8187284e3f 100644
--- a/arch/sh/include/asm/processor_64.h
+++ b/arch/sh/include/asm/processor_64.h
@@ -121,7 +121,7 @@ struct thread_struct {
 };
 
 #define INIT_MMAP \
-{ &init_mm, 0, 0, NULL, PAGE_SHARED, VM_READ | VM_WRITE | VM_EXEC, 1, NULL, NULL }
+{ &init_mm, 0, 0, NULL, PAGE_SHARED, VM_ACCESS_FLAGS, 1, NULL, NULL }
 
 #define INIT_THREAD  {				\
 	.sp		= sizeof(init_stack) +	\
diff --git a/arch/unicore32/mm/fault.c b/arch/unicore32/mm/fault.c
index 76342de9cf8c..fc27c274d358 100644
--- a/arch/unicore32/mm/fault.c
+++ b/arch/unicore32/mm/fault.c
@@ -149,7 +149,7 @@ void do_bad_area(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
  */
 static inline bool access_error(unsigned int fsr, struct vm_area_struct *vma)
 {
-	unsigned int mask = VM_READ | VM_WRITE | VM_EXEC;
+	unsigned int mask = VM_ACCESS_FLAGS;
 
 	if (!(fsr ^ 0x12))	/* write? */
 		mask = VM_WRITE;
diff --git a/arch/x86/mm/pkeys.c b/arch/x86/mm/pkeys.c
index c6f84c0b5d7a..8873ed1438a9 100644
--- a/arch/x86/mm/pkeys.c
+++ b/arch/x86/mm/pkeys.c
@@ -63,7 +63,7 @@ int __execute_only_pkey(struct mm_struct *mm)
 static inline bool vma_is_pkey_exec_only(struct vm_area_struct *vma)
 {
 	/* Do this check first since the vm_flags should be hot */
-	if ((vma->vm_flags & (VM_READ | VM_WRITE | VM_EXEC)) != VM_EXEC)
+	if ((vma->vm_flags & VM_ACCESS_FLAGS) != VM_EXEC)
 		return false;
 	if (vma_pkey(vma) != vma->vm_mm->context.execute_only_pkey)
 		return false;
diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
index be6b50f454b4..81bb7d58dc49 100644
--- a/drivers/staging/gasket/gasket_core.c
+++ b/drivers/staging/gasket/gasket_core.c
@@ -689,7 +689,7 @@ static bool gasket_mmap_has_permissions(struct gasket_dev *gasket_dev,
 
 	/* Make sure that no wrong flags are set. */
 	requested_permissions =
-		(vma->vm_flags & (VM_WRITE | VM_READ | VM_EXEC));
+		(vma->vm_flags & VM_ACCESS_FLAGS);
 	if (requested_permissions & ~(bar_permissions)) {
 		dev_dbg(gasket_dev->dev,
 			"Attempting to map a region with requested permissions "
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 7a764ae6ab68..525026df1e58 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -368,6 +368,8 @@ extern unsigned int kobjsize(const void *objp);
 #endif
 
 #define VM_STACK_FLAGS	(VM_STACK | VM_STACK_DEFAULT_FLAGS | VM_ACCOUNT)
+#define VM_ACCESS_FLAGS (VM_READ | VM_WRITE | VM_EXEC)
+
 
 /*
  * Special vmas that are non-mergable, non-mlock()able.
@@ -558,7 +560,7 @@ static inline bool vma_is_anonymous(struct vm_area_struct *vma)
 
 static inline bool vma_is_accessible(struct vm_area_struct *vma)
 {
-	return vma->vm_flags & (VM_READ | VM_WRITE | VM_EXEC);
+	return vma->vm_flags & VM_ACCESS_FLAGS;
 }
 
 #ifdef CONFIG_SHMEM
diff --git a/mm/mmap.c b/mm/mmap.c
index 0d295f49b24d..f9a01763857b 100644
--- a/mm/mmap.c
+++ b/mm/mmap.c
@@ -106,7 +106,7 @@ static inline pgprot_t arch_filter_pgprot(pgprot_t prot)
 pgprot_t vm_get_page_prot(unsigned long vm_flags)
 {
 	pgprot_t ret = __pgprot(pgprot_val(protection_map[vm_flags &
-				(VM_READ|VM_WRITE|VM_EXEC|VM_SHARED)]) |
+				(VM_ACCESS_FLAGS | VM_SHARED)]) |
 			pgprot_val(arch_vm_get_page_prot(vm_flags)));
 
 	return arch_filter_pgprot(ret);
@@ -1221,7 +1221,7 @@ static int anon_vma_compatible(struct vm_area_struct *a, struct vm_area_struct *
 	return a->vm_end == b->vm_start &&
 		mpol_equal(vma_policy(a), vma_policy(b)) &&
 		a->vm_file == b->vm_file &&
-		!((a->vm_flags ^ b->vm_flags) & ~(VM_READ|VM_WRITE|VM_EXEC|VM_SOFTDIRTY)) &&
+		!((a->vm_flags ^ b->vm_flags) & ~(VM_ACCESS_FLAGS | VM_SOFTDIRTY)) &&
 		b->vm_pgoff == a->vm_pgoff + ((b->vm_start - a->vm_start) >> PAGE_SHIFT);
 }
 
diff --git a/mm/mprotect.c b/mm/mprotect.c
index 7a8e84f86831..4921a4211c6b 100644
--- a/mm/mprotect.c
+++ b/mm/mprotect.c
@@ -359,7 +359,7 @@ mprotect_fixup(struct vm_area_struct *vma, struct vm_area_struct **pprev,
 	 */
 	if (arch_has_pfn_modify_check() &&
 	    (vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) &&
-	    (newflags & (VM_READ|VM_WRITE|VM_EXEC)) == 0) {
+	    (newflags & VM_ACCESS_FLAGS) == 0) {
 		pgprot_t new_pgprot = vm_get_page_prot(newflags);
 
 		error = walk_page_range(current->mm, start, end,
@@ -530,15 +530,14 @@ static int do_mprotect_pkey(unsigned long start, size_t len,
 		 * If a permission is not passed to mprotect(), it must be
 		 * cleared from the VMA.
 		 */
-		mask_off_old_flags = VM_READ | VM_WRITE | VM_EXEC |
-					VM_FLAGS_CLEAR;
+		mask_off_old_flags = VM_ACCESS_FLAGS | VM_FLAGS_CLEAR;
 
 		new_vma_pkey = arch_override_mprotect_pkey(vma, prot, pkey);
 		newflags = calc_vm_prot_bits(prot, new_vma_pkey);
 		newflags |= (vma->vm_flags & ~mask_off_old_flags);
 
 		/* newflags >> 4 shift VM_MAY% in place of VM_% */
-		if ((newflags & ~(newflags >> 4)) & (VM_READ | VM_WRITE | VM_EXEC)) {
+		if ((newflags & ~(newflags >> 4)) & VM_ACCESS_FLAGS) {
 			error = -EACCES;
 			goto out;
 		}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
