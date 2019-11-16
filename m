Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F63FEADD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 06:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8KdHmhVl8IckJL/E32SnEeF3lEwn4zqwkifbc8B8nek=; b=rQIdYvKLxWhgET
	4s2eM4v7X2oPZ+JdLtYqU+pR8hVcg+88sI78FXaLckm/dDxFc6koQcFl8bj0JIEiOnns3dM3f9Qj9
	DGXCmQ6KCqNs9nW/uyVlUBxldHU1/F4QrIig7ZzYn7OZIcUQHT2Vc1Hid6Ocm2M+GL0MsqBD6TWxW
	NJcDSdomVgqbDC9k4Pzw78z2Z8UM8twojihKtnpI0GS6FNHE4ju9tzLRuj6kdO1MaSMJI6Z4/0EaT
	ouarhr+cGKkaO2pW13R6CN9R7A4aApAmiYrANiIbYwo7XiDZNQm7kTkKri820dUzs/8TAaGu2mlZT
	0vIb8H82hPQduhqrBkQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVr2l-0005Cr-Gw; Sat, 16 Nov 2019 05:54:47 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVr2d-0005Bo-Mt
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 05:54:42 +0000
Received: by mail-wm1-x336.google.com with SMTP id u18so11713229wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 21:54:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=mRqW6zthPLcHBh4LlAfUIeqD/Iv45YY4zHt9yE8+dGA=;
 b=bsyQAeTffxoDun/10FTAUhud1UqsgNjhx62iY/d+Dqq4drawJ7t6Wqwu4FYJerEt/m
 2ZsEOWAF+LXvYJYeyDA9u0CNEiuaSmxaVa0myZEPJAjwr4sm/2HfddFBFCd2zJ4eusiy
 BjrBcuA+GdFJUxZQvIZw4MtYYufzCwypL7xwBS6JUYs6ayvea1fjtRU30TzUxcCWppr/
 0FpPFk6kYTW3LA//8BmkMn+hePaaZRd/TlBKpwi+yqAVY+JA7I/A/VS9KWQC3q+NV8mS
 vch4LTKZ3nZ1b6EfNIlw3IillZBkFXh7OLRs62xBdsvwCTMs34HoHgta5g4uC7aEHLus
 fUBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=mRqW6zthPLcHBh4LlAfUIeqD/Iv45YY4zHt9yE8+dGA=;
 b=fIWv7SsTWeqAvFJbCzq1bcaitKQ8nNOxU/FXnWXDSLQ0pDmtgZtbXAU6cnQSa2qfFo
 KUu9Bl6LXyFyqbcFcUEzKz/1E0jDaIaTfeuMumhFXCSjYhb+UY7YrdgzfFFG7pmLL7yH
 2VfYB4o/S22y4uIID+2eAui2ENKEvEBRjb5VAnYxU1VtMxJdsJNVhypdvznyXrxOIdas
 TLumk0L3ATaTK3FmBIjRieCpazkAdbPAmGkxmUtb5wUClxhkHg6nPUu6MHa7M3Bp0N+4
 d7GuHt3TuwwdyOtTfT2uxrKZQOiEvZe0LzevBxWWG2kSd8hJlDeO1WKSbHxGeoC3U0zP
 8osA==
X-Gm-Message-State: APjAAAW24CavnY/CjXlIUe88u1/HzB62JUrTTaU9iBv+30i70ixkotSO
 ecaLls6M+UAnA3psUREMT4TLig==
X-Google-Smtp-Source: APXvYqyIYg+CVgR8kiSO/8JtF/TM61sgmJn2Q6X/fXpS7x59JGY945o7u28IgweCmdMRjNu8aCsZhQ==
X-Received: by 2002:a1c:e915:: with SMTP id q21mr16802598wmc.148.1573883674570; 
 Fri, 15 Nov 2019 21:54:34 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id n13sm12042360wmi.25.2019.11.15.21.54.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 21:54:33 -0800 (PST)
Message-ID: <5dcf8f19.1c69fb81.c02f3.91f2@mx.google.com>
Date: Fri, 15 Nov 2019 21:54:33 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Lab-Name: lab-baylibre
X-Kernelci-Branch: for-next
X-Kernelci-Tree: rmk
X-Kernelci-Report-Type: bisect
X-Kernelci-Kernel: v5.4-rc5-26-gb6c3c42cfda0
Subject: rmk/for-next bisection: boot on ox820-cloudengines-pogoplug-series-3
To: Ard Biesheuvel <ardb@kernel.org>, tomeu.vizoso@collabora.com,
 guillaume.tucker@collabora.com, mgalka@collabora.com,
 Russell King <rmk+kernel@armlinux.org.uk>, broonie@kernel.org,
 matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_215439_800207_3739E7B4 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "kernelci.org bot" <bot@kernelci.org>, Nicolas Pitre <nico@fluxnic.net>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This automated bisection report was sent to you on the basis  *
