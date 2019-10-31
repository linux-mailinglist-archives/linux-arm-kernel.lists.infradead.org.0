Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EB8EBA02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 23:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b6qsnnyc0O9Ufn0PpZ0o7tYiRnpPGMxSdxrysd/RKSw=; b=L3xDAlMrgyHM2w8mnwdbgeHiwQ
	i1BL4aSHk+WSx5ZOErICE5LcL+aB3RSPSNCkkRCuUuh1vL3Qit0RaIg1WX9gD7hPgu+qDGiXmccUm
	8P0Dp1ImfmiF7S9HFkTj80jUCfBcr2zqCAsD2wOIt+sN+VADhvyPLn+xfVIUw1ZkjTn04XU7yprKV
	5npLCTEo0vhIrq9btSNLWO8Pxsx0jFa170WYWbQPzF+/2kqPVVW+Xhpmj8e0d+LqMNWYDMG+/Nfk/
	5zfpVgL5P9vKwuS4WK3/xVFOnSpKDc55oGo5NyGeiQjXoH6qqUr+0atBgqkyHcTkJ4hZRrv3UZyya
	jTd4Bqkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQJK0-0002Ea-SD; Thu, 31 Oct 2019 22:53:40 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQJIk-0001XA-Hq
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 22:52:24 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 59C3F1A0033;
 Thu, 31 Oct 2019 23:52:21 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 41E601A010A;
 Thu, 31 Oct 2019 23:52:21 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 3B74E205E9;
 Thu, 31 Oct 2019 23:52:20 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH RFC v5 03/10] PM / devfreq: imx: Register interconnect device
Date: Fri,  1 Nov 2019 00:52:02 +0200
Message-Id: <97da7dcb626009da4a25a6f63cdd52f908e57356.1572562150.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572562150.git.leonard.crestez@nxp.com>
References: <cover.1572562150.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1572562150.git.leonard.crestez@nxp.com>
References: <cover.1572562150.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_155222_869679_9DE4638B 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Alexandre Bailon <abailon@baylibre.com>
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
---
 drivers/devfreq/imx-devfreq.c | 37 +++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/devfreq/imx-devfreq.c b/drivers/devfreq/imx-devfreq.c
index 5c907b3ab9c0..241d4c00db1f 100644
--- a/drivers/devfreq/imx-devfreq.c
+++ b/drivers/devfreq/imx-devfreq.c
@@ -15,10 +15,11 @@
 struct imx_devfreq {
 	struct devfreq_dev_profile profile;
 	struct devfreq *devfreq;
 	struct clk *clk;
 	struct devfreq_passive_data passive_data;
+	struct platform_device *icc_pdev;
 };
 
 static int imx_devfreq_target(struct device *dev, unsigned long *freq, u32 flags)
 {
 	struct imx_devfreq *priv = dev_get_drvdata(dev);
@@ -59,11 +60,40 @@ static int imx_devfreq_get_dev_status(struct device *dev,
 	return 0;
 }
 
 static void imx_devfreq_exit(struct device *dev)
 {
+	struct imx_devfreq *priv = dev_get_drvdata(dev);
+
 	dev_pm_opp_of_remove_table(dev);
+	platform_device_unregister(priv->icc_pdev);
+}
+
+/* imx_devfreq_init_icc() - register matching icc provider if required */
+static int imx_devfreq_init_icc(struct device *dev)
+{
+	struct imx_devfreq *priv = dev_get_drvdata(dev);
+	const char *icc_driver_name;
+
+	if (!IS_ENABLED(CONFIG_INTERCONNECT_IMX))
+		return 0;
+	if (!of_get_property(dev->of_node, "#interconnect-cells", 0))
+		return 0;
+
+	icc_driver_name = of_device_get_match_data(dev);
+	if (!icc_driver_name)
+		return 0;
+
+	priv->icc_pdev = platform_device_register_data(
+			dev, icc_driver_name, 0, NULL, 0);
+	if (IS_ERR(priv->icc_pdev)) {
+		dev_err(dev, "failed to register icc provider %s: %ld\n",
+				icc_driver_name, PTR_ERR(priv->devfreq));
+		return PTR_ERR(priv->devfreq);
+	}
+
+	return 0;
 }
 
 static int imx_devfreq_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -118,18 +148,25 @@ static int imx_devfreq_probe(struct platform_device *pdev)
 		ret = PTR_ERR(priv->devfreq);
 		dev_err(dev, "failed to add devfreq device: %d\n", ret);
 		goto err;
 	}
 
+	ret = imx_devfreq_init_icc(dev);
+	if (ret)
+		goto err;
+
 	return 0;
 
 err:
 	dev_pm_opp_of_remove_table(dev);
 	return ret;
 }
 
 static const struct of_device_id imx_devfreq_of_match[] = {
+	{ .compatible = "fsl,imx8mq-noc", .data = "imx8mq-interconnect", },
+	{ .compatible = "fsl,imx8mm-noc", .data = "imx8mm-interconnect", },
+	{ .compatible = "fsl,imx8mn-noc", .data = "imx8mn-interconnect", },
 	{ .compatible = "fsl,imx8m-noc", },
 	{ .compatible = "fsl,imx8m-nic", },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, imx_devfreq_of_match);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
