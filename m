Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF3A100B44
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 19:16:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luUzxlGeQe4ONVu6MMh4ngWTiBBUfGe42s3+XY8LFD4=; b=O/WmcT3cQlM2cZ
	zA1b59PhtMwAxmp/FjpT7OZsp6hUf0BNpkhDUfOH0r/Ngx//TqNulwky+mz1Jwr6LczUG3T/Y1/c0
	Brq1ThG+c1ryDgcPoz88jECxO+3TyKknpugpJ/IoHZadm+FLDtoP7R4rO2o2FO5fzbNk+GJhiLOqI
	oSp87njs7mv4OQBo7zskF/OZdgy0h22X0DFs6Fzv4JpxWn46jAsR/JGdPcA38ooaBmyA2cBGSWCIM
	7m8nQtT4XIJ+EqXIc9JTuzKrp5WJa1cZ2g61gCGR15qPH71ilvCBUITFUvWfAAVX1Mry5uqZc2gT7
	D0Rv5XjPhFB0So6SZnSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlZq-00062f-V9; Mon, 18 Nov 2019 18:16:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWlZ4-0005Rd-RD
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 18:15:56 +0000
Received: from localhost.localdomain
 (lfbn-mar-1-550-151.w90-118.abo.wanadoo.fr [90.118.131.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 430AD222B0;
 Mon, 18 Nov 2019 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574100954;
 bh=NSaNF4uqjFi1bzHP0cFCLq9XDPMCksPnvpmAZtv4ndg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=myVpSgpPQAvo4aFWtQBoobXDEXYQBN1ZLpUOnhkqY4/KTJhUo1WLTcFOgNVJ2rRvR
 c/PhmHX/ZEMHvlJNUxvrJsalicQCKkHV7UK1cL2As9xAGtbs5jSMrJtCpK1U36djL6
 LImw27X/qbychzCVwwm9PfD/v5UA8DXQ9Ky5Lh8Q=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] Revert "ARM: 8857/1: efi: enable CP15 DMB instructions
 before cleaning the cache"
Date: Mon, 18 Nov 2019 19:15:43 +0100
Message-Id: <20191118181543.122968-3-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118181543.122968-1-ardb@kernel.org>
References: <20191118181543.122968-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_101555_016427_5DB6AAC4 
X-CRM114-Status: GOOD (  12.20  )
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
Cc: maz@kernel.org, rmk+kernel@armlinux.org.uk, linus.walleij@linaro.org,
 Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit e17b1af96b2afc38e684aa2f1033387e2ed10029, which is
no longer necessary now that the v7 specific routines take care not to
issue CP15 barrier instructions before they are enabled in SCTLR.

Acked-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 1af62baf7cd5..9fe90c71f373 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1460,21 +1460,7 @@ ENTRY(efi_stub_entry)
 
 		@ Preserve return value of efi_entry() in r4
 		mov	r4, r0
-
-		@ our cache maintenance code relies on CP15 barrier instructions
-		@ but since we arrived here with the MMU and caches configured
-		@ by UEFI, we must check that the CP15BEN bit is set in SCTLR.
-		@ Note that this bit is RAO/WI on v6 and earlier, so the ISB in
-		@ the enable path will be executed on v7+ only.
-		mrc	p15, 0, r1, c1, c0, 0	@ read SCTLR
-		tst	r1, #(1 << 5)		@ CP15BEN bit set?
-		bne	0f
-		orr	r1, r1, #(1 << 5)	@ CP15 barrier instructions
-		mcr	p15, 0, r1, c1, c0, 0	@ write SCTLR
- ARM(		.inst	0xf57ff06f		@ v7+ isb	)
- THUMB(		isb						)
-
-0:		bl	cache_clean_flush
+		bl	cache_clean_flush
 		bl	cache_off
 
 		@ Set parameters for booting zImage according to boot protocol
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