* that you may be involved with the breaking commit it has      *
* found.  No manual investigation has been done to verify it,   *
* and the root cause of the problem may be somewhere else.      *
*                                                               *
* If you do send a fix, please include this trailer:            *
*   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
*                                                               *
* Hope this helps!                                              *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

rmk/for-next bisection: boot on ox820-cloudengines-pogoplug-series-3

Summary:
  Start:      b6c3c42cfda0 ARM: 8938/1: kernel: initialize broadcast hrtimer based clock event device
  Details:    https://kernelci.org/boot/id/5dcf3f0359b514dc84cf54c8
  Plain log:  https://storage.kernelci.org//rmk/for-next/v5.4-rc5-26-gb6c3c42cfda0/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-cloudengines-pogoplug-series-3.txt
  HTML log:   https://storage.kernelci.org//rmk/for-next/v5.4-rc5-26-gb6c3c42cfda0/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-cloudengines-pogoplug-series-3.html
  Result:     ea70bf6e92c5 ARM: 8935/1: decompressor: avoid CP15 barrier instructions in v7 cache setup code

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       rmk
  URL:        git://git.armlinux.org.uk/~rmk/linux-arm.git
  Branch:     for-next
  Target:     ox820-cloudengines-pogoplug-series-3
  CPU arch:   arm
  Lab:        lab-baylibre
  Compiler:   gcc-8
  Config:     oxnas_v6_defconfig
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit ea70bf6e92c5d8cf38c8a077e0eded091c275899
Author: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date:   Fri Nov 8 13:46:50 2019 +0100

    ARM: 8935/1: decompressor: avoid CP15 barrier instructions in v7 cache setup code
    
    Commit e17b1af96b2afc38e684aa2f1033387e2ed10029
    
      "ARM: 8857/1: efi: enable CP15 DMB instructions before cleaning the cache"
    
    added some explicit handling of the CP15BEN bit in the SCTLR system
    register, to ensure that CP15 barrier instructions are enabled, even
    if we enter the decompressor via the EFI stub.
    
    However, as it turns out, there are other ways in which we may end up
    using CP15 barrier instructions without them being enabled. I.e., when
    the decompressor startup code skips the cache_on() initially, we end
    up calling cache_clean_flush() with the caches and MMU off, in which
    case the CP15BEN bit in SCTLR may not be programmed either. And in
    fact, cache_on() itself issues CP15 barrier instructions before actually
    enabling them by programming the new SCTLR value (and issuing an ISB)
    
    Since all these routines are specific to v7, let's clean this up by
    using the ordinary v7 barrier instructions in the v7 specific cache
    handling routines, so that we never rely on the CP15 ones. This also
    avoids the issue where a barrier is required between programming SCTLR
    and using the CP15 barrier instructions, which would result in two
    different kinds of barriers being used in the same function.
    
    Acked-by: Marc Zyngier <maz@kernel.org>
    Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
    Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 95238146b7f2..fe279816b298 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -656,6 +656,21 @@ params:		ldr	r0, =0x10000100		@ params_phys for RPC
 		.align
 #endif
 
