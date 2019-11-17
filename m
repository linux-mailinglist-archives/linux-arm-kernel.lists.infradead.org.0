Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1C6FF982
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 13:29:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3JMSfmXT9a2LpR8op7Yx7jToHVxlKb2udpCjvUWzGBI=; b=nYqG6141wyIxVysM0vmXFumdKi
	pqluOI7Pc2S4fgSgHJtoWgaicMBOJz2sB4Rp8iuRGdnQHi+vz3Sy5/M5weCy0c5CUO8MVIzhBCa9d
	GwW1dJ85GN52DzXbQApGv0co4j7sUd4Q1740v+BMQc3zaJuByIWNZ2tZaDBpztPVQz+ee86GI24uE
	zMRgjxrGGunQ97WW8GOMmr8rYJBz3wbT3D86qwz8sb7MJLYmrTC9oN1enHH33fHf8WK/gIjPKgQlg
	VKp59Yb06Xm/9x3Toj547LAMZzYOd5uKwfi0ISod/2lhaKhR+OmoXvXEodEow746B8ZrczFu0C8B4
	nKYP5i1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWJgX-0000Pf-IL; Sun, 17 Nov 2019 12:29:45 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWJeU-0007AU-FO
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 12:27:40 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 134C32000BD;
 Sun, 17 Nov 2019 13:27:37 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 93FE72007B9;
 Sun, 17 Nov 2019 13:27:32 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 28E43402D0;
 Sun, 17 Nov 2019 20:27:24 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH RESEND v5 08/11] clk: imx: imx8qxp-lpcg: add parsing clocks
 from device tree
Date: Sun, 17 Nov 2019 20:25:16 +0800
Message-Id: <1573993519-14308-9-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573993519-14308-1-git-send-email-aisheng.dong@nxp.com>
References: <1573993519-14308-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_042738_803430_76512DDB 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, sboyd@kernel.org,
 mturquette@baylibre.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

One LPCG controller supports up to 8 clock outputs while each of them
is fixed to 4 bits.  It supports only gating function with fixed bits.
So we can use the clk-indices to fetch the corresponding clock idx from
device tree. With this way, we can write a generic LPCG clock drivers.

This patch add that support to parse clocks from device tree.

Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Michael Turquette <mturquette@baylibre.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
Changelog:
v4->v5:
 * add error check for devm_of_clk_add_hw_provider
 * add more commit message
 * a few minor updates
v3->v4:
 * remove hw_autogate which is not still used by driver
 * use clock-indices to indicate LPCG clock bit offset
v1->v3: no changes
---
 drivers/clk/imx/clk-imx8qxp-lpcg.c | 124 +++++++++++++++++++++++++++++
 drivers/clk/imx/clk-lpcg-scu.c     |   7 ++
 drivers/clk/imx/clk-scu.h          |   1 +
 3 files changed, 132 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
index c0aff7ca6374..4d53f2b34191 100644
--- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
+++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
@@ -9,6 +9,7 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
@@ -157,6 +158,122 @@ static const struct imx8qxp_ss_lpcg imx8qxp_ss_lsio = {
 	.num_max = IMX_LSIO_LPCG_CLK_END,
 };
 
