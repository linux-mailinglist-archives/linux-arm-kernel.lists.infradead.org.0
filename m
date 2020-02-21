Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7655166FD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 07:48:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1HZ1S5D2Y3SVXejC+MsO3/dyvXDgxXY8fuQXH52buvM=; b=lyKEm3+mfUVF8c5qXDcF0Fa49f
	hL6/V+y47dky0J76VLzuFelyuS1Q9uxaLPAbbvltrf8U/1grjNfEybQsDqNtK0MgulGzpmKQuUM9R
	9L36XZv2679kETvtgXrmCxSG7595UETYmfsLaX7zyxDSdjv9rpZ1hC2RBiwwiDl+fbwJZIibixJ9u
	BgQInXd375EZLzFIZIoGvTF1Upuorg6IgmOlbS3lEa9SIJQpAQZeUYq/xgZLXKZFEy/v02ZupGyM3
	nahU7ZSgl3l3PtOIiAlO1PzkSkmuGhqaRdEKyEZ35je88VdREYKK3128CuYvKNqK9Oho5XSobBAHh
	6sCYYaYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j526n-0000Sh-7E; Fri, 21 Feb 2020 06:48:21 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j525m-0008AB-Ct
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 06:47:20 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B69FE1A6D88;
 Fri, 21 Feb 2020 07:47:16 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8931A1A6D82;
 Fri, 21 Feb 2020 07:47:08 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C85EB4043C;
 Fri, 21 Feb 2020 14:46:10 +0800 (SGT)
From: sherry sun <sherry.sun@nxp.com>
To: bp@alien8.de, mchehab@kernel.org, tony.luck@intel.com, james.morse@arm.com,
 rrichter@marvell.com, michal.simek@xilinx.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 3/3] EDAC: synopsys: Add edac driver support for i.MX8MP
Date: Fri, 21 Feb 2020 14:39:16 +0800
Message-Id: <1582267156-20189-4-git-send-email-sherry.sun@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582267156-20189-1-git-send-email-sherry.sun@nxp.com>
References: <1582267156-20189-1-git-send-email-sherry.sun@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_224718_737972_0F483FA6 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, frank.li@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sherry Sun <sherry.sun@nxp.com>

Since i.MX8MP use synopsys ddr controller IP, so add edac support
for i.MX8MP based on synopsys edac driver. i.MX8MP use LPDDR4 and
support interrupts for corrected and uncorrected errors. The main
difference between ZynqMP and i.MX8MP ddr controller is the interrupt
registers. So add another interrupt handler function, enable/disable
interrupt function to distinguish with ZynqMP.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 drivers/edac/synopsys_edac.c | 77 +++++++++++++++++++++++++++++++++++-
 1 file changed, 76 insertions(+), 1 deletion(-)

diff --git a/drivers/edac/synopsys_edac.c b/drivers/edac/synopsys_edac.c
index 2d263382d797..66c801502212 100644
--- a/drivers/edac/synopsys_edac.c
+++ b/drivers/edac/synopsys_edac.c
@@ -101,6 +101,7 @@
 /* DDR ECC Quirks */
 #define DDR_ECC_INTR_SUPPORT		BIT(0)
 #define DDR_ECC_DATA_POISON_SUPPORT	BIT(1)
+#define DDR_ECC_IMX8MP			BIT(2)
 
 /* ZynqMP Enhanced DDR memory controller registers that are relevant to ECC */
 /* ECC Configuration Registers */
@@ -266,6 +267,11 @@
 
 #define RANK_B0_BASE			6
 