+		.macro	v7dsb
+ ARM(		.inst	0xf57ff04f		@ v7+ dsb	)
+ THUMB(		dsb						)
+		.endm
+
+		.macro	v7dmb
+ ARM(		.inst	0xf57ff05f		@ v7+ dmb	)
+ THUMB(		dmb						)
+		.endm
+
+		.macro	v7isb
+ ARM(		.inst	0xf57ff06f		@ v7+ isb	)
+ THUMB(		isb						)
+		.endm
+
 /*
  * Turn on the cache.  We need to setup some page tables so that we
  * can have both the I and D caches on.
@@ -827,7 +842,7 @@ __armv7_mmu_cache_on:
 		movne	r6, #CB_BITS | 0x02	@ !XN
 		blne	__setup_mmu
 		mov	r0, #0
-		mcr	p15, 0, r0, c7, c10, 4	@ drain write buffer
+		v7dsb				@ drain write buffer
 		tst	r11, #0xf		@ VMSA
 		mcrne	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
 #endif
@@ -849,11 +864,11 @@ __armv7_mmu_cache_on:
 		mcrne	p15, 0, r1, c3, c0, 0	@ load domain access control
 		mcrne   p15, 0, r6, c2, c0, 2   @ load ttb control
 #endif
-		mcr	p15, 0, r0, c7, c5, 4	@ ISB
+		v7isb
 		mcr	p15, 0, r0, c1, c0, 0	@ load control register
 		mrc	p15, 0, r0, c1, c0, 0	@ and read it back
 		mov	r0, #0
-		mcr	p15, 0, r0, c7, c5, 4	@ ISB
+		v7isb
 		mov	pc, r12
 
 __fa526_cache_on:
@@ -1154,8 +1169,8 @@ __armv7_mmu_cache_off:
 		mcr	p15, 0, r0, c8, c7, 0	@ invalidate whole TLB
 #endif
 		mcr	p15, 0, r0, c7, c5, 6	@ invalidate BTC
-		mcr	p15, 0, r0, c7, c10, 4	@ DSB
-		mcr	p15, 0, r0, c7, c5, 4	@ ISB
+		v7dsb
+		v7isb
 		mov	pc, r12
 
 /*
@@ -1218,7 +1233,7 @@ __armv7_mmu_cache_flush:
 		mcr	p15, 0, r10, c7, c14, 0	@ clean+invalidate D
 		b	iflush
 hierarchical:
-		mcr	p15, 0, r10, c7, c10, 5	@ DMB
+		v7dmb
 		stmfd	sp!, {r0-r7, r9-r11}
 		mrc	p15, 1, r0, c0, c0, 1	@ read clidr
 		ands	r3, r0, #0x7000000	@ extract loc from clidr
@@ -1232,7 +1247,7 @@ loop1:
 		cmp	r1, #2			@ see what cache we have at this level
 		blt	skip			@ skip if no cache, or just i-cache
 		mcr	p15, 2, r10, c0, c0, 0	@ select current cache level in cssr
-		mcr	p15, 0, r10, c7, c5, 4	@ isb to sych the new cssr&csidr
+		v7isb				@ isb to sych the new cssr&csidr
 		mrc	p15, 1, r1, c0, c0, 0	@ read the new csidr
 		and	r2, r1, #7		@ extract the length of the cache lines
 		add	r2, r2, #4		@ add 4 (line length offset)
@@ -1264,10 +1279,10 @@ finished:
 		mov	r10, #0			@ switch back to cache level 0
 		mcr	p15, 2, r10, c0, c0, 0	@ select current cache level in cssr
 iflush:
-		mcr	p15, 0, r10, c7, c10, 4	@ DSB
+		v7dsb
 		mcr	p15, 0, r10, c7, c5, 0	@ invalidate I+BTB
-		mcr	p15, 0, r10, c7, c10, 4	@ DSB
-		mcr	p15, 0, r10, c7, c5, 4	@ ISB
+		v7dsb
+		v7isb
 		mov	pc, lr
 
 __armv5tej_mmu_cache_flush:
-------------------------------------------------------------------------------


Git bisection log:

-------------------------------------------------------------------------------
git bisect start
# good: [cb73737ea1d27181f5c4bfb1288e97f3e8a4abc7] ARM: 8928/1: ARM_ERRATA_775420: Spelling s/date/data/
git bisect good cb73737ea1d27181f5c4bfb1288e97f3e8a4abc7
# bad: [b6c3c42cfda04b0119a0ac46c2a06006f38522d7] ARM: 8938/1: kernel: initialize broadcast hrtimer based clock event device
git bisect bad b6c3c42cfda04b0119a0ac46c2a06006f38522d7
# good: [052e76a31b4a64d7678e270d498e1bc36c342f88] ARM: 8931/1: Add clock_getres entry point
git bisect good 052e76a31b4a64d7678e270d498e1bc36c342f88
# good: [44700c1ea9afeb9c5093dba7794117fda7c5c955] ARM: 8934/1: Revert "efi: enable CP15 DMB instructions before cleaning the cache"
git bisect good 44700c1ea9afeb9c5093dba7794117fda7c5c955
# bad: [7f586a0a683ec37ac25bee24381e24c66dfe32b8] ARM: 8937/1: spectre-v2: remove Brahma-B53 from hardening
git bisect bad 7f586a0a683ec37ac25bee24381e24c66dfe32b8
# bad: [ea70bf6e92c5d8cf38c8a077e0eded091c275899] ARM: 8935/1: decompressor: avoid CP15 barrier instructions in v7 cache setup code
git bisect bad ea70bf6e92c5d8cf38c8a077e0eded091c275899
# first bad commit: [ea70bf6e92c5d8cf38c8a077e0eded091c275899] ARM: 8935/1: decompressor: avoid CP15 barrier instructions in v7 cache setup code
-------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
