Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 033C355451
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIM7rxfgsRSGkrrlyTKQt54jeubVy9RkR4J+z4aC63M=; b=cXNNleJc7gNlVD
	pSb1gb6r+93t6dSVfsTY6P4oYCtenttnLa4bguVmkz0/3FnHkFrPRub3ONKe43506QyfmdBGPpxcZ
	Dx8pNCfpq7uc+a9brizS2YzScWV6rz2W4uCFWAFt2awW5ghsv0nIQaJWkaxQaOBECxy7PCbr5vIH4
	ko8TrREFdEFNBvvzmyfQnEghgsPsF8HqDhwrt1IpWhINQy7c09XTZqUmPXfPJ09ooo6PTzAbHNXDM
	oEyN4ZukpSJ8Bbh2yRYFcxea+u9qp2Fffh+jv8WXBsf3Sw7FQLHMFMWG59Ype7yUWHnYuPHfulgv6
	Vm3J2JyOP1p8Jar5zMCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfo9z-000443-63; Tue, 25 Jun 2019 16:19:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfo9W-0003s9-5G
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:18:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5EEE8C0A;
 Tue, 25 Jun 2019 09:18:37 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C5DB03F718;
 Tue, 25 Jun 2019 09:18:34 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH 2/3] arm64: Fix __arch_get_hw_counter() implementation
Date: Tue, 25 Jun 2019 17:18:03 +0100
Message-Id: <20190625161804.38713-2-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190625161804.38713-1-vincenzo.frascino@arm.com>
References: <20190624133607.GI29497@fuggles.cambridge.arm.com>
 <20190625161804.38713-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_091838_260331_0EAF53F0 
X-CRM114-Status: GOOD (  11.33  )
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
 arch/arm64/include/asm/vdso/gettimeofday.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index 447ef417de45..b08f476b72b4 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -10,6 +10,8 @@
 #include <asm/unistd.h>
 #include <uapi/linux/time.h>
 
+#define __VDSO_USE_SYSCALL		ULLONG_MAX
+
 #define VDSO_HAS_CLOCK_GETRES		1
 
 static __always_inline
@@ -68,7 +70,24 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
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
+	isb();
 	asm volatile("mrs %0, cntvct_el0" : "=r" (res) :: "memory");
+	/*
+	 * This isb() is required to prevent that the seq lock is
+	 * speculated.#
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
