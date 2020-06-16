Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C871FC058
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 22:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pQVndqD73Y+ugfHDHNqOSx4log5Lg4Yvj2BDOkWelBk=; b=Nb4GOuVHeN0X05iAeRd24A1dXz
	2SDAWmV0HYWqlogT7JarsIJHH3jI1K7eEXrZzcoBl65og/3NiUmj/Lh5dO3QQyxg+/yQ8dIY2aVwt
	hNFOeTICVBsjnV8ilIvpSaZgPamuPcT+LNNZQepNP4s4WlCYCAHG39OEbLpgTZ1KCdMhjFq7J8k4q
	vHcxk9CwfVg2c9ivBr7JkKs5QBxWqkMSV/cnX9+nKI1kWvBgRNHgUGZCJoLQGgG9obxHcpuN+6XE7
	4MLflUJ6juVvS/9Va91FcbsGbnjmMUvWlDXyAbbtr4PfPiatewfONsoe+YUKDVaW4aGvOXI2OD0tO
	DmrRf4mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlIdX-0002oc-4R; Tue, 16 Jun 2020 20:56:51 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlIcb-0002Fm-Oh; Tue, 16 Jun 2020 20:55:55 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id B099B30D89B;
 Tue, 16 Jun 2020 13:55:52 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com B099B30D89B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1592340952;
 bh=SCeymgfmidxWNTewp2CUtXHPgRiJmtVBtU2BuTPYLFs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j34iebnoWtQIC43Fs2+sKyH96+vuara/F0m/rhvM9iFzRU8nQuLf57u/3TxApggzE
 TerRgmr1Au98HeuQ+NaZ/OA1pFUGotoa0PZtAimz8iQroOzMjnhdxSzPwpFchSLa4T
 wVbGD55E6jOv55FTNadmZ/w052SefsaQAv4Sj33g=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 6780314008C;
 Tue, 16 Jun 2020 13:55:51 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, james.quinlan@broadcom.com
Subject: [PATCH v5 04/12] PCI: brcmstb: Add bcm7278 register info
Date: Tue, 16 Jun 2020 16:55:11 -0400
Message-Id: <20200616205533.3513-5-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616205533.3513-1-james.quinlan@broadcom.com>
References: <20200616205533.3513-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_135553_830265_CDAB5CB6 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jquinlan@broadcom.com>

Add in compatibility strings and code for three Broadcom STB chips.  Some
of the register locations, shifts, and masks are different for certain
chips, requiring the use of different constants based on of_id.

