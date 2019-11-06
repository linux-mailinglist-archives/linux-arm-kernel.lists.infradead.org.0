Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0650BF145F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:50:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HziKVi/gDqWGStL3VspsbR5dHAKGtiw0ASVe5HE2Ysc=; b=IMyPPBa8HmPCxxD7iXzwHheppQ
	RDWC/n770FrrqSzNTUNWSdFIGk39yR0hyjeHOmomIYxI7wgXox5qUxc+nhbak7KQgs7X6hDyuuZMn
	9CU8TVKr5CtLS7ea0e7GhbmxM7eHJGF0lN2OQ34ZD+OcQUWyCoA8N5NbxLm+H9DELyxdfQBA2Mnzw
	AMiHKe6HGrH5rSwicNHSrMuf32sO2m5O5qBYx28Bic2CPiVQ+EjqIJx6GzvNoM3oLgjimDQyHTXjU
	JljTcUTPLPvoC+2Jw4G6yyEUNGgKcOdH5wkpLK0n0tMCuYqp6KRkQ2JoEWtaq5oZGgeD500kOEZpv
	38RSQQ0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIte-0004fY-Vd; Wed, 06 Nov 2019 10:50:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSItI-0004TU-Rk
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:50:22 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DFA221848;
 Wed,  6 Nov 2019 10:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573037420;
 bh=2Ud6E61gmFSpjdcQqLY79p0ZM6SvCo8yhcRT5z4+27I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Jak3jK3m0SdEUEoTbvqCtL7yvNb35DT3BaFQWZyD7jK0REn/6yW0lNuYgU7+dvpn/
 KoXjlIsb1PNJYy7Em2belK/7Zuykb01CNQSamsPpPwZRMVehnR3vuMJCZMgtiLsXD3
 JAayT99GzTdus/d3n0XZtWQn5eiZQmqfavlMig1A=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH resend 1/2] ARM/decompressor: avoid CP15 barrier instructions
 in v7 cache setup code
Date: Wed,  6 Nov 2019 11:49:17 +0100
Message-Id: <20191106104918.26397-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106104918.26397-1-ardb@kernel.org>
References: <20191106104918.26397-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_025020_964453_CD1804C8 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: maz@kernel.org, rmk+kernel@armlinux.org.uk, linus.walleij@linaro.org,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit e17b1af96b2afc38e684aa2f1033387e2ed10029

  "ARM: 8857/1: efi: enable CP15 DMB instructions before cleaning the cache"

added some explicit handling of the CP15BEN bit in the SCTLR system
register, to ensure that CP15 barrier instructions are enabled, even
if we enter the decompressor via the EFI stub.

However, as it turns out, there are other ways in which we may end up
using CP15 barrier instructions without them being enabled. I.e., if
the decompressor startup code skips the cache_on() call initially, we
end up calling cache_clean_flush() with the caches and MMU off, in which
case the CP15BEN bit in SCTLR may not be programmed either. And in
fact, cache_on() itself issues CP15 barrier instructions before actually
enabling them by programming the new SCTLR value (and issuing an ISB)

Since all these routines are specific to v7, let's clean this up by
using the ordinary v7 barrier instructions in the v7 specific cache
handling routines, so that we never rely on the CP15 ones. This also
avoids the issue where a barrier is required between programming SCTLR
and using the CP15 barrier instructions, which would result in two
different kinds of barriers being used in the same function.

Cc: <stable@vger.kernel.org> # v4.4+
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 35 ++++++++++++++------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 93dffed0ac6e..ec14687aea3c 100644
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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
