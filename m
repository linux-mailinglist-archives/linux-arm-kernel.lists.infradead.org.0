Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772FE17255D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:46:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9+k9oUw2TQ2QYF3SBtn11uaLBR7K9nfTEPSAnFLhbI=; b=a+Yfxz/HrV6ZYW
	SHGfKMJNwObXnKygpNAvdZl4zsNSxSjMIvzYpXB2WiwPa047ijMD2GmUGdvm8z/QbUK2+OkUYoJvb
	xbNS80cjlNZu9hBWIUSy6CI4/ULF5JZ8cZf2rpK8zidI9DIbWbtnp3J7dJxl2U5BHVb1dS6TSi5/X
	qrz//CZQE2Y1N717obIamukb3fTv2LkXUjV3YEwDjhq8vVLdQAfOxAuCxLHha5yNO0b7w5wdw8Rez
	B9Y1dyMXeOZbrRvSAGeuLoQkCduJ71STaOkj+9JqJzCOsOQ2IwMudBXVRO+oa3alER4tMuJoCtKUP
	CxyPCyiDFu3L9bAhz3oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NFD-0003gB-Ud; Thu, 27 Feb 2020 17:46:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ND7-0000r0-IH
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:44:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 24C45113E;
 Thu, 27 Feb 2020 09:44:33 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 651123F73B;
 Thu, 27 Feb 2020 09:44:32 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v8 05/11] arm64: elf: Enable BTI at exec based on ELF program
 properties
Date: Thu, 27 Feb 2020 17:44:11 +0000
Message-Id: <20200227174417.23722-6-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227174417.23722-1-broonie@kernel.org>
References: <20200227174417.23722-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_094433_700021_A8FA1608 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
index e37f4f07b990..d65d226a77ec 100644
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
