Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6530682F71
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:04:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/n8r54IjNna0b9/9yjal8Uk+raKIf65Oy8wv3QST0hs=; b=JKmVngOiN1cbIf
	4mk/5MvOF41jKAzZ1HphAgOLdWx40ajQZB7zpmVg+8YWmBpT7NPq5XBkIyo9zbGfB0n3WbeqPJemM
	HFH1lcvcq/m5QzJh6le/eDu+S1/+17/+PKO3CcbSACZkZmvYy7+w1hs0/h1gRXfdxeR4Jl+lm/kDw
	kKCibHWFmjXmIxtcp15WMdMFRZ8bTgNf8d3VoZkkvW1F0eZMHWHLoiUi3K9TdDR2DJkwbCYE3KOby
	mF4L9nwWuJE2yvOFNWvi0LqZ2QxlUAZPFm4ACC7cO6fBI++kZFSa8MGqOgf11pbOGxr9p2YTukKBh
	xnDkfy0E7JHderwavWyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwKY-0004k8-O4; Tue, 06 Aug 2019 10:04:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huwHc-0002oZ-U1
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:01:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 913CC1570;
 Tue,  6 Aug 2019 03:01:29 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 595173F706;
 Tue,  6 Aug 2019 03:01:28 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 01/12] irqchip/gic: Rework gic_configure_irq to take the
 full ICFGR base
Date: Tue,  6 Aug 2019 11:01:10 +0100
Message-Id: <20190806100121.240767-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806100121.240767-1-maz@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030133_294798_15EB8447 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

gic_configure_irq is currently passed the (re)distributor address,
to which it applies an a fixed offset to get to the configuration
registers. This offset is constant across all GICs, or rather it was
until to v3.1...

An easy way out is for the individual drivers to pass the base
address of the configuration register for the considered interrupt.
At the same time, move part of the error handling back to the
individual drivers, as things are about to change on that front.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-common.c | 14 +++++---------
 drivers/irqchip/irq-gic-v3.c     | 11 ++++++++++-
 drivers/irqchip/irq-gic.c        | 10 +++++++++-
 drivers/irqchip/irq-hip04.c      |  7 ++++++-
 4 files changed, 30 insertions(+), 12 deletions(-)

diff --git a/drivers/irqchip/irq-gic-common.c b/drivers/irqchip/irq-gic-common.c
index b0a8215a13fc..6900b6f0921c 100644
--- a/drivers/irqchip/irq-gic-common.c
+++ b/drivers/irqchip/irq-gic-common.c
@@ -63,7 +63,7 @@ int gic_configure_irq(unsigned int irq, unsigned int type,
 	 * for "irq", depending on "type".
 	 */
 	raw_spin_lock_irqsave(&irq_controller_lock, flags);
-	val = oldval = readl_relaxed(base + GIC_DIST_CONFIG + confoff);
+	val = oldval = readl_relaxed(base + confoff);
 	if (type & IRQ_TYPE_LEVEL_MASK)
 		val &= ~confmask;
 	else if (type & IRQ_TYPE_EDGE_BOTH)
@@ -83,14 +83,10 @@ int gic_configure_irq(unsigned int irq, unsigned int type,
 	 * does not allow us to set the configuration or we are in a
 	 * non-secure mode, and hence it may not be catastrophic.
 	 */
-	writel_relaxed(val, base + GIC_DIST_CONFIG + confoff);
-	if (readl_relaxed(base + GIC_DIST_CONFIG + confoff) != val) {
-		if (WARN_ON(irq >= 32))
-			ret = -EINVAL;
-		else
-			pr_warn("GIC: PPI%d is secure or misconfigured\n",
-				irq - 16);
-	}
+	writel_relaxed(val, base + confoff);
+	if (readl_relaxed(base + confoff) != val)
+		ret = -EINVAL;
+
 	raw_spin_unlock_irqrestore(&irq_controller_lock, flags);
 
 	if (sync_access)
diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 96d927f0f91a..b250e69908f8 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -407,6 +407,7 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
 	unsigned int irq = gic_irq(d);
 	void (*rwp_wait)(void);
 	void __iomem *base;
+	int ret;
 
 	/* Interrupt configuration for SGIs can't be changed */
 	if (irq < 16)
@@ -425,7 +426,15 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
 		rwp_wait = gic_dist_wait_for_rwp;
 	}
 
-	return gic_configure_irq(irq, type, base, rwp_wait);
+
+	ret = gic_configure_irq(irq, type, base + GICD_ICFGR, rwp_wait);
+	if (ret && irq < 32) {
+		/* Misconfigured PPIs are usually not fatal */
+		pr_warn("GIC: PPI%d is secure or misconfigured\n", irq - 16);
+		ret = 0;
+	}
+
+	return ret;
 }
 
 static int gic_irq_set_vcpu_affinity(struct irq_data *d, void *vcpu)
diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
index e45f45e68720..ab48760acabb 100644
--- a/drivers/irqchip/irq-gic.c
+++ b/drivers/irqchip/irq-gic.c
@@ -291,6 +291,7 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
 {
 	void __iomem *base = gic_dist_base(d);
 	unsigned int gicirq = gic_irq(d);
+	int ret;
 
 	/* Interrupt configuration for SGIs can't be changed */
 	if (gicirq < 16)
@@ -301,7 +302,14 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
 			    type != IRQ_TYPE_EDGE_RISING)
 		return -EINVAL;
 
-	return gic_configure_irq(gicirq, type, base, NULL);
+	ret = gic_configure_irq(gicirq, type, base + GIC_DIST_CONFIG, NULL);
+	if (ret && gicirq < 32) {
+		/* Misconfigured PPIs are usually not fatal */
+		pr_warn("GIC: PPI%d is secure or misconfigured\n", gicirq - 16);
+		ret = 0;
+	}
+
+	return ret;
 }
 
 static int gic_irq_set_vcpu_affinity(struct irq_data *d, void *vcpu)
diff --git a/drivers/irqchip/irq-hip04.c b/drivers/irqchip/irq-hip04.c
index cf705827599c..1626131834a6 100644
--- a/drivers/irqchip/irq-hip04.c
+++ b/drivers/irqchip/irq-hip04.c
@@ -130,7 +130,12 @@ static int hip04_irq_set_type(struct irq_data *d, unsigned int type)
 
 	raw_spin_lock(&irq_controller_lock);
 
-	ret = gic_configure_irq(irq, type, base, NULL);
+	ret = gic_configure_irq(irq, type, base + GIC_DIST_CONFIG, NULL);
+	if (ret && irq < 32) {
+		/* Misconfigured PPIs are usually not fatal */
+		pr_warn("GIC: PPI%d is secure or misconfigured\n", irq - 16);
+		ret = 0;
+	}
 
 	raw_spin_unlock(&irq_controller_lock);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
