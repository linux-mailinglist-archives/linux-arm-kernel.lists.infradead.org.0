Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427847167D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2QsvIeYgdq8YGeiF6vBIEpsimlIQ53mys01+Pp+y0ho=; b=ByWO9Pc15WWAYj
	/ELoPCRGbdEuE+4HWHZ22kqOWJksry/PernbM3xHEGQRFZqQX53NdY3mJotF+s7izPj5QY7fUyFTw
	ADtwn3/7L5DjeEYnDmiRkuHmT3K+xv1h5BBOxq+cP/PKsa14S5OIfNzFHUnuEMD26X+K1QyzwMKpU
	s8lkKwW64dplahkLKkT06IX0Q9DRpGtT7g9GF+nxgkClMblvwP/t9SX2OTQjWnxXEJ6TTl0V5KBCF
	oMRNH2Z01w/IZWOjdTw1ks6zngeX8qWrLB7/FB0oube7aEJnKXSHS5XDOZdUmaUlhkcRWwoe/XESm
	RWFpO5OCp4ScuSLzo/+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsKI-0000uP-Ia; Tue, 23 Jul 2019 10:47:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsHv-0006Wa-82
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:44:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C0F515BF;
 Tue, 23 Jul 2019 03:44:55 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 32B3E3F71A;
 Tue, 23 Jul 2019 03:44:54 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 7/9] irqchip/gic-v3: Dynamically allocate PPI partition
 descriptors
Date: Tue, 23 Jul 2019 11:44:35 +0100
Message-Id: <20190723104437.154403-8-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723104437.154403-1-maz@kernel.org>
References: <20190723104437.154403-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_034455_362572_4571A37B 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Again, PPIs are becoming a variable set. Let's hack the PPI partition
code to make the top-level array dynamically allocated.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-v3.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index ec0f885fa373..b85acab4a6a1 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -52,7 +52,7 @@ struct gic_chip_data {
 	u64			flags;
 	bool			has_rss;
 	unsigned int		ppi_nr;
-	struct partition_desc	*ppi_descs[16];
+	struct partition_desc	**ppi_descs;
 };
 
 static struct gic_chip_data gic_data __read_mostly;
@@ -1350,7 +1350,8 @@ static int gic_irq_domain_select(struct irq_domain *d,
 	 * then we need to match the partition domain.
 	 */
 	if (fwspec->param_count >= 4 &&
-	    fwspec->param[0] == 1 && fwspec->param[3] != 0)
+	    fwspec->param[0] == 1 && fwspec->param[3] != 0 &&
+	    gic_data.ppi_descs)
 		return d == partition_get_domain(gic_data.ppi_descs[fwspec->param[1]]);
 
 	return d == gic_data.domain;
@@ -1371,6 +1372,9 @@ static int partition_domain_translate(struct irq_domain *d,
 	struct device_node *np;
 	int ret;
 
+	if (!gic_data.ppi_descs)
+		return -ENOMEM;
+
 	np = of_find_node_by_phandle(fwspec->param[3]);
 	if (WARN_ON(!np))
 		return -EINVAL;
@@ -1527,6 +1531,10 @@ static void __init gic_populate_ppi_partitions(struct device_node *gic_node)
 	if (!parts_node)
 		return;
 
+	gic_data.ppi_descs = kcalloc(gic_data.ppi_nr, sizeof(*gic_data.ppi_descs), GFP_KERNEL);
+	if (!gic_data.ppi_descs)
+		return;
+
 	nr_parts = of_get_child_count(parts_node);
 
 	if (!nr_parts)
@@ -1578,7 +1586,7 @@ static void __init gic_populate_ppi_partitions(struct device_node *gic_node)
 		part_idx++;
 	}
 
-	for (i = 0; i < 16; i++) {
+	for (i = 0; i < gic_data.ppi_nr; i++) {
 		unsigned int irq;
 		struct partition_desc *desc;
 		struct irq_fwspec ppi_fwspec = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
