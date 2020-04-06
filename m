Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A44019F57B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 14:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ik0B5G1fu8CBt7MJ74Ab/BH1rt5o7wtbitk1/MQTgAs=; b=nNBbv+Fo05RhMVDseYfjzyT0zM
	1iOFSzGYPSVS62DZs+DfkmGifmo0j+XjHUZ/zXfIimnrTea1kEKlUVrHZdB8INjHKvf0e8IojN4E3
	BnVm7n4qdVl9gWB+6wjDi8vaPTIkNZfG2H9ce9w+L/apdcXBXVofNhUwfHz9AKtERbk7NNj1I1Wvw
	4yRkEENeG9xUVNj2DamKh82CctECq9wWyfxnALVSkmkHjGFwDUtoQaMXwcD0TtU5Bcje4878Dv9YA
	fLLjmrPuk9PsfHGNy0Ks+IR+XRCG+fmzFZIq+12t/fuHAmtLmumZRbx1o+hz53/ZifuZdyXAW8dEQ
	VX31aXQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQUJ-00049o-0Z; Mon, 06 Apr 2020 12:04:23 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQTL-0003Kl-FU
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 12:03:25 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 43816200D2E;
 Mon,  6 Apr 2020 14:03:22 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2AC2A200D2A;
 Mon,  6 Apr 2020 14:03:22 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 72F13204E6;
 Mon,  6 Apr 2020 14:03:20 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v3 3/8] PM / devfreq: imx: Register interconnect device
Date: Mon,  6 Apr 2020 15:03:08 +0300
Message-Id: <2deb2fe03ad43e950481fe44daa1bcb841272aa4.1586174566.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1586174566.git.leonard.crestez@nxp.com>
References: <cover.1586174566.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1586174566.git.leonard.crestez@nxp.com>
References: <cover.1586174566.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_050323_810957_5CAABABE 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no single device which can represent the imx interconnect.
Instead of adding a virtual one just make the main &noc act as the
global interconnect provider.

The imx interconnect provider driver will scale the NOC and DDRC based
on bandwidth request. More scalable nodes can be added in the future,
for example for audio/display/vpu/gpu NICs.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Tested-by: Martin Kepplinger <martin.kepplinger@puri.sm>
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 drivers/devfreq/imx-bus.c | 41 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c
index 428f7980a2f2..532e7954032f 100644
--- a/drivers/devfreq/imx-bus.c
+++ b/drivers/devfreq/imx-bus.c
@@ -14,10 +14,11 @@
 
 struct imx_bus {
 	struct devfreq_dev_profile profile;
 	struct devfreq *devfreq;
 	struct clk *clk;
+	struct platform_device *icc_pdev;
 };
 
 static int imx_bus_target(struct device *dev,
 		unsigned long *freq, u32 flags)
 {
@@ -56,11 +57,44 @@ static int imx_bus_get_dev_status(struct device *dev,
 	return 0;
 }
 
 static void imx_bus_exit(struct device *dev)
 {
+	struct imx_bus *priv = dev_get_drvdata(dev);
+
 	dev_pm_opp_of_remove_table(dev);
+	platform_device_unregister(priv->icc_pdev);
+}
+
+/* imx_bus_init_icc() - register matching icc provider if required */
+static int imx_bus_init_icc(struct device *dev)
+{
+	struct imx_bus *priv = dev_get_drvdata(dev);
+	const char *icc_driver_name;
+
+	if (!of_get_property(dev->of_node, "#interconnect-cells", 0))
+		return 0;
+	if (!IS_ENABLED(CONFIG_INTERCONNECT_IMX)) {
+		dev_warn(dev, "imx interconnect drivers disabled\n");
+		return 0;
+	}
+
+	icc_driver_name = of_device_get_match_data(dev);
+	if (!icc_driver_name) {
+		dev_err(dev, "unknown interconnect driver\n");
+		return 0;
+	}
+
+	priv->icc_pdev = platform_device_register_data(
+			dev, icc_driver_name, -1, NULL, 0);
+	if (IS_ERR(priv->icc_pdev)) {
+		dev_err(dev, "failed to register icc provider %s: %ld\n",
+				icc_driver_name, PTR_ERR(priv->devfreq));
+		return PTR_ERR(priv->devfreq);
+	}
+
+	return 0;
 }
 
 static int imx_bus_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -108,18 +142,25 @@ static int imx_bus_probe(struct platform_device *pdev)
 		ret = PTR_ERR(priv->devfreq);
 		dev_err(dev, "failed to add devfreq device: %d\n", ret);
 		goto err;
 	}
 
+	ret = imx_bus_init_icc(dev);
+	if (ret)
+		goto err;
+
 	return 0;
 
 err:
 	dev_pm_opp_of_remove_table(dev);
 	return ret;
 }
 
 static const struct of_device_id imx_bus_of_match[] = {
+	{ .compatible = "fsl,imx8mq-noc", .data = "imx8mq-interconnect", },
+	{ .compatible = "fsl,imx8mm-noc", .data = "imx8mm-interconnect", },
+	{ .compatible = "fsl,imx8mn-noc", .data = "imx8mn-interconnect", },
 	{ .compatible = "fsl,imx8m-noc", },
 	{ .compatible = "fsl,imx8m-nic", },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, imx_bus_of_match);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
