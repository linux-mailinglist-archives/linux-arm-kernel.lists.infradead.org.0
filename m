Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7907E8764B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0wZGYUaJug0CTBgHQuT+29eoyIl2xnI6hipyZECNmU=; b=ng5eNaraE0YIhd
	5nVgs0Lws8WXCKyVMYIl3++/1C6kYuArNCce1cwiVgvyYlXky3IY0v3QUfO+AKfKaml+XbL7Sq3OL
	1HUptIJEuT+/AOe3735X+ZdU08Zyk6pnWAqYF1NExNwildfe54HUSkiyByBQA1cG58pj6xjQkQTtu
	RR/Gw7roX4Xo4idEeR/B/RNYXFqVAYaZBe0LW/sWUMZz4YFVfJ1pfM1D1UQj1jCqHuJfQHlVY0NEP
	bHcdiettdEp1E7n92O6VwLcFYPAxFon/V1LANRXW3KBBKEt3UxJVZ9e8vb8LK8Ek+JqP+X0l5mwCN
	IyHF32oKS0H05adyo4HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1J6-0006lo-42; Fri, 09 Aug 2019 09:35:32 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1Gs-0003iz-Jb
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:33:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 74204D63B9;
 Fri,  9 Aug 2019 11:33:12 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 77NMahfoBQOn; Fri,  9 Aug 2019 11:32:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id C7F80D63BE;
 Fri,  9 Aug 2019 11:32:21 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FNWy77kU3UBY; Fri,  9 Aug 2019 11:32:15 +0200 (CEST)
Received: from furthur.local (ip-37-188-137-236.eurotel.cz [37.188.137.236])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 728A0D63B9;
 Fri,  9 Aug 2019 11:32:14 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 07/19] irqchip/mmp: mask off interrupts from other cores
Date: Fri,  9 Aug 2019 11:31:46 +0200
Message-Id: <20190809093158.7969-8-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190809093158.7969-1-lkundrak@v3.sk>
References: <20190809093158.7969-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_023315_189544_3930D6C6 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Andres Salomon <dilinger@queued.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andres Salomon <dilinger@queued.net>

On mmp3, there's an extra set of ICU registers (ICU2) that handle
interrupts on the extra cores.  When masking off interrupts on MP1,
these should be masked as well.

We add a new interrupt controller via device tree to identify when we're
looking at an mmp3 machine via compatible field of "marvell,mmp3-intc".

[lkundrak@v3.sk: Changed "mrvl,mmp3-intc" compatible strings to
"marvell,mmp3-intc". Tidied up the subject line a bit.]

Signed-off-by: Andres Salomon <dilinger@queued.net>
Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>

---
 arch/arm/mach-mmp/regs-icu.h |  3 +++
 drivers/irqchip/irq-mmp.c    | 51 ++++++++++++++++++++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/arch/arm/mach-mmp/regs-icu.h b/arch/arm/mach-mmp/regs-icu.h
index 0375d5a7fcb2b..410743d2b4020 100644
--- a/arch/arm/mach-mmp/regs-icu.h
+++ b/arch/arm/mach-mmp/regs-icu.h
@@ -11,6 +11,9 @@
 #define ICU_VIRT_BASE	(AXI_VIRT_BASE + 0x82000)
 #define ICU_REG(x)	(ICU_VIRT_BASE + (x))
 
+#define ICU2_VIRT_BASE	(AXI_VIRT_BASE + 0x84000)
+#define ICU2_REG(x)	(ICU2_VIRT_BASE + (x))
+
 #define ICU_INT_CONF(n)		ICU_REG((n) << 2)
 #define ICU_INT_CONF_MASK	(0xf)
 