We would like to add the following at this time to the match list but we
need to wait until the end of this patchset so that everything works.

    { .compatible = "brcm,bcm7211-pcie", .data = &generic_cfg },
    { .compatible = "brcm,bcm7278-pcie", .data = &bcm7278_cfg },
    { .compatible = "brcm,bcm7216-pcie", .data = &bcm7278_cfg },
    { .compatible = "brcm,bcm7445-pcie", .data = &generic_cfg },

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 105 +++++++++++++++++++++++---
 1 file changed, 93 insertions(+), 12 deletions(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 7730ea845ff2..b7a222fde3c4 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -122,9 +122,8 @@
 #define  PCIE_EXT_SLOT_SHIFT				15
 #define  PCIE_EXT_FUNC_SHIFT				12
 
-#define PCIE_RGR1_SW_INIT_1				0x9210
 #define  PCIE_RGR1_SW_INIT_1_PERST_MASK			0x1
-#define  PCIE_RGR1_SW_INIT_1_INIT_MASK			0x2
+#define  PCIE_RGR1_SW_INIT_1_PERST_SHIFT		0x0
 
 /* PCIe parameters */
 #define BRCM_NUM_PCIE_OUT_WINS		0x4
@@ -154,6 +153,73 @@
 #define SSC_STATUS_SSC_MASK		0x400
 #define SSC_STATUS_PLL_LOCK_MASK	0x800
 
+#define IDX_ADDR(pcie)			(pcie->reg_offsets[EXT_CFG_INDEX])
+#define DATA_ADDR(pcie)			(pcie->reg_offsets[EXT_CFG_DATA])
+#define PCIE_RGR1_SW_INIT_1(pcie)	(pcie->reg_offsets[RGR1_SW_INIT_1])
+
+enum {
+	RGR1_SW_INIT_1,
+	EXT_CFG_INDEX,
+	EXT_CFG_DATA,
+};
+
+enum {
+	RGR1_SW_INIT_1_INIT_MASK,
+	RGR1_SW_INIT_1_INIT_SHIFT,
+};
+
+enum pcie_type {
+	GENERIC,
+	BCM7278,
+	BCM2711,
+};
+
+struct pcie_cfg_data {
+	const int *reg_field_info;
+	const int *offsets;
+	const enum pcie_type type;
+};
+
+static const int pcie_reg_field_info[] = {
+	[RGR1_SW_INIT_1_INIT_MASK] = 0x2,
+	[RGR1_SW_INIT_1_INIT_SHIFT] = 0x1,
+};
+
+static const int pcie_reg_field_info_bcm7278[] = {
+	[RGR1_SW_INIT_1_INIT_MASK] = 0x1,
+	[RGR1_SW_INIT_1_INIT_SHIFT] = 0x0,
+};
+
+static const int pcie_offsets[] = {
+	[RGR1_SW_INIT_1] = 0x9210,
+	[EXT_CFG_INDEX]  = 0x9000,
+	[EXT_CFG_DATA]   = 0x9004,
+};
+
+static const struct pcie_cfg_data generic_cfg = {
+	.reg_field_info	= pcie_reg_field_info,
+	.offsets	= pcie_offsets,
+	.type		= GENERIC,
+};
+
+static const int pcie_offset_bcm7278[] = {
+	[RGR1_SW_INIT_1] = 0xc010,
+	[EXT_CFG_INDEX] = 0x9000,
+	[EXT_CFG_DATA] = 0x9004,
+};
+
+static const struct pcie_cfg_data bcm7278_cfg = {
+	.reg_field_info = pcie_reg_field_info_bcm7278,
+	.offsets	= pcie_offset_bcm7278,
+	.type		= BCM7278,
+};
+
+static const struct pcie_cfg_data bcm2711_cfg = {
+	.reg_field_info	= pcie_reg_field_info,
+	.offsets	= pcie_offsets,
+	.type		= BCM2711,
+};
+
 struct brcm_msi {
 	struct device		*dev;
 	void __iomem		*base;
@@ -178,6 +244,9 @@ struct brcm_pcie {
 	int			gen;
 	u64			msi_target_addr;
 	struct brcm_msi		*msi;
+	const int		*reg_offsets;
+	const int		*reg_field_info;
+	enum pcie_type		type;
 };
 
 /*
@@ -604,20 +673,21 @@ static struct pci_ops brcm_pcie_ops = {
 
 static inline void brcm_pcie_bridge_sw_init_set(struct brcm_pcie *pcie, u32 val)
 {
-	u32 tmp;
+	u32 tmp, mask =  pcie->reg_field_info[RGR1_SW_INIT_1_INIT_MASK];
+	u32 shift = pcie->reg_field_info[RGR1_SW_INIT_1_INIT_SHIFT];
 
-	tmp = readl(pcie->base + PCIE_RGR1_SW_INIT_1);
-	u32p_replace_bits(&tmp, val, PCIE_RGR1_SW_INIT_1_INIT_MASK);
-	writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1);
+	tmp = readl(pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
+	tmp = (tmp & ~mask) | ((val << shift) & mask);
+	writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
 }
 
 static inline void brcm_pcie_perst_set(struct brcm_pcie *pcie, u32 val)
 {
 	u32 tmp;
 
-	tmp = readl(pcie->base + PCIE_RGR1_SW_INIT_1);
+	tmp = readl(pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
 	u32p_replace_bits(&tmp, val, PCIE_RGR1_SW_INIT_1_PERST_MASK);
-	writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1);
+	writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
 }
 
 static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie *pcie,
@@ -927,11 +997,17 @@ static int brcm_pcie_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct of_device_id brcm_pcie_match[] = {
+	{ .compatible = "brcm,bcm2711-pcie", .data = &bcm2711_cfg },
+	{},
+};
+
 static int brcm_pcie_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node, *msi_np;
 	struct pci_host_bridge *bridge;
 	struct device_node *fw_np;
+	const struct pcie_cfg_data *data;
 	struct brcm_pcie *pcie;
 	struct pci_bus *child;
 	struct resource *res;
@@ -955,9 +1031,18 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 	if (!bridge)
 		return -ENOMEM;
 
+	data = of_device_get_match_data(&pdev->dev);
+	if (!data) {
+		pr_err("failed to look up compatible string\n");
+		return -EINVAL;
+	}
+
 	pcie = pci_host_bridge_priv(bridge);
 	pcie->dev = &pdev->dev;
 	pcie->np = np;
+	pcie->reg_offsets = data->offsets;
+	pcie->reg_field_info = data->reg_field_info;
+	pcie->type = data->type;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	pcie->base = devm_ioremap_resource(&pdev->dev, res);
@@ -1023,10 +1108,6 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 	return ret;
 }
 
-static const struct of_device_id brcm_pcie_match[] = {
-	{ .compatible = "brcm,bcm2711-pcie" },
-	{},
-};
 MODULE_DEVICE_TABLE(of, brcm_pcie_match);
 
 static struct platform_driver brcm_pcie_driver = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
