Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB557139726
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 18:10:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AvBCaDiULgArCvNiK9XcqAqTw+9jyUz7Mdo/Tp2YDvc=; b=rMt9as1jmwLaW15f0dv7BCGITH
	2NrMaGNPTUU+uN040XwkcvznopxFYt61L8P1ZiCAJvdY6BAuoIFtiKZuLUi4gwFk9XE/tCZO0wNpN
	3GQQX+7CJ3wg/qX+Hn36iWrJ2MkD4VK4dWRQC6wwiSfW6ib6GodDUR5+PzFAN//zdFDmaopBSFS+s
	y1wQbJYqHnTF3uow1MQiqu1jJ93Q5Fa3z9dh1KVfgEavFGtGnzlipgV8blrhYy5KjmpJ9y5NqwH68
	bA6OcYkL3W5i6Mgpr85Ww+Y2FmOZJuGDqkNFybiY5j77nlt58Mv3HgHkf5gN11Bq7MZTCdm7QxZgK
	horGXEOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3EV-0004rn-7X; Mon, 13 Jan 2020 17:10:31 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3Cm-0002JI-Gk
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 17:08:50 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47xKmh2SWrz9txys;
 Mon, 13 Jan 2020 18:08:36 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=vtagoxL5; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id hLA_vCsRCPzn; Mon, 13 Jan 2020 18:08:36 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47xKmh1LbTz9txyq;
 Mon, 13 Jan 2020 18:08:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1578935316; bh=faTIEpHKrduiEq3tPlxG6Q1RNOzQ6h8AjaU2RG1rlD8=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=vtagoxL5Ltnc4I70pqPUzsmKMTcgdHXd/aTeqYk6NAjXFbheZDjLV1ukqimWBZey8
 c+V6vfgz8uTlg3e09hyoKxEwG17xZjwOrZ3x6krMPDKYrDzS6ps2M1WN6NiyUWBUvk
 PRcCKK/uK//i7MRCCzFXgWOqBQS+OpfoWC2D1NW0=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 7B69B8B7C9;
 Mon, 13 Jan 2020 18:08:41 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id kguEKeVT1NsS; Mon, 13 Jan 2020 18:08:41 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D762D8B7BE;
 Mon, 13 Jan 2020 18:08:40 +0100 (CET)
Received: by localhost.localdomain (Postfix, from userid 0)
 id A137364A1D; Mon, 13 Jan 2020 17:08:40 +0000 (UTC)
Message-Id: <c0a3fdb22aed4d596318db4606c10950d83da3ec.1578934751.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1578934751.git.christophe.leroy@c-s.fr>
References: <cover.1578934751.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v3 02/12] powerpc/vdso: Switch VDSO to generic C
 implementation.
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 arnd@arndb.de, tglx@linutronix.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Date: Mon, 13 Jan 2020 17:08:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_090845_016896_6846E15C 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a minimalistic conversion to VDSO generic C implementation.

On powerpc 8xx, performance is degraded by 40-45% for gettime and
by 50% for getres.

Optimisations will follow in next patches, some in the core
VDSO functions, some in the powerpc arch.

powerpc is a bit special for VDSO as well as system calls in the
way that it requires setting CR SO bit which cannot be done in C.
Therefore, entry/exit needs to be performed in ASM.

On a powerpc885 at 132MHz:
With current powerpc/32 ASM VDSO:

gettimeofday:    vdso: 737 nsec/call
clock-getres-realtime-coarse:    vdso: 3081 nsec/call
clock-gettime-realtime-coarse:    vdso: 2861 nsec/call
clock-getres-realtime:    vdso: 475 nsec/call
clock-gettime-realtime:    vdso: 892 nsec/call
clock-getres-boottime:    vdso: 2621 nsec/call
clock-gettime-boottime:    vdso: 3857 nsec/call
clock-getres-tai:    vdso: 2620 nsec/call
clock-gettime-tai:    vdso: 3854 nsec/call
clock-getres-monotonic-raw:    vdso: 2621 nsec/call
clock-gettime-monotonic-raw:    vdso: 3499 nsec/call
clock-getres-monotonic-coarse:    vdso: 3083 nsec/call
clock-gettime-monotonic-coarse:    vdso: 3082 nsec/call
clock-getres-monotonic:    vdso: 475 nsec/call
clock-gettime-monotonic:    vdso: 1014 nsec/call

Once switched to C implementation:

gettimeofday:    vdso: 1379 nsec/call
getcpu:    vdso: not tested
clock-getres-realtime-coarse:    vdso: 984 nsec/call
clock-gettime-realtime-coarse:    vdso: 868 nsec/call
clock-getres-realtime:    vdso: 922 nsec/call
clock-gettime-realtime:    vdso: 1511 nsec/call
clock-getres-boottime:    vdso: 922 nsec/call
clock-gettime-boottime:    vdso: 1510 nsec/call
clock-getres-tai:    vdso: 923 nsec/call
clock-gettime-tai:    vdso: 1511 nsec/call
clock-getres-monotonic-raw:    vdso: 968 nsec/call
clock-gettime-monotonic-raw:    vdso: 1576 nsec/call
clock-getres-monotonic-coarse:    vdso: 984 nsec/call
clock-gettime-monotonic-coarse:    vdso: 868 nsec/call
clock-getres-monotonic:    vdso: 922 nsec/call
clock-gettime-monotonic:    vdso: 1510 nsec/call
Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 arch/powerpc/Kconfig                         |   2 +
 arch/powerpc/include/asm/vdso/gettimeofday.h | 109 ++++++++++++
 arch/powerpc/include/asm/vdso/vsyscall.h     |  25 +++
 arch/powerpc/include/asm/vdso_datapage.h     |  41 ++---
 arch/powerpc/kernel/asm-offsets.c            |  46 +----
 arch/powerpc/kernel/time.c                   |  90 ----------
 arch/powerpc/kernel/vdso.c                   |   5 +-
 arch/powerpc/kernel/vdso32/Makefile          |  27 ++-
 arch/powerpc/kernel/vdso32/gettimeofday.S    | 255 +++------------------------
 arch/powerpc/kernel/vdso32/vgettimeofday.c   |  26 +++
 arch/powerpc/kernel/vdso64/Makefile          |  23 ++-
 arch/powerpc/kernel/vdso64/datapage.S        |   3 +-
 arch/powerpc/kernel/vdso64/gettimeofday.S    | 254 +++-----------------------
 arch/powerpc/kernel/vdso64/vgettimeofday.c   |  26 +++
 14 files changed, 312 insertions(+), 620 deletions(-)
 create mode 100644 arch/powerpc/include/asm/vdso/gettimeofday.h
 create mode 100644 arch/powerpc/include/asm/vdso/vsyscall.h
 create mode 100644 arch/powerpc/kernel/vdso32/vgettimeofday.c
 create mode 100644 arch/powerpc/kernel/vdso64/vgettimeofday.c

diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 1ec34e16ed65..bd04c68baf91 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -169,6 +169,7 @@ config PPC
 	select GENERIC_STRNCPY_FROM_USER
 	select GENERIC_STRNLEN_USER
 	select GENERIC_TIME_VSYSCALL
+	select GENERIC_GETTIMEOFDAY
 	select HAVE_ARCH_AUDITSYSCALL
 	select HAVE_ARCH_HUGE_VMAP		if PPC_BOOK3S_64 && PPC_RADIX_MMU
 	select HAVE_ARCH_JUMP_LABEL
@@ -198,6 +199,7 @@ config PPC
 	select HAVE_FUNCTION_GRAPH_TRACER
 	select HAVE_FUNCTION_TRACER
 	select HAVE_GCC_PLUGINS			if GCC_VERSION >= 50200   # plugin support on gcc <= 5.1 is buggy on PPC
