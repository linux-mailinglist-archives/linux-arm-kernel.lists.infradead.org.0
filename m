Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 910661EF8CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6Ue2kNhHJ7bF99LLnCiQW85o5P7DiNWr7dI4tGA2t4=; b=XKcu/TXRGk46Hc
	C8KRNf4RXR8MCB0+zVqGiV+9Y8PiT+c8R+tvuQtkp5sHRa9UjGPw7jPOrL4tndWQXYMiJHdzTYSlc
	r2f5Gr66x0Xkjo2KULlu8npfjVdjvgab1YiBCT06kZu7Xanb4w6GoMkK2GQ1dQPsUvYi15x8M6+IK
	fA0oxPlro+oapwbc6dOvy3OeiEYpx/CVX33LdYLMmodBKYQQa2EbK6oaH3UN6FXs6TVJ/j8bNGnzT
	FgPRoYv7STVyfQrlcShyBh1hCpkQntXLJEZlh+UVvhA5ye8aoZNwaWUnGxHyJ2jCf9zsDLHyq5iaa
	H6pIOiWfrrQmUGvPfE3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCFv-0002Ob-Bg; Fri, 05 Jun 2020 13:19:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCFD-0001wM-2M
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:18:48 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29F2B2067B;
 Fri,  5 Jun 2020 13:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591363126;
 bh=qbSI+2FXjkWBEAXD5gQn6E++PkPz8SR4a5mE4jlfnlM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o12eI1Ip+pP40JrypCQuX5xUvQtazdgGM7lgITd1SyG5oD+rWxTiDMZvg8UA0Wux9
 HJUTnTwoX81b+izRNMLmm/JPmHyZp1lb2jOS78ek/piDk1rsYmansOJGuDM2/bcUqW
 x2J/XhboytfAavTxuRomz8UYC2TNRjJiR9NnF2cc=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 2/5] arm64: vdso: Add per-CPU data
Date: Fri,  5 Jun 2020 14:11:28 +0100
Message-Id: <20200605131131.16491-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200605131131.16491-1-broonie@kernel.org>
References: <20200605131131.16491-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_061847_266563_B709BDEF 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Brown <broonie@kernel.org>, Andrei Vagin <avagin@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to support a vDSO getcpu() implementation add per-CPU data to
the vDSO data page. Do this by wrapping the generic vdso_data struct in
an arm64 specific one with an array of per-CPU data. The offset of the
per-CPU data applying to a CPU will be stored in TPIDRRO_EL0, this
allows us to get to the per-CPU data without doing any multiplications.

Since we currently only map a single data page for the vDSO but support
very large numbers of CPUs TPIDRRO may be set to zero for CPUs which don't
fit in the data page. This will also happen when KPTI is active since
kernel_ventry uses TPIDRRO_EL0 as a scratch register in that case, add a
comment to the code explaining this.

Acessors for the data are provided in the header since they will be needed
in multiple files and it seems neater to keep things together.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/processor.h     | 12 +-----
 arch/arm64/include/asm/vdso/datapage.h | 54 ++++++++++++++++++++++++++
 arch/arm64/kernel/process.c            | 26 ++++++++++++-
 arch/arm64/kernel/vdso.c               |  5 ++-
 4 files changed, 83 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm64/include/asm/vdso/datapage.h

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 240fe5e5b720..db7a804030b3 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -207,17 +207,7 @@ static inline void set_compat_ssbs_bit(struct pt_regs *regs)
 	regs->pstate |= PSR_AA32_SSBS_BIT;
 }
 
