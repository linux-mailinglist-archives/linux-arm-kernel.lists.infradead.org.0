Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8257E1A958D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p5P0phXqIl1K2ptJDhSKmkc6+MCEES1HQH6xfPTKU14=; b=m0nQn8fkUpJ19KHQjows6Sf3BV
	rp/RsoGS0DpJIsgUpKVcOI4/Go5XcCrMZ7BlchuZsgAYHjHALiqh+hshyg6SwbBO0OTTlMfCC5nrM
	wcEUZRudvdSYaMYJe7stKHu/5S6OtqvfczLvFASTjbbwwzBDPRMiJxUHabqz/gfwQPEFjNr6X1KC2
	PdUaB6kJOSVPAh/SFdZigv6ht8s8ttK+gW0ZfbsR2p5wgId3x1Yz3MFVuwOkf57b6NolNPM2dcY/k
	VNNdr1h63ZWJBoyph1m7FTGMUT+NShcJClM9bDwy34ZEBmid7WM4KgB9WWtfBM5Zy/Ak+PlT7MFbn
	rf+RDhuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOd3f-0003W0-0n; Wed, 15 Apr 2020 08:06:07 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOd0q-0006Ne-JQ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:03:15 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 50CD11A0796;
 Wed, 15 Apr 2020 10:03:11 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4372E1A077A;
 Wed, 15 Apr 2020 10:03:11 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id A979320506;
 Wed, 15 Apr 2020 10:03:10 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v3 09/13] clk: imx: Add audiomix clock controller support
Date: Wed, 15 Apr 2020 11:02:49 +0300
Message-Id: <1586937773-5836-10-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_010313_083324_55DA3605 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx-mix MFD driver registers some devices, one of which, in case of
audiomix, maps correctly to a clock controller type. This driver registers
a clock controller for that.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/Makefile       |   2 +-
 drivers/clk/imx/clk-audiomix.c | 175 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 176 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/imx/clk-audiomix.c

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 928f874c..afa54c1 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -27,7 +27,7 @@ obj-$(CONFIG_MXC_CLK_SCU) += \
 
 obj-$(CONFIG_CLK_IMX8MM) += clk-imx8mm.o
 obj-$(CONFIG_CLK_IMX8MN) += clk-imx8mn.o
-obj-$(CONFIG_CLK_IMX8MP) += clk-imx8mp.o
+obj-$(CONFIG_CLK_IMX8MP) += clk-imx8mp.o clk-audiomix.o
 obj-$(CONFIG_CLK_IMX8MQ) += clk-imx8mq.o
 obj-$(CONFIG_CLK_IMX8QXP) += clk-imx8qxp.o clk-imx8qxp-lpcg.o
 
