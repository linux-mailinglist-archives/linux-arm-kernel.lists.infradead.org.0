Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234301D9C90
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i7+Q+Yo/mX0leOFJ0rYy8vFz5pxhcV+dPzye42LFKAA=; b=D0Yuj+pky3NYSPidLbmBhQc9iq
	v7onXXB4hBxDm0/nzxshQ8gfhlRV9Qh4KJfWrQQr45bkMIg/vPnQqbOWf5NsWWsZrK8bVoVALXanQ
	Ix8KBia2eVCGTE7uCwfvCkR5KJnsH1YvuDWc4iFDKS9XEAxkv8SMBPpv/qdk7kCBzdoJ4AumCLaMK
	WEgjR3nHct8TCQ5L6isNA4jT5ufDaKDAMk7xx+KPWiI+CmYjdQqCrsvJ+znJ5kyozVdwjsOuxCSRL
	jEYi0X+FoR4sTvdumVIHzh6GyI/td+smXkEinr6ToWKmAJ8EePKyTG/n38FyK9UAcvTqTqmZE5R2t
	4S5Z9nAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb55X-0004F0-8q; Tue, 19 May 2020 16:27:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb554-000420-G8
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:27:04 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD43020823;
 Tue, 19 May 2020 16:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905622;
 bh=s1wJAwkrmgG1XjwsUm3v1xaTI0ARm6WW9gEhCur/Ryw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Mhf8scZPUYtvuTAvYm0QeYPePZdh7+Qux7I5nVnoKRYC68hXA3BXA0qAJ9dsc1p9r
 9FWz0qdGsTrIN4XttXlX8Ln5odkrizRT2Qrw3dLYhZy5x3dSB1TjRGi2F3wMH4HbX+
 eYqJSh29BI3rsCG/YQiRg9kmaUumjQ3a7f2MiwTU=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/5] ARM: decompressor: move headroom variable out of LC0
Date: Tue, 19 May 2020 18:26:41 +0200
Message-Id: <20200519162645.31065-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200519162645.31065-1-ardb@kernel.org>
References: <20200519162645.31065-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_092702_555460_6774208D 
X-CRM114-Status: GOOD (  11.41  )
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

Before breaking up LC0 into different pieces, move out the variable
that is already place-relative (given that it subtracts 'restart' in
the expression) and so its value does not need to be added to the
runtime address of the LC0 symbol itself.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
---
 arch/arm/boot/compressed/head.S | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index cabdd8f4a248..42b8d67beab6 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -287,7 +287,7 @@ not_angel:
 		 */
 		mov	r0, pc
 		cmp	r0, r4
-		ldrcc	r0, LC0+28
+		ldrcc	r0, .Lheadroom
 		addcc	r0, r0, pc
 		cmpcc	r4, r0
 		orrcc	r4, r4, #1		@ remember we skipped cache_on
@@ -664,9 +664,11 @@ LC0:		.word	LC0			@ r1
 		.word	_got_start		@ r11
 		.word	_got_end		@ ip
 		.word	.L_user_stack_end	@ sp
-		.word	_end - restart + 16384 + 1024*1024
 		.size	LC0, . - LC0
 
+.Lheadroom:
+		.word	_end - restart + 16384 + 1024*1024
+
 .Linflated_image_size_offset:
 		.long	(input_data_end - 4) - .
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
