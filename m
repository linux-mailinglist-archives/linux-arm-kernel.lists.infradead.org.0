Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C858BF1293
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 10:43:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b8Ddd51tnS+ErN22F6IlsRuXt0Ij1HeeoEpDtWbmQ74=; b=USpM2K6lhs7rrlqAZpUAg9bXHk
	39+mFw8cWZFSdDTlpsYgzpcRDyUTvlVmqEADO35IJRu44dtt8g+mLbfwUz03VyPG0IvKj8JrWwhje
	U+J4OiGfsmuFonB5pG6pVYJAV4Vh1L+YdsSU7WnAEprDljYU4m9Sabr+Hnu0fusjD2BKKtea2jLEW
	e3GwZrCEog54NLecpxVZMTexSjqPQCF+uPX5sDOKlXPJngdJDkZ+PJO6SHGnj4n/K+qBqn9/fwYLM
	JoDScgeV0hH3hJ0nRVQViJEpzxaUEbZxTo8Ue+t59P1FVNdxN+Hbgye579WKjl0zI1qt1zBf/JDnU
	ooDa4yTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHqE-0005LK-NK; Wed, 06 Nov 2019 09:43:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHpj-0004w5-Et
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 09:42:36 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53D2E2166E;
 Wed,  6 Nov 2019 09:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573033355;
 bh=Xpce4/ws0tivXiJphl965VRfX0ymYGfscPagSV/Lc+A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QxrXnOkqfSMB/uEQXUrwbnj2y+B6OqkECeKJMSqFor5flsu07VDZWtHa+ActjEKTY
 qB4azmQFNq2Du7+wp1or2VzlyvAHKVZzF7A1U+pKkz8moXqfvF8z4lQ4fq5Ho9uhRe
 nCMd90qWmhlp/YLJnxbHTptUMFR2HJbl6IJ21hmA=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] Revert "ARM: 8857/1: efi: enable CP15 DMB instructions
 before cleaning the cache"
Date: Wed,  6 Nov 2019 10:42:19 +0100
Message-Id: <20191106094219.24365-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106094219.24365-1-ardb@kernel.org>
References: <20191106094219.24365-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_014235_538605_6B14A0DC 
X-CRM114-Status: GOOD (  11.27  )
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
Cc: Ard Biesheuvel <ardb@kernel.org>
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