diff --git a/drivers/irqchip/irq-mmp.c b/drivers/irqchip/irq-mmp.c
index cd8d2253f56d1..25497c75cc861 100644
--- a/drivers/irqchip/irq-mmp.c
+++ b/drivers/irqchip/irq-mmp.c
@@ -44,6 +44,7 @@ struct icu_chip_data {
 	unsigned int		conf_enable;
 	unsigned int		conf_disable;
 	unsigned int		conf_mask;
+	unsigned int		conf2_mask;
 	unsigned int		clr_mfp_irq_base;
 	unsigned int		clr_mfp_hwirq;
 	struct irq_domain	*domain;
@@ -53,9 +54,11 @@ struct mmp_intc_conf {
 	unsigned int	conf_enable;
 	unsigned int	conf_disable;
 	unsigned int	conf_mask;
+	unsigned int	conf2_mask;
 };
 
 static void __iomem *mmp_icu_base;
+static void __iomem *mmp_icu2_base;
 static struct icu_chip_data icu_data[MAX_ICU_NR];
 static int max_icu_nr;
 
@@ -98,6 +101,16 @@ static void icu_mask_irq(struct irq_data *d)
 		r &= ~data->conf_mask;
 		r |= data->conf_disable;
 		writel_relaxed(r, mmp_icu_base + (hwirq << 2));
+
+		if (data->conf2_mask) {
+			/*
+			 * ICU1 (above) only controls PJ4 MP1; if using SMP,
+			 * we need to also mask the MP2 and MM cores via ICU2.
+			 */
+			r = readl_relaxed(mmp_icu2_base + (hwirq << 2));
+			r &= ~data->conf2_mask;
+			writel_relaxed(r, mmp_icu2_base + (hwirq << 2));
+		}
 	} else {
 		r = readl_relaxed(data->reg_mask) | (1 << hwirq);
 		writel_relaxed(r, data->reg_mask);
@@ -201,6 +214,14 @@ static const struct mmp_intc_conf mmp2_conf = {
 			  MMP2_ICU_INT_ROUTE_PJ4_FIQ,
 };
 
+static struct mmp_intc_conf mmp3_conf = {
+	.conf_enable	= 0x20,
+	.conf_disable	= 0x0,
+	.conf_mask	= MMP2_ICU_INT_ROUTE_PJ4_IRQ |
+			  MMP2_ICU_INT_ROUTE_PJ4_FIQ,
+	.conf2_mask	= 0xf0,
+};
+
 static void __exception_irq_entry mmp_handle_irq(struct pt_regs *regs)
 {
 	int hwirq;
@@ -364,6 +385,14 @@ static int __init mmp_init_bases(struct device_node *node)
 		pr_err("Failed to get interrupt controller register\n");
 		return -ENOMEM;
 	}
+	if (of_device_is_compatible(node, "marvell,mmp3-intc")) {
+		mmp_icu2_base = of_iomap(node, 1);
+		if (!mmp_icu2_base) {
+			pr_err("Failed to get interrupt controller register #2\n");
+			iounmap(mmp_icu_base);
+			return -ENOMEM;
+		}
+	}
 
 	icu_data[0].virq_base = 0;
 	icu_data[0].domain = irq_domain_add_linear(node, nr_irqs,
@@ -386,6 +415,8 @@ static int __init mmp_init_bases(struct device_node *node)
 			irq_dispose_mapping(icu_data[0].virq_base + i);
 	}
 	irq_domain_remove(icu_data[0].domain);
+	if (of_device_is_compatible(node, "marvell,mmp3-intc"))
+		iounmap(mmp_icu2_base);
 	iounmap(mmp_icu_base);
 	return -EINVAL;
 }
@@ -428,6 +459,26 @@ static int __init mmp2_of_init(struct device_node *node,
 }
 IRQCHIP_DECLARE(mmp2_intc, "mrvl,mmp2-intc", mmp2_of_init);
 
+static int __init mmp3_of_init(struct device_node *node,
+			       struct device_node *parent)
+{
+	int ret;
+
+	ret = mmp_init_bases(node);
+	if (ret < 0)
+		return ret;
+
+	icu_data[0].conf_enable = mmp3_conf.conf_enable;
+	icu_data[0].conf_disable = mmp3_conf.conf_disable;
+	icu_data[0].conf_mask = mmp3_conf.conf_mask;
+	icu_data[0].conf2_mask = mmp3_conf.conf2_mask;
+	irq_set_default_host(icu_data[0].domain);
+	set_handle_irq(mmp2_handle_irq);
+	max_icu_nr = 1;
+	return 0;
+}
+IRQCHIP_DECLARE(mmp3_intc, "marvell,mmp3-intc", mmp3_of_init);
+
 static int __init mmp2_mux_of_init(struct device_node *node,
 				   struct device_node *parent)
 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
