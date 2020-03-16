Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B1818709C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 17:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BXIESEekb9HHmvnS71UazCz9v08NvNsvw0fNNdivZw=; b=s8km5sFjx6sRXc
	0PtNR7dfIC6uLG7EURTxo0gRbCxs+ird3SdlYzKNehc15Ci20Mqt5lE5sIJOUA3NHCDRrvmApGhu6
	idQrT6vyMAU6wIA0YwAB2tEqQAvw9ZG1j6gmKWW65Ea9WCoLaB3fvpr864/ZySYktR/kKjBTaeYe+
	RGilDoa5datJSg8469m87kTt95mdlhFMvmp63VGGJrMLJGS7TFx7ifZzu2OhkzYgFvq8KiTZvekhS
	mKVdeKFrXfLPrU7LrifXLBfgE6TDVnnKXWcF1f/TfS/4kaZHJlQXGC+Jl8R6PlY0iSjH0m5ojnUQE
	gLP6jiBw7leqTfPCuOJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDsyy-0006p9-4d; Mon, 16 Mar 2020 16:52:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDsxJ-0005Ng-Vk
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 16:51:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFADA11D4;
 Mon, 16 Mar 2020 09:51:09 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DEDB3F67D;
 Mon, 16 Mar 2020 09:51:09 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v10 05/13] arm64: elf: Enable BTI at exec based on ELF program
 properties
Date: Mon, 16 Mar 2020 16:50:47 +0000
Message-Id: <20200316165055.31179-6-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316165055.31179-1-broonie@kernel.org>
References: <20200316165055.31179-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_095110_185122_EAA75262 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

For BTI protection to be as comprehensive as possible, it is
desirable to have BTI enabled from process startup.  If this is not
done, the process must use mprotect() to enable BTI for each of its
executable mappings, but this is painful to do in the libc startup
code.  It's simpler and more sound to have the kernel do it
instead.

To this end, detect BTI support in the executable (or ELF
interpreter, as appropriate), via the
NT_GNU_PROGRAM_PROPERTY_TYPE_0 note, and tweak the initial prot
flags for the process' executable pages to include PROT_BTI as
appropriate.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/Kconfig           |  3 +++
 arch/arm64/include/asm/elf.h | 50 ++++++++++++++++++++++++++++++++++++
 arch/arm64/kernel/process.c  | 19 ++++++++++++++
 include/uapi/linux/elf.h     |  6 +++++
 4 files changed, 78 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..8a15bc68dadd 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -9,6 +9,7 @@ config ARM64
 	select ACPI_MCFG if (ACPI && PCI)
 	select ACPI_SPCR_TABLE if ACPI
 	select ACPI_PPTT if ACPI
+	select ARCH_BINFMT_ELF_STATE
 	select ARCH_CLOCKSOURCE_DATA
 	select ARCH_HAS_DEBUG_VIRTUAL
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
@@ -33,6 +34,7 @@ config ARM64
 	select ARCH_HAS_SYSCALL_WRAPPER
 	select ARCH_HAS_TEARDOWN_DMA_OPS if IOMMU_SUPPORT
 	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
+	select ARCH_HAVE_ELF_PROT
 	select ARCH_HAVE_NMI_SAFE_CMPXCHG
 	select ARCH_INLINE_READ_LOCK if !PREEMPTION
 	select ARCH_INLINE_READ_LOCK_BH if !PREEMPTION
@@ -62,6 +64,7 @@ config ARM64
 	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
 	select ARCH_KEEP_MEMBLOCK
 	select ARCH_USE_CMPXCHG_LOCKREF
+	select ARCH_USE_GNU_PROPERTY if BINFMT_ELF
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
index b618017205a3..4f00d50585a4 100644
--- a/arch/arm64/include/asm/elf.h
+++ b/arch/arm64/include/asm/elf.h
@@ -114,7 +114,11 @@
 
 #ifndef __ASSEMBLY__
 
+#include <uapi/linux/elf.h>
 #include <linux/bug.h>
+#include <linux/errno.h>
+#include <linux/fs.h>
+#include <linux/types.h>
 #include <asm/processor.h> /* for signal_minsigstksz, used by ARCH_DLINFO */
 
 typedef unsigned long elf_greg_t;
@@ -224,6 +228,52 @@ extern int aarch32_setup_additional_pages(struct linux_binprm *bprm,
 
 #endif /* CONFIG_COMPAT */
 
+struct arch_elf_state {
+	int flags;
+};
+
+#define ARM64_ELF_BTI		(1 << 0)
+
+#define INIT_ARCH_ELF_STATE {			\
+	.flags = 0,				\
+}
+
+static inline int arch_parse_elf_property(u32 type, const void *data,
+					  size_t datasz, bool compat,
+					  struct arch_elf_state *arch)
+{
+	/* No known properties for AArch32 yet */
+	if (IS_ENABLED(CONFIG_COMPAT) && compat)
+		return 0;
+
+	if (type == GNU_PROPERTY_AARCH64_FEATURE_1_AND) {
+		const u32 *p = data;
+
+		if (datasz != sizeof(*p))
+			return -ENOEXEC;
+
+		if (system_supports_bti() &&
+		    (*p & GNU_PROPERTY_AARCH64_FEATURE_1_BTI))
+			arch->flags |= ARM64_ELF_BTI;
+	}
+
+	return 0;
+}
+
+static inline int arch_elf_pt_proc(void *ehdr, void *phdr,
+				   struct file *f, bool is_interp,
+				   struct arch_elf_state *state)
+{
+	return 0;
+}
+
+static inline int arch_check_elf(void *ehdr, bool has_interp,
+				 void *interp_ehdr,
+				 struct arch_elf_state *state)
+{
+	return 0;
+}
+
 #endif /* !__ASSEMBLY__ */
 
 #endif
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 00626057a384..b8e3faa8d406 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -11,6 +11,7 @@
 
 #include <linux/compat.h>
 #include <linux/efi.h>
+#include <linux/elf.h>
 #include <linux/export.h>
 #include <linux/sched.h>
 #include <linux/sched/debug.h>
@@ -18,6 +19,7 @@
 #include <linux/sched/task_stack.h>
 #include <linux/kernel.h>
 #include <linux/lockdep.h>
+#include <linux/mman.h>
 #include <linux/mm.h>
 #include <linux/stddef.h>
 #include <linux/sysctl.h>
@@ -654,3 +656,20 @@ asmlinkage void __sched arm64_preempt_schedule_irq(void)
 	if (system_capabilities_finalized())
 		preempt_schedule_irq();
 }
+
+#ifdef CONFIG_BINFMT_ELF
+int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
+			 bool has_interp, bool is_interp)
+{
+	if (is_interp != has_interp)
+		return prot;
+
+	if (!(state->flags & ARM64_ELF_BTI))
+		return prot;
+
+	if (prot & PROT_EXEC)
+		prot |= PROT_BTI;
+
+	return prot;
+}
+#endif
diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
index 20900f4496b7..c6dd0215482e 100644
--- a/include/uapi/linux/elf.h
+++ b/include/uapi/linux/elf.h
@@ -448,4 +448,10 @@ typedef struct elf64_note {
   Elf64_Word n_type;	/* Content type */
 } Elf64_Nhdr;
 
+/* .note.gnu.property types for EM_AARCH64: */
+#define GNU_PROPERTY_AARCH64_FEATURE_1_AND	0xc0000000
+
+/* Bits for GNU_PROPERTY_AARCH64_FEATURE_1_BTI */
+#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI	(1U << 0)
+
 #endif /* _UAPI_LINUX_ELF_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
