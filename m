Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27C0619B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 05:54:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EcHKoEJe7yQzoSSnLVpsdyIfy6++oZ8dGxPjd2AgBbU=; b=gMPBmaFrV9LVDH
	Iptb9fog6OzPqvgkhYaGnc/oa/GOXJmlYaC6beewUrCKowuqXai0hJ7XjYFJkxkEsglcgfBj0taKy
	AKJa1HF/BvLfzJkOFvbqdV/KsGKP8Q/C3jPOSkl20wPdifdBRnZxYRvOfgGqpFTzVuQQKxVaesW7j
	L6JfdWpS9w9G8jHMmLF7r/VvwFQJeFoVqn2zUA2RLzo37PByCDK8FNgK4AL2ScFmXQQ3mFkc/yKYF
	DdnTtw4N1Yo+H2l3vnP6AXDzTM9+6LthpJ8kfX/88nit245h/1FKdnPwop/DsksW5ejFpzap2ZYyb
	pkZPf8nTOZl9ie6DKvDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkKjo-0000Zh-Ow; Mon, 08 Jul 2019 03:54:48 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkKis-0008V5-Om
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 03:53:54 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x683qkYZ017977;
 Sun, 7 Jul 2019 22:52:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562557966;
 bh=0frDprr6mFGJ9Tw1xlMqTJaMNs6+o4FICJuO/EOBWdw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=tgmTgs+0SqkD0J3qGeKuaLLvWVdbWmhaZiIeHqry6h06CVk/w7Q5cPQvBv4b5HWiM
 003P6SR1tX5rnVdYkkln8A07jlQ/qoCBm6X0LM5xRibaMHZjQFKEIOw5BOsL0+6tfR
 fwushiGxyFlOYUNEDqQZ+GBVv6CQVK0spATHqsPk=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x683qkMW102647
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 7 Jul 2019 22:52:46 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 7 Jul
 2019 22:52:46 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 7 Jul 2019 22:52:46 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x683qkv7130108;
 Sun, 7 Jul 2019 22:52:46 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x683qkm26441; 
 Sun, 7 Jul 2019 22:52:46 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>
Subject: [PATCH 3/6] irqchip/irq-pruss-intc: Add support for shared and
 invalid interrupts
Date: Sun, 7 Jul 2019 22:52:40 -0500
Message-ID: <20190708035243.12170-4-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190708035243.12170-1-s-anna@ti.com>
References: <20190708035243.12170-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_205350_887788_4B5685BB 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Murali Karicheri <m-karicheri2@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PRUSS INTC has a fixed number of output interrupt lines that are
connected to a number of processors or other PRUSS instances or other
devices (like DMA) on the SoC. The output interrupt lines 2 through 9
are usually connected to the main ARM host processor and are referred
to as host interrupts 0 through 7 from ARM/MPU perspective.

All of these 8 host interrupts are not always exclusively connected
to the ARM GIC. Some SoCs have some interrupt lines not connected to
the ARM GIC at all, while a few others have the interrupt lines
connected to multiple processors in which they need to be partitioned
as per SoC integration needs. For example, AM437x and 66AK2G SoCs have
2 PRUSS instances each and have the host interrupt 5 connected to the
other PRUSS, while AM335x has host interrupt 0 shared between MPU and
TSC_ADC and host interrupts 6 & 7 shared between MPU and a DMA controller.

Add support to the PRUSS INTC driver to allow both these shared and
invalid interrupts by not returning a failure if any of these interrupts
are skipped from the corresponding INTC DT node.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 drivers/irqchip/irq-pruss-intc.c | 44 +++++++++++++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-pruss-intc.c b/drivers/irqchip/irq-pruss-intc.c
index d62186ad1be4..142d01b434e0 100644
--- a/drivers/irqchip/irq-pruss-intc.c
+++ b/drivers/irqchip/irq-pruss-intc.c
@@ -68,6 +68,8 @@
  * @domain: irq domain for this interrupt controller
  * @lock: mutex to serialize access to INTC
  * @host_mask: indicate which HOST IRQs are enabled
+ * @shared_intr: bit-map denoting if the MPU host interrupt is shared
+ * @invalid_intr: bit-map denoting if host interrupt is connected to MPU
  */
 struct pruss_intc {
 	unsigned int irqs[MAX_NUM_HOST_IRQS];
@@ -76,6 +78,8 @@ struct pruss_intc {
 	struct irq_domain *domain;
 	struct mutex lock; /* PRUSS INTC lock */
 	u32 host_mask;
+	u16 shared_intr;
+	u16 invalid_intr;
 };
 
 static inline u32 pruss_intc_read_reg(struct pruss_intc *intc, unsigned int reg)
@@ -243,7 +247,8 @@ static int pruss_intc_probe(struct platform_device *pdev)
 	struct pruss_intc *intc;
 	struct resource *res;
 	struct irq_chip *irqchip;
-	int i, irq;
+	int i, irq, count;
+	u8 temp_intr[MAX_NUM_HOST_IRQS] = { 0 };
 
 	intc = devm_kzalloc(dev, sizeof(*intc), GFP_KERNEL);
 	if (!intc)
@@ -260,6 +265,39 @@ static int pruss_intc_probe(struct platform_device *pdev)
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
+			dev_warn(dev, "ignoring invalid reserved irq %d\n",
+				 temp_intr[i]);
+		}
+	}
+
 	mutex_init(&intc->lock);
 
 	pruss_intc_init(intc);
@@ -286,6 +324,10 @@ static int pruss_intc_probe(struct platform_device *pdev)
 	for (i = 0; i < MAX_NUM_HOST_IRQS; i++) {
 		irq = platform_get_irq_byname(pdev, irq_names[i]);
 		if (irq < 0) {
+			if (intc->shared_intr & BIT(i) ||
+			    intc->invalid_intr & BIT(i))
+				continue;
+
 			dev_err(dev->parent, "platform_get_irq_byname failed for %s : %d\n",
 				irq_names[i], irq);
 			goto fail_irq;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
