Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6920CF1460
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:51:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b8Ddd51tnS+ErN22F6IlsRuXt0Ij1HeeoEpDtWbmQ74=; b=hOyGmAwhn4Yd6851Rq1llUpY+h
	PZMNXQOK+VbspPo2W0wbrP7Wp/eXbnofVU0fHb/WaiAKVz/bn3BUSLOVPLSxPg3AuZy01KI5/oDBh
	dcvPfFfypfWhPlcucCy2KBmv2VI98bITw8V+nxHOeGdKtujgIlltqg+nPAwtAUMxoR4BcebI9bNSj
	ojl/ZdySm0vTyke4RvHtnyiCRhlNeLacPl/l17npG6rlVHrtLIr6mGIOed774LAHpL1j8VZeQnuDp
	Fe12oIokR/4njFxkZtcutcci1wvQyayim9+BL5r9JEOe0NgZF0aqmOzB3P7egcrbCrBhnkVQhzckO
	gSQK9IJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSItu-0004vY-QM; Wed, 06 Nov 2019 10:50:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSItL-0004W7-CM
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:50:24 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C7812187F;
 Wed,  6 Nov 2019 10:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573037422;
 bh=Xpce4/ws0tivXiJphl965VRfX0ymYGfscPagSV/Lc+A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0ojW93ya2eZSExdfF8UY80H1A00nh2KQ+77DL8v9nQu3KdP/YhPoub1X0Qt6wrByu
 3TDTBJaE64hWyJ9EPZ8k4CEuCiq61lrXxxBNMqMtul1zWzIIjlmjQfF8NyYxRMTk4q
 9PsLoa29ksi1F7/FAj9yV0hLo4H6181fvMrhfiFE=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH resend 2/2] Revert "ARM: 8857/1: efi: enable CP15 DMB
 instructions before cleaning the cache"
Date: Wed,  6 Nov 2019 11:49:18 +0100
Message-Id: <20191106104918.26397-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106104918.26397-1-ardb@kernel.org>
References: <20191106104918.26397-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_025023_479474_18557931 
X-CRM114-Status: GOOD (  11.05  )
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
Cc: maz@kernel.org, rmk+kernel@armlinux.org.uk, linus.walleij@linaro.org,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit e17b1af96b2afc38e684aa2f1033387e2ed10029, which is
no longer necessary now that the v7 specific routines take care not to
issue CP15 barrier instructions before they are enabled in SCTLR.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index ec14687aea3c..4369f491b23d 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1462,21 +1462,7 @@ ENTRY(efi_stub_entry)
 
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
