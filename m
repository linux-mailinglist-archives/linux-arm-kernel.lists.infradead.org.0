Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864CA1C6B84
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+rcf34kjGS3nZfE9KGxGz1Rgk0n7yr6hQbGzc3rVO14=; b=NfwaGO+pocy4yv2vKv5dEy/yx2
	e4oWEbPwgWOiqxMxuK0MFx6A4r6TBarAySVi+tAY2/B1vIf+CQE9pVq9U5itEDoQ8SeMoUs40Nz3Z
	KHhYK/oJnTixM+JKAs0+YkL1MvodjsCC/iEefQqjdwWjh4UP3FnihPugt6+9zUph1gmDsA3FCspza
	EA5lR38Oh+cYjcUUamFJ+VrjWDm0+V9bDwkPTA7Obp1eG24D24HNkjbInPLBBr5U3VWHlnZeSkaYk
	D2mrlGpyeQRcEsHt6MJC4V0FTQ07JAjyVQRirmHmRgDsHAKwWmfwJfAPJN23jsntN3LbDwsvaiOMK
	f77P/Ggw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFJm-0004g3-ND; Wed, 06 May 2020 08:22:14 +0000
Received: from casper.infradead.org ([90.155.50.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFHj-0001Rp-0l
 for linux-arm-kernel@bombadil.infradead.org; Wed, 06 May 2020 08:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hHBJlc+47kmW8UX5xEmuMnJma1UwMfKsnwoVMRLi65s=; b=VEjFxMUonorQaF/iZ+Io76kcTI
 4eHIMnFxBPOyX6iNbfN2H9QonDpNYsw6evPFKl+SmSPmG9ehiHddkn3qmgNjgpfshtvxfDUh1ln1Y
 fvwG5YpZsWb7Ny3WbED0YMpw50SlH0jZUkTu+9Eaxqu5zu7tTQ4x5LkD4iXeLuARYAPoKCLy4CJST
 5y82UHKbl7LCWwkG2GyQgddHPAwbiHeJJSi60ZfWM80Gb5/C+Je5eTdX9e9zzi7NHh4O5SpT5lG+f
 Fzu/eapeBKkkb2BqJiSreW8WBxcT7tS6OH/BrtBxQCQyLRHnXgeNpCujqBpUBAEmNXhZJg6GMTDdR
 RvRk5irA==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFHd-0000pR-P1
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:20:04 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E44E2078C;
 Wed,  6 May 2020 08:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588753197;
 bh=JeOeFAC0OUhPxzEEN7uwegeph8yyzzpb03UtoRsykCo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Hc4mNzVqLqDZ1PVKo9AHcQi0CRDrzOSc45JR8HT6wfkxj9tyMRFiCl7Il/FLuVD1S
 K1FClEcJtjMVw2wltIeZRKIfUwLWIayyRd6K6zF9fJ8iRy2yLAj6cQYk3aAm9HDxcG
 fCoVc31vo0cwczoDCkmK+ovkT36iplmAtMQNtQmg=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v3 3/5] ARM: decompressor: defer loading of the contents of
 the LC0 structure
Date: Wed,  6 May 2020 10:19:37 +0200
Message-Id: <20200506081939.8986-4-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506081939.8986-1-ardb@kernel.org>
References: <20200506081939.8986-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_092002_190722_A0DD25E0 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -7.1 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The remaining contents of LC0 are only used after the point in the
decompressor startup code where we enter via 'wont_overwrite'. So
move the loading of the LC0 structure after it. This will allow us
to jump to wont_overwrite directly from the EFI stub, and execute
the decompressor in place at the offset it was loaded by the UEFI
firmware.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
---
 arch/arm/boot/compressed/head.S | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 449457d00c4e..9dea394b286b 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -349,10 +349,6 @@ restart:	adr	r0, LC1
 		add	sp, sp, r0
 		add	r6, r6, r0
 
-		adr	r0, LC0
-		ldmia	r0, {r1, r2, r3, r11, r12}
-		sub	r0, r0, r1		@ calculate the delta offset
-
 		get_inflated_image_size	r9, r10, lr
 
 #ifndef CONFIG_ZBOOT_ROM
@@ -370,9 +366,6 @@ restart:	adr	r0, LC1
 		mov	r5, #0			@ init dtb size to 0
 #ifdef CONFIG_ARM_APPENDED_DTB
 /*
- *   r0  = delta
- *   r2  = BSS start
- *   r3  = BSS end
  *   r4  = final kernel address (possibly with LSB set)
  *   r5  = appended dtb size (still unknown)
  *   r6  = _edata
@@ -380,8 +373,6 @@ restart:	adr	r0, LC1
  *   r8  = atags/device tree pointer
  *   r9  = size of decompressed image
  *   r10 = end of this image, including  bss/stack/malloc space if non XIP
- *   r11 = GOT start
- *   r12 = GOT end
  *   sp  = stack pointer
  *
  * if there are device trees (dtb) appended to zImage, advance r10 so that the
@@ -429,7 +420,6 @@ restart:	adr	r0, LC1
 		/* temporarily relocate the stack past the DTB work space */
 		add	sp, sp, r5
 
-		stmfd	sp!, {r0-r3, ip, lr}
 		mov	r0, r8
 		mov	r1, r6
 		mov	r2, r5
@@ -448,7 +438,6 @@ restart:	adr	r0, LC1
 		mov	r2, r5
 		bleq	atags_to_fdt
 
-		ldmfd	sp!, {r0-r3, ip, lr}
 		sub	sp, sp, r5
 #endif
 
@@ -585,6 +574,10 @@ dtb_check_done:
 		mov	pc, r0
 
 wont_overwrite:
+		adr	r0, LC0
+		ldmia	r0, {r1, r2, r3, r11, r12}
+		sub	r0, r0, r1		@ calculate the delta offset
+
 /*
  * If delta is zero, we are running at the address we were linked at.
  *   r0  = delta
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