+#define IMX_LPCG_MAX_CLKS	8
+
+static struct clk_hw *imx_lpcg_of_clk_src_get(struct of_phandle_args *clkspec,
+					      void *data)
+{
+	struct clk_hw_onecell_data *hw_data = data;
+	unsigned int idx = clkspec->args[0] / 4;
+
+	if (idx >= hw_data->num) {
+		pr_err("%s: invalid index %u\n", __func__, idx);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return hw_data->hws[idx];
+}
+
+static int imx_lpcg_parse_clks_from_dt(struct platform_device *pdev,
+				       struct device_node *np)
+{
+	const char *output_names[IMX_LPCG_MAX_CLKS];
+	const char *parent_names[IMX_LPCG_MAX_CLKS];
+	unsigned int bit_offset[IMX_LPCG_MAX_CLKS];
+	struct clk_hw_onecell_data *clk_data;
+	struct clk_hw **clk_hws;
+	struct resource *res;
+	void __iomem *base;
+	int count;
+	int idx;
+	int ret;
+	int i;
+
+	if (!of_device_is_compatible(np, "fsl,imx8qxp-lpcg"))
+		return -EINVAL;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	count = of_property_count_u32_elems(np, "clock-indices");
+	if (count < 0) {
+		dev_err(&pdev->dev, "failed to count clocks\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * A trick here is that we set the num of clks to the MAX instead
+	 * of the count from clock-indices because one LPCG supports up to
+	 * 8 clock outputs which each of them is fixed to 4 bits. Then we can
+	 * easily get the clock by clk-indices (bit-offset) / 4.
+	 * And the cost is very limited few pointers.
+	 */
+
+	clk_data = devm_kzalloc(&pdev->dev, struct_size(clk_data, hws,
+				IMX_LPCG_MAX_CLKS), GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
+
+	clk_data->num = IMX_LPCG_MAX_CLKS;
+	clk_hws = clk_data->hws;
+
+	ret = of_property_read_u32_array(np, "clock-indices", bit_offset,
+					 count);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "failed to read clock-indices\n");
+		return -EINVAL;
+	}
+
+	ret = of_clk_parent_fill(np, parent_names, count);
+	if (ret != count) {
+		dev_err(&pdev->dev, "failed to get clock parent names\n");
+		return count;
+	}
+
+	ret = of_property_read_string_array(np, "clock-output-names",
+					    output_names, count);
+	if (ret != count) {
+		dev_err(&pdev->dev, "failed to read clock-output-names\n");
+		return -EINVAL;
+	}
+
+	for (i = 0; i < count; i++) {
+		idx = bit_offset[i] / 4;
+		if (idx > IMX_LPCG_MAX_CLKS) {
+			dev_warn(&pdev->dev, "invalid bit offset of clock %d\n",
+				 i);
+			ret = -EINVAL;
+			goto unreg;
+		}
+
+		clk_hws[idx] = imx_clk_lpcg_scu(output_names[i],
+						parent_names[i], 0, base,
+						bit_offset[i], false);
+		if (IS_ERR(clk_hws[idx])) {
+			dev_warn(&pdev->dev, "failed to register clock %d\n",
+				 idx);
+			ret = PTR_ERR(clk_hws[idx]);
+			goto unreg;
+		}
+	}
+
+	ret = devm_of_clk_add_hw_provider(&pdev->dev, imx_lpcg_of_clk_src_get,
+					  clk_data);
+	if (!ret)
+		return 0;
+
+unreg:
+	while (--i >= 0) {
+		idx = bit_offset[i] / 4;
+		if (clk_hws[idx])
+			imx_clk_lpcg_scu_unregister(clk_hws[idx]);
+	}
+
+	return ret;
+}
+
 static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -167,8 +284,14 @@ static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
 	struct resource *res;
 	struct clk_hw **clks;
 	void __iomem *base;
+	int ret;
 	int i;
 
+	/* try new binding to parse clocks from device tree first */
+	ret = imx_lpcg_parse_clks_from_dt(pdev, np);
+	if (!ret)
+		return 0;
+
 	ss_lpcg = of_device_get_match_data(dev);
 	if (!ss_lpcg)
 		return -ENODEV;
@@ -208,6 +331,7 @@ static const struct of_device_id imx8qxp_lpcg_match[] = {
 	{ .compatible = "fsl,imx8qxp-lpcg-adma", &imx8qxp_ss_adma, },
 	{ .compatible = "fsl,imx8qxp-lpcg-conn", &imx8qxp_ss_conn, },
 	{ .compatible = "fsl,imx8qxp-lpcg-lsio", &imx8qxp_ss_lsio, },
+	{ .compatible = "fsl,imx8qxp-lpcg", NULL },
 	{ /* sentinel */ }
 };
 
diff --git a/drivers/clk/imx/clk-lpcg-scu.c b/drivers/clk/imx/clk-lpcg-scu.c
index a73a799fb777..5740064b2fdb 100644
--- a/drivers/clk/imx/clk-lpcg-scu.c
+++ b/drivers/clk/imx/clk-lpcg-scu.c
@@ -114,3 +114,10 @@ struct clk_hw *imx_clk_lpcg_scu(const char *name, const char *parent_name,
 
 	return hw;
 }
+
+void imx_clk_lpcg_scu_unregister(struct clk_hw *hw)
+{
+	struct clk_lpcg_scu *clk = to_clk_lpcg_scu(hw);
+
+	kfree(clk);
+}
diff --git a/drivers/clk/imx/clk-scu.h b/drivers/clk/imx/clk-scu.h
index 11eb3781ab6b..2db226a2401f 100644
--- a/drivers/clk/imx/clk-scu.h
+++ b/drivers/clk/imx/clk-scu.h
@@ -45,4 +45,5 @@ static inline struct clk_hw *imx_clk_scu2(const char *name, const char * const *
 struct clk_hw *imx_clk_lpcg_scu(const char *name, const char *parent_name,
 				unsigned long flags, void __iomem *reg,
 				u8 bit_idx, bool hw_gate);
+void imx_clk_lpcg_scu_unregister(struct clk_hw *hw);
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
