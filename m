Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A631FEC4C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 13:33:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mw0QOGxCxpl2K4izs8LAUjAMTOFM+xNST4qJa3AqnKk=; b=rk8aUz/GWI2Hep
	DWc73QRdVU7VVvV0D0FALrqA3SVlD7vR6+aVn6Hvckpvny9nYf3kX/zJbWFFaG2QEIP05X+ya+muU
	NPZChtWff+16xqR8HoknHxPlwMJtEDdvGl/GJFl1h9Vin635qWnirD4+JuYf31mXh1GQL2il+6XJQ
	ywYY7kSBPBFxUjpC+g4W4EMjkwGNZ+opwWUo7IxVwjfIj22n7eLhc/qPRPNgP67B+Tj+jyjqop63v
	T0JlObvJuzX3l/FzDbArosAVPH4cJ0iaixEfDgDDScOE5sDEfnMekzDORBbIra9Yr0ANzKITBgH92
	2ytchc20mmHU5uyss/oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVxGM-0001jM-C7; Sat, 16 Nov 2019 12:33:14 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVxGE-0001hv-O2
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 12:33:08 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iVxFz-0002Zo-Ma; Sat, 16 Nov 2019 13:32:51 +0100
Date: Sat, 16 Nov 2019 12:32:44 +0000
From: Marc Zyngier <maz@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: rmk/for-next bisection: boot on
 ox820-cloudengines-pogoplug-series-3
Message-ID: <20191116123244.7be79023@why>
In-Reply-To: <CAKv+Gu_r2Cb3d3OXaOdYy+4V9noL6exJoK6pHevUm2WfPzsr1g@mail.gmail.com>
References: <5dcf8f19.1c69fb81.c02f3.91f2@mx.google.com>
 <CAKv+Gu_r2Cb3d3OXaOdYy+4V9noL6exJoK6pHevUm2WfPzsr1g@mail.gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: ard.biesheuvel@linaro.org, bot@kernelci.org, arnd@arndb.de,
 ardb@kernel.org, tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, rmk+kernel@armlinux.org.uk, broonie@kernel.org,
 matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, tglx@linutronix.de,
 stefan@agner.ch, nico@fluxnic.net, ndesaulniers@google.com,
 linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_043306_931130_2401CD00 
X-CRM114-Status: GOOD (  23.08  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: "kernelci.org bot" <bot@kernelci.org>, Arnd Bergmann <arnd@arndb.de>,
 tomeu.vizoso@collabora.com, Nicolas Pitre <nico@fluxnic.net>,
 Guillaume Tucker <guillaume.tucker@collabora.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Matt Hart <matthew.hart@linaro.org>, mgalka@collabora.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 16 Nov 2019 10:26:27 +0000
Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:

> (+ Arnd)
> 
> On Sat, 16 Nov 2019 at 05:54, kernelci.org bot <bot@kernelci.org> wrote:
> >
> > * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> > * This automated bisection report was sent to you on the basis  *
> > * that you may be involved with the breaking commit it has      *
> > * found.  No manual investigation has been done to verify it,   *
> > * and the root cause of the problem may be somewhere else.      *
> > *                                                               *
> > * If you do send a fix, please include this trailer:            *
> > *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
> > *                                                               *
> > * Hope this helps!                                              *
> > * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> >
> > rmk/for-next bisection: boot on ox820-cloudengines-pogoplug-series-3
> >
> > Summary:
> >   Start:      b6c3c42cfda0 ARM: 8938/1: kernel: initialize broadcast hrtimer based clock event device
> >   Details:    https://kernelci.org/boot/id/5dcf3f0359b514dc84cf54c8
> >   Plain log:  https://storage.kernelci.org//rmk/for-next/v5.4-rc5-26-gb6c3c42cfda0/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-cloudengines-pogoplug-series-3.txt
> >   HTML log:   https://storage.kernelci.org//rmk/for-next/v5.4-rc5-26-gb6c3c42cfda0/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-cloudengines-pogoplug-series-3.html
> >   Result:     ea70bf6e92c5 ARM: 8935/1: decompressor: avoid CP15 barrier instructions in v7 cache setup code
> >  
> 
> OK, so this regression is caused by the fact that the 'armv7' cache
> maintenance routines in the decompressor are also used for ARMv6 cores
> if they implement the CPUID extension, which I failed to realise when
> I sent this patch.

Nobody expects the 11MPcore... :-(.

> There are roughly three ways to deal with this:
> 1) add a mask/val match pair for ARM11MPcore and ARM1176 that hardwire
> them to the ARMv6 routines, even though they implement the CPUID
> extension. This would be very easy, but assumes that those two cores
> are the only ones that are affected by this.
> 2) modify the v7 routines to check for the L1Hvd MMFR1 attribute (in
> the flush routine) and for the CP15BEN SCTLR bit (in the on/off
> routines), and jump to the respective v6 variants if the CPU turns out
> not to support the v7 one.
> 3) revert the patch, and just enable the CP15 barriers (and issue a v7
> barrier) in the v7 on() and flush() routines.
> 
> I am leaning towards the latter, since it is the most straightforward,
> even though it mixes v7 and cp15 barriers in the same function, but
> that was mostly a cosmetic concern anyway.

