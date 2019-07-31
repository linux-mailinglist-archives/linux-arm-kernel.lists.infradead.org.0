Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E34BD7D174
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFSHrdkkpNhATZ/rymeE0I6UEu/uYbMxLakmj4S95gc=; b=RdXVLyCs5XRqhS
	xMp6ysR1GUumyAK5C5NgrySskVlRfTip6Ogwu+3UeW57E1RoqTAm436u5HHMp/dOIKxw+Js8OJruf
	NX1rV3QgX/YglEFcbKZ+2rniw76OFjd56ndJaO9FndGzO+IFPcjkm0orYmtJMg9b7+PvsY1z0Mon9
	KIAZHP18J5FywXxr4MF3+6W5tjWv1G6AooshoaovVdGOzCCu8GrW36/D3zJqoiGuHCIcLILBME7DW
	oiQZlq29OoXCDxKZf4qy4z+4/wXtBHs11QeNggaYCfwW5e5UoP7vghK9BNsoBt9xcBpm4CT4+y5cG
	Lz5cOQQbSOXGk9cSPI8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxKF-0004hr-Jx; Wed, 31 Jul 2019 22:44:03 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxJy-0004Zx-Nu
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:43:48 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6VMggWZ026880;
 Wed, 31 Jul 2019 17:42:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564612962;
 bh=nXdKmH9bswnUx/7q8TWbWReMx48jltojiy4e520XLEA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=YM34SI9BT0Djmwb7nqKhoClgiFuYHoQtGdc04e/DlQUtQnNsgDPFEHPcP03exB+/r
 zCXpEOdNRmHao1aHd9fb1IqYI4T6uw7yP6hV76D/rFsOUgNqOsLSRyixoQNgwT1NSL
 s3n13y8tlgvbjiWH6/0JhTLUE/2bgg/+LxTM1kRA=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6VMggG4112859
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 31 Jul 2019 17:42:42 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 31
 Jul 2019 17:42:42 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 31 Jul 2019 17:42:42 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6VMggGg128520;
 Wed, 31 Jul 2019 17:42:42 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6VMggZ25783; 
 Wed, 31 Jul 2019 17:42:42 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Jason
 Cooper <jason@lakedaemon.net>
Subject: [PATCH v2 3/6] irqchip/irq-pruss-intc: Add support for shared and
 invalid interrupts
