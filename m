Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEED97DEEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWKviBZ7//m0dyT20d8Ct4uueARGwt8gUpVfmQQWDVA=; b=unnxziLohMLhKx
	oHIFmRATMwNuZn38is/XCn0M1MOAJDmpFnuC9sIPK0D3ve+R5QA2lly3Amu0WZFocwGvRz5LnpEZ+
	A08l3/hTjfPQjB7mX5No+C1/YSG1j7weei/pEp5OizOEMnq9X1eEnsBM0mBxqJHxX5FehxunS7a//
	USXQsYdUK9OT9Jf14b4HarcJydhWNPriNjEAOF4CCF8vrvzjAw2cfF5c12iGCIUDh/Yykb8RO2FT/
	ZV3rLLyDMIhNd5czbMEa8O6v8R9p54NrthX9LHjWIFbQs/ZRNw4aITtqXmyLBzEUZr4NX7NBC2cfl
	rNQHtyZlkuSiPhE9VxdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCyW-0004p7-QX; Thu, 01 Aug 2019 15:26:40 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCwl-0001TY-4m
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:24:56 +0000
Received: by mail-qt1-x843.google.com with SMTP id y26so70630197qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 08:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Tx5xNJqbq0sg9B8Ihv16AG1CCukqIRYJcVTxMeXsfQk=;
 b=mF95WowF8ku0WII1Ev5YCNFoUDufVvsbzJYMQWtZKbFURSRvZ9z1vbPejLpR0bhUzs
 UvtcxorLN1zbY5KAZ0Tfts5KKvTky8pFcjt4CchGfat1avRT6u8zlCX3hxXbYcOlVty4
 kHoAdX1tSCGB9Gjq4SJ1sj3UorWZnI571n3i5cifmDwGZnix+JfOEo7xpeXnzFahN8cr
 WezJElry7hR0eJBLltAAUAa8texB/Iu50Y2kTRFSHwLny5CtYitEC0N5xO8SWZKvRBBP
 qmy3shKKPBQcY6NAXCSyLPH8a5QG4Z20wt0jdx6wXeCkTTS8WOQLJmuSmmFV/5IkZlMo
 yUBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Tx5xNJqbq0sg9B8Ihv16AG1CCukqIRYJcVTxMeXsfQk=;
 b=XwG+hJeN6qop6QPbWOKztdlaNFpz2QIQWQFcocN9gxxg1w53cs08qf+SNZRkgCRD3C
 Sqe70qO2+8AA+r4Wfv0YW0BGwGmP5IMq7h397f/hUjiyQo/g56kmTcVPRqVuRo2yqWAH
 xD23prp3+oOwzjD0nA11mBxr1OY5rp3B+LJoVTpdceQvnNuf8SgyW1IqONMo9furQkcL
 cTLeNMtlR8KZmk0rYyzY8zOvSVxoF2gCQNlisncs3vecUMZh3YBbfI5ZTGOcnMLtbcdb
 o5WGW78kDqpYVi6x3L/p/wU8WGEN8p4cJ+XA6E82enmLqrykL2E6AwfU36g6t8OJLrPT
 rqHQ==
X-Gm-Message-State: APjAAAU+Hd1+ZDhcZUk5ZzIdh9ig5/7tlDxh7YYa0+dKZciYfi+UwL1j
 gm8iYcxNS/9FNXzzPewarpg=
X-Google-Smtp-Source: APXvYqxiM5b2RyyiBu9Xju1CSe+WF4b7Nav2hSHlOAdK8fIwObFSMG2C1MCQqbNvcXfxXZ9hlfwNkg==
X-Received: by 2002:a0c:8910:: with SMTP id 16mr93590700qvp.55.1564673090255; 
 Thu, 01 Aug 2019 08:24:50 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o5sm30899952qkf.10.2019.08.01.08.24.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 08:24:49 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v1 6/8] arm64,
 kexec: add expandable argument to relocation function
