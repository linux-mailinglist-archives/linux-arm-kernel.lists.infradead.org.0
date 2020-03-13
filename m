Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCC4184BB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:51:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNPNSqVmz1Lg6QMsbb7R7BBuiWVrSFVMfV/n5QdXijw=; b=sP/42Mwoc7ocfO
	vnnNqF8i3l4Cyfm48gXYM6QRMqGOapDhQuoSfyfJrA+VegqfNn/YDARbqUjJ71s7WrLKMPuN+tLah
	FCJjtpubJKc8EHB2KRDZTNSebSOMS5XtGdOh6lOYNxT8NmJ4Bhpr+MlssU0r9UtwBdU/yV6GgTlIO
	dNX9ukPVySNT4Sx3/hAwcyO7wN3Ji3qDecJ/XN3PYco93dZWkNXUD6gDydQko2MK0m08iY56MGcTs
	NOna8IuhDXqcLU1U9L3XOkIk/EgcupXoTdyRgraRY4flQPC/7BiHdoO5XYHUwCDc/Xa/tG1fgSTHZ
	NU6a7QVXpEzSb+OOfoDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmal-0004nh-2U; Fri, 13 Mar 2020 15:51:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmUs-0006Sz-56
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:45:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7232B31B;
 Fri, 13 Mar 2020 08:45:13 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A0D73F67D;
 Fri, 13 Mar 2020 08:45:10 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
Subject: [PATCH v3 21/26] arm64: Introduce asm/vdso/arch_timer.h
Date: Fri, 13 Mar 2020 15:43:40 +0000
Message-Id: <20200313154345.56760-22-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084514_348156_8333B7A9 
X-CRM114-Status: GOOD (  17.28  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Andrei Vagin <avagin@openvz.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Introduce asm/vdso/arch_timer.h to contain all the arm64 specific
code. This allows to replace the second isb() in __arch_get_hw_counter()
with a fake dependent stack read of the counter which improves the vdso
library peformances of ~4.5%. Below the results of vdsotest [1] ran for
100 iterations.

Before the patch:
=================
clock-gettime-monotonic: syscall: 771 nsec/call
clock-gettime-monotonic:    libc: 130 nsec/call
clock-gettime-monotonic:    vdso: 111 nsec/call
...
clock-gettime-realtime: syscall: 762 nsec/call
clock-gettime-realtime:    libc: 130 nsec/call
clock-gettime-realtime:    vdso: 111 nsec/call

After the patch:
================
clock-gettime-monotonic: syscall: 792 nsec/call
clock-gettime-monotonic:    libc: 124 nsec/call
clock-gettime-monotonic:    vdso: 106 nsec/call
...
clock-gettime-realtime: syscall: 776 nsec/call
clock-gettime-realtime:    libc: 124 nsec/call
clock-gettime-realtime:    vdso: 106 nsec/call

[1] https://github.com/nathanlynch/vdsotest

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <Mark.Rutland@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/arch_timer.h        | 29 ++++---------------
 arch/arm64/include/asm/vdso/arch_timer.h   | 33 ++++++++++++++++++++++
 arch/arm64/include/asm/vdso/gettimeofday.h |  7 +++--
 3 files changed, 42 insertions(+), 27 deletions(-)
 create mode 100644 arch/arm64/include/asm/vdso/arch_timer.h

diff --git a/arch/arm64/include/asm/arch_timer.h b/arch/arm64/include/asm/arch_timer.h
index 7ae54d7d333a..7f22cd00ad45 100644
--- a/arch/arm64/include/asm/arch_timer.h
+++ b/arch/arm64/include/asm/arch_timer.h
@@ -164,24 +164,7 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
 	isb();
 }
 