diff --git a/drivers/clk/imx/clk-audiomix.c b/drivers/clk/imx/clk-audiomix.c
new file mode 100644
index 00000000..aa48b06
--- /dev/null
+++ b/drivers/clk/imx/clk-audiomix.c
@@ -0,0 +1,175 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2019 NXP.
+ */
+
+#include <dt-bindings/clock/imx8mp-clock.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+
+#include "clk.h"
+
+static int shared_count_pdm;
+static struct clk_hw **hws;
+static struct clk_hw_onecell_data *clk_hw_data;
+static uint32_t audiomix_clk_saved_regs[14];
+static struct clk *clk_audio_root;
+static struct clk *clk_audio_ahb;
+static struct clk *clk_audio_axi_div;
+
+static const struct imx_pll14xx_rate_table imx_audiomix_sai_pll_tbl[] = {
+	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
+};
+
+static const struct imx_pll14xx_clk imx_audiomix_sai_pll = {
+	.type = PLL_1443X,
+	.rate_table = imx_audiomix_sai_pll_tbl,
+};
+
+static const char * const imx_sai_mclk2_sels[] = {"sai1", "sai2", "sai3", "dummy",
+					"sai5", "sai6", "sai7", "dummy",
+					"dummy", "dummy", "dummy",
+					"dummy", "dummy", "dummy", "dummy"};
+static const char * const imx_sai1_mclk1_sels[] = {"sai1", "dummy", };
+static const char * const imx_sai2_mclk1_sels[] = {"sai2", "dummy", };
+static const char * const imx_sai3_mclk1_sels[] = {"sai3", "dummy", };
+static const char * const imx_sai5_mclk1_sels[] = {"sai5", "dummy", };
+static const char * const imx_sai6_mclk1_sels[] = {"sai6", "dummy", };
+static const char * const imx_sai7_mclk1_sels[] = {"sai7", "dummy", };
+static const char * const imx_pdm_sels[] = {"pdm", "sai_pll_div2", "dummy", "dummy" };
+static const char * const imx_sai_pll_ref_sels[] = {"osc_24m", "dummy", "dummy", "dummy", };
+static const char * const imx_sai_pll_bypass_sels[] = {"sai_pll", "sai_pll_ref_sel", };
+
+static int imx_audiomix_clk_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	void __iomem *base;
+
+	clk_audio_root = devm_clk_get(dev, "audio_root");
+	if (IS_ERR(clk_audio_root))
+		return PTR_ERR(clk_audio_root);
+
+	clk_audio_ahb = devm_clk_get(dev, "audio_ahb");
+	if (IS_ERR(clk_audio_ahb))
+		return PTR_ERR(clk_audio_ahb);
+
+	clk_audio_axi_div = devm_clk_get(dev, "audio_axi_div");
+	if (IS_ERR(clk_audio_axi_div))
+		return PTR_ERR(clk_audio_axi_div);
+
+	base = dev_get_drvdata(dev->parent);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	clk_hw_data = kzalloc(struct_size(clk_hw_data, hws,
+				IMX8MP_CLK_AUDIOMIX_END), GFP_KERNEL);
+	if (WARN_ON(!clk_hw_data))
+		return -ENOMEM;
+
+	clk_prepare_enable(clk_audio_ahb);
+	clk_prepare_enable(clk_audio_root);
+	clk_prepare_enable(clk_audio_axi_div);
+
+	clk_hw_data->num = IMX8MP_CLK_AUDIOMIX_END;
+	hws = clk_hw_data->hws;
+
+	hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL_REF_SEL] = imx_dev_clk_hw_mux(dev, "sai_pll_ref_sel", base + 0x400, 0, 2, imx_sai_pll_ref_sels, ARRAY_SIZE(imx_sai_pll_ref_sels));
+	hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL] = imx_dev_clk_hw_pll14xx(dev, "sai_pll", "sai_pll_ref_sel", base + 0x400, &imx_audiomix_sai_pll);
+
+	hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL_BYPASS] = imx_dev_clk_hw_mux_flags(dev, "sai_pll_bypass", base + 0x400, 4, 1, imx_sai_pll_bypass_sels, ARRAY_SIZE(imx_sai_pll_bypass_sels), CLK_SET_RATE_PARENT);
+
+	hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL_OUT] = imx_dev_clk_hw_gate(dev, "sai_pll_out", "sai_pll_bypass", base + 0x400, 13);
+
+	hws[IMX8MP_CLK_AUDIOMIX_SAI1_MCLK1_SEL] = imx_dev_clk_hw_mux_flags(dev, "sai1_mclk1_sel", base + 0x300, 0, 1, imx_sai1_mclk1_sels, ARRAY_SIZE(imx_sai1_mclk1_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI1_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai1_mclk2_sel", base + 0x300, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
+	hws[IMX8MP_CLK_AUDIOMIX_SAI2_MCLK1_SEL] = imx_dev_clk_hw_mux_flags(dev, "sai2_mclk1_sel", base + 0x304, 0, 1, imx_sai2_mclk1_sels, ARRAY_SIZE(imx_sai2_mclk1_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI2_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai2_mclk2_sel", base + 0x304, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
+	hws[IMX8MP_CLK_AUDIOMIX_SAI3_MCLK1_SEL] = imx_dev_clk_hw_mux_flags(dev, "sai3_mclk1_sel", base + 0x308, 0, 1, imx_sai3_mclk1_sels, ARRAY_SIZE(imx_sai3_mclk1_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI3_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai3_mclk2_sel", base + 0x308, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
+	hws[IMX8MP_CLK_AUDIOMIX_SAI5_MCLK1_SEL] = imx_dev_clk_hw_mux(dev, "sai5_mclk1_sel", base + 0x30C, 0, 1, imx_sai5_mclk1_sels, ARRAY_SIZE(imx_sai5_mclk1_sels));
+	hws[IMX8MP_CLK_AUDIOMIX_SAI5_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai5_mclk2_sel", base + 0x30C, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
+	hws[IMX8MP_CLK_AUDIOMIX_SAI6_MCLK1_SEL] = imx_dev_clk_hw_mux(dev, "sai6_mclk1_sel", base + 0x310, 0, 1, imx_sai6_mclk1_sels, ARRAY_SIZE(imx_sai6_mclk1_sels));
+	hws[IMX8MP_CLK_AUDIOMIX_SAI6_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai6_mclk2_sel", base + 0x310, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
+	hws[IMX8MP_CLK_AUDIOMIX_SAI7_MCLK1_SEL] = imx_dev_clk_hw_mux(dev, "sai7_mclk1_sel", base + 0x314, 0, 1, imx_sai7_mclk1_sels, ARRAY_SIZE(imx_sai7_mclk1_sels));
+	hws[IMX8MP_CLK_AUDIOMIX_SAI7_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai7_mclk2_sel", base + 0x314, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
+
+	hws[IMX8MP_CLK_AUDIOMIX_SAI1_IPG]    = imx_dev_clk_hw_gate(dev, "sai1_ipg_clk",   "ipg_audio_root", base, 0);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI1_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai1_mclk1_clk", "sai1_mclk1_sel", base, 1);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI1_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai1_mclk2_clk", "sai1_mclk2_sel", base, 2);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI1_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai1_mclk3_clk", "sai_pll_out", base, 3);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI2_IPG]    = imx_dev_clk_hw_gate(dev, "sai2_ipg_clk",   "ipg_audio_root", base, 4);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI2_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai2_mclk1_clk", "sai2_mclk1_sel", base, 5);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI2_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai2_mclk2_clk", "sai2_mclk2_sel", base, 6);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI2_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai2_mclk3_clk", "sai_pll_out", base, 7);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI3_IPG]    = imx_dev_clk_hw_gate(dev, "sai3_ipg_clk",   "ipg_audio_root", base, 8);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI3_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai3_mclk1_clk", "sai3_mclk1_sel", base, 9);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI3_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai3_mclk2_clk", "sai3_mclk2_sel", base, 10);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI3_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai3_mclk3_clk", "sai_pll_out", base, 11);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI5_IPG]    = imx_dev_clk_hw_gate(dev, "sai5_ipg_clk",   "ipg_audio_root", base, 12);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI5_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai5_mclk1_clk", "sai5_mclk1_sel", base, 13);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI5_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai5_mclk2_clk", "sai5_mclk2_sel", base, 14);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI5_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai5_mclk3_clk", "sai_pll_out", base, 15);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI6_IPG]    = imx_dev_clk_hw_gate(dev, "sai6_ipg_clk",   "ipg_audio_root", base, 16);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI6_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai6_mclk1_clk", "sai6_mclk1_sel", base, 17);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI6_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai6_mclk2_clk", "sai6_mclk2_sel", base, 18);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI6_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai6_mclk3_clk", "sai_pll_out", base, 19);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI7_IPG]    = imx_dev_clk_hw_gate(dev, "sai7_ipg_clk",   "ipg_audio_root", base, 20);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI7_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai7_mclk1_clk", "sai7_mclk1_sel", base, 21);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI7_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai7_mclk2_clk", "sai7_mclk2_sel", base, 22);
+	hws[IMX8MP_CLK_AUDIOMIX_SAI7_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai7_mclk3_clk", "sai_pll_out", base, 23);
+	hws[IMX8MP_CLK_AUDIOMIX_ASRC_IPG]    = imx_dev_clk_hw_gate(dev, "asrc_ipg_clk",   "ipg_audio_root", base, 24);
+	hws[IMX8MP_CLK_AUDIOMIX_PDM_IPG]     = imx_dev_clk_hw_gate_shared(dev, "pdm_ipg_clk", "ipg_audio_root", base, 25, &shared_count_pdm);
+	hws[IMX8MP_CLK_AUDIOMIX_PDM_ROOT]    = imx_dev_clk_hw_gate_shared(dev, "pdm_root_clk", "pdm", base, 25, &shared_count_pdm);
+
+	hws[IMX8MP_CLK_AUDIOMIX_SDMA2_ROOT]  = imx_dev_clk_hw_gate(dev, "sdma2_root_clk", "ipg_audio_root", base, 26);
+	hws[IMX8MP_CLK_AUDIOMIX_SDMA3_ROOT]  = imx_dev_clk_hw_gate(dev, "sdma3_root_clk", "ipg_audio_root", base, 27);
+	hws[IMX8MP_CLK_AUDIOMIX_SPBA2_ROOT]  = imx_dev_clk_hw_gate(dev, "spba2_root_clk", "ipg_audio_root", base, 28);
+	hws[IMX8MP_CLK_AUDIOMIX_DSP_ROOT]    = imx_dev_clk_hw_gate(dev, "dsp_root_clk",   "ipg_audio_root", base, 29);
+	hws[IMX8MP_CLK_AUDIOMIX_DSPDBG_ROOT] = imx_dev_clk_hw_gate(dev, "dsp_dbg_clk",    "ipg_audio_root", base, 30);
+	hws[IMX8MP_CLK_AUDIOMIX_EARC_IPG]    = imx_dev_clk_hw_gate(dev, "earc_ipg_clk",   "ipg_audio_root", base, 31);
+
+	hws[IMX8MP_CLK_AUDIOMIX_OCRAMA_IPG]  = imx_dev_clk_hw_gate(dev, "ocram_a_ipg_clk", "ipg_audio_root", base + 4, 0);
+	hws[IMX8MP_CLK_AUDIOMIX_AUD2HTX_IPG] = imx_dev_clk_hw_gate(dev, "aud2htx_ipg_clk", "ipg_audio_root", base + 4, 1);
+	hws[IMX8MP_CLK_AUDIOMIX_EDMA_ROOT]   = imx_dev_clk_hw_gate(dev, "edma_root_clk",   "ipg_audio_root", base + 4, 2);
+	hws[IMX8MP_CLK_AUDIOMIX_AUDPLL_ROOT] = imx_dev_clk_hw_gate(dev, "aud_pll_clk",  "ipg_audio_root", base + 4, 3);
+	hws[IMX8MP_CLK_AUDIOMIX_MU2_ROOT]    = imx_dev_clk_hw_gate(dev, "mu2_root_clk", "ipg_audio_root", base + 4, 4);
+	hws[IMX8MP_CLK_AUDIOMIX_MU3_ROOT]    = imx_dev_clk_hw_gate(dev, "mu3_root_clk", "ipg_audio_root", base + 4, 5);
+	hws[IMX8MP_CLK_AUDIOMIX_EARC_PHY]    = imx_dev_clk_hw_gate(dev, "earc_phy_clk", "ipg_audio_root", base + 4, 6);
+
+	hws[IMX8MP_CLK_AUDIOMIX_PDM_SEL] = imx_dev_clk_hw_mux(dev, "pdm_sel", base + 0x318, 1, 4, imx_pdm_sels, ARRAY_SIZE(imx_pdm_sels));
+
+	/* unbypass the pll */
+	clk_hw_set_parent(hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL_BYPASS],
+				hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL]);
+
+	imx_check_clk_hws(hws, IMX8MP_CLK_AUDIOMIX_END);
+
+	of_clk_add_hw_provider(dev->of_node, of_clk_hw_onecell_get,
+				clk_hw_data);
+
+	return 0;
+}
+
+static const struct of_device_id imx_audiomix_clk_of_match[] = {
+	{ .compatible = "fsl,imx8mp-audiomix-clk" },
+	{ /* Sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, imx_audiomix_clk_of_match);
+
+
+static struct platform_driver imx_audiomix_clk_driver = {
+	.probe = imx_audiomix_clk_probe,
+	.driver = {
+		.name = "imx-audiomix-clk",
+		.of_match_table = of_match_ptr(imx_audiomix_clk_of_match),
+	},
+};
+module_platform_driver(imx_audiomix_clk_driver);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
