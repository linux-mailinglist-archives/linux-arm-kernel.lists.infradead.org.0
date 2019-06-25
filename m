Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C4F55453
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X25vUK/Pdd/CQMW7mLO9W4M8IAFbQmC8tm7V7/dUtLE=; b=BpGIKSJpvdBcsi
	0XMqk/SWrFDuy+vDvDfJJfhwbwrEw2LBh2mAY7CPnUoo1dUyaRvPZedaadI1N/A1NepKOHoknPdLv
	OIf7sWC64UwQjZP7vvhhYXCnshUARkt8TYUwa7M4/Qh89dnNrlXo4rICBg0cNtDxepgkV/IJ3oc/j
	TIrw8RHz5D5Ttl+xZN0bAuR4djGOfeuJT4WEfs92qX2aPoxl4yL1hzn15rYyxDpj5YqUcpMtf233p
	zldxlEbgYEUYQijHG4Pka9oGawALyZDHXmN/MqHNzvSY8n07RHWNPvJmA3M17kgM5KSZKYeaWgXjY
	DqXSO8D9u+sABPFfQm2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoAF-0004Jh-Lk; Tue, 25 Jun 2019 16:19:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfo9Y-0003vV-SE
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:18:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D8ACED1;
 Tue, 25 Jun 2019 09:18:40 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 96EB73F718;
 Tue, 25 Jun 2019 09:18:37 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH 3/3] arm64: compat: Fix __arch_get_hw_counter() implementation
Date: Tue, 25 Jun 2019 17:18:04 +0100
Message-Id: <20190625161804.38713-3-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190625161804.38713-1-vincenzo.frascino@arm.com>
References: <20190624133607.GI29497@fuggles.cambridge.arm.com>
 <20190625161804.38713-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_091840_986613_8929F277 
X-CRM114-Status: GOOD (  11.15  )
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
Cc: shuah@kernel.org, andre.przywara@arm.com, arnd@arndb.de,
 huw@codeweavers.com, catalin.marinas@arm.com, daniel.lezcano@linaro.org,
 will.deacon@arm.com, linux@armlinux.org.uk, ralf@linux-mips.org,
 salyzyn@android.com, paul.burton@mips.com, 0x7f454c46@gmail.com,
 linux@rasmusvillemoes.dk, tglx@linutronix.de, sthotton@marvell.com,
 pcc@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Provide the following fixes for the __arch_get_hw_counter()
implementation on arm64:
- Fallback on syscall when an unstable counter is detected.
- Introduce isb()s before and after the counter read to avoid
speculation of the counter value and of the seq lock
respectively.
The second isb() is a temporary solution that will be revisited
in 5.3-rc1.

These fixes restore the semantics that __arch_counter_get_cntvct()
had on arm64.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 .../include/asm/vdso/compat_gettimeofday.h     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index 93dbd935b66d..f4812777f5c5 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -12,6 +12,8 @@
 
 #include <asm/vdso/compat_barrier.h>
 
+#define __VDSO_USE_SYSCALL		ULLONG_MAX
+
 #define VDSO_HAS_CLOCK_GETRES		1
 
 static __always_inline
@@ -74,8 +76,24 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
 {
 	u64 res;
 
+	/*
+	 * clock_mode == 0 implies that vDSO are enabled otherwise
+	 * fallback on syscall.
+	 */
+	if (clock_mode)
+		return __VDSO_USE_SYSCALL;
+
+	/*
+	 * This isb() is required to prevent that the counter value
+	 * is speculated.
+	 */
 	isb();
 	asm volatile("mrrc p15, 1, %Q0, %R0, c14" : "=r" (res));
+	/*
+	 * This isb() is required to prevent that the seq lock is
+	 * speculated.
+	 */
+	isb();
 
 	return res;
 }
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
