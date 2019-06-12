Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFF341B81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 07:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4U8qEweRlphx7FkYAheEYu+XdiVVLhFTQgM7YI/7y7I=; b=ivTzpYWd4kIqj6
	/rBAarihV2XoDLhVW1tt26ErMeyZ9ko9LIjbnbspuqpFFQ1ks9qOqrwmBUAyAyPakMYCmefy2kDZW
	hAskyZOevrYj//P3babSD4gQQhYvOj2DliUjdD8y8ppiR3pS4KZpqHoIfIFBGVy5N5+xACTjCR6wk
	kCl68erFvVDYplYzut3gmTrQRcmNR83gweBKDhuBd+KxpHr244Zehkw/NiqvAVjiUCZ9xINSiouiL
	hm0pkkldv9T4NXnCSe0+sm1yUHgsTG9wpRPkZBcyw6QZ468zytz9UFpkGzP9yvLxtyJVylZYknyjB
	gD4bMUaj+zRn2XhkQiGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1havcc-0006Lf-NZ; Wed, 12 Jun 2019 05:16:30 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1havcR-0006L2-Qm
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 05:16:23 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5C5G5tU001179;
 Wed, 12 Jun 2019 00:16:07 -0500
Message-ID: <e4c7b434452775d00b6621012ad5e263076b3fcf.camel@kernel.crashing.org>
Subject: [PATCH+DISCUSSION] irqchip: armada-370-xp: Remove redundant ops
 assignment
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 12 Jun 2019 15:16:05 +1000
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_221621_866733_EF23A127 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Gregory CLEMENT <gregory.clement@free-electrons.com>,
 Marc Zyngier <marc.zyngier@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pci_msi_create_irq_domain -> pci_msi_domain_update_chip_ops will
set those two already since the driver sets MSI_FLAG_USE_DEF_CHIP_OPS

Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---

[UNTESTED]

Just something I noticed while browsing through those drivers in
search of ways to factor some of the code.

That leads to a question here:

Some MSI drivers such as this one (or any using the defaults mask/unmask
provided by drivers/pci/msi.c) only call the PCI MSI mask/unmask functions.

Some other drivers call those PCI function but *also* call the parent
mask/unmask (giv-v2m for example) which generally is the inner domain
which just itself forwards to its own parent.

Is there any preference for doing it one way or the other ? I can see
that in cases where the device doesn't support MSI masking, calling the
parent could be useful but we don't know that at the moment in the
corresponding code.

It feels like something we should consolidate (and remove code from
drivers). For example, the defaults in drivers/pci/msi.c could always
call the parent if it exists and has a mask/unmask callback.

Opinions ? I'm happy to produce patches once we agree...

diff --git a/drivers/irqchip/irq-armada-370-xp.c b/drivers/irqchip/irq-armada-370-xp.c
index c9bdc5221b82..911230f28e2d 100644
--- a/drivers/irqchip/irq-armada-370-xp.c
+++ b/drivers/irqchip/irq-armada-370-xp.c
@@ -197,8 +197,6 @@ static void armada_370_xp_irq_unmask(struct irq_data *d)
 
 static struct irq_chip armada_370_xp_msi_irq_chip = {
 	.name = "MPIC MSI",
-	.irq_mask = pci_msi_mask_irq,
-	.irq_unmask = pci_msi_unmask_irq,
 };
 
 static struct msi_domain_info armada_370_xp_msi_domain_info = {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
