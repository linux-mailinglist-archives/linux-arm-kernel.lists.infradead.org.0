Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BD2EB428
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 16:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CIdvRo/BTEJ4dwAuujeqecq0YfS4lMBGasFCDtYsEvU=; b=fO18IL6L1AzTpL
	eY/oX9KxvZXIbJE+qCC1X7zs7QY3VWZ0bwG7Ojb15FjXU7QRPyd2m0gizMgDczAp0WdLztS0bZfP1
	wEdmMfkFLyyqdTuwfTnIvHC2H4NJTg3FrfYj5Z2tfelmK5IQEwQqrigCcKy+pXCuH99CUrPWdT4c/
	gu5btF2lbfv+7LDagtrkfAggvKEUOD/8Ak0wQjakZbwag4TeDO6D9GlK+P31Bo/jFdT+jmrgr126i
	NfLZPSZFKqrosZg2CYcGOLokOMYJtZFtcT3hMvq60gLsqiLporiV11L9gR/5ssGnrdyideN9uk0ko
	QdI/xoh1be5ahS7TalEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCeD-0006C0-1C; Thu, 31 Oct 2019 15:46:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCdp-00062O-Lx
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 15:45:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F6C84F5;
 Thu, 31 Oct 2019 08:45:39 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E22A3F71E;
 Thu, 31 Oct 2019 08:45:38 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm: Add clock_getres entry point
Date: Thu, 31 Oct 2019 15:44:48 +0000
Message-Id: <20191031154449.49757-3-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031154449.49757-1-vincenzo.frascino@arm.com>
References: <20191031154449.49757-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_084541_758628_718C141E 
X-CRM114-Status: UNSURE (   9.75  )
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
Cc: tglx@linutronix.de, vincenzo.frascino@arm.com, luto@kernel.org,
 linux@armlinux.org.uk, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The generic vDSO library provides an implementation of clock_getres() that
can be leveraged by each architecture.

Add clock_getres() entry point on arm to be on pair with arm64.

Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm/include/asm/vdso/gettimeofday.h | 20 ++++++++++++++++++++
 arch/arm/vdso/vdso.lds.S                 |  1 +
 arch/arm/vdso/vgettimeofday.c            |  6 ++++++
 3 files changed, 27 insertions(+)

diff --git a/arch/arm/include/asm/vdso/gettimeofday.h b/arch/arm/include/asm/vdso/gettimeofday.h
index 30ce4e87dffc..5b879ae7afc1 100644
--- a/arch/arm/include/asm/vdso/gettimeofday.h
+++ b/arch/arm/include/asm/vdso/gettimeofday.h
@@ -12,6 +12,8 @@
 #include <asm/unistd.h>
 #include <uapi/linux/time.h>
 
+#define VDSO_HAS_CLOCK_GETRES		1
+
 extern struct vdso_data *__get_datapage(void);
 
 static __always_inline int gettimeofday_fallback(
@@ -50,6 +52,24 @@ static __always_inline long clock_gettime_fallback(
 	return ret;
 }
 
+static __always_inline int clock_getres_fallback(
+					clockid_t _clkid,
+					struct __kernel_timespec *_ts)
+{
+	register struct __kernel_timespec *ts asm("r1") = _ts;
+	register clockid_t clkid asm("r0") = _clkid;
+	register long ret asm ("r0");
+	register long nr asm("r7") = __NR_clock_getres_time64;
+
+	asm volatile(
+	"       swi #0\n"
+	: "=r" (ret)
+	: "r" (clkid), "r" (ts), "r" (nr)
+	: "memory");
+
+	return ret;
+}
+
 static __always_inline u64 __arch_get_hw_counter(int clock_mode)
 {
 #ifdef CONFIG_ARM_ARCH_TIMER
diff --git a/arch/arm/vdso/vdso.lds.S b/arch/arm/vdso/vdso.lds.S
index 73cf205b003e..38cb8b0aa3b9 100644
--- a/arch/arm/vdso/vdso.lds.S
+++ b/arch/arm/vdso/vdso.lds.S
@@ -71,6 +71,7 @@ VERSION
 	global:
 		__vdso_clock_gettime;
 		__vdso_gettimeofday;
+		__vdso_clock_getres;
 	local: *;
 	};
 }
diff --git a/arch/arm/vdso/vgettimeofday.c b/arch/arm/vdso/vgettimeofday.c
index e64deb75178e..f6da91f9ccc7 100644
--- a/arch/arm/vdso/vgettimeofday.c
+++ b/arch/arm/vdso/vgettimeofday.c
@@ -19,6 +19,12 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 	return __cvdso_gettimeofday(tv, tz);
 }
 
+int __vdso_clock_getres(clockid_t clock_id,
+			struct old_timespec32 *res)
+{
+	return __cvdso_clock_getres_time32(clock_id, res);
+}
+
 /* Avoid unresolved references emitted by GCC */
 
 void __aeabi_unwind_cpp_pr0(void)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
