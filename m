Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B80E18D23B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 16:00:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNDjPCaW6TBw80w9dn5QMmPC0+DMdtZCafSsmVdQx+E=; b=oVrgfKilbysXZ5
	EKcb8vAAkcw3rBC2M1vOG7iFinlmsyAOhh25gU85bf/EKTsUoMrEPKMxCo/o3vmDdu4L5sOF7tM+i
	V/4c9+Gso4z1gupBNTzKyox6pgvyNl4cgR+IYzsFSvYTQM4EqlV22omv9XHlkvNZ7x6e47tRZIGA/
	PSStFahQDMeAuG4MNHDRtS0Ij/dvxOgBGu5bckoyNKuyyI8Fe9Un9ee2Zj0Hi5ogQw2EQ4yKDsytP
	j4TxqLjJMZMNVmES3HqIttlX/YvD8UxZ6mOt19FaGSGNfU0ZlAOo/z+7y0u1yuHFgZXBNRqI24Woo
	iunX3rgd5FlzdPp5SMTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJ8M-0002bj-CP; Fri, 20 Mar 2020 15:00:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJ3m-0007Fy-1P
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 14:55:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63F2DFEC;
 Fri, 20 Mar 2020 07:55:41 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F3C83F792;
 Fri, 20 Mar 2020 07:55:38 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mips@vger.kernel.org, x86@kernel.org
Subject: [PATCH v5 18/26] arm64: vdso32: Code clean up
Date: Fri, 20 Mar 2020 14:53:43 +0000
Message-Id: <20200320145351.32292-19-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_075542_301319_419248C4 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Peter Collingbourne <pcc@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Andrei Vagin <avagin@openvz.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The compat vdso library had some checks that are not anymore relevant.

Remove the unused code from the compat vDSO library.

Note: This patch is preparatory for a future one that will introduce
asm/vdso/processor.h on arm64.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Link: https://lore.kernel.org/lkml/20200317122220.30393-19-vincenzo.frascino@arm.com
---
 arch/arm64/include/asm/vdso/compat_gettimeofday.h |  8 --------
 arch/arm64/kernel/vdso32/vgettimeofday.c          | 12 ------------
 2 files changed, 20 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index 81b0c394f1d8..401df2bcd741 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -76,10 +76,6 @@ int clock_getres_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
 	register long ret asm ("r0");
 	register long nr asm("r7") = __NR_compat_clock_getres_time64;
 
-	/* The checks below are required for ABI consistency with arm */
-	if ((_clkid >= MAX_CLOCKS) && (_ts == NULL))
-		return -EINVAL;
-
 	asm volatile(
 	"       swi #0\n"
 	: "=r" (ret)
@@ -97,10 +93,6 @@ int clock_getres32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
 	register long ret asm ("r0");
 	register long nr asm("r7") = __NR_compat_clock_getres;
 
-	/* The checks below are required for ABI consistency with arm */
-	if ((_clkid >= MAX_CLOCKS) && (_ts == NULL))
-		return -EINVAL;
-
 	asm volatile(
 	"       swi #0\n"
 	: "=r" (ret)
diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
index 54fc1c2ce93f..ddbad47efaa4 100644
--- a/arch/arm64/kernel/vdso32/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
@@ -11,20 +11,12 @@
 int __vdso_clock_gettime(clockid_t clock,
 			 struct old_timespec32 *ts)
 {
-	/* The checks below are required for ABI consistency with arm */
-	if ((u32)ts >= TASK_SIZE_32)
-		return -EFAULT;
-
 	return __cvdso_clock_gettime32(clock, ts);
 }
 
 int __vdso_clock_gettime64(clockid_t clock,
 			   struct __kernel_timespec *ts)
 {
-	/* The checks below are required for ABI consistency with arm */
-	if ((u32)ts >= TASK_SIZE_32)
-		return -EFAULT;
-
 	return __cvdso_clock_gettime(clock, ts);
 }
 
@@ -37,10 +29,6 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 int __vdso_clock_getres(clockid_t clock_id,
 			struct old_timespec32 *res)
 {
-	/* The checks below are required for ABI consistency with arm */
-	if ((u32)res >= TASK_SIZE_32)
-		return -EFAULT;
-
 	return __cvdso_clock_getres_time32(clock_id, res);
 }
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