+	select HAVE_GENERIC_VDSO
 	select HAVE_HW_BREAKPOINT		if PERF_EVENTS && (PPC_BOOK3S || PPC_8xx)
 	select HAVE_IDE
 	select HAVE_IOREMAP_PROT
diff --git a/arch/powerpc/include/asm/vdso/gettimeofday.h b/arch/powerpc/include/asm/vdso/gettimeofday.h
new file mode 100644
index 000000000000..343c81a7e951
--- /dev/null
+++ b/arch/powerpc/include/asm/vdso/gettimeofday.h
@@ -0,0 +1,109 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSO_GETTIMEOFDAY_H
+#define __ASM_VDSO_GETTIMEOFDAY_H
+
+#ifndef __ASSEMBLY__
+
+#include <asm/time.h>
+#include <asm/unistd.h>
+#include <asm/vdso_datapage.h>
+#include <uapi/linux/time.h>
+
+#define VDSO_HAS_CLOCK_GETRES		1
+
+#define VDSO_HAS_TIME			1
+
+static __always_inline int do_syscall_2(const unsigned long _r0, const unsigned long _r3,
+					const unsigned long _r4)
+{
+	register long r0 asm("r0") = _r0;
+	register unsigned long r3 asm("r3") = _r3;
+	register unsigned long r4 asm("r4") = _r4;
+	register int ret asm ("r3");
+
+	asm volatile(
+		"       sc\n"
+		"	bns+	1f\n"
+		"	neg	%0, %0\n"
+		"1:\n"
+	: "+r" (ret), "+r" (r3), "+r" (r4), "+r" (r0)
+	:
+	: "memory", "r5", "r6", "r7", "r8", "r9", "r10", "r11", "r12", "cr0", "ctr");
+
+	return ret;
+}
+
+static __always_inline
+int gettimeofday_fallback(struct __kernel_old_timeval *_tv, struct timezone *_tz)
+{
+	return do_syscall_2(__NR_gettimeofday, (unsigned long)_tv, (unsigned long)_tz);
+}
+
+static __always_inline
+int clock_gettime_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
+{
+	return do_syscall_2(__NR_clock_gettime, _clkid, (unsigned long)_ts);
+}
+
+static __always_inline
+int clock_getres_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
+{
+	return do_syscall_2(__NR_clock_getres, _clkid, (unsigned long)_ts);
+}
+
+#ifdef CONFIG_VDSO32
+
+#define VDSO_HAS_32BIT_FALLBACK		1
+
+static __always_inline
+int clock_gettime32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
+{
+	return do_syscall_2(__NR_clock_gettime, _clkid, (unsigned long)_ts);
+}
+
+static __always_inline
+int clock_getres32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
+{
+	return do_syscall_2(__NR_clock_getres, _clkid, (unsigned long)_ts);
+}
+#endif
+
+static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
+{
+	/*
+	 * clock_mode == 0 implies that vDSO are enabled otherwise
+	 * fallback on syscall.
+	 */
+	if (clock_mode != 0)
+		return U64_MAX;
+
+	return get_tb();
+}
+
+void *__get_datapage(void);
+
+static __always_inline const struct vdso_data *__arch_get_vdso_data(void)
+{
+	struct vdso_arch_data *vdso_data = __get_datapage();
+
+	return vdso_data->data;
+}
+
+/*
+ * powerpc specific delta calculation.
+ *
+ * This variant removes the masking of the subtraction because the
+ * clocksource mask of all VDSO capable clocksources on powerpc is U64_MAX
+ * which would result in a pointless operation. The compiler cannot
+ * optimize it away as the mask comes from the vdso data and is not compile
+ * time constant.
+ */
+static __always_inline u64 vdso_calc_delta(u64 cycles, u64 last, u64 mask, u32 mult)
+{
+	return (cycles - last) * mult;
+}
+#define vdso_calc_delta vdso_calc_delta
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_GETTIMEOFDAY_H */
diff --git a/arch/powerpc/include/asm/vdso/vsyscall.h b/arch/powerpc/include/asm/vdso/vsyscall.h
new file mode 100644
index 000000000000..c56a030c0623
--- /dev/null
+++ b/arch/powerpc/include/asm/vdso/vsyscall.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSO_VSYSCALL_H
+#define __ASM_VDSO_VSYSCALL_H
+
+#ifndef __ASSEMBLY__
+
+#include <linux/timekeeper_internal.h>
+#include <asm/vdso_datapage.h>
+
+/*
+ * Update the vDSO data page to keep in sync with kernel timekeeping.
+ */
+static __always_inline
+struct vdso_data *__arch_get_k_vdso_data(void)
+{
+	return vdso_data->data;
+}
+#define __arch_get_k_vdso_data __arch_get_k_vdso_data
+
+/* The asm-generic header needs to be included after the definitions above */
+#include <asm-generic/vdso/vsyscall.h>
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_VSYSCALL_H */
diff --git a/arch/powerpc/include/asm/vdso_datapage.h b/arch/powerpc/include/asm/vdso_datapage.h
index 40f13f3626d3..4d7965bf369e 100644
--- a/arch/powerpc/include/asm/vdso_datapage.h
+++ b/arch/powerpc/include/asm/vdso_datapage.h
@@ -36,6 +36,7 @@
 
 #include <linux/unistd.h>
 #include <linux/time.h>
+#include <vdso/datapage.h>
 
 #define SYSCALL_MAP_SIZE      ((NR_syscalls + 31) / 32)
 
@@ -45,7 +46,7 @@
 
 #ifdef CONFIG_PPC64
 
