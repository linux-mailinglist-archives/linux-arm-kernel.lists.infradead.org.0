Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D238360A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8S5EP5oUuWj9IMZLoUO4jUhQWH1PXicINYvxe1wEURc=; b=Shv6EUI5QWhi5b
	a85X+fdcyp5MMtveA44IwFIyUHpsKfNMZ7EQAMsGsp/7njPhJPvgReIVI5wFE4TIeV26yi5CsOMUM
	J9GFyZqRKX3LBYmfJ9Zl3PFoEZOEuwTFSeQf+UarPb/vCqfuLXWghm4d01wlUN6NqkRvuE0ZZANE6
	bgFixkYCdtOmu2MKUUchzX2NLeVNuCQ99YEq7tI2sm8Obk9V6cNO+0wgo5W+fi4toYZyxL08XYCbV
	oxDh0nxY97/NfzSQNz2JonBsNC5sq8MT42VjFjXg5Tfs3PcwkIks0XVnnnsWtELRKQVs7vF+1bq1H
	cGteiznp5ZYC9EfT7KPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1rK-0005Ye-BT; Tue, 06 Aug 2019 15:58:46 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1qX-0004gS-5A
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 15:58:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1565107072; bh=G5d5sfuj/djQCj8wXzjmHf1QSkXVwxxOltCt/6o9g+0=;
 h=From:To:Cc:Subject:Date:References:From;
 b=cAAsIhgtY4Ghf/LBWCg1W4HslWJwPfja2unwxuU3w/O9CONbe90r0qNOkJQzdbYPB
 HywJUyrrpzjr6OXAUxhIBbXBt92h7SXJAkGCfkuq8T7Hrf3qfdtTUiSVcCSETjBRqr
 Nu8fjIdbfNBlcARTc6CqmQ7s+KR8nbO5O7Q1bxYA=
From: megous@megous.com
To: linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: [PATCH v8 3/4] drm: sun4i: Add support for enabling DDC I2C bus to
 sun8i_dw_hdmi glue
Date: Tue,  6 Aug 2019 17:57:42 +0200
Message-Id: <20190806155744.10263-4-megous@megous.com>
In-Reply-To: <20190806155744.10263-1-megous@megous.com>
References: <20190806155744.10263-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_085757_584609_7D8D49B4 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

Orange Pi 3 board requires enabling a voltage shifting circuit via GPIO
for the DDC bus to be usable.

Add support for hdmi-connector node's optional ddc-en-gpios property to
support this use case.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c | 54 +++++++++++++++++++++++++--
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h |  2 +
 2 files changed, 52 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
index 8ca5af0c912f..a44dca4b0219 100644
--- a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
+++ b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
@@ -97,10 +97,34 @@ static u32 sun8i_dw_hdmi_find_possible_crtcs(struct drm_device *drm,
 	return crtcs;
 }
 
+static int sun8i_dw_hdmi_find_connector_pdev(struct device *dev,
+					     struct platform_device **pdev_out)
+{
+	struct platform_device *pdev;
+	struct device_node *remote;
+
+	remote = of_graph_get_remote_node(dev->of_node, 1, -1);
+	if (!remote)
+		return -ENODEV;
+
+	if (!of_device_is_compatible(remote, "hdmi-connector")) {
+		of_node_put(remote);
+		return -ENODEV;
+	}
+
+	pdev = of_find_device_by_node(remote);
+	of_node_put(remote);
+	if (!pdev)
+		return -ENODEV;
+
+	*pdev_out = pdev;
+	return 0;
+}
+
 static int sun8i_dw_hdmi_bind(struct device *dev, struct device *master,
 			      void *data)
 {
-	struct platform_device *pdev = to_platform_device(dev);
+	struct platform_device *pdev = to_platform_device(dev), *connector_pdev;
 	struct dw_hdmi_plat_data *plat_data;
 	struct drm_device *drm = data;
 	struct device_node *phy_node;
@@ -150,16 +174,30 @@ static int sun8i_dw_hdmi_bind(struct device *dev, struct device *master,
 		return PTR_ERR(hdmi->regulator);
 	}
 
+	ret = sun8i_dw_hdmi_find_connector_pdev(dev, &connector_pdev);
+	if (!ret) {
+		hdmi->ddc_en = gpiod_get_optional(&connector_pdev->dev,
+						  "ddc-en", GPIOD_OUT_HIGH);
+		platform_device_put(connector_pdev);
+
+		if (IS_ERR(hdmi->ddc_en)) {
+			dev_err(dev, "Couldn't get ddc-en gpio\n");
+			return PTR_ERR(hdmi->ddc_en);
+		}
+	}
+
 	ret = regulator_enable(hdmi->regulator);
 	if (ret) {
 		dev_err(dev, "Failed to enable regulator\n");
-		return ret;
+		goto err_unref_ddc_en;
 	}
 
+	gpiod_set_value(hdmi->ddc_en, 1);
+
 	ret = reset_control_deassert(hdmi->rst_ctrl);
 	if (ret) {
 		dev_err(dev, "Could not deassert ctrl reset control\n");
-		goto err_disable_regulator;
+		goto err_disable_ddc_en;
 	}
 
 	ret = clk_prepare_enable(hdmi->clk_tmds);
@@ -212,8 +250,12 @@ static int sun8i_dw_hdmi_bind(struct device *dev, struct device *master,
 	clk_disable_unprepare(hdmi->clk_tmds);
 err_assert_ctrl_reset:
 	reset_control_assert(hdmi->rst_ctrl);
-err_disable_regulator:
+err_disable_ddc_en:
+	gpiod_set_value(hdmi->ddc_en, 0);
 	regulator_disable(hdmi->regulator);
+err_unref_ddc_en:
+	if (hdmi->ddc_en)
+		gpiod_put(hdmi->ddc_en);
 
 	return ret;
 }
@@ -227,7 +269,11 @@ static void sun8i_dw_hdmi_unbind(struct device *dev, struct device *master,
 	sun8i_hdmi_phy_remove(hdmi);
 	clk_disable_unprepare(hdmi->clk_tmds);
 	reset_control_assert(hdmi->rst_ctrl);
+	gpiod_set_value(hdmi->ddc_en, 0);
 	regulator_disable(hdmi->regulator);
+
+	if (hdmi->ddc_en)
+		gpiod_put(hdmi->ddc_en);
 }
 
 static const struct component_ops sun8i_dw_hdmi_ops = {
diff --git a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h
index 720c5aa8adc1..d707c9171824 100644
--- a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h
+++ b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h
@@ -9,6 +9,7 @@
 #include <drm/bridge/dw_hdmi.h>
 #include <drm/drm_encoder.h>
 #include <linux/clk.h>
+#include <linux/gpio/consumer.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
@@ -190,6 +191,7 @@ struct sun8i_dw_hdmi {
 	struct regulator		*regulator;
 	const struct sun8i_dw_hdmi_quirks *quirks;
 	struct reset_control		*rst_ctrl;
+	struct gpio_desc		*ddc_en;
 };
 
 static inline struct sun8i_dw_hdmi *
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
