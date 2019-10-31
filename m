Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B9FEB42A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 16:46:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phatDvaBnjFfXoAoYx/jNqwKOv2isyN229u7T9gipc0=; b=Z81vvhBBE2OoqK
	X8fnDw7aTzm/rdvTuCYLCfUEnry53n43TmFzmho+fVdc2QPyoyDmU1vfgH55JqyecSu4Ye9tjgX2y
	TChQhdxhxLQVT9EeGmymDzWI0KvQdsEvL2i8prOwOlH90RGhfddQlmgIqYHnJmp4/jTXTlQHvsoTh
	3t9ZOSD3fPzCS8S6waCVG2LQ3opipDq4nZyvdoczn8Z6hSS+4dLGgt/pVPATq+dpEglzh7X1InZIi
	nbWqOwiT1wF5xyQZgT7a4BxrNJVRV/2xycJFRuoHbsWmUmzINtyPEMxLVI+u1IM6A4mR3rdvYq/E9
	VbkdwwOXfWCY+k3ifQ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCeZ-0006cM-Ic; Thu, 31 Oct 2019 15:46:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCdp-00062N-T3
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 15:45:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE12046A;
 Thu, 31 Oct 2019 08:45:37 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C07573F71E;
 Thu, 31 Oct 2019 08:45:36 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm: Add support for generic vDSO
