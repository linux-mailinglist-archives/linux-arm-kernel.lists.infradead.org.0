Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A42A1955D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8jYS7HwZiljbq7nYqa+SEZOtLwmm9ie6uUv/g4pv1ts=; b=Qk/4cM6LMSBh+jv6+pS6Us9b2n
	0hIsygwr1GvZfkjRTTucMoH2+PlvOLZ3/Dh4/7BhLJwWE6z4MyFCdAhzysXBIWTdwcobw86T0oxhy
	bPToWjFxjltOy8Yl5KdK+wQXvODz2UjJAcBHN8OotcwlrpZLBIHwa8FAdaUOuJuvNCsreEYP7WbNa
	phmZpI9OGhUEix4M+Tikb8fbEXWY/4zuAqQDnpguX/ltr/c8xfxJGV+q3zx/bcrLHWaanEci0P7or
	+m3WRxdL/MyPElxpunNbTIFrvTaGarhMPFjOSOJGCz0hbylBkGDrvSWloCSyizp1Lj8Yg70BmjKMu
	Pc2GDxcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmij-0006st-T7; Fri, 27 Mar 2020 11:00:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmhz-0006V4-1i
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 10:59:28 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C79F20717;
 Fri, 27 Mar 2020 10:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585306766;
 bh=GXlaIHulvMaCbD3Jl+Klq6LgV3qJqzTBno2wfve4r7k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y6hsaGV7vAScTk0nP/lauGQpnscgywLAVJ53qCWUHqwxYQ9brF3Va15HffcRjUJOo
 wSFn4QnKtPKMagTBePAOIkjgkWYIKEmQRJ0FABnov/C+wR6aBLhUdc5rjQmL7kN+hj
 13LLe4oyAKsYbqNFczUpZeQ0xaUmCsIrripULcVQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] ARM: decompressor: split off _edata and stack base into
 separate object
Date: Fri, 27 Mar 2020 11:59:03 +0100
Message-Id: <20200327105906.2665-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327105906.2665-1-ardb@kernel.org>
References: <20200327105906.2665-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_035927_122005_0E6C5496 
X-CRM114-Status: GOOD (  11.05  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Pitre <nico@fluxnic.net>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>
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
---
 arch/arm/boot/compressed/head.S | 33 +++++++++-----------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index bb674febf640..a6cf2f8115e5 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -259,19 +259,16 @@ not_angel:
 		 * Find the start of physical memory.
 		 * Try the DTB first, if available.
 		 */
-		adr	r0, LC0
-		ldr	r1, [r0]	@ get absolute LC0
-		ldr	sp, [r0, #24]	@ get stack location
-		sub	r1, r0, r1	@ compute relocation offset
-		add	sp, sp, r1	@ apply relocation
+		adr	r0, LC1
+		ldmia	r0, {r1, r6}
+		add	sp, r1, r0	@ get stack location
+		add	r6, r6, r0	@ get &_edata
 
 #ifdef CONFIG_ARM_APPENDED_DTB
 		/*
 		 * Look for an appended DTB. If found, use it and
 		 * move stack away from it.
 		 */
-		ldr	r6, [r0, #12]	@ get &_edata
-		add	r6, r6, r1	@ relocate it
 		ldmia	r6, {r0, r5}	@ get DTB signature and size
 #ifndef __ARMEB__
 		ldr	r1, =0xedfe0dd0	@ sig is 0xd00dfeed big endian
@@ -345,22 +342,19 @@ not_angel:
 		orrcc	r4, r4, #1		@ remember we skipped cache_on
 		blcs	cache_on
 
-restart:	adr	r0, LC0
-		ldmia	r0, {r1, r2, r3, r6, r11, r12}
-		ldr	sp, [r0, #24]
+restart:	adr	r0, LC1
+		ldmia	r0, {r1, r6}
+		add	sp, r1, r0
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
@@ -712,12 +706,15 @@ not_relocated:	mov	r0, #0
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
