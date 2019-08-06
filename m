Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E51982F7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3S4Qu2Rzh5Cv/luf9lS2uxoWFfV/H3XGYtc3CmVsaTo=; b=TiMk/TOo0ZJzb5
	RFYtHKxYVI4u1pAc+Y/HziMrEz05ngbZZtmom37OjuJw6clIYZyBHyl7a4ndlr9LYwfDEHTK2QKo7
	MeiECnTlVA8ghGDsPWGdU0uFzt33kBHEffmFSKBlNh4aqOTRFp5jweLvUFqvclVkQ8ittzjXLA/D2
	yfJH87Aa1cbBPcoBgSRqrpgQnqQ2bgusFN2HARq0WgcVeE6koVdw/hh0GVDSLA2KpEmqq4LWqGCFU
	wLm/E7lFozRKAdO/LdPzzY5aikycJO4RXH4yK+afVOJQ/U58HhgRiEX6jh4Cvnyz3HETMMqmxRPxM
	wX7jBtYFEaGrlJCzubdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwN1-0007tl-3M; Tue, 06 Aug 2019 10:07:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huwHq-00030U-0e
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:01:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A07BB337;
 Tue,  6 Aug 2019 03:01:45 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 680773F706;
 Tue,  6 Aug 2019 03:01:44 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 12/12] irqchip/gic-v3: Add quirks for HIP06/07 invalid
 GICD_TYPER erratum 161010803
Date: Tue,  6 Aug 2019 11:01:21 +0100
Message-Id: <20190806100121.240767-13-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806100121.240767-1-maz@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030147_060554_5AE97029 
X-CRM114-Status: GOOD (  15.80  )
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

It looks like the HIP06/07 SoCs have extra bits in their GICD_TYPER
registers, which confuse the GICv3.1 code (these systems appear to
expose ESPIs while they actually don't).

Detect these systems as early as possible and wipe the fields that
should be RES0 in the register.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 Documentation/arm64/silicon-errata.rst |  2 +
 drivers/irqchip/irq-gic-v3.c           | 54 +++++++++++++++++++++-----
 2 files changed, 46 insertions(+), 10 deletions(-)

diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
index 3e57d09246e6..17ea3fecddaa 100644
--- a/Documentation/arm64/silicon-errata.rst
+++ b/Documentation/arm64/silicon-errata.rst
@@ -115,6 +115,8 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | Hisilicon      | Hip0{6,7}       | #161010701      | N/A                         |
 +----------------+-----------------+-----------------+-----------------------------+
+| Hisilicon      | Hip0{6,7}       | #161010803      | N/A                         |
++----------------+-----------------+-----------------+-----------------------------+
 | Hisilicon      | Hip07           | #161600802      | HISILICON_ERRATUM_161600802 |
 +----------------+-----------------+-----------------+-----------------------------+
 | Hisilicon      | Hip08 SMMU PMCG | #162001800      | N/A                         |
diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 334a10d9dbfb..bee141613b67 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -1441,6 +1441,46 @@ static bool gic_enable_quirk_msm8996(void *data)
 	return true;
 }
 
+static bool gic_enable_quirk_hip06_07(void *data)
+{
+	struct gic_chip_data *d = data;
+
+	/*
+	 * HIP06 GICD_IIDR clashes with GIC-600 product number (despite
+	 * not being an actual ARM implementation). The saving grace is
+	 * that GIC-600 doesn't have ESPI, so nothing to do in that case.
+	 * HIP07 doesn't even have a proper IIDR, and still pretends to
+	 * have ESPI. In both cases, put them right.
+	 */
+	if (d->rdists.gicd_typer & GICD_TYPER_ESPI) {
+		/* Zero both ESPI and the RES0 field next to it... */
+		d->rdists.gicd_typer &= ~GENMASK(9, 8);
+		return true;
+	}
+
+	return false;
+}
+
+static const struct gic_quirk gic_quirks[] = {
+	{
+		.desc	= "GICv3: Qualcomm MSM8996 broken firmware",
+		.compatible = "qcom,msm8996-gic-v3",
+		.init	= gic_enable_quirk_msm8996,
+	},
+	{
+		.desc	= "GICv3: HIP06 erratum 161010803",
+		.iidr	= 0x0204043b,
+		.init	= gic_enable_quirk_hip06_07,
+	},
+	{
+		.desc	= "GICv3: HIP07 erratum 161010803",
+		.iidr	= 0x00000000,
+		.init	= gic_enable_quirk_hip06_07,
+	},
+	{
+	}
+};
+
 static void gic_enable_nmi_support(void)
 {
 	int i;
@@ -1494,6 +1534,10 @@ static int __init gic_init_bases(void __iomem *dist_base,
 	 */
 	typer = readl_relaxed(gic_data.dist_base + GICD_TYPER);
 	gic_data.rdists.gicd_typer = typer;
+
+	gic_enable_quirks(readl_relaxed(gic_data.dist_base + GICD_IIDR),
+			  gic_quirks, &gic_data);
+
 	pr_info("%d SPIs implemented\n", GIC_LINE_NR - 32);
 	pr_info("%d Extended SPIs implemented\n", GIC_ESPI_NR);
 	gic_data.domain = irq_domain_create_tree(handle, &gic_irq_domain_ops,
@@ -1676,16 +1720,6 @@ static void __init gic_of_setup_kvm_info(struct device_node *node)
 	gic_set_kvm_info(&gic_v3_kvm_info);
 }
 
-static const struct gic_quirk gic_quirks[] = {
-	{
-		.desc	= "GICv3: Qualcomm MSM8996 broken firmware",
-		.compatible = "qcom,msm8996-gic-v3",
-		.init	= gic_enable_quirk_msm8996,
-	},
-	{
-	}
-};
-
 static int __init gic_of_init(struct device_node *node, struct device_node *parent)
 {
 	void __iomem *dist_base;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
