Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F5919ADF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 16:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sRrK77TKVRuX7GfxtpLSLu2EbixZ7Gn//9ENBCi6BUk=; b=j3X5R4/7PRI5Ky5rMZqmBiWDoI
	TXsdXZrthebuz1TrVeF6aiLVoYHWcb3x60C9dWzAhP77BmzpmkXkBaAIefrHqi35tn0B7DNjCz6tT
	ZvG/bQk0xP8HVFKETu8DakFxk3JmoCIHUqKzvdaavqBh181mTHW/wKLOk1Jqrjf2UMJb/wpiRWQ+j
	7CQpzpzhKIUOhbGRZtHMS0rE/AOjI2Sf5rwVHO8oJNnEax78VvIQegW//PATtZ52X2BWCp7QVaF2S
	VtxLytY3AoYP/nFBH3OM3LAz5OwbxoaRvTkqweK6kRtJEXbU2CEOQGWh99LUX37VuvCAB7g0cv/2b
	2lkZiyoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJeRU-0003fQ-7Y; Wed, 01 Apr 2020 14:34:08 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJeQh-0002fY-2M
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 14:33:20 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4522F1A0E95;
 Wed,  1 Apr 2020 16:33:17 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 34F281A0E8F;
 Wed,  1 Apr 2020 16:33:17 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 25BEC20507;
 Wed,  1 Apr 2020 16:33:16 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v2 3/8] PM / devfreq: imx: Register interconnect device
Date: Wed,  1 Apr 2020 17:33:02 +0300
Message-Id: <a6f9657a66e510bf5507daea140465c40c117e3d.1585751281.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1585751281.git.leonard.crestez@nxp.com>
References: <cover.1585751281.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1585751281.git.leonard.crestez@nxp.com>
References: <cover.1585751281.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_073319_382750_78B719ED 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
---
 drivers/devfreq/imx-bus.c | 41 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c
index 7915d7277349..240eeea66f13 100644
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
@@ -57,11 +58,44 @@ static int imx_bus_get_dev_status(struct device *dev,
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
@@ -109,18 +143,25 @@ static int imx_bus_probe(struct platform_device *pdev)
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
