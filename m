Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6289D25236
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NStne7x7qW7dpwD/GKjIekKOlnq4V71eu1P20FWH3c=; b=OdSXSeAvYt9Fmw
	ECHKnuPsiA98pT7Md0pbVvYe07qn/+GELd3ubeMH4xX0aVy37BmdnBzbbjS2sLccLP1qdHVE0q3EI
	qFEFycisapFX9QY3bpfJKvdm9GM+aoVTHt/pJuD/1aObM+5f9JxpVYoCXidehyRIWMAQQSEJGeMKX
	S26W1CcZBhIRef+E78N3hSMlSKrcnLgBpq1kSfaWFJEIFIAbz465SRQUs6tTssAJg17uuK2cg4VQl
	auJmB/mZVbqNwYz5Frf9sxAsGWmos5Hy5R+ca8xPHVmi/b3RW/vBGjoRNI6W/RXpeqJyhXCbzSPjV
	InGTfx0jXP6dFFZXG8FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5oz-0002mn-Uh; Tue, 21 May 2019 14:32:53 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5nv-0001in-Jl
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:32:00 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 35776240012;
 Tue, 21 May 2019 14:31:35 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jens Axboe <axboe@kernel.dk>, Hans de Goede <hdegoede@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v4 09/10] irqchip/irq-mvebu-icu: Remove the double SATA ports
 interrupt hack
Date: Tue, 21 May 2019 16:30:22 +0200
Message-Id: <20190521143023.31810-10-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521143023.31810-1-miquel.raynal@bootlin.com>
References: <20190521143023.31810-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_073148_262316_B0538864 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, linux-ide@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When writing the driver, a hack was introduced to configure both SATA
interrupts regardless of the port in use to overcome a limitation in
the SATA core. Now that this limitation has been addressed and the
hack moved in the (historically) responsible SATA driver,
ahci_{platform,mvebu}.c, let's clean this driver section.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/irqchip/irq-mvebu-icu.c | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/irqchip/irq-mvebu-icu.c b/drivers/irqchip/irq-mvebu-icu.c
index 547045d89c4b..f3b43f63fe2e 100644
--- a/drivers/irqchip/irq-mvebu-icu.c
+++ b/drivers/irqchip/irq-mvebu-icu.c
@@ -38,8 +38,6 @@
 
 /* ICU definitions */
 #define ICU_MAX_IRQS		207
-#define ICU_SATA0_ICU_ID	109
-#define ICU_SATA1_ICU_ID	107
 
 struct mvebu_icu_subset_data {
 	unsigned int icu_group;
@@ -111,22 +109,6 @@ static void mvebu_icu_write_msg(struct msi_desc *desc, struct msi_msg *msg)
 	}
 
 	writel_relaxed(icu_int, icu->base + ICU_INT_CFG(d->hwirq));
-
-	/*
-	 * The SATA unit has 2 ports, and a dedicated ICU entry per
-	 * port. The ahci sata driver supports only one irq interrupt
-	 * per SATA unit. To solve this conflict, we configure the 2
-	 * SATA wired interrupts in the south bridge into 1 GIC
-	 * interrupt in the north bridge. Even if only a single port
-	 * is enabled, if sata node is enabled, both interrupts are
-	 * configured (regardless of which port is actually in use).
-	 */
-	if (d->hwirq == ICU_SATA0_ICU_ID || d->hwirq == ICU_SATA1_ICU_ID) {
-		writel_relaxed(icu_int,
-			       icu->base + ICU_INT_CFG(ICU_SATA0_ICU_ID));
-		writel_relaxed(icu_int,
-			       icu->base + ICU_INT_CFG(ICU_SATA1_ICU_ID));
-	}
 }
 
 static struct irq_chip mvebu_icu_nsr_chip = {
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