Date: Wed, 31 Jul 2019 17:41:46 -0500
Message-ID: <20190731224149.11153-4-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731224149.11153-1-s-anna@ti.com>
References: <20190731224149.11153-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_154346_907542_9D411F14 
X-CRM114-Status: GOOD (  21.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 David Lechner <david@lechnology.com>, Tony Lindgren <tony@atomide.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 "Andrew F. Davis" <afd@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PRUSS INTC has a fixed number of output interrupt lines that are
connected to a number of processors or other PRUSS instances or other
devices (like DMA) on the SoC. The output interrupt lines 2 through 9
are usually connected to the main Arm host processor and are referred
to as host interrupts 0 through 7 from ARM/MPU perspective.

All of these 8 host interrupts are not always exclusively connected
to the Arm interrupt controller. Some SoCs have some interrupt lines
not connected to the Arm interrupt controller at all, while a few others
have the interrupt lines connected to multiple processors in which they
need to be partitioned as per SoC integration needs. For example, AM437x
and 66AK2G SoCs have 2 PRUSS instances each and have the host interrupt 5
connected to the other PRUSS, while AM335x has host interrupt 0 shared
between MPU and TSC_ADC and host interrupts 6 & 7 shared between MPU and
a DMA controller.

Add support to the PRUSS INTC driver to allow both these shared and
invalid interrupts by not returning a failure if any of these interrupts
are skipped from the corresponding INTC DT node.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v2:
 - Fixed a typo in error message trace for ti,irqs-shared
 - Updated patch description to use generic "interrupt controller" instead
   of GIC
 - Revised the kerneldoc comment for invalid_intr
v1: https://patchwork.kernel.org/patch/11034559/

 drivers/irqchip/irq-pruss-intc.c | 44 +++++++++++++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-pruss-intc.c b/drivers/irqchip/irq-pruss-intc.c
index 4a9456544fd0..3a1b8a93cfad 100644
--- a/drivers/irqchip/irq-pruss-intc.c
+++ b/drivers/irqchip/irq-pruss-intc.c
@@ -67,6 +67,8 @@
  * @irqchip: irq chip for this interrupt controller
  * @domain: irq domain for this interrupt controller
  * @lock: mutex to serialize access to INTC
+ * @shared_intr: bit-map denoting if the MPU host interrupt is shared
+ * @invalid_intr: bit-map denoting if host interrupt is not connected to MPU
  */
 struct pruss_intc {
 	unsigned int irqs[MAX_NUM_HOST_IRQS];
@@ -74,6 +76,8 @@ struct pruss_intc {
 	struct irq_chip *irqchip;
 	struct irq_domain *domain;
 	struct mutex lock; /* PRUSS INTC lock */
+	u16 shared_intr;
+	u16 invalid_intr;
 };
 
 static inline u32 pruss_intc_read_reg(struct pruss_intc *intc, unsigned int reg)
@@ -233,7 +237,8 @@ static int pruss_intc_probe(struct platform_device *pdev)
 	struct pruss_intc *intc;
 	struct resource *res;
 	struct irq_chip *irqchip;
-	int i, irq;
+	int i, irq, count;
+	u8 temp_intr[MAX_NUM_HOST_IRQS] = { 0 };
 
 	intc = devm_kzalloc(dev, sizeof(*intc), GFP_KERNEL);
 	if (!intc)
@@ -250,6 +255,39 @@ static int pruss_intc_probe(struct platform_device *pdev)
 	dev_dbg(dev, "intc memory: pa %pa size 0x%zx va %pK\n", &res->start,
 		(size_t)resource_size(res), intc->base);
 
+	count = of_property_read_variable_u8_array(dev->of_node,
+						   "ti,irqs-reserved",
+						   temp_intr, 0,
+						   MAX_NUM_HOST_IRQS);
+	if (count < 0 && count != -EINVAL)
+		return count;
+	count = (count == -EINVAL ? 0 : count);
+	for (i = 0; i < count; i++) {
+		if (temp_intr[i] < MAX_NUM_HOST_IRQS) {
+			intc->invalid_intr |= BIT(temp_intr[i]);
+		} else {
+			dev_warn(dev, "ignoring invalid reserved irq %d\n",
+				 temp_intr[i]);
+		}
+		temp_intr[i] = 0;
+	}
+
+	count = of_property_read_variable_u8_array(dev->of_node,
+						   "ti,irqs-shared",
+						   temp_intr, 0,
+						   MAX_NUM_HOST_IRQS);
+	if (count < 0 && count != -EINVAL)
+		return count;
+	count = (count == -EINVAL ? 0 : count);
+	for (i = 0; i < count; i++) {
+		if (temp_intr[i] < MAX_NUM_HOST_IRQS) {
+			intc->shared_intr |= BIT(temp_intr[i]);
+		} else {
+			dev_warn(dev, "ignoring invalid shared irq %d\n",
+				 temp_intr[i]);
+		}
+	}
+
 	mutex_init(&intc->lock);
 
 	pruss_intc_init(intc);
@@ -275,6 +313,10 @@ static int pruss_intc_probe(struct platform_device *pdev)
 	for (i = 0; i < MAX_NUM_HOST_IRQS; i++) {
 		irq = platform_get_irq_byname(pdev, irq_names[i]);
 		if (irq < 0) {
+			if (intc->shared_intr & BIT(i) ||
+			    intc->invalid_intr & BIT(i))
+				continue;
+
 			dev_err(dev, "platform_get_irq_byname failed for %s : %d\n",
 				irq_names[i], irq);
 			goto fail_irq;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
