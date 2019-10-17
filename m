Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4F6DAB45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 13:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T7ZxuPO7AvaVkWWuPP+u2i4MPYHSO5Vgqjh4Q/NDIr0=; b=QtFdzij5bcgokT
	iCkVgcSAtFtjro7VgN5bsDkMwnCEJdeKQQ3e09wDQkW9964NfIs+mcUszWV4f+92zgoBbVcTRZer7
	vqrU3XMZKHmB6uUE3zhGqfc0jpec/w6tRuJ3fdy85q6pmp80NZyQQSmjz8jikYc8LfQQ4fpiHLY/t
	3raGPI3FklvQ/iRO9UQG7+9kU6UEiF66wmwjuatKqNc1nM6pPcv85hF+jmdiVnxR+v+2zBjMTVMyt
	6EhOa6b4B0L5CrJWL/DU5EqxoSzxIhaYvX+41kttzHnjrHvExW50xk5WTfFuZAusDALwp93lx6hZX
	Dt/3GNq1Xf0Ai85YxsnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL42Y-0005Az-8Z; Thu, 17 Oct 2019 11:33:58 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL42P-0005AO-Nl
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 11:33:51 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iL42J-0003Z9-4q; Thu, 17 Oct 2019 12:33:43 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iL42I-0003az-Nk; Thu, 17 Oct 2019 12:33:42 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] irqchip/gic-v3: fix __iomem warning
Date: Thu, 17 Oct 2019 12:33:41 +0100
Message-Id: <20191017113341.13778-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_043349_922914_6BD52B31 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The __iomem attribute should go before the * in the
prototype. Move to silence the following sparse
warnings:

./arch/arm/include/asm/arch_gicv3.h:340:15: warning: incorrect type in argument 1 (different address spaces)
./arch/arm/include/asm/arch_gicv3.h:340:15:    expected void const volatile [noderef] <asn:2> *addr
./arch/arm/include/asm/arch_gicv3.h:340:15:    got void *
./arch/arm/include/asm/arch_gicv3.h:343:17: warning: incorrect type in argument 2 (different address spaces)
./arch/arm/include/asm/arch_gicv3.h:343:17:    expected void volatile [noderef] <asn:2> *addr
./arch/arm/include/asm/arch_gicv3.h:343:17:    got void *
./arch/arm/include/asm/arch_gicv3.h:350:37: warning: incorrect type in argument 2 (different address spaces)
./arch/arm/include/asm/arch_gicv3.h:350:37:    expected void volatile [noderef] <asn:2> *addr
./arch/arm/include/asm/arch_gicv3.h:350:37:    got void *[noderef] <asn:2> addr
drivers/irqchip/irq-gic-v3-its.c:2832:46: warning: incorrect type in argument 2 (different address spaces)
drivers/irqchip/irq-gic-v3-its.c:2832:46:    expected void *[noderef] <asn:2> addr
drivers/irqchip/irq-gic-v3-its.c:2832:46:    got void [noderef] <asn:2> *
./arch/arm/include/asm/arch_gicv3.h:340:15: warning: incorrect type in argument 1 (different address spaces)
./arch/arm/include/asm/arch_gicv3.h:340:15:    expected void const volatile [noderef] <asn:2> *addr
./arch/arm/include/asm/arch_gicv3.h:340:15:    got void *
./arch/arm/include/asm/arch_gicv3.h:343:17: warning: incorrect type in argument 2 (different address spaces)
./arch/arm/include/asm/arch_gicv3.h:343:17:    expected void volatile [noderef] <asn:2> *addr
./arch/arm/include/asm/arch_gicv3.h:343:17:    got void *
./arch/arm/include/asm/arch_gicv3.h:350:37: warning: incorrect type in argument 2 (different address spaces)
./arch/arm/include/asm/arch_gicv3.h:350:37:    expected void volatile [noderef] <asn:2> *addr
./arch/arm/include/asm/arch_gicv3.h:350:37:    got void *[noderef] <asn:2> addr

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Russell King <linux@armlinux.org.uk>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/include/asm/arch_gicv3.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch_gicv3.h b/arch/arm/include/asm/arch_gicv3.h
index 0555f14cc8be..fa50bb04f580 100644
--- a/arch/arm/include/asm/arch_gicv3.h
+++ b/arch/arm/include/asm/arch_gicv3.h
@@ -333,7 +333,7 @@ static inline u64 __gic_readq_nonatomic(const volatile void __iomem *addr)
  * GITS_VPENDBASER - the Valid bit must be cleared before changing
  * anything else.
  */
-static inline void gits_write_vpendbaser(u64 val, void * __iomem addr)
+static inline void gits_write_vpendbaser(u64 val, void __iomem *addr)
 {
 	u32 tmp;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
