Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8987750D21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbUu9rj1JX3Pyds+m9VGOByFEpysT/sPJMx4GD0fJ9I=; b=Wc7NUx0jcAKs6F
	ENWdjdMWpJPgN5v8it9MUhxQ+liYX2gay89kYlNe/SgaOV2PIBR5PJMcF9kMSYP40btmOYH2anidR
	KkIhUMXfXhXnc/F0epI1OmcBeyxIEHqVleW9ryytnzhgwv2hOZJQOeUr6LlAji/LHGFp6bOrG0LHB
	hsbnKsQZ/HZeZNNekGnOEliSojUnEcuj/V7rUD4qDAJExYucdJ7zd4FRvSG32r0W8grIvm5GXYKHd
	ZPtAEIgHq65VDyi0niJgkUIQpOPeXE0U6rGJo+b80e4r9XADrFCP8Zwa4eBYWOlsmIOviOC8fYjvZ
	5qIkiSq1pADIjP/F59oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPWU-00081Y-Uk; Mon, 24 Jun 2019 14:00:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPWC-00080H-H9
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:00:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 051CD344;
 Mon, 24 Jun 2019 07:00:24 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 70E373F71E; Mon, 24 Jun 2019 07:00:21 -0700 (PDT)
Date: Mon, 24 Jun 2019 15:00:19 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 10/25] arm64: compat: Add vDSO
Message-ID: <20190624140018.GD29120@arrakis.emea.arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-11-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621095252.32307-11-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_070024_663759_BC9F6549 
X-CRM114-Status: GOOD (  16.78  )
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
Cc: linux-arch@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Shijith Thotton <sthotton@marvell.com>,
 Andre Przywara <andre.przywara@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Shuah Khan <shuah@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 linux-kselftest@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 10:52:37AM +0100, Vincenzo Frascino wrote:
> --- /dev/null
> +++ b/arch/arm64/include/asm/vdso/compat_barrier.h
> @@ -0,0 +1,51 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2018 ARM Limited
> + */
> +#ifndef __COMPAT_BARRIER_H
> +#define __COMPAT_BARRIER_H
> +
> +#ifndef __ASSEMBLY__
> +/*
> + * Warning: This code is meant to be used with
> + * ENABLE_COMPAT_VDSO only.
> + */
> +#ifndef ENABLE_COMPAT_VDSO
> +#error This header is meant to be used with ENABLE_COMPAT_VDSO only
> +#endif
> +
> +#ifdef dmb
> +#undef dmb
> +#endif
> +
> +#if __LINUX_ARM_ARCH__ >= 7
> +#define dmb(option) __asm__ __volatile__ ("dmb " #option : : : "memory")
> +#elif __LINUX_ARM_ARCH__ == 6
> +#define dmb(x) __asm__ __volatile__ ("mcr p15, 0, %0, c7, c10, 5" \
> +				    : : "r" (0) : "memory")
> +#else
> +#define dmb(x) __asm__ __volatile__ ("" : : : "memory")
> +#endif

We don't need pre-ARMv7 barriers (they've been deprecated and the arm64
kernel actually traps and emulates them by default). Also your Makefile
changes never define a __LINUX_ARM_ARCH__ lower than 7. Fix-up below:

------8<-----------------------
From 5655a0313ce7bb731bfed6a19bcfe6b1100b542a Mon Sep 17 00:00:00 2001
From: Catalin Marinas <catalin.marinas@arm.com>
Date: Mon, 24 Jun 2019 12:16:06 +0100
Subject: [PATCH] arm64: compat: No need for pre-ARMv7 barriers on an ARMv8
 system

This patch removes the deprecated (pre-ARMv7) compat barriers as they
would not be used on an ARMv8 system.

Fixes: a7f71a2c8903 ("arm64: compat: Add vDSO")
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/vdso/compat_barrier.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/compat_barrier.h b/arch/arm64/include/asm/vdso/compat_barrier.h
index ea24ea856b07..fb60a88b5ed4 100644
--- a/arch/arm64/include/asm/vdso/compat_barrier.h
+++ b/arch/arm64/include/asm/vdso/compat_barrier.h
@@ -18,14 +18,7 @@
 #undef dmb
 #endif
 
-#if __LINUX_ARM_ARCH__ >= 7
 #define dmb(option) __asm__ __volatile__ ("dmb " #option : : : "memory")
-#elif __LINUX_ARM_ARCH__ == 6
-#define dmb(x) __asm__ __volatile__ ("mcr p15, 0, %0, c7, c10, 5" \
-				    : : "r" (0) : "memory")
-#else
-#define dmb(x) __asm__ __volatile__ ("" : : : "memory")
-#endif
 
 #if __LINUX_ARM_ARCH__ >= 8
 #define aarch32_smp_mb()	dmb(ish)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
