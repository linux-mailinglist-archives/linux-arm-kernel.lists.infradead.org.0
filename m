Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4955F4E5CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5bxdSzYoskNP8DoHgK4J0b2zF6ygBrIQlcUObLOofM=; b=Ja91yhpj6dcdc0
	74eKTgc7ScWDnz5Ez3yhDgqdMvy+KNHzEPe9EIKougDxQwxtFTPnAYeIOOKoDjuvF3Ue9UHGDz5M6
	CRYfP1xPuHTN1+Z2envq7ZjQn9y1PcsMoQEQEHguW1W5iZKnzlgTqdhJ8mcUpMeY6Y7dt2xI3prtp
	CyVkQSQ3snACN5G9WrwRjAuByoIa4P0f33bCUpwSjq1zgx1N5+Cugu4pTPrUcY2NqZh8sFK34/ZtG
	xGO5N3XxuZXuUPW6tTOPMnaDscZ3CTFZsvrf41z3pyfH7cnQNQ1nSisW3y1ysfrLRm7ETIAc/QlsC
	Z+imD/ruHHthqVT5cLIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGgm-0002Lj-DM; Fri, 21 Jun 2019 10:22:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGFH-0004Ws-P9
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:54:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5CDF3147A;
 Fri, 21 Jun 2019 02:54:11 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C79EE3F246;
 Fri, 21 Jun 2019 02:54:08 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH v7 23/25] x86: Add clock_getres entry point
Date: Fri, 21 Jun 2019 10:52:50 +0100
Message-Id: <20190621095252.32307-24-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190621095252.32307-1-vincenzo.frascino@arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_025411_959733_FD5CEC9D 
X-CRM114-Status: GOOD (  11.43  )
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

Add clock_getres() entry point on x86.

Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/x86/entry/vdso/vclock_gettime.c     | 17 ++++++++++++++
 arch/x86/entry/vdso/vdso.lds.S           |  2 ++
 arch/x86/entry/vdso/vdso32/vdso32.lds.S  |  1 +
 arch/x86/include/asm/vdso/gettimeofday.h | 30 ++++++++++++++++++++++++
 4 files changed, 50 insertions(+)

diff --git a/arch/x86/entry/vdso/vclock_gettime.c b/arch/x86/entry/vdso/vclock_gettime.c
index 4a7ef4ca4f52..de9212a4833e 100644
--- a/arch/x86/entry/vdso/vclock_gettime.c
+++ b/arch/x86/entry/vdso/vclock_gettime.c
@@ -36,6 +36,7 @@ time_t time(time_t *t)
 #if defined(CONFIG_X86_64) && !defined(BUILD_VDSO32_64)
 /* both 64-bit and x32 use these */
 extern int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts);
+extern int __vdso_clock_getres(clockid_t clock, struct __kernel_timespec *res);
 
 int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
 {
@@ -44,9 +45,18 @@ int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
 int clock_gettime(clockid_t, struct __kernel_timespec *)
 	__attribute__((weak, alias("__vdso_clock_gettime")));
 
+int __vdso_clock_getres(clockid_t clock,
+			struct __kernel_timespec *res)
+{
+	return __cvdso_clock_getres(clock, res);
+}
+int clock_getres(clockid_t, struct __kernel_timespec *)
+	__attribute__((weak, alias("__vdso_clock_getres")));
+
 #else
 /* i386 only */
 extern int __vdso_clock_gettime(clockid_t clock, struct old_timespec32 *ts);
+extern int __vdso_clock_getres(clockid_t clock, struct old_timespec32 *res);
 
 int __vdso_clock_gettime(clockid_t clock, struct old_timespec32 *ts)
 {
@@ -55,4 +65,11 @@ int __vdso_clock_gettime(clockid_t clock, struct old_timespec32 *ts)
 int clock_gettime(clockid_t, struct old_timespec32 *)
 	__attribute__((weak, alias("__vdso_clock_gettime")));
 
+int __vdso_clock_getres(clockid_t clock,
+			struct old_timespec32 *res)
+{
+	return __cvdso_clock_getres_time32(clock, res);
+}
+int clock_getres(clockid_t, struct old_timespec32 *)
+	__attribute__((weak, alias("__vdso_clock_getres")));
 #endif
diff --git a/arch/x86/entry/vdso/vdso.lds.S b/arch/x86/entry/vdso/vdso.lds.S
index d3a2dce4cfa9..36b644e16272 100644
--- a/arch/x86/entry/vdso/vdso.lds.S
+++ b/arch/x86/entry/vdso/vdso.lds.S
@@ -25,6 +25,8 @@ VERSION {
 		__vdso_getcpu;
 		time;
 		__vdso_time;
+		clock_getres;
+		__vdso_clock_getres;
 	local: *;
 	};
 }
diff --git a/arch/x86/entry/vdso/vdso32/vdso32.lds.S b/arch/x86/entry/vdso/vdso32/vdso32.lds.S
index 422764a81d32..991b26cc855b 100644
--- a/arch/x86/entry/vdso/vdso32/vdso32.lds.S
+++ b/arch/x86/entry/vdso/vdso32/vdso32.lds.S
@@ -26,6 +26,7 @@ VERSION
 		__vdso_clock_gettime;
 		__vdso_gettimeofday;
 		__vdso_time;
+		__vdso_clock_getres;
 	};
 
 	LINUX_2.5 {
diff --git a/arch/x86/include/asm/vdso/gettimeofday.h b/arch/x86/include/asm/vdso/gettimeofday.h
index a274d4fea7a5..df8c8dfadfa7 100644
--- a/arch/x86/include/asm/vdso/gettimeofday.h
+++ b/arch/x86/include/asm/vdso/gettimeofday.h
@@ -24,6 +24,8 @@
 
 #define VDSO_HAS_TIME 1
 
+#define VDSO_HAS_CLOCK_GETRES 1
+
 #ifdef CONFIG_PARAVIRT_CLOCK
 extern u8 pvclock_page[PAGE_SIZE]
 	__attribute__((visibility("hidden")));
@@ -57,6 +59,17 @@ static __always_inline long gettimeofday_fallback(
 	return ret;
 }
 
+static __always_inline long clock_getres_fallback(
+					clockid_t _clkid,
+					struct __kernel_timespec *_ts)
+{
+	long ret;
+	asm ("syscall" : "=a" (ret), "=m" (*_ts) :
+	     "0" (__NR_clock_getres), "D" (_clkid), "S" (_ts) :
+	     "rcx", "r11");
+	return ret;
+}
+
 #else
 
 static __always_inline long clock_gettime_fallback(
@@ -92,6 +105,23 @@ static __always_inline long gettimeofday_fallback(
 	return ret;
 }
 
+static __always_inline long clock_getres_fallback(
+					clockid_t _clkid,
+					struct __kernel_timespec *_ts)
+{
+	long ret;
+
+	asm (
+		"mov %%ebx, %%edx \n"
+		"mov %[clock], %%ebx \n"
+		"call __kernel_vsyscall \n"
+		"mov %%edx, %%ebx \n"
+		: "=a" (ret), "=m" (*_ts)
+		: "0" (__NR_clock_getres_time64), [clock] "g" (_clkid), "c" (_ts)
+		: "edx");
+	return ret;
+}
+
 #endif
 
 #ifdef CONFIG_PARAVIRT_CLOCK
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
