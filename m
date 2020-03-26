Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD94F193702
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:31:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3etnA2VppbdqdtHB2tIYZkEOKGkJ52FNUSFgH9d9+E=; b=pgc0/MRnEBWPMM
	Mm3ILFkHaqd29/I4heb2AplepkFM7FiStxVaZE67yI8qyn1rrLqKPH7r4jnQUopi0AAd58jeZaDPG
	47MIB05Q8nfYsnHhZpQRjxtzjywngh8NW4+VliInzoFXicIW1FJZrRPnuw46ToVd/t8kZyu9VUXrV
	yd0q7KSDNH8Ui90PnUrc0f25RDUcYob/yXSrGlWC8bMOtFoyg/uYyXc9rOow3XA/ng5jo3bb/fYmE
	eqJ9qDndRCMrXtislBQPLzO9kg/E2k3sQSSjgiiH2SCpRpETVukE5weis2P2Alwq/swU7fwJ+sZ0m
	vszExDnwc0WIwOrHxjUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJEl-0003ER-Bg; Thu, 26 Mar 2020 03:31:19 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8N-0004kY-Qr
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:47 +0000
Received: by mail-qt1-x842.google.com with SMTP id t9so4175687qto.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=x4L+drChQDoltL6x1b9LQJDDC7YRTzAttIb/9s248/Y=;
 b=VR0f17PVeFYSQuBjP2w4zyl7OAF3CO0fnKq3h8SjPJLoyYXGWfDFsuo7Ak8XO86gNG
 IS01mzrMX+asvZ8ygUz2Ln8zY1R8fVf43g9rHRkXd+GUN2GWCvbARr+lgh8t9YZfNWrM
 9+mskgu1vkXmh0nslWQcvOGToFibw17g/H15PQ8Z3kLXyW92VEpRI5jLOFvF+LF4tiOw
 1PqNNJvfF9drxLKRL0AQeCaqaEGRb0QmF4RHOH3X9ep58G5wvnBjniSxQB2yac8npQoe
 SjRVSfQpd8Bj7RWbmw7H1yOP5ZAATuf5MQ4IxzicCuZQg/GHrN2Q32WkX++iSUA3fOIr
 Zi4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=x4L+drChQDoltL6x1b9LQJDDC7YRTzAttIb/9s248/Y=;
 b=t/uVmtPxzqozb9MYHpRN+3Zw9u88I4DCLgWdmqs7TIfd7UQk/lsJ4xXIRO7JpfKKr2
 5sDOYXjCDvj9r5GrDYq1XS08SHx3aamAwtadf0HmGpZS/l76waWEMWwKAzKdTfMkLaDd
 627JBJDnSyvhEcOTSOl9DbuTdreXJhMSZUECLkFX3cOHXwA9bGpFyp0rUrw7c8afctgR
 6KXV2WEAZ5Lx+QgdLpsOncJNBiKd2L8hwFca+iYGI0GyCO/NNAoB9vZQf8deMwJoQbfv
 96KMtW85bZR4RtCqm5tHvqU8e8JwEVSyKecCiDOoCoWDao2c/XcbYG8lb2VSsMDUciRj
 jGqQ==
X-Gm-Message-State: ANhLgQ3894SGA6ITPU0WOFaYh5sYw9GoupI/RPCV+cODx3kO9TP69/L+
 E5StYyll8MngkDoZnx3aDYC/lw==
X-Google-Smtp-Source: ADFU+vvZDs/QC4GOMC8IZees1GMscfn90p4ttLqLrFxPycdH3JJtfvGL51oGTPiXx0SvfzooYjbXbQ==
X-Received: by 2002:ac8:175d:: with SMTP id u29mr6349138qtk.150.1585193082781; 
 Wed, 25 Mar 2020 20:24:42 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:42 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 13/18] arm64: kexec: add expandable argument to relocation
 function