+/* ECCCTL UE/CE Interrupt enable/disable for IMX8MP*/
+#define DDR_CE_INTR_EN_MASK			0x100
+#define DDR_UE_INTR_EN_MASK			0x200
+#define ECC_INTR_MASK				0x10100
+
 /**
  * struct ecc_error_info - ECC error log information.
  * @row:	Row number.
@@ -524,6 +530,54 @@ static void handle_error(struct mem_ctl_info *mci, struct synps_ecc_status *p)
 	memset(p, 0, sizeof(*p));
 }
 
+static void enable_intr_imx8mp(struct synps_edac_priv *priv)
+{
+	int regval;
+
+	regval = readl(priv->baseaddr + ECC_CLR_OFST);
+	regval |= (DDR_CE_INTR_EN_MASK | DDR_UE_INTR_EN_MASK);
+	writel(regval, priv->baseaddr + ECC_CLR_OFST);
+}
+
+static void disable_intr_imx8mp(struct synps_edac_priv *priv)
+{
+	int regval;
+
+	regval = readl(priv->baseaddr + ECC_CLR_OFST);
+	regval &= ~(DDR_CE_INTR_EN_MASK | DDR_UE_INTR_EN_MASK);
+	writel(regval, priv->baseaddr + ECC_CLR_OFST);
+}
+
+/* Interrupt Handler for ECC interrupts on imx8mp platform. */
+static irqreturn_t intr_handler_imx8mp(int irq, void *dev_id)
+{
+	const struct synps_platform_data *p_data;
+	struct mem_ctl_info *mci = dev_id;
+	struct synps_edac_priv *priv;
+	int status, regval;
+
+	priv = mci->pvt_info;
+	p_data = priv->p_data;
+
+	regval = readl(priv->baseaddr + ECC_STAT_OFST);
+	if (!(regval & ECC_INTR_MASK))
+		return IRQ_NONE;
+
+	status = p_data->get_error_info(priv);
+	if (status)
+		return IRQ_NONE;
+
+	priv->ce_cnt += priv->stat.ce_cnt;
+	priv->ue_cnt += priv->stat.ue_cnt;
+	handle_error(mci, &priv->stat);
+
+	edac_dbg(3, "Total error count CE %d UE %d\n",
+		 priv->ce_cnt, priv->ue_cnt);
+	enable_intr_imx8mp(priv);
+
+	return IRQ_HANDLED;
+}
+
 /**
  * intr_handler - Interrupt Handler for ECC interrupts.
  * @irq:        IRQ number.
@@ -541,6 +595,9 @@ static irqreturn_t intr_handler(int irq, void *dev_id)
 	priv = mci->pvt_info;
 	p_data = priv->p_data;
 
+	if (p_data->quirks & DDR_ECC_IMX8MP)
+		return intr_handler_imx8mp(irq, dev_id);
+
 	regval = readl(priv->baseaddr + DDR_QOS_IRQ_STAT_OFST);
 	regval &= (DDR_QOSCE_MASK | DDR_QOSUE_MASK);
 	if (!(regval & ECC_CE_UE_INTR_MASK))
@@ -817,7 +874,7 @@ static void mc_init(struct mem_ctl_info *mci, struct platform_device *pdev)
 	platform_set_drvdata(pdev, mci);
 
 	/* Initialize controller capabilities and configuration */
-	mci->mtype_cap = MEM_FLAG_DDR3 | MEM_FLAG_DDR2;
+	mci->mtype_cap = MEM_FLAG_LRDDR4 | MEM_FLAG_DDR3 | MEM_FLAG_DDR2;
 	mci->edac_ctl_cap = EDAC_FLAG_NONE | EDAC_FLAG_SECDED;
 	mci->scrub_cap = SCRUB_HW_SRC;
 	mci->scrub_mode = SCRUB_NONE;
@@ -842,6 +899,9 @@ static void mc_init(struct mem_ctl_info *mci, struct platform_device *pdev)
 static void enable_intr(struct synps_edac_priv *priv)
 {
 	/* Enable UE/CE Interrupts */
+	if (priv->p_data->quirks & DDR_ECC_IMX8MP)
+		return enable_intr_imx8mp(priv);
+
 	writel(DDR_QOSUE_MASK | DDR_QOSCE_MASK,
 			priv->baseaddr + DDR_QOS_IRQ_EN_OFST);
 }
@@ -849,6 +909,9 @@ static void enable_intr(struct synps_edac_priv *priv)
 static void disable_intr(struct synps_edac_priv *priv)
 {
 	/* Disable UE/CE Interrupts */
+	if (priv->p_data->quirks & DDR_ECC_IMX8MP)
+		return disable_intr_imx8mp(priv);
+
 	writel(DDR_QOSUE_MASK | DDR_QOSCE_MASK,
 			priv->baseaddr + DDR_QOS_IRQ_DB_OFST);
 }
@@ -898,6 +961,14 @@ static const struct synps_platform_data zynqmp_edac_def = {
 			  ),
 };
 
+static const struct synps_platform_data imx8mp_edac_def = {
+	.get_error_info	= zynqmp_get_error_info,
+	.get_mtype	= zynqmp_get_mtype,
+	.get_dtype	= zynqmp_get_dtype,
+	.get_ecc_state	= zynqmp_get_ecc_state,
+	.quirks         = (DDR_ECC_INTR_SUPPORT | DDR_ECC_IMX8MP),
+};
+
 static const struct of_device_id synps_edac_match[] = {
 	{
 		.compatible = "xlnx,zynq-ddrc-a05",
@@ -907,6 +978,10 @@ static const struct of_device_id synps_edac_match[] = {
 		.compatible = "xlnx,zynqmp-ddrc-2.40a",
 		.data = (void *)&zynqmp_edac_def
 	},
+	{
+		.compatible = "fsl,imx8mp-ddrc",
+		.data = (void *)&imx8mp_edac_def
+	},
 	{
 		/* end of table */
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
