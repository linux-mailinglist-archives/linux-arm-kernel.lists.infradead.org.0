Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC950EFBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 06:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HJMTSPcIai8Vq5uqxU1CCqPJwNUtMpimhC3IdGgl6BU=; b=MnL
	XxRRLGeOMzhe13bnuKeEWYc21T6BimegLrOF1YlOZYZecgJqP8n5z4vKeSaPd31QDblrwEhdnbVcH
	ma7EGguEql8dmbuHGQdDI+YygplrenaCdu8ShInlw6zxPX/rvB6oUxdSpLBi1/rz1136TzCjlowWV
	4yeLI2sM6AZSJxrLLY/OctRVdVu69eMHPKCjIZw9imRRSV+ARkJGmnICt7M2Ovm89Vknjxs949Yzd
	Y3glRsYKtRCD46ghhGXjVW4M8OV8GhImtEo6ptiMr2+aNceiAxkO33Uld3Aw6UHT2LUlWYPpg/T+g
	ekf5wrZ9zjCPcnOiCVm9XUN/ugGjMWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLKeU-0007dL-Cv; Tue, 30 Apr 2019 04:45:58 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLKeM-0007cZ-HT
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 04:45:52 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 384E41A00B5;
 Tue, 30 Apr 2019 06:45:49 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6648D1A0013;
 Tue, 30 Apr 2019 06:45:40 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 09031402D9;
 Tue, 30 Apr 2019 12:45:29 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leoyang.li@nxp.com,
 robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 1/2] i2c: imx: I2C Driver doesn't consider I2C_IPGCLK_SEL RCW
 bit when using ls1046a SoC
Date: Tue, 30 Apr 2019 12:47:18 +0800
Message-Id: <20190430044719.30720-1-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_214550_857942_AC392BE0 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, sumit.batra@nxp.com, eha@deif.com,
 Chuanhua Han <chuanhua.han@nxp.com>, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, wsa+renesas@sang-engineering.com, linux-imx@nxp.com,
 u.kleine-koenig@pengutronix.de, l.stach@pengutronix.de, festevam@gmail.com,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current kernel driver does not consider I2C_IPGCLK_SEL (424 bit
of RCW) in deciding  i2c_clk_rate in function i2c_imx_set_clk()
{ 0 Platform clock/4, 1 Platform clock/2}.

When using ls1046a SoC, this populates incorrect value in IBFD register
if I2C_IPGCLK_SEL = 0, which generates half of the desired Clock.

Therefore, if ls1046a SoC is used, we need to set the i2c clock
according to the corresponding RCW.

Signed-off-by: Sumit Batra <sumit.batra@nxp.com>
Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
 drivers/i2c/busses/i2c-imx.c | 64 ++++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 422f1a445b55..7186cf3c7d24 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -45,6 +45,8 @@
 #include <linux/pm_runtime.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
+#include <linux/fsl/guts.h>
+#include <linux/sys_soc.h>
 
 /* This will be the driver name the kernel reports */
 #define DRIVER_NAME "imx-i2c"
@@ -109,6 +111,21 @@
 
 #define I2C_PM_TIMEOUT		10 /* ms */
 
+/* 14-1 Since array index starts from 0 */
+#define RCW_I2C_IPGCLK_WORD (14 - 1)
+/*
+ * Set mask for RCW 424th bit, reading from DCFG_CCSR RCW Status Registers
+ * Since this register in RM depicted as big endian,
+ * so consider 31st bit as LSB for creating the mask.
+ */
+#define RCW_I2C_IPGCLK_MASK    0x800000
+int i2c_ipgclk_sel = 1;
+
+static const struct soc_device_attribute ls1046a_soc[] = {
+	       {.family = "QorIQ LS1046A"},
+	       { /* sentinel */ }
+};
+
 /*
  * sorted list of clock divider, register value pairs
  * taken from table 26-5, p.26-9, Freescale i.MX
@@ -304,6 +321,11 @@ static const struct platform_device_id imx_i2c_devtype[] = {
 };
 MODULE_DEVICE_TABLE(platform, imx_i2c_devtype);
 
+static const struct of_device_id guts_device_ids[] = {
+	{ .compatible = "fsl,qoriq-device-config", },
+	{}
+};
+
 static const struct of_device_id i2c_imx_dt_ids[] = {
 	{ .compatible = "fsl,imx1-i2c", .data = &imx1_i2c_hwdata, },
 	{ .compatible = "fsl,imx21-i2c", .data = &imx21_i2c_hwdata, },
@@ -533,6 +555,9 @@ static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
 	unsigned int div;
 	int i;
 
+	if (!i2c_ipgclk_sel)
+		i2c_clk_rate = i2c_clk_rate / 2;
+
 	/* Divider value calculation */
 	if (i2c_imx->cur_clk == i2c_clk_rate)
 		return;
@@ -551,6 +576,10 @@ static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
 	/* Store divider value */
 	i2c_imx->ifdr = i2c_clk_div[i].val;
 
+	pr_alert("[%s] CLK Rate=%u Bitrate =%u Div =%u Value =%d\n",
+		 __func__, i2c_clk_rate, i2c_imx->bitrate,
+		 div, i2c_clk_div[i].val);
+
 	/*
 	 * There dummy delay is calculated.
 	 * It should be about one I2C clock period long.
@@ -1116,6 +1145,9 @@ static int i2c_imx_probe(struct platform_device *pdev)
 	int irq, ret;
 	dma_addr_t phy_addr;
 	u32 mul_value;
+	struct device_node *guts_node;
+	static struct ccsr_guts __iomem *guts_regs;
+	u32 rcw_reg;
 
 	dev_dbg(&pdev->dev, "<%s>\n", __func__);
 
@@ -1135,6 +1167,38 @@ static int i2c_imx_probe(struct platform_device *pdev)
 	if (!i2c_imx)
 		return -ENOMEM;
 
+	if (soc_device_match(ls1046a_soc)) {
+		/*
+		 * Make device node for GUTS/DCFG (global utilities block)
+		 * to read RCW.
+		 */
+		guts_node = of_find_matching_node(NULL, guts_device_ids);
+		if (!guts_node) {
+			dev_err(&pdev->dev, "Could not find GUTS node\n");
+			return -ENODEV;
+		}
+		/*
+		 * Memory (IO)  MAP the DCFG registers(for RCW) to
+		 * be used in kernel virtual address space.
+		 */
+		guts_regs = of_iomap(guts_node, 0);
+		of_node_put(guts_node);
+		if (!guts_regs) {
+			dev_err(&pdev->dev, "IOREMAP of GUTS node failed\n");
+			return -ENOMEM;
+		}
+		/* Read rcw bit 424 (starting from 0) */
+		rcw_reg = ioread32be(&guts_regs->rcwsr[RCW_I2C_IPGCLK_WORD]);
+		pr_alert("RCW REG[%d]=0x%x\n", RCW_I2C_IPGCLK_WORD, rcw_reg);
+		if (rcw_reg & RCW_I2C_IPGCLK_MASK) {
+			pr_alert("Div by 2 Case Detected in RCW\n");
+			i2c_ipgclk_sel = 1;
+		} else {
+			pr_alert("Div by 4 Case Detected in RCW\n");
+			i2c_ipgclk_sel = 0;
+		}
+	}
+
 	if (of_id) {
 		i2c_imx->hwdata = of_id->data;
 		ret = of_property_read_u32(pdev->dev.of_node,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
