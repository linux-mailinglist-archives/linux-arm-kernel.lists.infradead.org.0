Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2F5FCF54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 21:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Me72XuUeTwsL6zWyWa6GNvL1lVHzNwPh0FR9O5/0dos=; b=kXaHaBlxWXQ/CDCYLZwk7iG8wo
	Pf8JOMyvt/BuWWRCsNvDPo+2soEyPEGCOnV+5fEhjjekeeuJANrHhyMaG4yZKt6ibHPqbBFhe5ucs
	WMB0/NnFpEbMZ6wjBw9lKeFCm53nEwuLHKW6jCZvGEP+JB6VLCLC/r/F8rdjRqGvW3pC30yTUTQ9k
	Tb+m3UGQvlVsA2/7Ig4lAOPvujXfbS27J8tW6uOGlPhM9Ojundnon0C2Bvv9ZbLCtj6XPCT1WJJ2v
	2qbqEd+hiC9F5QnIAjpAZwLbri2mPLx8fTgsCXKjkQIPfUvsrZ5j8tdtJ4gSguvc45Cl8wWGD7tDk
	VpajIFAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVLTJ-0000q7-3z; Thu, 14 Nov 2019 20:12:05 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVLS1-0008M3-9r
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 20:10:51 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9E91520045A;
 Thu, 14 Nov 2019 21:10:43 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 844F1200079;
 Thu, 14 Nov 2019 21:10:43 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7479E205D5;
 Thu, 14 Nov 2019 21:10:42 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH RFC v6 3/9] PM / devfreq: imx: Register interconnect device
Date: Thu, 14 Nov 2019 22:09:50 +0200
Message-Id: <e0e6a1685ccdad95c9d0c922801afdda8adb9f05.1573761527.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573761527.git.leonard.crestez@nxp.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1573761527.git.leonard.crestez@nxp.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_121045_660172_96729210 
X-CRM114-Status: GOOD (  12.67  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>
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
index 620b344e87aa..585d340c0f6e 100644
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
 
 static int imx_devfreq_target(struct device *dev,
 			      unsigned long *freq, u32 flags)
 {
@@ -60,11 +61,40 @@ static int imx_devfreq_get_dev_status(struct device *dev,
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
@@ -120,18 +150,25 @@ static int imx_devfreq_probe(struct platform_device *pdev)
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
