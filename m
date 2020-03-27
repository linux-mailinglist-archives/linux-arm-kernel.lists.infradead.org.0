Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE371955D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Oy7VtZ52DcIv85Zol/iPkHxPWi4y58zqa2ggfFE6J+4=; b=ieYOuTV0LwsoXXa4FNGOobTm5R
	lTHiS/UaZwZ8WwhzOfNej8+caxyx+ch+M7UnWjGVhJq52V+91+Jcx/gRScLApFSHJ15Gcfdf9VMde
	TW0BFAFNvJ0xPH/gxaMC4shX5QuPRF80nYIbO56AYRmxGmMGfv6/0ty0Dz1PmN/FhEyykOBc16oVJ
	qZe74wqHxbV3my0M64TGuF0z0Ms2p/PqXeLiGKhTE63KzqMaof4JVs8v3B185wwRobwzgODoYRPFT
	7QlKqYqIlg0qNXMGmkyIUY/8e5uJCIYyNtJjQoCu+A643Sinl1Qla2KI9Kn/Zq6uOy9N3acNwWt67
	w3pKC7KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmiv-0008I6-9S; Fri, 27 Mar 2020 11:00:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmi1-0006XO-3c
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 10:59:30 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F08C2074F;
 Fri, 27 Mar 2020 10:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585306768;
 bh=JkfI/Yz/aTq4fkf6UNHJYhxxoI5M+vw7HbOburdO3DU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uVwIzVcxUN5ZA7n5X82mv+eWvPfx4GjnutX1aaKybnhCdtWVj7bfq7Ep1NxwVOeKg
 c00FK1h+ESwMH/b343vJxcQ9/pOVV7wazOuwRhU83Zw6NA9wBl2O3os8CgDpFpTdsw
 zgsXtwxoGxHLjAeoejKntj050uuxisxIKgP+egeE=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] ARM: decompressor: defer loading of the contents of the
 LC0 structure
Date: Fri, 27 Mar 2020 11:59:04 +0100
Message-Id: <20200327105906.2665-4-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327105906.2665-1-ardb@kernel.org>
References: <20200327105906.2665-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_035929_205255_95FF723D 
X-CRM114-Status: GOOD (  12.44  )
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

The remaining contents of LC0 are only used after the point in the
decompressor startup code where we enter via 'wont_overwrite'. So
move the loading of the LC0 structure after it. This will allow us
to jump to wont_overwrite directly from the EFI stub, and execute
the decompressor in place at the offset it was loaded by the UEFI
firmware.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index a6cf2f8115e5..35d4db00eaf9 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -347,10 +347,6 @@ restart:	adr	r0, LC1
 		add	sp, r1, r0
 		add	r6, r6, r0
 
-		adr	r0, LC0
-		ldmia	r0, {r1, r2, r3, r11, r12}
-		sub	r0, r0, r1		@ calculate the delta offset
-
 		get_inflated_image_size	r9, r10, lr
 
 #ifndef CONFIG_ZBOOT_ROM
@@ -368,9 +364,6 @@ restart:	adr	r0, LC1
 		mov	r5, #0			@ init dtb size to 0
 #ifdef CONFIG_ARM_APPENDED_DTB
 /*
- *   r0  = delta
- *   r2  = BSS start
- *   r3  = BSS end
  *   r4  = final kernel address (possibly with LSB set)
  *   r5  = appended dtb size (still unknown)
  *   r6  = _edata
@@ -378,8 +371,6 @@ restart:	adr	r0, LC1
  *   r8  = atags/device tree pointer
  *   r9  = size of decompressed image
  *   r10 = end of this image, including  bss/stack/malloc space if non XIP
- *   r11 = GOT start
- *   r12 = GOT end
  *   sp  = stack pointer
  *
  * if there are device trees (dtb) appended to zImage, advance r10 so that the
@@ -427,7 +418,6 @@ restart:	adr	r0, LC1
 		/* temporarily relocate the stack past the DTB work space */
 		add	sp, sp, r5
 
-		stmfd	sp!, {r0-r3, ip, lr}
 		mov	r0, r8
 		mov	r1, r6
 		mov	r2, r5
@@ -446,7 +436,6 @@ restart:	adr	r0, LC1
 		mov	r2, r5
 		bleq	atags_to_fdt
 
-		ldmfd	sp!, {r0-r3, ip, lr}
 		sub	sp, sp, r5
 #endif
 
@@ -583,6 +572,10 @@ dtb_check_done:
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
