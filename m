Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1051D9C93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0PsT2BbPMJpHw0aaMFLXTlabGj9VIEwcAaDVp60JKF4=; b=GIgqgpcn6nv83KgK2BiFY1dsu0
	DmliM6BIoAJ5g7ZUlH33Fg2oSVUkBxcft44Y/ISqBCWbUGLjvPpbM7WBj3DZhEjBPSx4z4mkmr3J+
	H5jIZdG5N+5k1qoenbbNI2vOYRd1aKtFTm5zoqO/79bf9EHdSAcxx45uLvIkd4JF8CiDZ/8RhhoIp
	uipeSX17QXYPD1Y3bL+1YiObGpLRbQSiMKP9NzU9UaRSf0t6wkROYUff7HIwXvadoGeyfM3rdg9Uq
	dAa1WXkp5aRGCsMy00Dr3+wVLNgIFPIzvGR1WnFMZm3GHsEcpSc8g375jvco/f0wHqP/b3QX6tcLU
	sNnbsoDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb55n-0004ST-D6; Tue, 19 May 2020 16:27:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb557-000440-4T
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:27:06 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D06A20826;
 Tue, 19 May 2020 16:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905624;
 bh=Rnr1nZVVeFJ8Ie+KrJMA9hzs3cpYXGVP9cLvCfNZ5RE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BaIcUPJO0UwNNr+BifsMlE6U9axBV/4+5mSQRLZxitMW5BasAfLi6BMOcFvXiyeZE
 lU5+XmKS1kf/lUqb98vJFj17XHoTZi+oxWeqeu6Pwy5vgCQefBJxsIJxCaMCYqdHjx
 RcwN7Atuv317jS60pgcG16sHDFKsmKEN3Aw/uejU=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/5] ARM: decompressor: split off _edata and stack base
 into separate object
Date: Tue, 19 May 2020 18:26:42 +0200
Message-Id: <20200519162645.31065-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200519162645.31065-1-ardb@kernel.org>
References: <20200519162645.31065-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_092705_228234_F25CB644 
X-CRM114-Status: GOOD (  11.47  )
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

In preparation of moving the handling of the LC0 object to a later stage
in the decompressor startup code, move out _edata and the initial value
of the stack pointer, which are needed earlier than the remaining
contents of LC0.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
---
 arch/arm/boot/compressed/head.S | 23 ++++++++++----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 42b8d67beab6..5d712e2c0001 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -293,22 +293,20 @@ not_angel:
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
@@ -660,12 +658,15 @@ not_relocated:	mov	r0, #0
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