Date: Thu,  1 Aug 2019 11:24:37 -0400
Message-Id: <20190801152439.11363-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801152439.11363-1-pasha.tatashin@soleen.com>
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_082451_285029_2C461F0E 
X-CRM114-Status: GOOD (  20.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, kexec relocation function (arm64_relocate_new_kernel) accepts
the following arguments:

head:		start of array that contains relocation information.
entry:		entry point for new kernel or purgatory.
dtb_mem:	first and only argument to entry.

The number of arguments cannot be easily expended, because this
function is also called from HVC_SOFT_RESTART, which preserves only
three arguments. And, also arm64_relocate_new_kernel is written in
assembly but called without stack, thus no place to move extra
arguments to free registers.

Soon, we will need to pass more arguments: once we enable MMU we
will need to pass information about page tables.

Another benefit of allowing this function to accept more arguments, is that
kernel can actually accept up to 4 arguments (x0-x3), however currently
only one is used, but if in the future we will need for more (for example,
pass information about when previous kernel exited to have a precise
measurement in time spent in purgatory), we won't be easilty do that
if arm64_relocate_new_kernel can't accept more arguments.

So, add a new struct: kern_reloc_arg, and place it in kexec safe page (i.e
memory that is not overwritten during relocation).
Thus, make arm64_relocate_new_kernel to only take one argument, that
contains all the needed information.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h      | 18 ++++++
 arch/arm64/kernel/asm-offsets.c     |  9 +++
 arch/arm64/kernel/cpu-reset.S       |  4 +-
 arch/arm64/kernel/cpu-reset.h       |  8 +--
 arch/arm64/kernel/machine_kexec.c   | 28 ++++++++-
 arch/arm64/kernel/relocate_kernel.S | 88 ++++++++++-------------------
 6 files changed, 86 insertions(+), 69 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index d15ca1ca1e83..d5b79d4c7fae 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -90,12 +90,30 @@ static inline void crash_prepare_suspend(void) {}
 static inline void crash_post_resume(void) {}
 #endif
 
+/*
+ * kern_reloc_arg is passed to kernel relocation function as an argument.
+ * head		kimage->head, allows to traverse through relocation segments.
+ * entry_addr	kimage->start, where to jump from relocation function (new
+ *		kernel, or purgatory entry address).
+ * kern_arg0	first argument to kernel is its dtb address. The other
+ *		arguments are currently unused, and must be set to 0
+ */
+struct kern_reloc_arg {
+	unsigned long	head;
+	unsigned long	entry_addr;
+	unsigned long	kern_arg0;
+	unsigned long	kern_arg1;
+	unsigned long	kern_arg2;
+	unsigned long	kern_arg3;
+};
+
 #define ARCH_HAS_KIMAGE_ARCH
 
 struct kimage_arch {
 	void *dtb;
 	unsigned long dtb_mem;
 	unsigned long kern_reloc;
+	unsigned long kern_reloc_arg;
 };
 
 #ifdef CONFIG_KEXEC_FILE
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 214685760e1c..900394907fd8 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -23,6 +23,7 @@
 #include <asm/suspend.h>
 #include <linux/kbuild.h>
 #include <linux/arm-smccc.h>
+#include <linux/kexec.h>
 
 int main(void)
 {
@@ -126,6 +127,14 @@ int main(void)
 #ifdef CONFIG_ARM_SDE_INTERFACE
   DEFINE(SDEI_EVENT_INTREGS,	offsetof(struct sdei_registered_event, interrupted_regs));
   DEFINE(SDEI_EVENT_PRIORITY,	offsetof(struct sdei_registered_event, priority));
+#endif
+#ifdef CONFIG_KEXEC_CORE
+  DEFINE(KRELOC_HEAD,		offsetof(struct kern_reloc_arg, head));
+  DEFINE(KRELOC_ENTRY_ADDR,	offsetof(struct kern_reloc_arg, entry_addr));
+  DEFINE(KRELOC_KERN_ARG0,	offsetof(struct kern_reloc_arg, kern_arg0));
+  DEFINE(KRELOC_KERN_ARG1,	offsetof(struct kern_reloc_arg, kern_arg1));
+  DEFINE(KRELOC_KERN_ARG2,	offsetof(struct kern_reloc_arg, kern_arg2));
+  DEFINE(KRELOC_KERN_ARG3,	offsetof(struct kern_reloc_arg, kern_arg3));
 #endif
   return 0;
 }
diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 6ea337d464c4..64c78a42919f 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -43,9 +43,7 @@ ENTRY(__cpu_soft_restart)
 	hvc	#0				// no return
 
 1:	mov	x18, x1				// entry
-	mov	x0, x2				// arg0
-	mov	x1, x3				// arg1
-	mov	x2, x4				// arg2
+	mov	x0, x2				// arg
 	br	x18
 ENDPROC(__cpu_soft_restart)
 
diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
index ed50e9587ad8..7a8720ff186f 100644
--- a/arch/arm64/kernel/cpu-reset.h
+++ b/arch/arm64/kernel/cpu-reset.h
@@ -11,12 +11,10 @@
 #include <asm/virt.h>
 
 void __cpu_soft_restart(unsigned long el2_switch, unsigned long entry,
-	unsigned long arg0, unsigned long arg1, unsigned long arg2);
+			unsigned long arg);
 
 static inline void __noreturn cpu_soft_restart(unsigned long entry,
-					       unsigned long arg0,
-					       unsigned long arg1,
-					       unsigned long arg2)
+					       unsigned long arg)
 {
 	typeof(__cpu_soft_restart) *restart;
 
@@ -25,7 +23,7 @@ static inline void __noreturn cpu_soft_restart(unsigned long entry,
 	restart = (void *)__pa_symbol(__cpu_soft_restart);
 
 	cpu_install_idmap();
-	restart(el2_switch, entry, arg0, arg1, arg2);
+	restart(el2_switch, entry, arg);
 	unreachable();
 }
 
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index 9b41da50e6f7..d745ea2051df 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -43,6 +43,7 @@ static void _kexec_image_info(const char *func, int line,
 	pr_debug("    head:        %lx\n", kimage->head);
 	pr_debug("    nr_segments: %lu\n", kimage->nr_segments);
 	pr_debug("    kern_reloc: %pa\n", &kimage->arch.kern_reloc);
+	pr_debug("    kern_reloc_arg: %pa\n", &kimage->arch.kern_reloc_arg);
 
 	for (i = 0; i < kimage->nr_segments; i++) {
 		pr_debug("      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
@@ -59,14 +60,38 @@ void machine_kexec_cleanup(struct kimage *kimage)
 	/* Empty routine needed to avoid build errors. */
 }
 
+/* Allocates pages for kexec page table */
+static void *kexec_page_alloc(void *arg)
+{
+	struct kimage *kimage = (struct kimage *)arg;
+	struct page *page = kimage_alloc_control_pages(kimage, 0);
+
+	if (!page)
+		return NULL;
+
+	return page_address(page);
+}
+
 int machine_kexec_post_load(struct kimage *kimage)
 {
 	unsigned long kern_reloc;
+	struct kern_reloc_arg *kern_reloc_arg;
 
 	kern_reloc = page_to_phys(kimage->control_code_page);
 	memcpy(__va(kern_reloc), arm64_relocate_new_kernel,
 	       arm64_relocate_new_kernel_size);
+
+	kern_reloc_arg = kexec_page_alloc(kimage);
+	if (!kern_reloc_arg)
+		return -ENOMEM;
+	memset(kern_reloc_arg, 0, sizeof(struct kern_reloc_arg));
+
 	kimage->arch.kern_reloc = kern_reloc;
+	kimage->arch.kern_reloc_arg = __pa(kern_reloc_arg);
+
+	kern_reloc_arg->head = kimage->head;
+	kern_reloc_arg->entry_addr = kimage->start;
+	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;
 
 	kexec_image_info(kimage);
 	return 0;
@@ -203,8 +228,7 @@ void machine_kexec(struct kimage *kimage)
 	 * userspace (kexec-tools).
 	 * In kexec_file case, the kernel starts directly without purgatory.
 	 */
-	cpu_soft_restart(kimage->arch.kern_reloc, kimage->head, kimage->start,
-			 kimage->arch.dtb_mem);
+	cpu_soft_restart(kimage->arch.kern_reloc, kimage->arch.kern_reloc_arg);
 
 	BUG(); /* Should never get here. */
 }
diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index c1d7db71a726..d352faf7cbe6 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -8,7 +8,7 @@
 
 #include <linux/kexec.h>
 #include <linux/linkage.h>
-
+#include <asm/asm-offsets.h>
 #include <asm/assembler.h>
 #include <asm/kexec.h>
 #include <asm/page.h>
@@ -17,86 +17,58 @@
 /*
  * arm64_relocate_new_kernel - Put a 2nd stage image in place and boot it.
  *
- * The memory that the old kernel occupies may be overwritten when coping the
+ * The memory that the old kernel occupies may be overwritten when copying the
  * new image to its final location.  To assure that the
  * arm64_relocate_new_kernel routine which does that copy is not overwritten,
  * all code and data needed by arm64_relocate_new_kernel must be between the
  * symbols arm64_relocate_new_kernel and arm64_relocate_new_kernel_end.  The
  * machine_kexec() routine will copy arm64_relocate_new_kernel to the kexec
- * control_code_page, a special page which has been set up to be preserved
- * during the copy operation.
+ * safe memory that has been set up to be preserved during the copy operation.
  */
 ENTRY(arm64_relocate_new_kernel)
-
-	/* Setup the list loop variables. */
-	mov	x18, x2				/* x18 = dtb address */
-	mov	x17, x1				/* x17 = kimage_start */
-	mov	x16, x0				/* x16 = kimage_head */
-	raw_dcache_line_size x15, x0		/* x15 = dcache line size */
-	mov	x14, xzr			/* x14 = entry ptr */
-	mov	x13, xzr			/* x13 = copy dest */
-
 	/* Clear the sctlr_el2 flags. */
-	mrs	x0, CurrentEL
-	cmp	x0, #CurrentEL_EL2
+	mrs	x2, CurrentEL
+	cmp	x2, #CurrentEL_EL2
 	b.ne	1f
-	mrs	x0, sctlr_el2
+	mrs	x2, sctlr_el2
 	ldr	x1, =SCTLR_ELx_FLAGS
-	bic	x0, x0, x1
+	bic	x2, x2, x1
 	pre_disable_mmu_workaround
-	msr	sctlr_el2, x0
+	msr	sctlr_el2, x2
 	isb
-1:
-
-	/* Check if the new image needs relocation. */
+1:	/* Check if the new image needs relocation. */
+	ldr	x16, [x0, #KRELOC_HEAD]		/* x16 = kimage_head */
 	tbnz	x16, IND_DONE_BIT, .Ldone
-
+	raw_dcache_line_size x15, x1		/* x15 = dcache line size */
 .Lloop:
 	and	x12, x16, PAGE_MASK		/* x12 = addr */
-
 	/* Test the entry flags. */
 .Ltest_source:
 	tbz	x16, IND_SOURCE_BIT, .Ltest_indirection
 
 	/* Invalidate dest page to PoC. */
-	mov     x0, x13
-	add     x20, x0, #PAGE_SIZE
+	mov     x2, x13
+	add     x20, x2, #PAGE_SIZE
 	sub     x1, x15, #1
-	bic     x0, x0, x1
-2:	dc      ivac, x0
-	add     x0, x0, x15
-	cmp     x0, x20
+	bic     x2, x2, x1
+2:	dc      ivac, x2
+	add     x2, x2, x15
+	cmp     x2, x20
 	b.lo    2b
 	dsb     sy
 
-	mov x20, x13
-	mov x21, x12
-	copy_page x20, x21, x0, x1, x2, x3, x4, x5, x6, x7
-
-	/* dest += PAGE_SIZE */
-	add	x13, x13, PAGE_SIZE
+	copy_page x13, x12, x1, x2, x3, x4, x5, x6, x7, x8
 	b	.Lnext
-
 .Ltest_indirection:
 	tbz	x16, IND_INDIRECTION_BIT, .Ltest_destination
-
-	/* ptr = addr */
-	mov	x14, x12
+	mov	x14, x12			/* ptr = addr */
 	b	.Lnext
-
 .Ltest_destination:
 	tbz	x16, IND_DESTINATION_BIT, .Lnext
-
-	/* dest = addr */
-	mov	x13, x12
-
+	mov	x13, x12			/* dest = addr */
 .Lnext:
-	/* entry = *ptr++ */
-	ldr	x16, [x14], #8
-
-	/* while (!(entry & DONE)) */
-	tbz	x16, IND_DONE_BIT, .Lloop
-
+	ldr	x16, [x14], #8			/* entry = *ptr++ */
+	tbz	x16, IND_DONE_BIT, .Lloop	/* while (!(entry & DONE)) */
 .Ldone:
 	/* wait for writes from copy_page to finish */
 	dsb	nsh
@@ -105,18 +77,16 @@ ENTRY(arm64_relocate_new_kernel)
 	isb
 
 	/* Start new image. */
-	mov	x0, x18
-	mov	x1, xzr
-	mov	x2, xzr
-	mov	x3, xzr
-	br	x17
-
-ENDPROC(arm64_relocate_new_kernel)
+	ldr	x4, [x0, #KRELOC_ENTRY_ADDR]	/* x4 = kimage_start */
+	ldr	x3, [x0, #KRELOC_KERN_ARG3]
+	ldr	x2, [x0, #KRELOC_KERN_ARG2]
+	ldr	x1, [x0, #KRELOC_KERN_ARG1]
+	ldr	x0, [x0, #KRELOC_KERN_ARG0]	/* x0 = dtb address */
+	br	x4
+END(arm64_relocate_new_kernel)
 
 .ltorg
-
 .align 3	/* To keep the 64-bit values below naturally aligned. */
-
 .Lcopy_end:
 .org	KEXEC_CONTROL_PAGE_SIZE
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
