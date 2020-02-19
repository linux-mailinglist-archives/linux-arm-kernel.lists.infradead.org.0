Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34BF1640AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:45:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DchZqysGjJIELGck65eIG8yZ7ZWpAJeg5VPYmdzXb1I=; b=UcgbPfXPGF11SEKyaVy6i2pDxD
	YMOytGz/V3nGkczmSU8LPsApyAIYF3ilWEIdQQ9+XtLk6dKnn7Pd+MvBMfJN4nFkjxajAYSbtKvd4
	RkvgrGn15kQRE40uI9G7uGN0l48/6vHNmUq0Qf7AJTtn8Kny4USWETxOPIEHX9H5tZSjwid+Oo7Ih
	7oH4/4LHCs0szV3xmTtJXzSY2gXg/sW1ZYBhzplDprrAslmoujfPM+Q81CPiBGEuf0Nt9kF3dgh66
	OM3MgVu35Y+39x2ZV/pXfXLNNWgDaC/m7xEZaa9guzoXD2M69yeFDj141ls49hlgpm0ZvWZKKuzpX
	tDObo0Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LuW-0002Zw-83; Wed, 19 Feb 2020 09:44:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Lta-0001xy-Qs
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:43:56 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D066124670;
 Wed, 19 Feb 2020 09:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582105434;
 bh=nzX78Zffh24BLjHSXoPPyq8OpfUkaTb/SZZiYridmWQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oEF4LkMbiUGVWI7t1nvMdu6IMDQU5N/TdAIEqU1oMxxadfawTeMYuJEXiYo2zRX5F
 DeOnZnbgHX1wuJp+oeL2LM5bM0mM+ihlRYmXoUv/gHUsxRngPUvKzJdZzhj7agUpnY
 Ks0gCtl13HxFTRl1bsYJPlj5/mOtTd/g/CYhtKww=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 3/4] ARM: decompressor: prepare cache_clean_flush for doing
 by-VA maintenance
Date: Wed, 19 Feb 2020 10:43:39 +0100
Message-Id: <20200219094340.16597-4-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219094340.16597-1-ardb@kernel.org>
References: <20200219094340.16597-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_014354_914971_AF1D04DD 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Tony Lindgren <tony@atomide.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for turning the decompressor's cache clean/flush
operations into proper by-VA maintenance for v7 cores, pass the
start and end addresses of the regions that need cache maintenance
into cache_clean_flush in registers r0 and r1.

Currently, all implementations of cache_clean_flush ignore these
values, so no functional change is expected as a result of this
patch.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 21 ++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index c11b1b0a3ac6..5060a623e0d7 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -498,6 +498,7 @@ dtb_check_done:
 		bic	r9, r9, #31		@ ... of 32 bytes
 		add	r6, r9, r5
 		add	r9, r9, r10
+		stmdb	sp!, {r9 - r10}		@ preserve target region address
 
 #ifdef DEBUG
 		sub     r10, r6, r5
@@ -521,6 +522,8 @@ dtb_check_done:
 		/* Preserve offset to relocated code. */
 		sub	r6, r9, r6
 
+		ldr	r1, [sp], #4		@ end of target region
+		ldr	r0, [sp], #4		@ start of target region
 #ifndef CONFIG_ZBOOT_ROM
 		/* cache_clean_flush may use the stack, so relocate it */
 		add	sp, sp, r6
@@ -622,6 +625,21 @@ not_relocated:	mov	r0, #0
 		add	r2, sp, #0x10000	@ 64k max
 		mov	r3, r7
 		bl	decompress_kernel
+
+		mov	r0, r4			@ base of inflated image
+		adr	r1, LC0			@ actual LC0
+		ldr	r2, [r1]		@ linktime LC0
+		sub	r2, r1, r2		@ LC0 delta
+		ldr	r1, [r1, #16]		@ link time inflated size offset
+		ldr	r1, [r1, r2]		@ actual inflated size (LE)
+#ifdef __ARMEB__
+		/* convert to big endian */
+		eor	r2, r1, r1, ror #16
+		bic	r2, r2, #0x00ff0000
+		mov	r1, r1, ror #8
+		eor	r1, r1, r2, lsr #8
+#endif
+		add	r1, r1, r0		@ end of inflated image
 		bl	cache_clean_flush
 		bl	cache_off
 
@@ -1173,6 +1191,9 @@ __armv7_mmu_cache_off:
 /*
  * Clean and flush the cache to maintain consistency.
  *
+ * On entry,
+ *  r0 = start address
+ *  r1 = end address (exclusive)
  * On exit,
  *  r1, r2, r3, r9, r10, r11, r12 corrupted
  * This routine must preserve:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