-static inline void start_thread(struct pt_regs *regs, unsigned long pc,
-				unsigned long sp)
-{
-	start_thread_common(regs, pc);
-	regs->pstate = PSR_MODE_EL0t;
-
-	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
-		set_ssbs_bit(regs);
-
-	regs->sp = sp;
-}
+void start_thread(struct pt_regs *regs, unsigned long pc, unsigned long sp);
 
 static inline bool is_ttbr0_addr(unsigned long addr)
 {
diff --git a/arch/arm64/include/asm/vdso/datapage.h b/arch/arm64/include/asm/vdso/datapage.h
new file mode 100644
index 000000000000..e88d97238c52
--- /dev/null
+++ b/arch/arm64/include/asm/vdso/datapage.h
@@ -0,0 +1,54 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 ARM Limited
+ */
+#ifndef __ASM_VDSO_DATAPAGE_H
+#define __ASM_VDSO_DATAPAGE_H
+
+#include <vdso/datapage.h>
+
+struct vdso_cpu_data {
+	unsigned int cpu;
+	unsigned int node;
+};
+
+struct arm64_vdso_data {
+	/* Must be first in struct, we cast to vdso_data */
+	struct vdso_data data[CS_BASES];
+	struct vdso_cpu_data cpu_data[];
+};
+
+#ifdef __VDSO__
+static inline struct vdso_cpu_data *__vdso_cpu_data(void)
+{
+	unsigned long offset;
+
+	asm volatile(
+		"mrs %0, tpidrro_el0\n"
+	: "=r" (offset)
+	:
+	: "cc");
+
+	if (offset)
+		return (void *)(_vdso_data) + offset;
+
+	return NULL;
+}
+#else
+static inline size_t vdso_cpu_offset(void)
+{
+	size_t offset, data_end;
+
+	offset = offsetof(struct arm64_vdso_data, cpu_data) +
+		smp_processor_id() * sizeof(struct vdso_cpu_data);
+	data_end = offset + sizeof(struct vdso_cpu_data) + 1;
+
+	/* We only map a single page for vDSO data currently */
+	if (data_end > PAGE_SIZE)
+		return 0;
+
+	return offset;
+}
+#endif
+
+#endif
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 6089638c7d43..b37fe0ceb1c9 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -55,6 +55,7 @@
 #include <asm/processor.h>
 #include <asm/pointer_auth.h>
 #include <asm/stacktrace.h>
+#include <asm/vdso/datapage.h>
 
 #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
 #include <linux/stackprotector.h>
@@ -309,6 +310,28 @@ void show_regs(struct pt_regs * regs)
 	dump_backtrace(regs, NULL, KERN_DEFAULT);
 }
 
+void start_thread(struct pt_regs *regs, unsigned long pc, unsigned long sp)
+{
+	start_thread_common(regs, pc);
+	regs->pstate = PSR_MODE_EL0t;
+
+	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
+		set_ssbs_bit(regs);
+
+	regs->sp = sp;
+
+	/*
+	 * Store the vDSO per-CPU offset if supported. Disable
+	 * preemption to make sure we read the CPU offset on the CPU
+	 * we write it on.
+	 */
+	if (!arm64_kernel_unmapped_at_el0()) {
+		preempt_disable();
+		write_sysreg(vdso_cpu_offset(), tpidrro_el0);
+		preempt_enable();
+	}
+}
+
 static void tls_thread_flush(void)
 {
 	write_sysreg(0, tpidr_el0);
@@ -452,7 +475,8 @@ static void tls_thread_switch(struct task_struct *next)
 	if (is_compat_thread(task_thread_info(next)))
 		write_sysreg(next->thread.uw.tp_value, tpidrro_el0);
 	else if (!arm64_kernel_unmapped_at_el0())
-		write_sysreg(0, tpidrro_el0);
+		/* Used as scratch in KPTI trampoline so don't set here. */
+		write_sysreg(vdso_cpu_offset(), tpidrro_el0);
 
 	write_sysreg(*task_user_tls(next), tpidr_el0);
 }
diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 4e016574bd91..ea5e18e37371 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -27,6 +27,7 @@
 #include <asm/cacheflush.h>
 #include <asm/signal32.h>
 #include <asm/vdso.h>
+#include <asm/vdso/datapage.h>
 
 extern char vdso_start[], vdso_end[];
 #ifdef CONFIG_COMPAT_VDSO
@@ -70,10 +71,10 @@ static struct vdso_abi_info vdso_info[] __ro_after_init = {
  * The vDSO data page.
  */
 static union {
-	struct vdso_data	data[CS_BASES];
+	struct arm64_vdso_data	data;
 	u8			page[PAGE_SIZE];
 } vdso_data_store __page_aligned_data;
-struct vdso_data *vdso_data = vdso_data_store.data;
+struct vdso_data *vdso_data = vdso_data_store.data.data;
 
 static int __vdso_remap(enum vdso_abi abi,
 			const struct vm_special_mapping *sm,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
