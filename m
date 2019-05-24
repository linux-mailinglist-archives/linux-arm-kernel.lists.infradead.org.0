Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2DC295B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OSd5OyfFifxCds2RbQVTAW+gmW0sPjUWSQXPhScPjQU=; b=HU4+OX7U0t/Sd9Z/2j7TzVXHI/
	JvYPrHlZPPg4aF+lOrDKeSJo3/NLop6Q6mRBVMMZpzrkq/uXQXa4/ht0XyeeoeRjYMNlJ1qCfKIBF
	8pXhD4LKKfVr+VgBdSYdSN55KFBbuTKPbWsvuy1L8hHcOqmvCSm43uJG6jLaRxDkVe8M/KLEbgOat
	lsTLTZ5ifhhFtuNWdXhnfsNcy7IKgzsqoK+HzNQiYmqeduQLML30r4mcwExXgCM5djy6yca1Y6zKN
	ZqVlDIa9TuGA7s3KTZS+6XfAo+FqShl5rc9ueZta7J7mcyVYsFs6xBwT5+ZmnLZ5mYYgDBjLLYfFY
	XQtshCBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7QO-0002H1-Mg; Fri, 24 May 2019 10:27:44 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7PL-000160-5f
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:26:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D5C015A2;
 Fri, 24 May 2019 03:26:39 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C967A3F703;
 Fri, 24 May 2019 03:26:36 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 7/8] arm64: elf: Enable BTI at exec based on ELF program
 properties
Date: Fri, 24 May 2019 11:25:32 +0100
Message-Id: <1558693533-13465-8-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_032639_472140_36EA7020 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Andrew Jones <drjones@redhat.com>,
 Paul Elliott <paul.elliott@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sudakshina Das <sudi.das@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For BTI protection to be as comprehensive as possible, it is
desirable to have BTI enabled from process startup.  If this is not
done, the process must use mprotect() to enable BTI for each of its
executable mappings, but this is painful to do in the libc startup
code.  It's simpler and more sound to have the kernel do it
instead.

To this end, detect BTI support in the executable (or ELF
interpreter, as appropriate), via the
NT_GNU_PROGRAM_PROPERTY_TYPE_0 note, and tweak the initial prot
flags for the process' executable pages to include PROT_BTI_GUARDED
as appropriate.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 arch/arm64/Kconfig           |  3 +++
 arch/arm64/include/asm/elf.h | 28 ++++++++++++++++++++++
 arch/arm64/kernel/process.c  | 55 ++++++++++++++++++++++++++++++++++++++++++++
 include/uapi/linux/elf.h     |  8 ++++++-
 4 files changed, 93 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0f6765e..f8af7f2 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -8,6 +8,7 @@ config ARM64
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
 	select ARCH_INLINE_READ_LOCK if !PREEMPT
 	select ARCH_INLINE_READ_LOCK_BH if !PREEMPT
@@ -62,6 +64,7 @@ config ARM64
 	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPT
 	select ARCH_KEEP_MEMBLOCK
 	select ARCH_USE_CMPXCHG_LOCKREF
+	select ARCH_USE_GNU_PROPERTY if BINFMT_ELF
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
index 355d120..bba45fa 100644
--- a/arch/arm64/include/asm/elf.h
+++ b/arch/arm64/include/asm/elf.h
@@ -126,6 +126,7 @@
 #ifndef __ASSEMBLY__
 
 #include <linux/bug.h>
+#include <linux/fs.h>
 #include <asm/processor.h> /* for signal_minsigstksz, used by ARCH_DLINFO */
 
 typedef unsigned long elf_greg_t;
@@ -221,6 +222,33 @@ extern int aarch32_setup_additional_pages(struct linux_binprm *bprm,
 
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
+int arch_parse_property(void *ehdr, void *phdr, struct file *f, bool interp,
+			struct arch_elf_state *state);
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
index 3767fb2..104b0d8 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -22,12 +22,14 @@
 
 #include <linux/compat.h>
 #include <linux/efi.h>
+#include <linux/elf.h>
 #include <linux/export.h>
 #include <linux/sched.h>
 #include <linux/sched/debug.h>
 #include <linux/sched/task.h>
 #include <linux/sched/task_stack.h>
 #include <linux/kernel.h>
+#include <linux/mman.h>
 #include <linux/mm.h>
 #include <linux/stddef.h>
 #include <linux/unistd.h>
@@ -552,3 +554,56 @@ void arch_setup_new_exec(void)
 
 	ptrauth_thread_init_user(current);
 }
+
+#ifdef CONFIG_BINFMT_ELF
+int arch_parse_property(void *ehdr, void *phdr, struct file *f, bool interp,
+			struct arch_elf_state *state)
+{
+	union any_elf_hdr {
+		struct elf32_hdr hdr32;
+		struct elf64_hdr hdr64;
+	};
+	const union any_elf_hdr *e = ehdr;
+
+	int ret;
+	u32 val;
+
+	/* Currently we have GNU program properties only for native: */
+	if (e->hdr64.e_machine != EM_AARCH64) {
+		WARN_ON(!IS_ENABLED(CONFIG_COMPAT) ||
+			e->hdr64.e_machine != EM_ARM);
+
+		return 0;
+	}
+
+	ret = get_gnu_property(ehdr, phdr, f,
+			       GNU_PROPERTY_AARCH64_FEATURE_1_AND,
+			       &val);
+	if (ret)
+		return ret;
+
+	if (val & GNU_PROPERTY_AARCH64_FEATURE_1_BTI) {
+		if (!system_supports_bti())
+			return -EINVAL;
+
+		state->flags |= ARM64_ELF_BTI;
+	}
+
+	return 0;
+}
+
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
+		prot |= PROT_BTI_GUARDED;
+
+	return prot;
+}
+#endif
diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
index 7b7603a..1c8e455 100644
--- a/include/uapi/linux/elf.h
+++ b/include/uapi/linux/elf.h
@@ -444,11 +444,17 @@ typedef struct elf64_note {
   Elf64_Word n_type;	/* Content type */
 } Elf64_Nhdr;
 
-/* .note.gnu.property types */
+/* .note.gnu.property types for x86: */
 #define GNU_PROPERTY_X86_FEATURE_1_AND		(0xc0000002)
 
 /* Bits of GNU_PROPERTY_X86_FEATURE_1_AND */
 #define GNU_PROPERTY_X86_FEATURE_1_IBT		(0x00000001)
 #define GNU_PROPERTY_X86_FEATURE_1_SHSTK	(0x00000002)
 
+/* .note.gnu.property types for EM_AARCH64: */
+#define GNU_PROPERTY_AARCH64_FEATURE_1_AND	0xc0000000
+
+/* Bits for GNU_PROPERTY_AARCH64_FEATURE_1_BTI */
+#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI	(1U << 0)
+
 #endif /* _UAPI_LINUX_ELF_H */
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
