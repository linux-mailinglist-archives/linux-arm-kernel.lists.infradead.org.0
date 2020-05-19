Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2891D9C94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nzVaBOBSGKWg0RgEjEpU29zgtXSecFqWghJbPl3T5fs=; b=nMyXXsxpE68ZJaHx/U77cF8eXw
	vyDl7/dnTz+T3hCm5DUUPBfNrEYGtZWeAzijalnPD1kPA2L8QOWlJuAQHJBPdsaP0blsim9N1JxAm
	AGLQSGT75mxgYMLfpTZTmv1U8YHR/1Pxy1Do2vKnjT4/tW52PwPT35jHRiqkmu2RJLYwK9d/nMz+Q
	g4P0tWWcsWdkn/PHULKhKeJAn5O4u9UnqccKnpZucztTzHH0Wvs6lDAjNxOeXV9ev/M/3Zdmzff/t
	0oEBLPkhzs+RWjBn9fqlNFljnnZ7/BoFMTNvVQp0MkrN/+rTKRR/yzPZudnvDVoMEl8qNsrnctBCO
	ax6PaYfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb566-0004g8-JP; Tue, 19 May 2020 16:28:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb558-00045l-Sh
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:27:08 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C0249207FB;
 Tue, 19 May 2020 16:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905626;
 bh=C7HgoJDn2kYqnmr2QmhsUs8JI2aan9kSJKl1W84BSOA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1oBt2noI2iW40P3wwK0l9PNHZKrkxe+NIZa8eCEdhjgy0nFm8fNmlz3i1YWqaoh3z
 momG0znFpyDre4CAVNy8I1vwWNBluT/ptuf9gKIaU5KZnmtx1M9muJ1T3wc4bgmdsm
 oeo3et6vAyCfNgS+qQKm5jyJ1o4t4Cmt8PjWdZ5g=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 3/5] ARM: decompressor: defer loading of the contents of
 the LC0 structure
Date: Tue, 19 May 2020 18:26:43 +0200
Message-Id: <20200519162645.31065-4-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200519162645.31065-1-ardb@kernel.org>
References: <20200519162645.31065-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_092706_969215_14EC143A 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Pitre <nico@fluxnic.net>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>
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
index 5d712e2c0001..ce442ec5028a 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -299,10 +299,6 @@ restart:	adr	r0, LC1
 		add	sp, sp, r0
 		add	r6, r6, r0
 
-		adr	r0, LC0
-		ldmia	r0, {r1, r2, r3, r11, r12}
-		sub	r0, r0, r1		@ calculate the delta offset
-
 		get_inflated_image_size	r9, r10, lr
 
 #ifndef CONFIG_ZBOOT_ROM
@@ -320,9 +316,6 @@ restart:	adr	r0, LC1
 		mov	r5, #0			@ init dtb size to 0
 #ifdef CONFIG_ARM_APPENDED_DTB
 /*
- *   r0  = delta
- *   r2  = BSS start
- *   r3  = BSS end
  *   r4  = final kernel address (possibly with LSB set)
  *   r5  = appended dtb size (still unknown)
  *   r6  = _edata
@@ -330,8 +323,6 @@ restart:	adr	r0, LC1
  *   r8  = atags/device tree pointer
  *   r9  = size of decompressed image
  *   r10 = end of this image, including  bss/stack/malloc space if non XIP
- *   r11 = GOT start
- *   r12 = GOT end
  *   sp  = stack pointer
  *
  * if there are device trees (dtb) appended to zImage, advance r10 so that the
@@ -379,7 +370,6 @@ restart:	adr	r0, LC1
 		/* temporarily relocate the stack past the DTB work space */
 		add	sp, sp, r5
 
-		stmfd	sp!, {r0-r3, ip, lr}
 		mov	r0, r8
 		mov	r1, r6
 		mov	r2, r5
@@ -398,7 +388,6 @@ restart:	adr	r0, LC1
 		mov	r2, r5
 		bleq	atags_to_fdt
 
-		ldmfd	sp!, {r0-r3, ip, lr}
 		sub	sp, sp, r5
 #endif
 
@@ -535,6 +524,10 @@ dtb_check_done:
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
