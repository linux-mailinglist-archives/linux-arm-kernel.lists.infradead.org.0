Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0FA170510
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:59:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4+AovQMWM7KqEfCb4KT/U2xDNTMSYWrHD+kIeasQy4g=; b=i/C4luWaP2xTxGgn6PH48oFuN0
	VL/i8WYHR1yvvczOMyHJlNEZLVJurRiXrEDOTUgD1WCffURiS4fIJ2YHNPTxn0hVgHGmNYKJki5aY
	Pu1dWAEuZAWyzLlLCWQTlN0pi//4AFYjaZZP1vUQw6KkhN4GHPYsWfPRnPPW2JJ1Oo483X8EDAZYy
	uzS1ofMApVNGsl4k81SnE0vQXcbKb4aOO8LEN7s89hk+4V+a8eJA5GTpxRqhxrPoPOi/nnngTdPE8
	2LedsQngXU10j4dOckwEM7Hqg2J1DlmDrHADQ3F+YzkTYuAQ655S6hkKePO3aceHlkr72sot44h5Z
	DOpRpbwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j701a-0003ic-9P; Wed, 26 Feb 2020 16:59:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j700Q-0002t0-Dy
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:57:55 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C0FE624680;
 Wed, 26 Feb 2020 16:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582736273;
 bh=uW8+rKC/o5RdVSFlc9y5MEt2hTA2U14dz/iwEPyniSM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hD6JzefLOlMTlLYF5M4lirlIHwIXiuom99F8S+nNaf3MIgKBbf6fWUScZHobZ3OYv
 ltno6Y0Bv+vIp5Eb40vF2ibF1OKVnx31ZeJPYapN3gwQmK0p0LxG+lXrRkrccXjIie
 8oAwtwyxE1CozpsNYY6soVw3mDlSRQ9hCdDsKXUY=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 3/5] ARM: decompressor: factor out routine to obtain the
 inflated image size
Date: Wed, 26 Feb 2020 17:57:36 +0100
Message-Id: <20200226165738.11201-4-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226165738.11201-1-ardb@kernel.org>
References: <20200226165738.11201-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_085754_590455_67E1447E 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi@vger.kernel.org, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before adding another reference to the inflated image size, factor
out the slightly complicated way of loading the unaligned little-endian
constant from the end of the compressed data.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 43 ++++++++++++--------
 1 file changed, 26 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 8487221bedb0..d45952aae2b5 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -151,6 +151,25 @@
 .L_\@:
 		.endm
 
+		/*
+		 * The kernel build system appends the size of the
+		 * decompressed kernel at the end of the compressed data
+		 * in little-endian form.
+		 */
+		.macro	get_inflated_image_size, res:req, tmp1:req, tmp2:req
+		adr	\res, .Linflated_image_size_offset
+		ldr	\tmp1, [\res]
+		add	\tmp1, \tmp1, \res	@ address of inflated image size
+
+		ldrb	\res, [\tmp1]		@ get_unaligned_le32
+		ldrb	\tmp2, [\tmp1, #1]
+		orr	\res, \res, \tmp2, lsl #8
+		ldrb	\tmp2, [\tmp1, #2]
+		ldrb	\tmp1, [\tmp1, #3]
+		orr	\res, \res, \tmp2, lsl #16
+		orr	\res, \res, \tmp1, lsl #24
+		.endm
+
 		.section ".start", "ax"
 /*
  * sort out different calling conventions
@@ -268,15 +287,15 @@ not_angel:
 		 */
 		mov	r0, pc
 		cmp	r0, r4
-		ldrcc	r0, LC0+32
+		ldrcc	r0, LC0+28
 		addcc	r0, r0, pc
 		cmpcc	r4, r0
 		orrcc	r4, r4, #1		@ remember we skipped cache_on
 		blcs	cache_on
 
 restart:	adr	r0, LC0
-		ldmia	r0, {r1, r2, r3, r6, r10, r11, r12}
-		ldr	sp, [r0, #28]
+		ldmia	r0, {r1, r2, r3, r6, r11, r12}
+		ldr	sp, [r0, #24]
 
 		/*
 		 * We might be running at a different address.  We need
@@ -284,20 +303,8 @@ restart:	adr	r0, LC0
 		 */
 		sub	r0, r0, r1		@ calculate the delta offset
 		add	r6, r6, r0		@ _edata
-		add	r10, r10, r0		@ inflated kernel size location
 
-		/*
-		 * The kernel build system appends the size of the
-		 * decompressed kernel at the end of the compressed data
-		 * in little-endian form.
-		 */
-		ldrb	r9, [r10, #0]
-		ldrb	lr, [r10, #1]
-		orr	r9, r9, lr, lsl #8
-		ldrb	lr, [r10, #2]
-		ldrb	r10, [r10, #3]
-		orr	r9, r9, lr, lsl #16
-		orr	r9, r9, r10, lsl #24
+		get_inflated_image_size	r9, r10, lr
 
 #ifndef CONFIG_ZBOOT_ROM
 		/* malloc space is above the relocated stack (64k max) */
@@ -652,13 +659,15 @@ LC0:		.word	LC0			@ r1
 		.word	__bss_start		@ r2
 		.word	_end			@ r3
 		.word	_edata			@ r6
-		.word	input_data_end - 4	@ r10 (inflated size location)
 		.word	_got_start		@ r11
 		.word	_got_end		@ ip
 		.word	.L_user_stack_end	@ sp
 		.word	_end - restart + 16384 + 1024*1024
 		.size	LC0, . - LC0
 
+.Linflated_image_size_offset:
+		.long	(input_data_end - 4) - .
+
 #ifdef CONFIG_ARCH_RPC
 		.globl	params
 params:		ldr	r0, =0x10000100		@ params_phys for RPC
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