Date: Thu, 31 Oct 2019 15:44:47 +0000
Message-Id: <20191031154449.49757-2-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031154449.49757-1-vincenzo.frascino@arm.com>
References: <20191031154449.49757-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_084542_028145_029F197F 
X-CRM114-Status: GOOD (  26.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: tglx@linutronix.de, vincenzo.frascino@arm.com, luto@kernel.org,
 linux@armlinux.org.uk, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arm vDSO library requires some adaptations to take advantage of
the newly introduced generic vDSO library.

Introduce the following changes:
 - Modification vdso.c to be compliant with the common vdso datapage
 - Use of lib/vdso for gettimeofday
 - Implementation of elf note

Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm/include/asm/vdso/gettimeofday.h |  74 +++++++
 arch/arm/include/asm/vdso/vsyscall.h     |  71 +++++++
 arch/arm/include/asm/vdso_datapage.h     |  29 +--
 arch/arm/kernel/vdso.c                   |  87 +-------
 arch/arm/mm/Kconfig                      |   3 +
 arch/arm/vdso/Makefile                   |  18 +-
 arch/arm/vdso/note.c                     |  15 ++
 arch/arm/vdso/vgettimeofday.c            | 255 +----------------------
 8 files changed, 195 insertions(+), 357 deletions(-)
 create mode 100644 arch/arm/include/asm/vdso/gettimeofday.h
 create mode 100644 arch/arm/include/asm/vdso/vsyscall.h
 create mode 100644 arch/arm/vdso/note.c

diff --git a/arch/arm/include/asm/vdso/gettimeofday.h b/arch/arm/include/asm/vdso/gettimeofday.h
new file mode 100644
index 000000000000..30ce4e87dffc
--- /dev/null
+++ b/arch/arm/include/asm/vdso/gettimeofday.h
@@ -0,0 +1,74 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2018 ARM Limited
+ */
+#ifndef __ASM_VDSO_GETTIMEOFDAY_H
+#define __ASM_VDSO_GETTIMEOFDAY_H
+
+#ifndef __ASSEMBLY__
+
+#include <asm/barrier.h>
+#include <asm/cp15.h>
+#include <asm/unistd.h>
+#include <uapi/linux/time.h>
+
+extern struct vdso_data *__get_datapage(void);
+
+static __always_inline int gettimeofday_fallback(
+				struct __kernel_old_timeval *_tv,
+				struct timezone *_tz)
+{
+	register struct timezone *tz asm("r1") = _tz;
+	register struct __kernel_old_timeval *tv asm("r0") = _tv;
+	register long ret asm ("r0");
+	register long nr asm("r7") = __NR_gettimeofday;
+
+	asm volatile(
+	"	swi #0\n"
+	: "=r" (ret)
+	: "r" (tv), "r" (tz), "r" (nr)
+	: "memory");
+
+	return ret;
+}
+
+static __always_inline long clock_gettime_fallback(
+					clockid_t _clkid,
+					struct __kernel_timespec *_ts)
+{
+	register struct __kernel_timespec *ts asm("r1") = _ts;
+	register clockid_t clkid asm("r0") = _clkid;
+	register long ret asm ("r0");
+	register long nr asm("r7") = __NR_clock_gettime64;
+
+	asm volatile(
+	"	swi #0\n"
+	: "=r" (ret)
+	: "r" (clkid), "r" (ts), "r" (nr)
+	: "memory");
+
+	return ret;
+}
+
+static __always_inline u64 __arch_get_hw_counter(int clock_mode)
+{
+#ifdef CONFIG_ARM_ARCH_TIMER
+	u64 cycle_now;
+
+	isb();
+	cycle_now = read_sysreg(CNTVCT);
+
+	return cycle_now;
+#else
+	return -EINVAL; /* use fallback */
+#endif
+}
+
+static __always_inline const struct vdso_data *__arch_get_vdso_data(void)
+{
+	return __get_datapage();
+}
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_GETTIMEOFDAY_H */
diff --git a/arch/arm/include/asm/vdso/vsyscall.h b/arch/arm/include/asm/vdso/vsyscall.h
new file mode 100644
index 000000000000..c4166f317071
--- /dev/null
+++ b/arch/arm/include/asm/vdso/vsyscall.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSO_VSYSCALL_H
+#define __ASM_VDSO_VSYSCALL_H
+
+#ifndef __ASSEMBLY__
+
+#include <linux/timekeeper_internal.h>
+#include <vdso/datapage.h>
+#include <asm/cacheflush.h>
+
+extern struct vdso_data *vdso_data;
+extern bool cntvct_ok;
+
+static __always_inline
+bool tk_is_cntvct(const struct timekeeper *tk)
+{
+	if (!IS_ENABLED(CONFIG_ARM_ARCH_TIMER))
+		return false;
+
+	if (!tk->tkr_mono.clock->archdata.vdso_direct)
+		return false;
+
+	return true;
+}
+
+/*
+ * Update the vDSO data page to keep in sync with kernel timekeeping.
+ */
+static __always_inline
+struct vdso_data *__arm_get_k_vdso_data(void)
+{
+	return vdso_data;
+}
+#define __arch_get_k_vdso_data __arm_get_k_vdso_data
+
+static __always_inline
+int __arm_update_vdso_data(void)
+{
+	return !cntvct_ok;
+}
+#define __arch_update_vdso_data __arm_update_vdso_data
+
+static __always_inline
+int __arm_get_clock_mode(struct timekeeper *tk)
+{
+	u32 __tk_is_cntvct = tk_is_cntvct(tk);
+
+	return __tk_is_cntvct;
+}
+#define __arch_get_clock_mode __arm_get_clock_mode
+
+static __always_inline
+int __arm_use_vsyscall(struct vdso_data *vdata)
+{
+	return vdata[CS_HRES_COARSE].clock_mode;
+}
+#define __arch_use_vsyscall __arm_use_vsyscall
+
+static __always_inline
+void __arm_sync_vdso_data(struct vdso_data *vdata)
+{
+	flush_dcache_page(virt_to_page(vdata));
+}
+#define __arch_sync_vdso_data __arm_sync_vdso_data
+
+/* The asm-generic header needs to be included after the definitions above */
+#include <asm-generic/vdso/vsyscall.h>
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_VSYSCALL_H */
diff --git a/arch/arm/include/asm/vdso_datapage.h b/arch/arm/include/asm/vdso_datapage.h
index 7910abf89b1c..bef68f59928d 100644
--- a/arch/arm/include/asm/vdso_datapage.h
+++ b/arch/arm/include/asm/vdso_datapage.h
@@ -11,35 +11,12 @@
 
 #ifndef __ASSEMBLY__
 
+#include <vdso/datapage.h>
 #include <asm/page.h>
 
-/* Try to be cache-friendly on systems that don't implement the
- * generic timer: fit the unconditionally updated fields in the first
- * 32 bytes.
- */
-struct vdso_data {
-	u32 seq_count;		/* sequence count - odd during updates */
-	u16 tk_is_cntvct;	/* fall back to syscall if false */
-	u16 cs_shift;		/* clocksource shift */
-	u32 xtime_coarse_sec;	/* coarse time */
-	u32 xtime_coarse_nsec;
-
-	u32 wtm_clock_sec;	/* wall to monotonic offset */
-	u32 wtm_clock_nsec;
-	u32 xtime_clock_sec;	/* CLOCK_REALTIME - seconds */
-	u32 cs_mult;		/* clocksource multiplier */
-
-	u64 cs_cycle_last;	/* last cycle value */
-	u64 cs_mask;		/* clocksource mask */
-
-	u64 xtime_clock_snsec;	/* CLOCK_REALTIME sub-ns base */
-	u32 tz_minuteswest;	/* timezone info for gettimeofday(2) */
-	u32 tz_dsttime;
-};
-
 union vdso_data_store {
-	struct vdso_data data;
-	u8 page[PAGE_SIZE];
+	struct vdso_data	data[CS_BASES];
+	u8			page[PAGE_SIZE];
 };
 
 #endif /* !__ASSEMBLY__ */
diff --git a/arch/arm/kernel/vdso.c b/arch/arm/kernel/vdso.c
index 9bf16c93ee6a..c89ac1b9d28b 100644
--- a/arch/arm/kernel/vdso.c
+++ b/arch/arm/kernel/vdso.c
@@ -23,6 +23,8 @@
 #include <asm/vdso.h>
 #include <asm/vdso_datapage.h>
 #include <clocksource/arm_arch_timer.h>
+#include <vdso/helpers.h>
+#include <vdso/vsyscall.h>
 
 #define MAX_SYMNAME	64
 
@@ -37,7 +39,7 @@ unsigned int vdso_total_pages __ro_after_init;
  * The VDSO data page.
  */
 static union vdso_data_store vdso_data_store __page_aligned_data;
-static struct vdso_data *vdso_data = &vdso_data_store.data;
+struct vdso_data *vdso_data = vdso_data_store.data;
 
 static struct page *vdso_data_page __ro_after_init;
 static const struct vm_special_mapping vdso_data_mapping = {
@@ -77,7 +79,7 @@ struct elfinfo {
 /* Cached result of boot-time check for whether the arch timer exists,
  * and if so, whether the virtual counter is useable.
  */
-static bool cntvct_ok __ro_after_init;
+bool cntvct_ok __ro_after_init;
 
 static bool __init cntvct_functional(void)
 {
@@ -262,84 +264,3 @@ void arm_install_vdso(struct mm_struct *mm, unsigned long addr)
 		mm->context.vdso = addr;
 }
 
-static void vdso_write_begin(struct vdso_data *vdata)
-{
-	++vdso_data->seq_count;
-	smp_wmb(); /* Pairs with smp_rmb in vdso_read_retry */
-}
-
-static void vdso_write_end(struct vdso_data *vdata)
-{
-	smp_wmb(); /* Pairs with smp_rmb in vdso_read_begin */
-	++vdso_data->seq_count;
-}
-
-static bool tk_is_cntvct(const struct timekeeper *tk)
-{
-	if (!IS_ENABLED(CONFIG_ARM_ARCH_TIMER))
-		return false;
-
-	if (!tk->tkr_mono.clock->archdata.vdso_direct)
-		return false;
-
-	return true;
-}
-
-/**
- * update_vsyscall - update the vdso data page
- *
- * Increment the sequence counter, making it odd, indicating to
- * userspace that an update is in progress.  Update the fields used
- * for coarse clocks and, if the architected system timer is in use,
- * the fields used for high precision clocks.  Increment the sequence
- * counter again, making it even, indicating to userspace that the
- * update is finished.
- *
- * Userspace is expected to sample seq_count before reading any other
- * fields from the data page.  If seq_count is odd, userspace is
- * expected to wait until it becomes even.  After copying data from
- * the page, userspace must sample seq_count again; if it has changed
- * from its previous value, userspace must retry the whole sequence.
- *
- * Calls to update_vsyscall are serialized by the timekeeping core.
- */
-void update_vsyscall(struct timekeeper *tk)
-{
-	struct timespec64 *wtm = &tk->wall_to_monotonic;
-
-	if (!cntvct_ok) {
-		/* The entry points have been zeroed, so there is no
-		 * point in updating the data page.
-		 */
-		return;
-	}
-
-	vdso_write_begin(vdso_data);
-
-	vdso_data->tk_is_cntvct			= tk_is_cntvct(tk);
-	vdso_data->xtime_coarse_sec		= tk->xtime_sec;
-	vdso_data->xtime_coarse_nsec		= (u32)(tk->tkr_mono.xtime_nsec >>
-							tk->tkr_mono.shift);
-	vdso_data->wtm_clock_sec		= wtm->tv_sec;
-	vdso_data->wtm_clock_nsec		= wtm->tv_nsec;
-
-	if (vdso_data->tk_is_cntvct) {
-		vdso_data->cs_cycle_last	= tk->tkr_mono.cycle_last;
-		vdso_data->xtime_clock_sec	= tk->xtime_sec;
-		vdso_data->xtime_clock_snsec	= tk->tkr_mono.xtime_nsec;
-		vdso_data->cs_mult		= tk->tkr_mono.mult;
-		vdso_data->cs_shift		= tk->tkr_mono.shift;
-		vdso_data->cs_mask		= tk->tkr_mono.mask;
-	}
-
-	vdso_write_end(vdso_data);
-
-	flush_dcache_page(virt_to_page(vdso_data));
-}
-
-void update_vsyscall_tz(void)
-{
-	vdso_data->tz_minuteswest	= sys_tz.tz_minuteswest;
-	vdso_data->tz_dsttime		= sys_tz.tz_dsttime;
-	flush_dcache_page(virt_to_page(vdso_data));
-}
diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index 0ab3a86b1f52..f112dde735de 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -896,7 +896,10 @@ config VDSO
 	bool "Enable VDSO for acceleration of some system calls"
 	depends on AEABI && MMU && CPU_V7
 	default y if ARM_ARCH_TIMER
+	select HAVE_GENERIC_VDSO
 	select GENERIC_TIME_VSYSCALL
+	select GENERIC_VDSO_32
+	select GENERIC_GETTIMEOFDAY
 	help
 	  Place in the process address space an ELF shared object
 	  providing fast implementations of gettimeofday and
diff --git a/arch/arm/vdso/Makefile b/arch/arm/vdso/Makefile
index 87b7769214e0..0fda344beb0b 100644
--- a/arch/arm/vdso/Makefile
+++ b/arch/arm/vdso/Makefile
@@ -1,7 +1,13 @@
 # SPDX-License-Identifier: GPL-2.0
+
+# Absolute relocation type $(ARCH_REL_TYPE_ABS) needs to be defined before
+# the inclusion of generic Makefile.
+ARCH_REL_TYPE_ABS := R_ARM_JUMP_SLOT|R_ARM_GLOB_DAT|R_ARM_ABS32
+include $(srctree)/lib/vdso/Makefile
+
 hostprogs-y := vdsomunge
 
-obj-vdso := vgettimeofday.o datapage.o
+obj-vdso := vgettimeofday.o datapage.o note.o
 
 # Build rules
 targets := $(obj-vdso) vdso.so vdso.so.dbg vdso.so.raw vdso.lds
@@ -24,7 +30,11 @@ CFLAGS_REMOVE_vdso.o = -pg
 
 # Force -O2 to avoid libgcc dependencies
 CFLAGS_REMOVE_vgettimeofday.o = -pg -Os
+ifeq ($(c-gettimeofday-y),)
 CFLAGS_vgettimeofday.o = -O2
+else
+CFLAGS_vgettimeofday.o = -O2 -include $(c-gettimeofday-y)
+endif
 
 # Disable gcov profiling for VDSO code
 GCOV_PROFILE := n
@@ -37,7 +47,7 @@ $(obj)/vdso.o : $(obj)/vdso.so
 
 # Link rule for the .so file
 $(obj)/vdso.so.raw: $(obj)/vdso.lds $(obj-vdso) FORCE
-	$(call if_changed,ld)
+	$(call if_changed,vdsold_and_vdso_check)
 
 $(obj)/vdso.so.dbg: $(obj)/vdso.so.raw $(obj)/vdsomunge FORCE
 	$(call if_changed,vdsomunge)
@@ -47,6 +57,10 @@ $(obj)/%.so: OBJCOPYFLAGS := -S
 $(obj)/%.so: $(obj)/%.so.dbg FORCE
 	$(call if_changed,objcopy)
 
+# Actual build commands
+quiet_cmd_vdsold_and_vdso_check = LD      $@
+      cmd_vdsold_and_vdso_check = $(cmd_ld); $(cmd_vdso_check)
+
 quiet_cmd_vdsomunge = MUNGE   $@
       cmd_vdsomunge = $(objtree)/$(obj)/vdsomunge $< $@
 
diff --git a/arch/arm/vdso/note.c b/arch/arm/vdso/note.c
new file mode 100644
index 000000000000..eff5bf9efb8b
--- /dev/null
+++ b/arch/arm/vdso/note.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2012-2018 ARM Limited
+ *
+ * This supplies .note.* sections to go into the PT_NOTE inside the vDSO text.
+ * Here we can supply some information useful to userland.
+ */
+
+#include <linux/uts.h>
+#include <linux/version.h>
+#include <linux/elfnote.h>
+#include <linux/build-salt.h>
+
+ELFNOTE32("Linux", 0, LINUX_VERSION_CODE);
+BUILD_SALT;
diff --git a/arch/arm/vdso/vgettimeofday.c b/arch/arm/vdso/vgettimeofday.c
index d1fdbb12760a..e64deb75178e 100644
--- a/arch/arm/vdso/vgettimeofday.c
+++ b/arch/arm/vdso/vgettimeofday.c
@@ -1,259 +1,22 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
+ * ARM userspace implementations of gettimeofday() and similar.
+ *
  * Copyright 2015 Mentor Graphics Corporation.
  */
-
-#include <linux/compiler.h>
-#include <linux/hrtimer.h>
 #include <linux/time.h>
-#include <asm/barrier.h>
-#include <asm/bug.h>
-#include <asm/cp15.h>
-#include <asm/page.h>
-#include <asm/unistd.h>
-#include <asm/vdso_datapage.h>
-
-#ifndef CONFIG_AEABI
-#error This code depends on AEABI system call conventions
-#endif
-
-extern struct vdso_data *__get_datapage(void);
-
-static notrace u32 __vdso_read_begin(const struct vdso_data *vdata)
-{
-	u32 seq;
-repeat:
-	seq = READ_ONCE(vdata->seq_count);
-	if (seq & 1) {
-		cpu_relax();
-		goto repeat;
-	}
-	return seq;
-}
-
-static notrace u32 vdso_read_begin(const struct vdso_data *vdata)
-{
-	u32 seq;
-
-	seq = __vdso_read_begin(vdata);
-
-	smp_rmb(); /* Pairs with smp_wmb in vdso_write_end */
-	return seq;
-}
-
-static notrace int vdso_read_retry(const struct vdso_data *vdata, u32 start)
-{
-	smp_rmb(); /* Pairs with smp_wmb in vdso_write_begin */
-	return vdata->seq_count != start;
-}
-
-static notrace long clock_gettime_fallback(clockid_t _clkid,
-					   struct timespec *_ts)
-{
-	register struct timespec *ts asm("r1") = _ts;
-	register clockid_t clkid asm("r0") = _clkid;
-	register long ret asm ("r0");
-	register long nr asm("r7") = __NR_clock_gettime;
-
-	asm volatile(
-	"	swi #0\n"
-	: "=r" (ret)
-	: "r" (clkid), "r" (ts), "r" (nr)
-	: "memory");
-
-	return ret;
-}
-
-static notrace int do_realtime_coarse(struct timespec *ts,
-				      struct vdso_data *vdata)
-{
-	u32 seq;
+#include <linux/types.h>
 
-	do {
-		seq = vdso_read_begin(vdata);
-
-		ts->tv_sec = vdata->xtime_coarse_sec;
-		ts->tv_nsec = vdata->xtime_coarse_nsec;
-
-	} while (vdso_read_retry(vdata, seq));
-
-	return 0;
-}
-
-static notrace int do_monotonic_coarse(struct timespec *ts,
-				       struct vdso_data *vdata)
+int __vdso_clock_gettime(clockid_t clock,
+			 struct old_timespec32 *ts)
 {
-	struct timespec tomono;
-	u32 seq;
-
-	do {
-		seq = vdso_read_begin(vdata);
-
-		ts->tv_sec = vdata->xtime_coarse_sec;
-		ts->tv_nsec = vdata->xtime_coarse_nsec;
-
-		tomono.tv_sec = vdata->wtm_clock_sec;
-		tomono.tv_nsec = vdata->wtm_clock_nsec;
-
-	} while (vdso_read_retry(vdata, seq));
-
-	ts->tv_sec += tomono.tv_sec;
-	timespec_add_ns(ts, tomono.tv_nsec);
-
-	return 0;
+	return __cvdso_clock_gettime32(clock, ts);
 }
 
-#ifdef CONFIG_ARM_ARCH_TIMER
-
-static notrace u64 get_ns(struct vdso_data *vdata)
-{
-	u64 cycle_delta;
-	u64 cycle_now;
-	u64 nsec;
-
-	isb();
-	cycle_now = read_sysreg(CNTVCT);
-
-	cycle_delta = (cycle_now - vdata->cs_cycle_last) & vdata->cs_mask;
-
-	nsec = (cycle_delta * vdata->cs_mult) + vdata->xtime_clock_snsec;
-	nsec >>= vdata->cs_shift;
-
-	return nsec;
-}
-
-static notrace int do_realtime(struct timespec *ts, struct vdso_data *vdata)
+int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
+			struct timezone *tz)
 {
-	u64 nsecs;
-	u32 seq;
-
-	do {
-		seq = vdso_read_begin(vdata);
-
-		if (!vdata->tk_is_cntvct)
-			return -1;
-
-		ts->tv_sec = vdata->xtime_clock_sec;
-		nsecs = get_ns(vdata);
-
-	} while (vdso_read_retry(vdata, seq));
-
-	ts->tv_nsec = 0;
-	timespec_add_ns(ts, nsecs);
-
-	return 0;
-}
-
-static notrace int do_monotonic(struct timespec *ts, struct vdso_data *vdata)
-{
-	struct timespec tomono;
-	u64 nsecs;
-	u32 seq;
-
-	do {
-		seq = vdso_read_begin(vdata);
-
-		if (!vdata->tk_is_cntvct)
-			return -1;
-
-		ts->tv_sec = vdata->xtime_clock_sec;
-		nsecs = get_ns(vdata);
-
-		tomono.tv_sec = vdata->wtm_clock_sec;
-		tomono.tv_nsec = vdata->wtm_clock_nsec;
-
-	} while (vdso_read_retry(vdata, seq));
-
-	ts->tv_sec += tomono.tv_sec;
-	ts->tv_nsec = 0;
-	timespec_add_ns(ts, nsecs + tomono.tv_nsec);
-
-	return 0;
-}
-
-#else /* CONFIG_ARM_ARCH_TIMER */
-
-static notrace int do_realtime(struct timespec *ts, struct vdso_data *vdata)
-{
-	return -1;
-}
-
-static notrace int do_monotonic(struct timespec *ts, struct vdso_data *vdata)
-{
-	return -1;
-}
-
-#endif /* CONFIG_ARM_ARCH_TIMER */
-
-notrace int __vdso_clock_gettime(clockid_t clkid, struct timespec *ts)
-{
-	struct vdso_data *vdata;
-	int ret = -1;
-
-	vdata = __get_datapage();
-
-	switch (clkid) {
-	case CLOCK_REALTIME_COARSE:
-		ret = do_realtime_coarse(ts, vdata);
-		break;
-	case CLOCK_MONOTONIC_COARSE:
-		ret = do_monotonic_coarse(ts, vdata);
-		break;
-	case CLOCK_REALTIME:
-		ret = do_realtime(ts, vdata);
-		break;
-	case CLOCK_MONOTONIC:
-		ret = do_monotonic(ts, vdata);
-		break;
-	default:
-		break;
-	}
-
-	if (ret)
-		ret = clock_gettime_fallback(clkid, ts);
-
-	return ret;
-}
-
-static notrace long gettimeofday_fallback(struct timeval *_tv,
-					  struct timezone *_tz)
-{
-	register struct timezone *tz asm("r1") = _tz;
-	register struct timeval *tv asm("r0") = _tv;
-	register long ret asm ("r0");
-	register long nr asm("r7") = __NR_gettimeofday;
-
-	asm volatile(
-	"	swi #0\n"
-	: "=r" (ret)
-	: "r" (tv), "r" (tz), "r" (nr)
-	: "memory");
-
-	return ret;
-}
-
-notrace int __vdso_gettimeofday(struct timeval *tv, struct timezone *tz)
-{
-	struct timespec ts;
-	struct vdso_data *vdata;
-	int ret;
-
-	vdata = __get_datapage();
-
-	ret = do_realtime(&ts, vdata);
-	if (ret)
-		return gettimeofday_fallback(tv, tz);
-
-	if (tv) {
-		tv->tv_sec = ts.tv_sec;
-		tv->tv_usec = ts.tv_nsec / 1000;
-	}
-	if (tz) {
-		tz->tz_minuteswest = vdata->tz_minuteswest;
-		tz->tz_dsttime = vdata->tz_dsttime;
-	}
-
-	return ret;
+	return __cvdso_gettimeofday(tv, tz);
 }
 
 /* Avoid unresolved references emitted by GCC */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
