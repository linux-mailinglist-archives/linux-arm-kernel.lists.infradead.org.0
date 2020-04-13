Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008921A6543
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 12:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cfaJF5FxzvSw2mR3smPkscuX5kIU5DcLSBCr2vZz4BE=; b=V+m
	4msL/4i74mo6cHm5SlDqPQpiKpZWYHPpcPhYfm0hCAXOx+Y1Df0L0NsloGr/Y568cCDEY0mMwXmDX
	KNmhhH/TbalV6FOFoS73ZePsMSduH7LoyqVZurn0QSvslKahmyoNZ5ZrBjenp92ZbVPBSHsKJx5kN
	69bScr2r3191GKfVwsSLDOQ1T92JtYh1wHehwK3RsjQg49edKhn3T3o/qJ5GabfVX0iKVwof+oJt5
	3yNYHWgbPQrNv87wtrPlrdTUFVRC/xWLe8QjLQBk5xRQNFqxrvPiYsqmBBcrKJXFuNdLQ8lgsnHIj
	+1mGLEpdH6ExEj53EYYAZlIYkaI+7dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNwSn-0008UM-U8; Mon, 13 Apr 2020 10:37:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNwSg-0008Tm-L9
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 10:37:07 +0000
Received: from cam-smtp0.cambridge.arm.com (fw-tnat.cambridge.arm.com
 [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91C0B206A1;
 Mon, 13 Apr 2020 10:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586774225;
 bh=jkcvWZE7rCWCpMU6IBICurdE07KqvjYlh1/nycP4dbk=;
 h=From:To:Cc:Subject:Date:From;
 b=ZbBYl7EL9ae64vJl/U8pqqqqjXNVjKL/Mal+e2xm/na8E8t4FD+P9Yku7h5neZQR8
 SKr566bNZOtjfydAcubcROS5B+Zljr+hUZD1uKqWf9Xj6AtNp3hJS+ASqRSGl31h9/
 DWirNO3L6d4d5gbWurZzLda4hbfCQP8suRdG7Pxc=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: mm: drop kimage_voffset which was only used by KVM
Date: Mon, 13 Apr 2020 12:36:45 +0200
Message-Id: <20200413103645.25183-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_033706_709296_3D21AC8B 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: maz@kernel.org, linux@armlinux.org.uk, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that KVM support has been removed from the 32-bit ARM port,
drop the export kimage_voffset symbol, which no longer has any
users.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/mm/mmu.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index ec8d0008bfa1..36660bb031d1 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -74,8 +74,6 @@ struct cachepolicy {
 	pteval_t	pte;
 };
 
-unsigned long kimage_voffset __ro_after_init;
-
 static struct cachepolicy cache_policies[] __initdata = {
 	{
 		.policy		= "uncached",
@@ -1636,9 +1634,6 @@ void __init paging_init(const struct machine_desc *mdesc)
 
 	empty_zero_page = virt_to_page(zero_page);
 	__flush_dcache_page(NULL, empty_zero_page);
-
-	/* Compute the virt/idmap offset, mostly for the sake of KVM */
-	kimage_voffset = (unsigned long)&kimage_voffset - virt_to_idmap(&kimage_voffset);
 }
 
 void __init early_mm_init(const struct machine_desc *mdesc)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