A potential alternative is to check for the presence of architected
barriers in a macro (see the hack below). I've given it a go as a 32bit
guest on an A72 box, both as ARM and Thumb, and nothing caught fire. Of
course, it remains to be seen whether it works on a v6 machine (I don't
think I have any left in my zoo -- please don't send me any), and more
importantly whether we want to carry this kind of horror...

	M.

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index ec14687aea3c..144de4b08547 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -656,19 +656,40 @@ params:		ldr	r0, =0x10000100		@ params_phys for RPC
 		.align
 #endif
 
-		.macro	v7dsb
+		@ Check for architected barrier instructions
+		@ Branch to the tgt label if v7 barriers are
+		@ not available. Corrupts the tmp register
+		@ as well as the flags.
+		.macro	no_v7_barrier, tmp, tgt
+		mrc	p15, 0, \tmp, c0, c2, 4 @ ID_ISAR4
+		tst	\tmp, #0xf << 16
+		beq	\tgt
+		.endm
+
+		@ The following macros will use zreg as a temp
+		@ register, and will zero it after use.
+		.macro	__dsb, zreg
+		no_v7_barrier	\zreg, .L__dsb\@
  ARM(		.inst	0xf57ff04f		@ v7+ dsb	)
  THUMB(		dsb						)
+		mov	\zreg, #0
+.L__dsb\@:	mcreq	p15, 0, \zreg, c7, c10, 4 @ dsb
 		.endm
 
-		.macro	v7dmb
+		.macro	__dmb, zreg
+		no_v7_barrier	\zreg, .L__dmb\@
  ARM(		.inst	0xf57ff05f		@ v7+ dmb	)
  THUMB(		dmb						)
+		mov	\zreg, #0
+.L__dmb\@:	mcreq	p15, 0, \zreg, c7, c10, 5 @ dmb
 		.endm
 
-		.macro	v7isb
+		.macro	__isb, zreg
+		no_v7_barrier	\zreg, .L__isb\@
  ARM(		.inst	0xf57ff06f		@ v7+ isb	)
  THUMB(		isb						)
+		mov	\zreg, #0
+.L__isb\@:	mcreq	p15, 0, \zreg, c7, c5, 4 @ isb
 		.endm
 
 /*
@@ -841,8 +862,7 @@ __armv7_mmu_cache_on:
 		tst	r11, #0xf		@ VMSA
 		movne	r6, #CB_BITS | 0x02	@ !XN
 		blne	__setup_mmu
-		mov	r0, #0
-		v7dsb				@ drain write buffer
+		__dsb	r0			@ drain write buffer
 		tst	r11, #0xf		@ VMSA
 		mcrne	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
 #endif
@@ -864,11 +884,10 @@ __armv7_mmu_cache_on:
 		mcrne	p15, 0, r1, c3, c0, 0	@ load domain access control
 		mcrne   p15, 0, r6, c2, c0, 2   @ load ttb control
 #endif
-		v7isb
+		__isb	lr
 		mcr	p15, 0, r0, c1, c0, 0	@ load control register
 		mrc	p15, 0, r0, c1, c0, 0	@ and read it back
-		mov	r0, #0
-		v7isb
+		__isb	r0
 		mov	pc, r12
 
 __fa526_cache_on:
@@ -1169,8 +1188,8 @@ __armv7_mmu_cache_off:
 		mcr	p15, 0, r0, c8, c7, 0	@ invalidate whole TLB
 #endif
 		mcr	p15, 0, r0, c7, c5, 6	@ invalidate BTC
-		v7dsb
-		v7isb
+		__dsb	r0
+		__isb	r0
 		mov	pc, r12
 
 /*
@@ -1233,7 +1252,7 @@ __armv7_mmu_cache_flush:
 		mcr	p15, 0, r10, c7, c14, 0	@ clean+invalidate D
 		b	iflush
 hierarchical:
-		v7dmb
+		__dmb	r10
 		stmfd	sp!, {r0-r7, r9-r11}
 		mrc	p15, 1, r0, c0, c0, 1	@ read clidr
 		ands	r3, r0, #0x7000000	@ extract loc from clidr
@@ -1247,7 +1266,7 @@ loop1:
 		cmp	r1, #2			@ see what cache we have at this level
 		blt	skip			@ skip if no cache, or just i-cache
 		mcr	p15, 2, r10, c0, c0, 0	@ select current cache level in cssr
-		v7isb				@ isb to sych the new cssr&csidr
+		__isb	r1			@ isb to sych the new cssr&csidr
 		mrc	p15, 1, r1, c0, c0, 0	@ read the new csidr
 		and	r2, r1, #7		@ extract the length of the cache lines
 		add	r2, r2, #4		@ add 4 (line length offset)
@@ -1279,10 +1298,10 @@ finished:
 		mov	r10, #0			@ switch back to cache level 0
 		mcr	p15, 2, r10, c0, c0, 0	@ select current cache level in cssr
 iflush:
-		v7dsb
+		__dsb	r10
 		mcr	p15, 0, r10, c7, c5, 0	@ invalidate I+BTB
-		v7dsb
-		v7isb
+		__dsb	r10
+		__isb	r10
 		mov	pc, lr
 
 __armv5tej_mmu_cache_flush:

-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