-struct vdso_data {
+struct vdso_arch_data {
 	__u8  eye_catcher[16];		/* Eyecatcher: SYSTEMCFG:PPC64	0x00 */
 	struct {			/* Systemcfg version numbers	     */
 		__u32 major;		/* Major number			0x10 */
@@ -59,13 +60,13 @@ struct vdso_data {
 	__u32 processor;		/* Processor type		0x1C */
 	__u64 processorCount;		/* # of physical processors	0x20 */
 	__u64 physicalMemorySize;	/* Size of real memory(B)	0x28 */
-	__u64 tb_orig_stamp;		/* Timebase at boot		0x30 */
+	__u64 tb_orig_stamp;		/* (NU) Timebase at boot	0x30 */
 	__u64 tb_ticks_per_sec;		/* Timebase tics / sec		0x38 */
-	__u64 tb_to_xs;			/* Inverse of TB to 2^20	0x40 */
-	__u64 stamp_xsec;		/*				0x48 */
-	__u64 tb_update_count;		/* Timebase atomicity ctr	0x50 */
-	__u32 tz_minuteswest;		/* Minutes west of Greenwich	0x58 */
-	__u32 tz_dsttime;		/* Type of dst correction	0x5C */
+	__u64 tb_to_xs;			/* (NU) Inverse of TB to 2^20	0x40 */
+	__u64 stamp_xsec;		/* (NU) 			0x48 */
+	__u64 tb_update_count;		/* (NU) Timebase atomicity ctr	0x50 */
+	__u32 tz_minuteswest;		/* (NU) Min. west of Greenwich	0x58 */
+	__u32 tz_dsttime;		/* (NU) Type of dst correction	0x5C */
 	__u32 dcache_size;		/* L1 d-cache size		0x60 */
 	__u32 dcache_line_size;		/* L1 d-cache line size		0x64 */
 	__u32 icache_size;		/* L1 i-cache size		0x68 */
@@ -78,14 +79,10 @@ struct vdso_data {
 	__u32 icache_block_size;		/* L1 i-cache block size     */
 	__u32 dcache_log_block_size;		/* L1 d-cache log block size */
 	__u32 icache_log_block_size;		/* L1 i-cache log block size */
-	__u32 stamp_sec_fraction;		/* fractional seconds of stamp_xtime */
-	__s32 wtom_clock_nsec;			/* Wall to monotonic clock nsec */
-	__s64 wtom_clock_sec;			/* Wall to monotonic clock sec */
-	__s64 stamp_xtime_sec;			/* xtime secs as at tb_orig_stamp */
-	__s64 stamp_xtime_nsec;			/* xtime nsecs as at tb_orig_stamp */
-	__u32 hrtimer_res;			/* hrtimer resolution */
    	__u32 syscall_map_64[SYSCALL_MAP_SIZE]; /* map of syscalls  */
    	__u32 syscall_map_32[SYSCALL_MAP_SIZE]; /* map of syscalls */
+
+	struct vdso_data data[CS_BASES];
 };
 
 #else /* CONFIG_PPC64 */
@@ -93,30 +90,20 @@ struct vdso_data {
 /*
  * And here is the simpler 32 bits version
  */
-struct vdso_data {
-	__u64 tb_orig_stamp;		/* Timebase at boot		0x30 */
+struct vdso_arch_data {
 	__u64 tb_ticks_per_sec;		/* Timebase tics / sec		0x38 */
-	__u64 tb_to_xs;			/* Inverse of TB to 2^20	0x40 */
-	__u64 stamp_xsec;		/*				0x48 */
-	__u32 tb_update_count;		/* Timebase atomicity ctr	0x50 */
-	__u32 tz_minuteswest;		/* Minutes west of Greenwich	0x58 */
-	__u32 tz_dsttime;		/* Type of dst correction	0x5C */
-	__s32 wtom_clock_sec;			/* Wall to monotonic clock */
-	__s32 wtom_clock_nsec;
-	__s32 stamp_xtime_sec;		/* xtime seconds as at tb_orig_stamp */
-	__s32 stamp_xtime_nsec;		/* xtime nsecs as at tb_orig_stamp */
-	__u32 stamp_sec_fraction;	/* fractional seconds of stamp_xtime */
-	__u32 hrtimer_res;		/* hrtimer resolution */
    	__u32 syscall_map_32[SYSCALL_MAP_SIZE]; /* map of syscalls */
 	__u32 dcache_block_size;	/* L1 d-cache block size     */
 	__u32 icache_block_size;	/* L1 i-cache block size     */
 	__u32 dcache_log_block_size;	/* L1 d-cache log block size */
 	__u32 icache_log_block_size;	/* L1 i-cache log block size */
+
+	struct vdso_data data[CS_BASES];
 };
 
 #endif /* CONFIG_PPC64 */
 
-extern struct vdso_data *vdso_data;
+extern struct vdso_arch_data *vdso_data;
 
 #endif /* __ASSEMBLY__ */
 
diff --git a/arch/powerpc/kernel/asm-offsets.c b/arch/powerpc/kernel/asm-offsets.c
index 3d47aec7becf..14ff4d159bc5 100644
--- a/arch/powerpc/kernel/asm-offsets.c
+++ b/arch/powerpc/kernel/asm-offsets.c
@@ -376,44 +376,16 @@ int main(void)
 #endif /* ! CONFIG_PPC64 */
 
 	/* datapage offsets for use by vdso */
-	OFFSET(CFG_TB_ORIG_STAMP, vdso_data, tb_orig_stamp);
-	OFFSET(CFG_TB_TICKS_PER_SEC, vdso_data, tb_ticks_per_sec);
-	OFFSET(CFG_TB_TO_XS, vdso_data, tb_to_xs);
-	OFFSET(CFG_TB_UPDATE_COUNT, vdso_data, tb_update_count);
-	OFFSET(CFG_TZ_MINUTEWEST, vdso_data, tz_minuteswest);
-	OFFSET(CFG_TZ_DSTTIME, vdso_data, tz_dsttime);
-	OFFSET(CFG_SYSCALL_MAP32, vdso_data, syscall_map_32);
-	OFFSET(WTOM_CLOCK_SEC, vdso_data, wtom_clock_sec);
-	OFFSET(WTOM_CLOCK_NSEC, vdso_data, wtom_clock_nsec);
-	OFFSET(STAMP_XTIME_SEC, vdso_data, stamp_xtime_sec);
-	OFFSET(STAMP_XTIME_NSEC, vdso_data, stamp_xtime_nsec);
-	OFFSET(STAMP_SEC_FRAC, vdso_data, stamp_sec_fraction);
-	OFFSET(CLOCK_HRTIMER_RES, vdso_data, hrtimer_res);
-	OFFSET(CFG_ICACHE_BLOCKSZ, vdso_data, icache_block_size);
-	OFFSET(CFG_DCACHE_BLOCKSZ, vdso_data, dcache_block_size);
-	OFFSET(CFG_ICACHE_LOGBLOCKSZ, vdso_data, icache_log_block_size);
-	OFFSET(CFG_DCACHE_LOGBLOCKSZ, vdso_data, dcache_log_block_size);
+	OFFSET(VDSO_DATA_OFFSET, vdso_arch_data, data);
+	OFFSET(CFG_TB_TICKS_PER_SEC, vdso_arch_data, tb_ticks_per_sec);
+	OFFSET(CFG_SYSCALL_MAP32, vdso_arch_data, syscall_map_32);
+	OFFSET(CFG_ICACHE_BLOCKSZ, vdso_arch_data, icache_block_size);
+	OFFSET(CFG_DCACHE_BLOCKSZ, vdso_arch_data, dcache_block_size);
+	OFFSET(CFG_ICACHE_LOGBLOCKSZ, vdso_arch_data, icache_log_block_size);
+	OFFSET(CFG_DCACHE_LOGBLOCKSZ, vdso_arch_data, dcache_log_block_size);
 #ifdef CONFIG_PPC64
-	OFFSET(CFG_SYSCALL_MAP64, vdso_data, syscall_map_64);
-	OFFSET(TVAL64_TV_SEC, __kernel_old_timeval, tv_sec);
-	OFFSET(TVAL64_TV_USEC, __kernel_old_timeval, tv_usec);
-#endif
-	OFFSET(TSPC64_TV_SEC, __kernel_timespec, tv_sec);
-	OFFSET(TSPC64_TV_NSEC, __kernel_timespec, tv_nsec);
-	OFFSET(TVAL32_TV_SEC, old_timeval32, tv_sec);
-	OFFSET(TVAL32_TV_USEC, old_timeval32, tv_usec);
-	OFFSET(TSPC32_TV_SEC, old_timespec32, tv_sec);
-	OFFSET(TSPC32_TV_NSEC, old_timespec32, tv_nsec);
-	/* timeval/timezone offsets for use by vdso */
-	OFFSET(TZONE_TZ_MINWEST, timezone, tz_minuteswest);
-	OFFSET(TZONE_TZ_DSTTIME, timezone, tz_dsttime);
-
-	/* Other bits used by the vdso */
-	DEFINE(CLOCK_REALTIME, CLOCK_REALTIME);
-	DEFINE(CLOCK_MONOTONIC, CLOCK_MONOTONIC);
-	DEFINE(CLOCK_REALTIME_COARSE, CLOCK_REALTIME_COARSE);
-	DEFINE(CLOCK_MONOTONIC_COARSE, CLOCK_MONOTONIC_COARSE);
-	DEFINE(NSEC_PER_SEC, NSEC_PER_SEC);
+	OFFSET(CFG_SYSCALL_MAP64, vdso_arch_data, syscall_map_64);
+#endif
 
 #ifdef CONFIG_BUG
 	DEFINE(BUG_ENTRY_SIZE, sizeof(struct bug_entry));
diff --git a/arch/powerpc/kernel/time.c b/arch/powerpc/kernel/time.c
index 1168e8b37e30..9075fe65424e 100644
--- a/arch/powerpc/kernel/time.c
+++ b/arch/powerpc/kernel/time.c
@@ -882,95 +882,6 @@ static notrace u64 timebase_read(struct clocksource *cs)
 	return (u64)get_tb();
 }
 
-
-void update_vsyscall(struct timekeeper *tk)
-{
-	struct timespec64 xt;
-	struct clocksource *clock = tk->tkr_mono.clock;
-	u32 mult = tk->tkr_mono.mult;
-	u32 shift = tk->tkr_mono.shift;
-	u64 cycle_last = tk->tkr_mono.cycle_last;
-	u64 new_tb_to_xs, new_stamp_xsec;
-	u64 frac_sec;
-
-	if (clock != &clocksource_timebase)
-		return;
-
-	xt.tv_sec = tk->xtime_sec;
-	xt.tv_nsec = (long)(tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift);
-
-	/* Make userspace gettimeofday spin until we're done. */
-	++vdso_data->tb_update_count;
-	smp_mb();
-
-	/*
-	 * This computes ((2^20 / 1e9) * mult) >> shift as a
-	 * 0.64 fixed-point fraction.
-	 * The computation in the else clause below won't overflow
-	 * (as long as the timebase frequency is >= 1.049 MHz)
-	 * but loses precision because we lose the low bits of the constant
-	 * in the shift.  Note that 19342813113834067 ~= 2^(20+64) / 1e9.
-	 * For a shift of 24 the error is about 0.5e-9, or about 0.5ns
-	 * over a second.  (Shift values are usually 22, 23 or 24.)
-	 * For high frequency clocks such as the 512MHz timebase clock
-	 * on POWER[6789], the mult value is small (e.g. 32768000)
-	 * and so we can shift the constant by 16 initially
-	 * (295147905179 ~= 2^(20+64-16) / 1e9) and then do the
-	 * remaining shifts after the multiplication, which gives a
-	 * more accurate result (e.g. with mult = 32768000, shift = 24,
-	 * the error is only about 1.2e-12, or 0.7ns over 10 minutes).
-	 */
-	if (mult <= 62500000 && clock->shift >= 16)
-		new_tb_to_xs = ((u64) mult * 295147905179ULL) >> (clock->shift - 16);
-	else
-		new_tb_to_xs = (u64) mult * (19342813113834067ULL >> clock->shift);
-
-	/*
-	 * Compute the fractional second in units of 2^-32 seconds.
-	 * The fractional second is tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift
-	 * in nanoseconds, so multiplying that by 2^32 / 1e9 gives
-	 * it in units of 2^-32 seconds.
-	 * We assume shift <= 32 because clocks_calc_mult_shift()
-	 * generates shift values in the range 0 - 32.
-	 */
-	frac_sec = tk->tkr_mono.xtime_nsec << (32 - shift);
-	do_div(frac_sec, NSEC_PER_SEC);
-
-	/*
-	 * Work out new stamp_xsec value for any legacy users of systemcfg.
-	 * stamp_xsec is in units of 2^-20 seconds.
-	 */
-	new_stamp_xsec = frac_sec >> 12;
-	new_stamp_xsec += tk->xtime_sec * XSEC_PER_SEC;
-
-	/*
-	 * tb_update_count is used to allow the userspace gettimeofday code
-	 * to assure itself that it sees a consistent view of the tb_to_xs and
-	 * stamp_xsec variables.  It reads the tb_update_count, then reads
-	 * tb_to_xs and stamp_xsec and then reads tb_update_count again.  If
-	 * the two values of tb_update_count match and are even then the
-	 * tb_to_xs and stamp_xsec values are consistent.  If not, then it
-	 * loops back and reads them again until this criteria is met.
-	 */
-	vdso_data->tb_orig_stamp = cycle_last;
-	vdso_data->stamp_xsec = new_stamp_xsec;
-	vdso_data->tb_to_xs = new_tb_to_xs;
-	vdso_data->wtom_clock_sec = tk->wall_to_monotonic.tv_sec;
-	vdso_data->wtom_clock_nsec = tk->wall_to_monotonic.tv_nsec;
-	vdso_data->stamp_xtime_sec = xt.tv_sec;
-	vdso_data->stamp_xtime_nsec = xt.tv_nsec;
-	vdso_data->stamp_sec_fraction = frac_sec;
-	vdso_data->hrtimer_res = hrtimer_resolution;
-	smp_wmb();
-	++(vdso_data->tb_update_count);
-}
-
-void update_vsyscall_tz(void)
-{
-	vdso_data->tz_minuteswest = sys_tz.tz_minuteswest;
-	vdso_data->tz_dsttime = sys_tz.tz_dsttime;
-}
-
 static void __init clocksource_init(void)
 {
 	struct clocksource *clock;
@@ -1140,7 +1051,6 @@ void __init time_init(void)
 		sys_tz.tz_dsttime = 0;
 	}
 
-	vdso_data->tb_update_count = 0;
 	vdso_data->tb_ticks_per_sec = tb_ticks_per_sec;
 
 	/* initialise and enable the large decrementer (if we have one) */
diff --git a/arch/powerpc/kernel/vdso.c b/arch/powerpc/kernel/vdso.c
index eae9ddaecbcf..16a44bffe698 100644
--- a/arch/powerpc/kernel/vdso.c
+++ b/arch/powerpc/kernel/vdso.c
@@ -17,6 +17,7 @@
 #include <linux/elf.h>
 #include <linux/security.h>
 #include <linux/memblock.h>
+#include <vdso/datapage.h>
 
 #include <asm/pgtable.h>
 #include <asm/processor.h>
@@ -71,10 +72,10 @@ static int vdso_ready;
  * with it, it will become dynamically allocated
  */
 static union {
-	struct vdso_data	data;
+	struct vdso_arch_data	data;
 	u8			page[PAGE_SIZE];
 } vdso_data_store __page_aligned_data;
-struct vdso_data *vdso_data = &vdso_data_store.data;
+struct vdso_arch_data *vdso_data = &vdso_data_store.data;
 
 /* Format of the patch table */
 struct vdso_patch_def
diff --git a/arch/powerpc/kernel/vdso32/Makefile b/arch/powerpc/kernel/vdso32/Makefile
index 738d52105392..b82f51a24747 100644
--- a/arch/powerpc/kernel/vdso32/Makefile
+++ b/arch/powerpc/kernel/vdso32/Makefile
@@ -2,11 +2,23 @@
 
 # List of files in the vdso, has to be asm only for now
 
+ARCH_REL_TYPE_ABS := R_PPC_JUMP_SLOT|R_PPC_GLOB_DAT|R_PPC_ADDR32|R_PPC_ADDR24|R_PPC_ADDR16|R_PPC_ADDR16_LO|R_PPC_ADDR16_HI|R_PPC_ADDR16_HA|R_PPC_ADDR14|R_PPC_ADDR14_BRTAKEN|R_PPC_ADDR14_BRNTAKEN
+include $(srctree)/lib/vdso/Makefile
+
 obj-vdso32-$(CONFIG_PPC64) = getcpu.o
 obj-vdso32-$(CONFIG_PPC32) = gettimeofday.o
 obj-vdso32 = sigtramp.o datapage.o cacheflush.o note.o \
 		$(obj-vdso32-y)
 
+ifneq ($(c-gettimeofday-y),)
+  CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
+  CFLAGS_vgettimeofday.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
+  CFLAGS_vgettimeofday.o += $(call cc-option, -fno-stack-protector)
+  CFLAGS_vgettimeofday.o += -DDISABLE_BRANCH_PROFILING
+  CFLAGS_vgettimeofday.o += -ffreestanding
+  CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE)
+endif
+
 # Build rules
 
 ifdef CROSS32_COMPILE
@@ -26,6 +38,7 @@ obj-vdso32 := $(addprefix $(obj)/, $(obj-vdso32))
 GCOV_PROFILE := n
 KCOV_INSTRUMENT := n
 UBSAN_SANITIZE := n
+KASAN_SANITIZE := n
 
 ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
 	-Wl,-soname=linux-vdso32.so.1 -Wl,--hash-style=both
@@ -39,8 +52,12 @@ CPPFLAGS_vdso32.lds += -P -C -Upowerpc
 $(obj)/vdso32_wrapper.o : $(obj)/vdso32.so
 
 # link rule for the .so file, .lds has to be first
+ifdef CONFIG_PPC32
+$(obj)/vdso32.so.dbg: $(src)/vdso32.lds $(obj-vdso32) $(obj)/vgettimeofday.o FORCE
+else
 $(obj)/vdso32.so.dbg: $(src)/vdso32.lds $(obj-vdso32) FORCE
-	$(call if_changed,vdso32ld)
+endif
+	$(call if_changed,vdso32ld_and_check)
 
 # strip rule for the .so file
 $(obj)/%.so: OBJCOPYFLAGS := -S
@@ -50,12 +67,16 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
 # assembly rules for the .S files
 $(obj-vdso32): %.o: %.S FORCE
 	$(call if_changed_dep,vdso32as)
+$(obj)/vgettimeofday.o: %.o: %.c FORCE
+	$(call if_changed_dep,vdso32cc)
 
 # actual build commands
-quiet_cmd_vdso32ld = VDSO32L $@
-      cmd_vdso32ld = $(VDSOCC) $(c_flags) $(CC32FLAGS) -o $@ -Wl,-T$(filter %.lds,$^) $(filter %.o,$^)
+quiet_cmd_vdso32ld_and_check = VDSO32L $@
+      cmd_vdso32ld_and_check = $(VDSOCC) $(c_flags) $(CC32FLAGS) -o $@ -Wl,-T$(filter %.lds,$^) $(filter %.o,$^) ; $(cmd_vdso_check)
 quiet_cmd_vdso32as = VDSO32A $@
       cmd_vdso32as = $(VDSOCC) $(a_flags) $(CC32FLAGS) -c -o $@ $<
+quiet_cmd_vdso32cc = VDSO32A $@
+      cmd_vdso32cc = $(VDSOCC) $(c_flags) $(CC32FLAGS) -c -o $@ $<
 
 # install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL $@
diff --git a/arch/powerpc/kernel/vdso32/gettimeofday.S b/arch/powerpc/kernel/vdso32/gettimeofday.S
index 3306672f57a9..ba0bd64b3da3 100644
--- a/arch/powerpc/kernel/vdso32/gettimeofday.S
+++ b/arch/powerpc/kernel/vdso32/gettimeofday.S
@@ -12,14 +12,24 @@
 #include <asm/asm-offsets.h>
 #include <asm/unistd.h>
 
-/* Offset for the low 32-bit part of a field of long type */
-#ifdef CONFIG_PPC64
-#define LOPART	4
-#else
-#define LOPART	0
-#endif
-
 	.text
+
+.macro cvdso_call funct
+	stwu	r1, -16(r1)
+	mflr	r0
+	stw	r0, 20(r1)
+	bl	\funct
+	lwz	r0, 20(r1)
+	cmpwi	r3, 0
+	mtlr	r0
+	addi	r1, r1, 16
+	crclr	so
+	beqlr+
+	crset	so
+	neg	r3, r3
+	blr
+.endm
+
 /*
  * Exact prototype of gettimeofday
  *
@@ -28,32 +38,7 @@
  */
 V_FUNCTION_BEGIN(__kernel_gettimeofday)
   .cfi_startproc
-	mflr	r12
-  .cfi_register lr,r12
-
-	mr	r10,r3			/* r10 saves tv */
-	mr	r11,r4			/* r11 saves tz */
-	bl	__get_datapage@local	/* get data page */
-	mr	r9, r3			/* datapage ptr in r9 */
-	cmplwi	r10,0			/* check if tv is NULL */
-	beq	3f
-	lis	r7,1000000@ha		/* load up USEC_PER_SEC */
-	addi	r7,r7,1000000@l		/* so we get microseconds in r4 */
-	bl	__do_get_tspec@local	/* get sec/usec from tb & kernel */
-	stw	r3,TVAL32_TV_SEC(r10)
-	stw	r4,TVAL32_TV_USEC(r10)
-
-3:	cmplwi	r11,0			/* check if tz is NULL */
-	beq	1f
-	lwz	r4,CFG_TZ_MINUTEWEST(r9)/* fill tz */
-	lwz	r5,CFG_TZ_DSTTIME(r9)
-	stw	r4,TZONE_TZ_MINWEST(r11)
-	stw	r5,TZONE_TZ_DSTTIME(r11)
-
-1:	mtlr	r12
-	crclr	cr0*4+so
-	li	r3,0
-	blr
+	cvdso_call __c_kernel_gettimeofday
   .cfi_endproc
 V_FUNCTION_END(__kernel_gettimeofday)
 
@@ -65,77 +50,7 @@ V_FUNCTION_END(__kernel_gettimeofday)
  */
 V_FUNCTION_BEGIN(__kernel_clock_gettime)
   .cfi_startproc
-	/* Check for supported clock IDs */
-	cmpli	cr0,r3,CLOCK_REALTIME
-	cmpli	cr1,r3,CLOCK_MONOTONIC
-	cror	cr0*4+eq,cr0*4+eq,cr1*4+eq
-	bne	cr0,99f
-
-	mflr	r12			/* r12 saves lr */
-  .cfi_register lr,r12
-	mr	r11,r4			/* r11 saves tp */
-	bl	__get_datapage@local	/* get data page */
-	mr	r9,r3			/* datapage ptr in r9 */
-	lis	r7,NSEC_PER_SEC@h	/* want nanoseconds */
-	ori	r7,r7,NSEC_PER_SEC@l
-50:	bl	__do_get_tspec@local	/* get sec/nsec from tb & kernel */
-	bne	cr1,80f			/* not monotonic -> all done */
-
-	/*
-	 * CLOCK_MONOTONIC
-	 */
-
-	/* now we must fixup using wall to monotonic. We need to snapshot
-	 * that value and do the counter trick again. Fortunately, we still
-	 * have the counter value in r8 that was returned by __do_get_xsec.
-	 * At this point, r3,r4 contain our sec/nsec values, r5 and r6
-	 * can be used, r7 contains NSEC_PER_SEC.
-	 */
-
-	lwz	r5,(WTOM_CLOCK_SEC+LOPART)(r9)
-	lwz	r6,WTOM_CLOCK_NSEC(r9)
-
-	/* We now have our offset in r5,r6. We create a fake dependency
-	 * on that value and re-check the counter
-	 */
-	or	r0,r6,r5
-	xor	r0,r0,r0
-	add	r9,r9,r0
-	lwz	r0,(CFG_TB_UPDATE_COUNT+LOPART)(r9)
-        cmpl    cr0,r8,r0		/* check if updated */
-	bne-	50b
-
-	/* Calculate and store result. Note that this mimics the C code,
-	 * which may cause funny results if nsec goes negative... is that
-	 * possible at all ?
-	 */
-	add	r3,r3,r5
-	add	r4,r4,r6
-	cmpw	cr0,r4,r7
-	cmpwi	cr1,r4,0
-	blt	1f
-	subf	r4,r7,r4
-	addi	r3,r3,1
-1:	bge	cr1,80f
-	addi	r3,r3,-1
-	add	r4,r4,r7
-
-80:	stw	r3,TSPC32_TV_SEC(r11)
-	stw	r4,TSPC32_TV_NSEC(r11)
-
-	mtlr	r12
-	crclr	cr0*4+so
-	li	r3,0
-	blr
-
-	/*
-	 * syscall fallback
-	 */
-99:
-	li	r0,__NR_clock_gettime
-  .cfi_restore lr
-	sc
-	blr
+	cvdso_call __c_kernel_clock_gettime
   .cfi_endproc
 V_FUNCTION_END(__kernel_clock_gettime)
 
@@ -148,32 +63,7 @@ V_FUNCTION_END(__kernel_clock_gettime)
  */
 V_FUNCTION_BEGIN(__kernel_clock_getres)
   .cfi_startproc
-	/* Check for supported clock IDs */
-	cmpwi	cr0,r3,CLOCK_REALTIME
-	cmpwi	cr1,r3,CLOCK_MONOTONIC
-	cror	cr0*4+eq,cr0*4+eq,cr1*4+eq
-	bne	cr0,99f
-
-	mflr	r12
-  .cfi_register lr,r12
-	bl	__get_datapage@local	/* get data page */
-	lwz	r5, CLOCK_HRTIMER_RES(r3)
-	mtlr	r12
-	li	r3,0
-	cmpli	cr0,r4,0
-	crclr	cr0*4+so
-	beqlr
-	stw	r3,TSPC32_TV_SEC(r4)
-	stw	r5,TSPC32_TV_NSEC(r4)
-	blr
-
-	/*
-	 * syscall fallback
-	 */
-99:
-	li	r0,__NR_clock_getres
-	sc
-	blr
+	cvdso_call __c_kernel_clock_getres
   .cfi_endproc
 V_FUNCTION_END(__kernel_clock_getres)
 
@@ -186,105 +76,14 @@ V_FUNCTION_END(__kernel_clock_getres)
  */
 V_FUNCTION_BEGIN(__kernel_time)
   .cfi_startproc
-	mflr	r12
-  .cfi_register lr,r12
-
-	mr	r11,r3			/* r11 holds t */
-	bl	__get_datapage@local
-	mr	r9, r3			/* datapage ptr in r9 */
-
-	lwz	r3,STAMP_XTIME_SEC+LOPART(r9)
-
-	cmplwi	r11,0			/* check if t is NULL */
-	beq	2f
-	stw	r3,0(r11)		/* store result at *t */
-2:	mtlr	r12
+	stwu	r1, -16(r1)
+	mflr	r0
+	stw	r0, 20(r1)
+	bl	__c_kernel_time
+	lwz	r0, 20(r1)
 	crclr	cr0*4+so
+	mtlr	r0
+	addi	r1, r1, 16
 	blr
   .cfi_endproc
 V_FUNCTION_END(__kernel_time)
-
-/*
- * This is the core of clock_gettime() and gettimeofday(),
- * it returns the current time in r3 (seconds) and r4.
- * On entry, r7 gives the resolution of r4, either USEC_PER_SEC
- * or NSEC_PER_SEC, giving r4 in microseconds or nanoseconds.
- * It expects the datapage ptr in r9 and doesn't clobber it.
- * It clobbers r0, r5 and r6.
- * On return, r8 contains the counter value that can be reused.
- * This clobbers cr0 but not any other cr field.
- */
-__do_get_tspec:
-  .cfi_startproc
-	/* Check for update count & load values. We use the low
-	 * order 32 bits of the update count
-	 */
-1:	lwz	r8,(CFG_TB_UPDATE_COUNT+LOPART)(r9)
-	andi.	r0,r8,1			/* pending update ? loop */
-	bne-	1b
-	xor	r0,r8,r8		/* create dependency */
-	add	r9,r9,r0
-
-	/* Load orig stamp (offset to TB) */
-	lwz	r5,CFG_TB_ORIG_STAMP(r9)
-	lwz	r6,(CFG_TB_ORIG_STAMP+4)(r9)
-
-	/* Get a stable TB value */
-2:	MFTBU(r3)
-	MFTBL(r4)
-	MFTBU(r0)
-	cmplw	cr0,r3,r0
-	bne-	2b
-
-	/* Subtract tb orig stamp and shift left 12 bits.
-	 */
-	subfc	r4,r6,r4
-	subfe	r0,r5,r3
-	slwi	r0,r0,12
-	rlwimi.	r0,r4,12,20,31
-	slwi	r4,r4,12
-
-	/*
-	 * Load scale factor & do multiplication.
-	 * We only use the high 32 bits of the tb_to_xs value.
-	 * Even with a 1GHz timebase clock, the high 32 bits of
-	 * tb_to_xs will be at least 4 million, so the error from
-	 * ignoring the low 32 bits will be no more than 0.25ppm.
-	 * The error will just make the clock run very very slightly
-	 * slow until the next time the kernel updates the VDSO data,
-	 * at which point the clock will catch up to the kernel's value,
-	 * so there is no long-term error accumulation.
-	 */
-	lwz	r5,CFG_TB_TO_XS(r9)	/* load values */
-	mulhwu	r4,r4,r5
-	li	r3,0
-
-	beq+	4f			/* skip high part computation if 0 */
-	mulhwu	r3,r0,r5
-	mullw	r5,r0,r5
-	addc	r4,r4,r5
-	addze	r3,r3
-4:
-	/* At this point, we have seconds since the xtime stamp
-	 * as a 32.32 fixed-point number in r3 and r4.
-	 * Load & add the xtime stamp.
-	 */
-	lwz	r5,STAMP_XTIME_SEC+LOPART(r9)
-	lwz	r6,STAMP_SEC_FRAC(r9)
-	addc	r4,r4,r6
-	adde	r3,r3,r5
-
-	/* We create a fake dependency on the result in r3/r4
-	 * and re-check the counter
-	 */
-	or	r6,r4,r3
-	xor	r0,r6,r6
-	add	r9,r9,r0
-	lwz	r0,(CFG_TB_UPDATE_COUNT+LOPART)(r9)
-        cmplw	cr0,r8,r0		/* check if updated */
-	bne-	1b
-
-	mulhwu	r4,r4,r7		/* convert to micro or nanoseconds */
-
-	blr
-  .cfi_endproc
diff --git a/arch/powerpc/kernel/vdso32/vgettimeofday.c b/arch/powerpc/kernel/vdso32/vgettimeofday.c
new file mode 100644
index 000000000000..4ed1bf2ae30e
--- /dev/null
+++ b/arch/powerpc/kernel/vdso32/vgettimeofday.c
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Powerpc userspace implementations of gettimeofday() and similar.
+ */
+#include <linux/time.h>
+#include <linux/types.h>
+
+int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *ts)
+{
+	return __cvdso_clock_gettime32(clock, ts);
+}
+
+int __c_kernel_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
+{
+	return __cvdso_gettimeofday(tv, tz);
+}
+
+int __c_kernel_clock_getres(clockid_t clock_id, struct old_timespec32 *res)
+{
+	return __cvdso_clock_getres_time32(clock_id, res);
+}
+
+time_t __c_kernel_time(time_t *time)
+{
+	return __cvdso_time(time);
+}
diff --git a/arch/powerpc/kernel/vdso64/Makefile b/arch/powerpc/kernel/vdso64/Makefile
index 32ebb3522ea1..0d80069233e0 100644
--- a/arch/powerpc/kernel/vdso64/Makefile
+++ b/arch/powerpc/kernel/vdso64/Makefile
@@ -1,8 +1,20 @@
 # SPDX-License-Identifier: GPL-2.0
 # List of files in the vdso, has to be asm only for now
 
+ARCH_REL_TYPE_ABS := R_PPC_JUMP_SLOT|R_PPC_GLOB_DAT|R_PPC_ADDR32|R_PPC_ADDR24|R_PPC_ADDR16|R_PPC_ADDR16_LO|R_PPC_ADDR16_HI|R_PPC_ADDR16_HA|R_PPC_ADDR14|R_PPC_ADDR14_BRTAKEN|R_PPC_ADDR14_BRNTAKEN
+include $(srctree)/lib/vdso/Makefile
+
 obj-vdso64 = sigtramp.o gettimeofday.o datapage.o cacheflush.o note.o getcpu.o
 
+ifneq ($(c-gettimeofday-y),)
+  CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
+  CFLAGS_vgettimeofday.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
+  CFLAGS_vgettimeofday.o += $(call cc-option, -fno-stack-protector)
+  CFLAGS_vgettimeofday.o += -DDISABLE_BRANCH_PROFILING
+  CFLAGS_vgettimeofday.o += -ffreestanding
+  CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE)
+endif
+
 # Build rules
 
 targets := $(obj-vdso64) vdso64.so vdso64.so.dbg
@@ -11,6 +23,7 @@ obj-vdso64 := $(addprefix $(obj)/, $(obj-vdso64))
 GCOV_PROFILE := n
 KCOV_INSTRUMENT := n
 UBSAN_SANITIZE := n
+KASAN_SANITIZE := n
 
 ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
 	-Wl,-soname=linux-vdso64.so.1 -Wl,--hash-style=both
@@ -20,12 +33,14 @@ obj-y += vdso64_wrapper.o
 extra-y += vdso64.lds
 CPPFLAGS_vdso64.lds += -P -C -U$(ARCH)
 
+$(obj)/vgettimeofday.o: %.o: %.c FORCE
+
 # Force dependency (incbin is bad)
 $(obj)/vdso64_wrapper.o : $(obj)/vdso64.so
 
 # link rule for the .so file, .lds has to be first
-$(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) FORCE
-	$(call if_changed,vdso64ld)
+$(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) $(obj)/vgettimeofday.o FORCE
+	$(call if_changed,vdso64ld_and_check)
 
 # strip rule for the .so file
 $(obj)/%.so: OBJCOPYFLAGS := -S
@@ -33,8 +48,8 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
 	$(call if_changed,objcopy)
 
 # actual build commands
-quiet_cmd_vdso64ld = VDSO64L $@
-      cmd_vdso64ld = $(CC) $(c_flags) -o $@ -Wl,-T$(filter %.lds,$^) $(filter %.o,$^)
+quiet_cmd_vdso64ld_and_check = VDSO64L $@
+      cmd_vdso64ld_and_check = $(CC) $(c_flags) -o $@ -Wl,-T$(filter %.lds,$^) $(filter %.o,$^) ; $(cmd_vdso_check)
 
 # install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL $@
diff --git a/arch/powerpc/kernel/vdso64/datapage.S b/arch/powerpc/kernel/vdso64/datapage.S
index dc84f5ae3802..4808ce9eeb3d 100644
--- a/arch/powerpc/kernel/vdso64/datapage.S
+++ b/arch/powerpc/kernel/vdso64/datapage.S
@@ -16,7 +16,7 @@
 __kernel_datapage_offset:
 	.long	0
 
-V_FUNCTION_BEGIN(__get_datapage)
+_GLOBAL(__get_datapage)
   .cfi_startproc
 	/* We don't want that exposed or overridable as we want other objects
 	 * to be able to bl directly to here
@@ -37,7 +37,6 @@ data_page_branch:
 	add	r3,r0,r3
 	blr
   .cfi_endproc
-V_FUNCTION_END(__get_datapage)
 
 /*
  * void *__kernel_get_syscall_map(unsigned int *syscall_count) ;
diff --git a/arch/powerpc/kernel/vdso64/gettimeofday.S b/arch/powerpc/kernel/vdso64/gettimeofday.S
index 1c9a04703250..22f4f1f73bbc 100644
--- a/arch/powerpc/kernel/vdso64/gettimeofday.S
+++ b/arch/powerpc/kernel/vdso64/gettimeofday.S
@@ -13,6 +13,23 @@
 #include <asm/unistd.h>
 
 	.text
+
+.macro cvdso_call funct
+	mflr	r0
+	std	r0, 16(r1)
+	stdu	r1, -128(r1)
+	bl	\funct
+	addi	r1, r1, 128
+	ld	r0, 16(r1)
+	cmpwi	r3, 0
+	mtlr	r0
+	crclr	so
+	beqlr+
+	crset	so
+	neg	r3, r3
+	blr
+.endm
+
 /*
  * Exact prototype of gettimeofday
  *
@@ -21,29 +38,7 @@
  */
 V_FUNCTION_BEGIN(__kernel_gettimeofday)
   .cfi_startproc
-	mflr	r12
-  .cfi_register lr,r12
-
-	mr	r11,r3			/* r11 holds tv */
-	mr	r10,r4			/* r10 holds tz */
-	bl	V_LOCAL_FUNC(__get_datapage)	/* get data page */
-	cmpldi	r11,0			/* check if tv is NULL */
-	beq	2f
-	lis	r7,1000000@ha		/* load up USEC_PER_SEC */
-	addi	r7,r7,1000000@l
-	bl	V_LOCAL_FUNC(__do_get_tspec) /* get sec/us from tb & kernel */
-	std	r4,TVAL64_TV_SEC(r11)	/* store sec in tv */
-	std	r5,TVAL64_TV_USEC(r11)	/* store usec in tv */
-2:	cmpldi	r10,0			/* check if tz is NULL */
-	beq	1f
-	lwz	r4,CFG_TZ_MINUTEWEST(r3)/* fill tz */
-	lwz	r5,CFG_TZ_DSTTIME(r3)
-	stw	r4,TZONE_TZ_MINWEST(r10)
-	stw	r5,TZONE_TZ_DSTTIME(r10)
-1:	mtlr	r12
-	crclr	cr0*4+so
-	li	r3,0			/* always success */
-	blr
+	cvdso_call __c_kernel_gettimeofday
   .cfi_endproc
 V_FUNCTION_END(__kernel_gettimeofday)
 
@@ -56,118 +51,7 @@ V_FUNCTION_END(__kernel_gettimeofday)
  */
 V_FUNCTION_BEGIN(__kernel_clock_gettime)
   .cfi_startproc
-	/* Check for supported clock IDs */
-	cmpwi	cr0,r3,CLOCK_REALTIME
-	cmpwi	cr1,r3,CLOCK_MONOTONIC
-	cror	cr0*4+eq,cr0*4+eq,cr1*4+eq
-
-	cmpwi	cr5,r3,CLOCK_REALTIME_COARSE
-	cmpwi	cr6,r3,CLOCK_MONOTONIC_COARSE
-	cror	cr5*4+eq,cr5*4+eq,cr6*4+eq
-
-	cror	cr0*4+eq,cr0*4+eq,cr5*4+eq
-	bne	cr0,99f
-
-	mflr	r12			/* r12 saves lr */
-  .cfi_register lr,r12
-	mr	r11,r4			/* r11 saves tp */
-	bl	V_LOCAL_FUNC(__get_datapage)	/* get data page */
-	lis	r7,NSEC_PER_SEC@h	/* want nanoseconds */
-	ori	r7,r7,NSEC_PER_SEC@l
-	beq	cr5,70f
-50:	bl	V_LOCAL_FUNC(__do_get_tspec)	/* get time from tb & kernel */
-	bne	cr1,80f			/* if not monotonic, all done */
-
-	/*
-	 * CLOCK_MONOTONIC
-	 */
-
-	/* now we must fixup using wall to monotonic. We need to snapshot
-	 * that value and do the counter trick again. Fortunately, we still
-	 * have the counter value in r8 that was returned by __do_get_tspec.
-	 * At this point, r4,r5 contain our sec/nsec values.
-	 */
-
-	ld	r6,WTOM_CLOCK_SEC(r3)
-	lwa	r9,WTOM_CLOCK_NSEC(r3)
-
-	/* We now have our result in r6,r9. We create a fake dependency
-	 * on that result and re-check the counter
-	 */
-	or	r0,r6,r9
-	xor	r0,r0,r0
-	add	r3,r3,r0
-	ld	r0,CFG_TB_UPDATE_COUNT(r3)
-        cmpld   cr0,r0,r8		/* check if updated */
-	bne-	50b
-	b	78f
-
-	/*
-	 * For coarse clocks we get data directly from the vdso data page, so
-	 * we don't need to call __do_get_tspec, but we still need to do the
-	 * counter trick.
-	 */
-70:	ld      r8,CFG_TB_UPDATE_COUNT(r3)
-	andi.   r0,r8,1                 /* pending update ? loop */
-	bne-    70b
-	add     r3,r3,r0		/* r0 is already 0 */
-
-	/*
-	 * CLOCK_REALTIME_COARSE, below values are needed for MONOTONIC_COARSE
-	 * too
-	 */
-	ld      r4,STAMP_XTIME_SEC(r3)
-	ld      r5,STAMP_XTIME_NSEC(r3)
-	bne     cr6,75f
-
-	/* CLOCK_MONOTONIC_COARSE */
-	ld	r6,WTOM_CLOCK_SEC(r3)
-	lwa     r9,WTOM_CLOCK_NSEC(r3)
-
-	/* check if counter has updated */
-	or      r0,r6,r9
-75:	or	r0,r0,r4
-	or	r0,r0,r5
-	xor     r0,r0,r0
-	add     r3,r3,r0
-	ld      r0,CFG_TB_UPDATE_COUNT(r3)
-	cmpld   cr0,r0,r8               /* check if updated */
-	bne-    70b
-
-	/* Counter has not updated, so continue calculating proper values for
-	 * sec and nsec if monotonic coarse, or just return with the proper
-	 * values for realtime.
-	 */
-	bne     cr6,80f
-
-	/* Add wall->monotonic offset and check for overflow or underflow */
-78:	add     r4,r4,r6
-	add     r5,r5,r9
-	cmpd    cr0,r5,r7
-	cmpdi   cr1,r5,0
-	blt     79f
-	subf    r5,r7,r5
-	addi    r4,r4,1
-79:	bge     cr1,80f
-	addi    r4,r4,-1
-	add     r5,r5,r7
-
-80:	std	r4,TSPC64_TV_SEC(r11)
-	std	r5,TSPC64_TV_NSEC(r11)
-
-	mtlr	r12
-	crclr	cr0*4+so
-	li	r3,0
-	blr
-
-	/*
-	 * syscall fallback
-	 */
-99:
-	li	r0,__NR_clock_gettime
-  .cfi_restore lr
-	sc
-	blr
+	cvdso_call __c_kernel_clock_gettime
   .cfi_endproc
 V_FUNCTION_END(__kernel_clock_gettime)
 
@@ -180,32 +64,7 @@ V_FUNCTION_END(__kernel_clock_gettime)
  */
 V_FUNCTION_BEGIN(__kernel_clock_getres)
   .cfi_startproc
-	/* Check for supported clock IDs */
-	cmpwi	cr0,r3,CLOCK_REALTIME
-	cmpwi	cr1,r3,CLOCK_MONOTONIC
-	cror	cr0*4+eq,cr0*4+eq,cr1*4+eq
-	bne	cr0,99f
-
-	mflr	r12
-  .cfi_register lr,r12
-	bl	V_LOCAL_FUNC(__get_datapage)
-	lwz	r5, CLOCK_HRTIMER_RES(r3)
-	mtlr	r12
-	li	r3,0
-	cmpldi	cr0,r4,0
-	crclr	cr0*4+so
-	beqlr
-	std	r3,TSPC64_TV_SEC(r4)
-	std	r5,TSPC64_TV_NSEC(r4)
-	blr
-
-	/*
-	 * syscall fallback
-	 */
-99:
-	li	r0,__NR_clock_getres
-	sc
-	blr
+	cvdso_call __c_kernel_clock_getres
   .cfi_endproc
 V_FUNCTION_END(__kernel_clock_getres)
 
@@ -217,73 +76,14 @@ V_FUNCTION_END(__kernel_clock_getres)
  */
 V_FUNCTION_BEGIN(__kernel_time)
   .cfi_startproc
-	mflr	r12
-  .cfi_register lr,r12
-
-	mr	r11,r3			/* r11 holds t */
-	bl	V_LOCAL_FUNC(__get_datapage)
-
-	ld	r4,STAMP_XTIME_SEC(r3)
-
-	cmpldi	r11,0			/* check if t is NULL */
-	beq	2f
-	std	r4,0(r11)		/* store result at *t */
-2:	mtlr	r12
+	mflr	r0
+	std	r0, 16(r1)
+	stdu	r1, -128(r1)
+	bl	__c_kernel_time
+	addi	r1, r1, 128
+	ld	r0, 16(r1)
 	crclr	cr0*4+so
-	mr	r3,r4
+	mtlr	r0
 	blr
   .cfi_endproc
 V_FUNCTION_END(__kernel_time)
-
-
-/*
- * This is the core of clock_gettime() and gettimeofday(),
- * it returns the current time in r4 (seconds) and r5.
- * On entry, r7 gives the resolution of r5, either USEC_PER_SEC
- * or NSEC_PER_SEC, giving r5 in microseconds or nanoseconds.
- * It expects the datapage ptr in r3 and doesn't clobber it.
- * It clobbers r0, r6 and r9.
- * On return, r8 contains the counter value that can be reused.
- * This clobbers cr0 but not any other cr field.
- */
-V_FUNCTION_BEGIN(__do_get_tspec)
-  .cfi_startproc
-	/* check for update count & load values */
-1:	ld	r8,CFG_TB_UPDATE_COUNT(r3)
-	andi.	r0,r8,1			/* pending update ? loop */
-	bne-	1b
-	xor	r0,r8,r8		/* create dependency */
-	add	r3,r3,r0
-
-	/* Get TB & offset it. We use the MFTB macro which will generate
-	 * workaround code for Cell.
-	 */
-	MFTB(r6)
-	ld	r9,CFG_TB_ORIG_STAMP(r3)
-	subf	r6,r9,r6
-
-	/* Scale result */
-	ld	r5,CFG_TB_TO_XS(r3)
-	sldi	r6,r6,12		/* compute time since stamp_xtime */
-	mulhdu	r6,r6,r5		/* in units of 2^-32 seconds */
-
-	/* Add stamp since epoch */
-	ld	r4,STAMP_XTIME_SEC(r3)
-	lwz	r5,STAMP_SEC_FRAC(r3)
-	or	r0,r4,r5
-	or	r0,r0,r6
-	xor	r0,r0,r0
-	add	r3,r3,r0
-	ld	r0,CFG_TB_UPDATE_COUNT(r3)
-	cmpld   r0,r8			/* check if updated */
-	bne-	1b			/* reload if so */
-
-	/* convert to seconds & nanoseconds and add to stamp */
-	add	r6,r6,r5		/* add on fractional seconds of xtime */
-	mulhwu	r5,r6,r7		/* compute micro or nanoseconds and */
-	srdi	r6,r6,32		/* seconds since stamp_xtime */
-	clrldi	r5,r5,32
-	add	r4,r4,r6
-	blr
-  .cfi_endproc
-V_FUNCTION_END(__do_get_tspec)
diff --git a/arch/powerpc/kernel/vdso64/vgettimeofday.c b/arch/powerpc/kernel/vdso64/vgettimeofday.c
new file mode 100644
index 000000000000..407c6a7ed4e2
--- /dev/null
+++ b/arch/powerpc/kernel/vdso64/vgettimeofday.c
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Powerpc userspace implementations of gettimeofday() and similar.
+ */
+#include <linux/time.h>
+#include <linux/types.h>
+
+int __c_kernel_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
+{
+	return __cvdso_clock_gettime(clock, ts);
+}
+
+int __c_kernel_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
+{
+	return __cvdso_gettimeofday(tv, tz);
+}
+
+int __c_kernel_clock_getres(clockid_t clock_id, struct __kernel_timespec *res)
+{
+	return __cvdso_clock_getres(clock_id, res);
+}
+
+time_t __c_kernel_time(time_t *time)
+{
+	return __cvdso_time(time);
+}
-- 
2.13.3




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
