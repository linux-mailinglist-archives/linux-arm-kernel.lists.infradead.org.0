Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07416A38A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 16:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXnyFdaOVbr6B59FNHSUerNC+9V6YTUJQVD3qRcWoXg=; b=sYrxDq6q7dhNpW
	/7IyuT/EXD/t5QjMfKjQwCn3T3fen6ZOjlI4kH7WtNhWF/9mwr/vd9z+hmvJWfyBlGTMeRd2m2mcl
	6x+pCGkyg0lJNBRi0l/cYYybG6RP0KPKm+wd91xMfUulyV4t8fuVvY0uKUfw2NS76vmauqfV9YKPe
	Ke9MH17nulZ+WMocZXT5wpj1/u49hvH9mcQ3lRN6R50RLzb3vFWwahiN5NrB4nmL4I9pz5xvcSqeu
	JfAHJ2Yz57s2a5RAjtnPadzLEtxNOVsOsBMM8si7xchOfSq/exeURbLh7AdM0umjD4tB6GWU5kMF8
	8SNxF7WzHSEm/P/Lhy5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3hRw-0005Pq-Qq; Fri, 30 Aug 2019 14:00:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3hQu-0004aJ-CB
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 13:59:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CEF671596;
 Fri, 30 Aug 2019 06:59:19 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 412C23F703;
 Fri, 30 Aug 2019 06:59:18 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH v2 3/8] mips: compat: vdso: Use legacy syscalls as fallback
Date: Fri, 30 Aug 2019 14:58:57 +0100
Message-Id: <20190830135902.20861-4-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190830135902.20861-1-vincenzo.frascino@arm.com>
References: <20190830135902.20861-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_065920_456915_61415143 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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
Cc: catalin.marinas@arm.com, 0x7f454c46@gmail.com, salyzyn@android.com,
 paul.burton@mips.com, luto@kernel.org, tglx@linutronix.de, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The generic VDSO implementation uses the Y2038 safe clock_gettime64() and
clock_getres_time64() syscalls as fallback for 32bit VDSO. This breaks
seccomp setups because these syscalls might be not (yet) allowed.

Implement the 32bit variants which use the legacy syscalls and select the
variant in the core library.

The 64bit time variants are not removed because they are required for the
time64 based vdso accessors.

Cc: Paul Burton <paul.burton@mips.com>
Fixes: 00b26474c2f1 ("lib/vdso: Provide generic VDSO implementation")
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/mips/include/asm/vdso/gettimeofday.h | 45 +++++++++++++++++++++++
 arch/mips/vdso/config-n32-o32-env.c       |  1 +
 2 files changed, 46 insertions(+)

diff --git a/arch/mips/include/asm/vdso/gettimeofday.h b/arch/mips/include/asm/vdso/gettimeofday.h
index c59fe08b0347..e78462e8ca2e 100644
--- a/arch/mips/include/asm/vdso/gettimeofday.h
+++ b/arch/mips/include/asm/vdso/gettimeofday.h
@@ -105,6 +105,51 @@ static __always_inline int clock_getres_fallback(
 	return error ? -ret : ret;
 }
 
+#if _MIPS_SIM != _MIPS_SIM_ABI64
+
+#define VDSO_HAS_32BIT_FALLBACK	1
+
+static __always_inline long clock_gettime32_fallback(
+					clockid_t _clkid,
+					struct old_timespec32 *_ts)
+{
+	register struct old_timespec32 *ts asm("a1") = _ts;
+	register clockid_t clkid asm("a0") = _clkid;
+	register long ret asm("v0");
+	register long nr asm("v0") = __NR_clock_gettime;
+	register long error asm("a3");
+
+	asm volatile(
+	"       syscall\n"
+	: "=r" (ret), "=r" (error)
+	: "r" (clkid), "r" (ts), "r" (nr)
+	: "$1", "$3", "$8", "$9", "$10", "$11", "$12", "$13",
+	  "$14", "$15", "$24", "$25", "hi", "lo", "memory");
+
+	return error ? -ret : ret;
+}
+
+static __always_inline int clock_getres32_fallback(
+					clockid_t _clkid,
+					struct old_timespec32 *_ts)
+{
+	register struct old_timespec32 *ts asm("a1") = _ts;
+	register clockid_t clkid asm("a0") = _clkid;
+	register long ret asm("v0");
+	register long nr asm("v0") = __NR_clock_getres;
+	register long error asm("a3");
+
+	asm volatile(
+	"       syscall\n"
+	: "=r" (ret), "=r" (error)
+	: "r" (clkid), "r" (ts), "r" (nr)
+	: "$1", "$3", "$8", "$9", "$10", "$11", "$12", "$13",
+	  "$14", "$15", "$24", "$25", "hi", "lo", "memory");
+
+	return error ? -ret : ret;
+}
+#endif
+
 #ifdef CONFIG_CSRC_R4K
 
 static __always_inline u64 read_r4k_count(void)
diff --git a/arch/mips/vdso/config-n32-o32-env.c b/arch/mips/vdso/config-n32-o32-env.c
index 7f8d957abd4a..0011a632aef2 100644
--- a/arch/mips/vdso/config-n32-o32-env.c
+++ b/arch/mips/vdso/config-n32-o32-env.c
@@ -10,6 +10,7 @@
  */
 #undef CONFIG_64BIT
 
+#define BUILD_VDSO32
 #define CONFIG_32BIT 1
 #define CONFIG_GENERIC_ATOMIC64 1
 #define BUILD_VDSO32_64
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