Date: Wed, 25 Mar 2020 23:24:15 -0400
Message-Id: <20200326032420.27220-14-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202443_988002_3390C6F6 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
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
 arch/arm64/include/asm/kexec.h      | 18 ++++++++++++++++++
 arch/arm64/kernel/asm-offsets.c     |  9 +++++++++
 arch/arm64/kernel/cpu-reset.S       | 11 +++--------
 arch/arm64/kernel/cpu-reset.h       |  8 +++-----
 arch/arm64/kernel/machine_kexec.c   | 26 ++++++++++++++++++++++++--
 arch/arm64/kernel/relocate_kernel.S | 19 ++++++++-----------
 6 files changed, 65 insertions(+), 26 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 9befcd87e9a8..990185744148 100644
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
+	phys_addr_t head;
+	phys_addr_t entry_addr;
+	phys_addr_t kern_arg0;
+	phys_addr_t kern_arg1;
+	phys_addr_t kern_arg2;
+	phys_addr_t kern_arg3;
+};
+
 #define ARCH_HAS_KIMAGE_ARCH
 
 struct kimage_arch {
 	void *dtb;
 	phys_addr_t dtb_mem;
 	phys_addr_t kern_reloc;
+	phys_addr_t kern_reloc_arg;
 	/* Core ELF header buffer */
 	void *elf_headers;
 	unsigned long elf_headers_mem;
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index a5bdce8af65b..448230684749 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -23,6 +23,7 @@
 #include <asm/suspend.h>
 #include <linux/kbuild.h>
 #include <linux/arm-smccc.h>
+#include <linux/kexec.h>
 
 int main(void)
 {
@@ -127,6 +128,14 @@ int main(void)
 #ifdef CONFIG_ARM_SDE_INTERFACE
   DEFINE(SDEI_EVENT_INTREGS,	offsetof(struct sdei_registered_event, interrupted_regs));
   DEFINE(SDEI_EVENT_PRIORITY,	offsetof(struct sdei_registered_event, priority));
+#endif
+#ifdef CONFIG_KEXEC_CORE
+  DEFINE(KEXEC_KRELOC_HEAD,		offsetof(struct kern_reloc_arg, head));
+  DEFINE(KEXEC_KRELOC_ENTRY_ADDR,	offsetof(struct kern_reloc_arg, entry_addr));
+  DEFINE(KEXEC_KRELOC_KERN_ARG0,	offsetof(struct kern_reloc_arg, kern_arg0));
+  DEFINE(KEXEC_KRELOC_KERN_ARG1,	offsetof(struct kern_reloc_arg, kern_arg1));
+  DEFINE(KEXEC_KRELOC_KERN_ARG2,	offsetof(struct kern_reloc_arg, kern_arg2));
+  DEFINE(KEXEC_KRELOC_KERN_ARG3,	offsetof(struct kern_reloc_arg, kern_arg3));
 #endif
   return 0;
 }
diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 32c7bf858dd9..b8e4b276393e 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -16,14 +16,11 @@
 .pushsection    .idmap.text, "awx"
 
 /*
- * __cpu_soft_restart(el2_switch, entry, arg0, arg1, arg2) - Helper for
- * cpu_soft_restart.
+ * __cpu_soft_restart(el2_switch, entry, arg) - Helper for cpu_soft_restart.
  *
  * @el2_switch: Flag to indicate a switch to EL2 is needed.
  * @entry: Location to jump to for soft reset.
- * arg0: First argument passed to @entry. (relocation list)
- * arg1: Second argument passed to @entry.(physical kernel entry)
- * arg2: Third argument passed to @entry. (physical dtb address)
+ * arg: Entry argument
  *
  * Put the CPU into the same state as it would be if it had been reset, and
  * branch to what would be the reset vector. It must be executed with the
@@ -43,9 +40,7 @@ ENTRY(__cpu_soft_restart)
 	hvc	#0				// no return
 
 1:	mov	x8, x1				// entry
-	mov	x0, x2				// arg0
-	mov	x1, x3				// arg1
-	mov	x2, x4				// arg2
+	mov	x0, x2				// arg
 	br	x8
 ENDPROC(__cpu_soft_restart)
 
diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
index 38cbd4068019..7649eec64f82 100644
--- a/arch/arm64/kernel/cpu-reset.h
+++ b/arch/arm64/kernel/cpu-reset.h
@@ -11,12 +11,10 @@
 #include <asm/virt.h>
 
 void __cpu_soft_restart(phys_addr_t el2_switch, phys_addr_t entry,
-			phys_addr_t arg0, phys_addr_t arg1, phys_addr_t arg2);
+			phys_addr_t arg);
 
 static inline void __noreturn cpu_soft_restart(phys_addr_t entry,
-					       phys_addr_t arg0,
-					       phys_addr_t arg1,
-					       phys_addr_t arg2)
+					       phys_addr_t arg)
 {
 	typeof(__cpu_soft_restart) *restart;
 
@@ -25,7 +23,7 @@ static inline void __noreturn cpu_soft_restart(phys_addr_t entry,
 	restart = (void *)__pa_symbol(__cpu_soft_restart);
 
 	cpu_install_idmap();
-	restart(el2_switch, entry, arg0, arg1, arg2);
+	restart(el2_switch, entry, arg);
 	unreachable();
 }
 
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index cee3be586384..b1122eea627e 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -43,6 +43,7 @@ static void _kexec_image_info(const char *func, int line,
 	pr_debug("    head:        %lx\n", kimage->head);
 	pr_debug("    nr_segments: %lu\n", kimage->nr_segments);
 	pr_debug("    kern_reloc: %pa\n", &kimage->arch.kern_reloc);
+	pr_debug("    kern_reloc_arg: %pa\n", &kimage->arch.kern_reloc_arg);
 
 	for (i = 0; i < kimage->nr_segments; i++) {
 		pr_debug("      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
@@ -59,13 +60,35 @@ void machine_kexec_cleanup(struct kimage *kimage)
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
+	memset(page_address(page), 0, PAGE_SIZE);
+
+	return page_address(page);
+}
+
 int machine_kexec_post_load(struct kimage *kimage)
 {
 	void *reloc_code = page_to_virt(kimage->control_code_page);
+	struct kern_reloc_arg *kern_reloc_arg = kexec_page_alloc(kimage);
+
+	if (!kern_reloc_arg)
+		return -ENOMEM;
 
 	memcpy(reloc_code, arm64_relocate_new_kernel,
 	       arm64_relocate_new_kernel_size);
 	kimage->arch.kern_reloc = __pa(reloc_code);
+	kimage->arch.kern_reloc_arg = __pa(kern_reloc_arg);
+	kern_reloc_arg->head = kimage->head;
+	kern_reloc_arg->entry_addr = kimage->start;
+	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;
 	kexec_image_info(kimage);
 
 	return 0;
@@ -200,8 +223,7 @@ void machine_kexec(struct kimage *kimage)
 	 * userspace (kexec-tools).
 	 * In kexec_file case, the kernel starts directly without purgatory.
 	 */
-	cpu_soft_restart(kimage->arch.kern_reloc, kimage->head, kimage->start,
-			 kimage->arch.dtb_mem);
+	cpu_soft_restart(kimage->arch.kern_reloc, kimage->arch.kern_reloc_arg);
 
 	BUG(); /* Should never get here. */
 }
diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index 41f9c95fabe8..22ccdcb106d3 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -8,6 +8,7 @@
 
 #include <linux/kexec.h>
 #include <linux/linkage.h>
+#include <asm/asm-offsets.h>
 #include <asm/assembler.h>
 #include <asm/kexec.h>
 #include <asm/page.h>
@@ -25,12 +26,6 @@
  * safe memory that has been set up to be preserved during the copy operation.
  */
 ENTRY(arm64_relocate_new_kernel)
-	/* Setup the list loop variables. */
-	mov	x18, x2				/* x18 = dtb address */
-	mov	x17, x1				/* x17 = kimage_start */
-	mov	x16, x0				/* x16 = kimage_head */
-	mov	x14, xzr			/* x14 = entry ptr */
-	mov	x13, xzr			/* x13 = copy dest */
 	/* Clear the sctlr_el2 flags. */
 	mrs	x2, CurrentEL
 	cmp	x2, #CurrentEL_EL2
@@ -42,6 +37,7 @@ ENTRY(arm64_relocate_new_kernel)
 	msr	sctlr_el2, x2
 	isb
 1:	/* Check if the new image needs relocation. */
+	ldr	x16, [x0, #KEXEC_KRELOC_HEAD]	/* x16 = kimage_head */
 	tbnz	x16, IND_DONE_BIT, .Ldone
 	raw_dcache_line_size x15, x1		/* x15 = dcache line size */
 .Lloop:
@@ -81,11 +77,12 @@ ENTRY(arm64_relocate_new_kernel)
 	isb
 
 	/* Start new image. */
-	mov	x0, x18
-	mov	x1, xzr
-	mov	x2, xzr
-	mov	x3, xzr
-	br	x17
+	ldr	x4, [x0, #KEXEC_KRELOC_ENTRY_ADDR]	/* x4 = kimage_start */
+	ldr	x3, [x0, #KEXEC_KRELOC_KERN_ARG3]
+	ldr	x2, [x0, #KEXEC_KRELOC_KERN_ARG2]
+	ldr	x1, [x0, #KEXEC_KRELOC_KERN_ARG1]
+	ldr	x0, [x0, #KEXEC_KRELOC_KERN_ARG0]	/* x0 = dtb address */
+	br	x4
 .ltorg
 END(arm64_relocate_new_kernel)
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