-/*
- * Ensure that reads of the counter are treated the same as memory reads
- * for the purposes of ordering by subsequent memory barriers.
- *
- * This insanity brought to you by speculative system register reads,
- * out-of-order memory accesses, sequence locks and Thomas Gleixner.
- *
- * http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631195.html
- */
-#define arch_counter_enforce_ordering(val) do {				\
-	u64 tmp, _val = (val);						\
-									\
-	asm volatile(							\
-	"	eor	%0, %1, %1\n"					\
-	"	add	%0, sp, %0\n"					\
-	"	ldr	xzr, [%0]"					\
-	: "=r" (tmp) : "r" (_val));					\
-} while (0)
+#include <asm/vdso/arch_timer.h>
 
 static __always_inline u64 __arch_counter_get_cntpct_stable(void)
 {
@@ -189,7 +172,7 @@ static __always_inline u64 __arch_counter_get_cntpct_stable(void)
 
 	isb();
 	cnt = arch_timer_reg_read_stable(cntpct_el0);
-	arch_counter_enforce_ordering(cnt);
+	cnt = arch_counter_enforce_ordering(cnt);
 	return cnt;
 }
 
@@ -199,7 +182,7 @@ static __always_inline u64 __arch_counter_get_cntpct(void)
 
 	isb();
 	cnt = read_sysreg(cntpct_el0);
-	arch_counter_enforce_ordering(cnt);
+	cnt = arch_counter_enforce_ordering(cnt);
 	return cnt;
 }
 
@@ -209,7 +192,7 @@ static __always_inline u64 __arch_counter_get_cntvct_stable(void)
 
 	isb();
 	cnt = arch_timer_reg_read_stable(cntvct_el0);
-	arch_counter_enforce_ordering(cnt);
+	cnt = arch_counter_enforce_ordering(cnt);
 	return cnt;
 }
 
@@ -219,12 +202,10 @@ static __always_inline u64 __arch_counter_get_cntvct(void)
 
 	isb();
 	cnt = read_sysreg(cntvct_el0);
-	arch_counter_enforce_ordering(cnt);
+	cnt = arch_counter_enforce_ordering(cnt);
 	return cnt;
 }
 
-#undef arch_counter_enforce_ordering
-
 static inline int arch_timer_arch_init(void)
 {
 	return 0;
diff --git a/arch/arm64/include/asm/vdso/arch_timer.h b/arch/arm64/include/asm/vdso/arch_timer.h
new file mode 100644
index 000000000000..a71bc83232f5
--- /dev/null
+++ b/arch/arm64/include/asm/vdso/arch_timer.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_VDSO_ARCH_TIMER_H
+#define __ASM_VDSO_ARCH_TIMER_H
+
+#include <uapi/linux/types.h>
+
+/*
+ * Ensure that reads of the counter are treated the same as memory reads
+ * for the purposes of ordering by subsequent memory barriers.
+ *
+ * This insanity brought to you by speculative system register reads,
+ * out-of-order memory accesses, sequence locks and Thomas Gleixner.
+ *
+ * http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631195.html
+ *
+ */
+static u64 arch_counter_enforce_ordering(u64 val)
+{
+	u64 tmp, _val = (val);
+
+	asm volatile(
+	"	eor	%0, %1, %1\n"
+	"	add	%0, sp, %0\n"
+	"	ldr	xzr, [%0]"
+	: "=r" (tmp) : "r" (_val));
+
+	return _val;
+}
+
+#endif /* __ASM_VDSO_ARCH_TIMER_H */
diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index afba6ba332f8..319808106625 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -8,6 +8,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
+#include <asm/vdso/arch_timer.h>
 
 #define VDSO_HAS_CLOCK_GETRES		1
 
@@ -82,10 +83,10 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
 	isb();
 	asm volatile("mrs %0, cntvct_el0" : "=r" (res) :: "memory");
 	/*
-	 * This isb() is required to prevent that the seq lock is
-	 * speculated.#
+	 * arch_counter_enforce_ordering() is required to prevent that
+	 * the seq lock is speculated.
 	 */
-	isb();
+	res = arch_counter_enforce_ordering(res);
 
 	return res;
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
