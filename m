Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A786D4E5C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpLte5y0n29Ji2olWZZ1qsEMd6LsRHyAzG4aNO64/bE=; b=SI6qudVNWxUQ/O
	3dMOidhh8wZO079Evv8rBsJoaUwdt7CCAxf8F5FdA6jmodwHd52xKaoJL+uZ5/ktezoYxv/TCS8fs
	W9LSQGVEtlwN6bFWJHTdxYllrae/k4rpIgXPgCymGLRS0uUywvRYhmgrYHo+oydr4z3omIngZPOAM
	HUzKGmH7gK9a81GbcKSYlm8PJma5G/5JvGmuFSK/6D9KrgBJrEpTMvwTwcav62SFH+OOh1sRdM8uN
	36Pe8WYBWnDnzxoc+unL1mWpDmMEVnXs/kHdOKRa3j/yAre87y9Uy5QToIY+lGMhpOyYQm589hwyC
	YscWXLoHPeNoBb9JBTYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGfL-00015J-6W; Fri, 21 Jun 2019 10:21:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGF9-0004PT-SQ
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:54:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02DA614F6;
 Fri, 21 Jun 2019 02:54:03 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D9923F246;
 Fri, 21 Jun 2019 02:54:00 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH v7 20/25] mips: Add clock_getres entry point
Date: Fri, 21 Jun 2019 10:52:47 +0100
Message-Id: <20190621095252.32307-21-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190621095252.32307-1-vincenzo.frascino@arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_025404_134664_7E714699 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Shuah Khan <shuah@kernel.org>, Andre Przywara <andre.przywara@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Thomas Gleixner <tglx@linutronix.de>, Shijith Thotton <sthotton@marvell.com>,
 Peter Collingbourne <pcc@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The generic vDSO library provides an implementation of clock_getres()
that can be leveraged by each architecture.

Add clock_getres() entry point on mips.

Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: Paul Burton <paul.burton@mips.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/mips/include/asm/vdso/gettimeofday.h | 26 +++++++++++++++++++++++
 arch/mips/vdso/vdso.lds.S                 |  1 +
 arch/mips/vdso/vgettimeofday.c            | 12 +++++++++++
 3 files changed, 39 insertions(+)

diff --git a/arch/mips/include/asm/vdso/gettimeofday.h b/arch/mips/include/asm/vdso/gettimeofday.h
index aa20865b288b..c59fe08b0347 100644
--- a/arch/mips/include/asm/vdso/gettimeofday.h
+++ b/arch/mips/include/asm/vdso/gettimeofday.h
@@ -22,6 +22,8 @@
 #include <asm/unistd.h>
 #include <asm/vdso.h>
 
+#define VDSO_HAS_CLOCK_GETRES		1
+
 #ifdef CONFIG_MIPS_CLOCK_VSYSCALL
 
 static __always_inline long gettimeofday_fallback(
@@ -79,6 +81,30 @@ static __always_inline long clock_gettime_fallback(
 	return error ? -ret : ret;
 }
 
+static __always_inline int clock_getres_fallback(
+					clockid_t _clkid,
+					struct __kernel_timespec *_ts)
+{
+	register struct __kernel_timespec *ts asm("a1") = _ts;
+	register clockid_t clkid asm("a0") = _clkid;
+	register long ret asm("v0");
+#if _MIPS_SIM == _MIPS_SIM_ABI64
+	register long nr asm("v0") = __NR_clock_getres;
+#else
+	register long nr asm("v0") = __NR_clock_getres_time64;
+#endif
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
 #ifdef CONFIG_CSRC_R4K
 
 static __always_inline u64 read_r4k_count(void)
diff --git a/arch/mips/vdso/vdso.lds.S b/arch/mips/vdso/vdso.lds.S
index 94d90c440590..ad9f2f2c0c97 100644
--- a/arch/mips/vdso/vdso.lds.S
+++ b/arch/mips/vdso/vdso.lds.S
@@ -95,6 +95,7 @@ VERSION
 	global:
 		__vdso_clock_gettime;
 		__vdso_gettimeofday;
+		__vdso_clock_getres;
 #endif
 	local: *;
 	};
diff --git a/arch/mips/vdso/vgettimeofday.c b/arch/mips/vdso/vgettimeofday.c
index 1c46dace041e..48e1ab32204b 100644
--- a/arch/mips/vdso/vgettimeofday.c
+++ b/arch/mips/vdso/vgettimeofday.c
@@ -23,6 +23,12 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 	return __cvdso_gettimeofday(tv, tz);
 }
 
+int __vdso_clock_getres(clockid_t clock_id,
+			struct old_timespec32 *res)
+{
+	return __cvdso_clock_getres_time32(clock_id, res);
+}
+
 #else
 
 int __vdso_clock_gettime(clockid_t clock,
@@ -37,4 +43,10 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 	return __cvdso_gettimeofday(tv, tz);
 }
 
+int __vdso_clock_getres(clockid_t clock_id,
+			struct __kernel_timespec *res)
+{
+	return __cvdso_clock_getres(clock_id, res);
+}
+
 #endif
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
