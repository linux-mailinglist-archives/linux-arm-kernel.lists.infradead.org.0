Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229521AF4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 06:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hHUwqhebRdD0VVyxAQ4iYqr1vMXw/RJ14dE+8gTFx6o=; b=ERA40Y3zsGko+C
	0ZaS6+d2lTXte9huSqQ/TG1Vjt40NrqifHykJpXw3Qu3UsddQ6gaUiOQ1c/jsc+jwEW11c7Na9VG5
	ztDEpua5mdOlkiMm065G9JZ478VHmA+XMdDP5UnUxut1wOGJHwTYyy89S1FsY04LCI4zTz0UWbDMM
	ckobEbXySqe20OLzj1RoGhlM3hoo+hMYZiy+RGrCuZ7CvLL58nuSQewUt8Y8TS2NBnBNhjq24s1S4
	9fr837vB1Y6zCX74VNhQJ0g35lLLzB8/NrDr13n6Z78LADUzvmQTQOHSxlEM3re/ld7Ym+rnG9i8B
	iPkskZtitfdrc0PCQHGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ2QS-0000ZS-8X; Mon, 13 May 2019 04:18:56 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ2QK-0000Z0-O9
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 04:18:50 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8E3DD6189E32D9974D90;
 Mon, 13 May 2019 12:18:33 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.439.0; Mon, 13 May 2019 12:18:23 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <marc.zyngier@arm.com>, <andre.przywara@arm.com>, <eric.auger@redhat.com>, 
 <drjones@redhat.com>
Subject: [RFC PATCH] irqchip/gic-v3: Correct the usage of GICD_CTLR's RWP field
Date: Mon, 13 May 2019 04:15:54 +0000
Message-ID: <1557720954-6592-1-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_211849_014949_78D9C117 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per ARM IHI 0069D, GICD_CTLR's RWP field tracks updates to:

	GICD_CTLR's Group Enable bits, for transitions from 1 to 0 only
	GICD_CTLR's ARE bits, E1NWF bit and DS bit (if we have)
	GICD_ICENABLER<n>

We seemed use this field in an inappropriate way, somewhere in the
GIC-v3 driver. For some examples:

In gic_set_affinity(), if the interrupt was not enabled, we only need
to write GICD_IROUTER<n> with the appropriate mpidr value. Updates to
GICD_IROUTER will not be tracked by RWP field, and we can remove the
unnecessary RWP waiting.

In gic_dist_init(), we "Enable distributor with ARE, Group1" by writing
to GICD_CTLR, and we should use gic_dist_wait_for_rwp() here.

These two are obvious cases, and there are some other cases where we don't
need to do RWP waiting, such as in gic_configure_irq() and gic_poke_irq().
But too many modifications makes me not confident. It's hard for me to say
whether this patch is doing the right thing and how does the RWP waiting
affect the system, thus RFC.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 drivers/irqchip/irq-gic-v3.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 15e55d3..8d63950 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -600,6 +600,7 @@ static void __init gic_dist_init(void)
 	/* Enable distributor with ARE, Group1 */
 	writel_relaxed(GICD_CTLR_ARE_NS | GICD_CTLR_ENABLE_G1A | GICD_CTLR_ENABLE_G1,
 		       base + GICD_CTLR);
+	gic_dist_wait_for_rwp();
 
 	/*
 	 * Set all global interrupts to the boot CPU only. ARE must be
@@ -986,14 +987,9 @@ static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 
 	gic_write_irouter(val, reg);
 
-	/*
-	 * If the interrupt was enabled, enabled it again. Otherwise,
-	 * just wait for the distributor to have digested our changes.
-	 */
+	/* If the interrupt was enabled, enabled it again. */
 	if (enabled)
 		gic_unmask_irq(d);
-	else
-		gic_dist_wait_for_rwp();
 
 	irq_data_update_effective_affinity(d, cpumask_of(cpu));
 
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
