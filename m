Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C541C6B80
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TVdh+DwMGTR7LfmBSChjdgrBLXqmr2VCdg2HcRbxoQc=; b=N8bhQ3yhtLe37RUdjKveLmSeJw
	qHbVHG+sWxP+tkn01gtVSlFVIxOOj9Lao4e6UwGkRUAhnlRjB+G+fZdRVuuUtaYGH9A+Sz0MGB34l
	cbWpA7cwzLyA0T2tJkAQ/J+FBZ2zwwYWyM+iUC070f9OKruKk6V6C1GeQNy97Se6DO61mdQE9c0Uw
	+9Aj8pZx/bGuuYGiF3Jph8y2U3ZreC2w1KhWxiUd9ts9Qhs8bXP1M9h0Ocw/l0RUQRJoSTFzLT6PM
	NjCV4JqAj3/Fut1CZJQvbMy4qP9NA4naFP+7bimaAOjDiGcPKMhjEDpLRc3dIqyZPdOwKvCf5Btt/
	IlLngEWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFJO-0004NX-1e; Wed, 06 May 2020 08:21:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFHX-0000n3-MR
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:20:06 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 296682082E;
 Wed,  6 May 2020 08:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588753195;
 bh=jMKvMvx/VZsgPraeKZL5gLbLDRd1V7waMyF7WN//z/4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ee69Wl73rUNQwCerRlx6AVptbNrVfSlow/9UFoITrM2kDwIHVazAoLwqK0F5nGWS6
 AqLbgGdrPxbR8frFnezAVLB23TvXDGNhLxm2VnXWAbTAyoRNAUDkLfOjsLf2dW6u0g
 5a1lFjOZuk6RLqS5RSlSWANt/Ok3jbFED6ZvwLZM=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v3 2/5] ARM: decompressor: split off _edata and stack base
 into separate object
Date: Wed,  6 May 2020 10:19:36 +0200
Message-Id: <20200506081939.8986-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506081939.8986-1-ardb@kernel.org>
References: <20200506081939.8986-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_011955_811116_477DEE93 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Pitre <nico@fluxnic.net>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation of moving the handling of the LC0 object to a later stage
in the decompressor startup code, move out _edata and the initial value
of the stack pointer, which are now used in two places, and are needed
earlier than the remaining contents of LC0.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
---
 arch/arm/boot/compressed/head.S | 35 ++++++++++----------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index bb674febf640..449457d00c4e 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -259,19 +259,17 @@ not_angel:
 		 * Find the start of physical memory.
 		 * Try the DTB first, if available.
 		 */
-		adr	r0, LC0
-		ldr	r1, [r0]	@ get absolute LC0
-		ldr	sp, [r0, #24]	@ get stack location
-		sub	r1, r0, r1	@ compute relocation offset
-		add	sp, sp, r1	@ apply relocation
+		adr	r0, LC1
+		ldr	sp, [r0]	@ get stack location
+		add	sp, sp, r0	@ apply relocation
 
 #ifdef CONFIG_ARM_APPENDED_DTB
 		/*
 		 * Look for an appended DTB. If found, use it and
 		 * move stack away from it.
 		 */
-		ldr	r6, [r0, #12]	@ get &_edata
-		add	r6, r6, r1	@ relocate it
+		ldr	r6, [r0, #4]	@ get &_edata
+		add	r6, r6, r0	@ relocate it
 		ldmia	r6, {r0, r5}	@ get DTB signature and size
 #ifndef __ARMEB__
 		ldr	r1, =0xedfe0dd0	@ sig is 0xd00dfeed big endian
@@ -345,22 +343,20 @@ not_angel:
 		orrcc	r4, r4, #1		@ remember we skipped cache_on
 		blcs	cache_on
 
-restart:	adr	r0, LC0
-		ldmia	r0, {r1, r2, r3, r6, r11, r12}
-		ldr	sp, [r0, #24]
+restart:	adr	r0, LC1
+		ldr	sp, [r0]
+		ldr	r6, [r0, #4]
+		add	sp, sp, r0
+		add	r6, r6, r0
 
-		/*
-		 * We might be running at a different address.  We need
-		 * to fix up various pointers.
-		 */
+		adr	r0, LC0
+		ldmia	r0, {r1, r2, r3, r11, r12}
 		sub	r0, r0, r1		@ calculate the delta offset
-		add	r6, r6, r0		@ _edata
 
 		get_inflated_image_size	r9, r10, lr
 
 #ifndef CONFIG_ZBOOT_ROM
 		/* malloc space is above the relocated stack (64k max) */
-		add	sp, sp, r0
 		add	r10, sp, #0x10000
 #else
 		/*
@@ -712,12 +708,15 @@ not_relocated:	mov	r0, #0
 LC0:		.word	LC0			@ r1
 		.word	__bss_start		@ r2
 		.word	_end			@ r3
-		.word	_edata			@ r6
 		.word	_got_start		@ r11
 		.word	_got_end		@ ip
-		.word	.L_user_stack_end	@ sp
 		.size	LC0, . - LC0
 
+		.type	LC1, #object
+LC1:		.word	.L_user_stack_end - LC1	@ sp
+		.word	_edata - LC1		@ r6
+		.size	LC1, . - LC1
+
 .Lheadroom:
 		.word	_end - restart + 16384 + 1024*1024
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
