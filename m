Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3902B90C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 18:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEzC6WGSJIFm2hib7bpcrto6hdCW1CW1cu7Ymy+bgdQ=; b=QV09uYJEfOMR3s
	zOSrdZ3IWgusZFivHwSozp0bkrrPxrry2rUBXGy/RepxmaU1++zpW8gNzIlcaGz9Qq8VzORJkP+iU
	OcUzfuTpW9aQNeI9s+Su7ya+Z4MQKkdoGMqahvZG/oMC1ipjeKmPdGnJReS67Og9360VItIr8UHAB
	qdtYHaqr7acE1kOjfPBzFUTIy9TejVp28IReVUH1tlQrTP0X3Ysx1CBwCwRrSH1b9CLDFXgHPT46K
	xQQydOd5zhHga4lPjeM1rDH3FGkYgE/RscHahmTx6TmEjGzwFQLyEnSfXnVvvgd/CKYBC3Th2Ljj+
	0NEc5pINa3Mhss/tYENg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVIQG-0003qa-OS; Mon, 27 May 2019 16:24:28 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVIOb-0002BE-IT
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 16:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558974161; bh=f3M/l5dBGPUqrlBmQUEjiKu9RFMozTVLiPXiToeGQwo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QWssaYabGEaJ6FloM/pDA0tgQ4udUjd4Nx4rUGhOXBwirP2cwsV1alPyB/8qn5H4i
 dL5GoN89dzRoJvHHc6DzG0gLb3tZp4VfLeXRBAYq5iZbhama8FFcMHpr5SwK6wOiOQ
 8+u7y4jYPMeZ9ywScpbMTm9n8qMUUnS9VWGu/trg=
From: megous@megous.com
To: linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 5/6] drm: sun4i: Add support for enabling DDC I2C bus to
 sun8i_dw_hdmi glue
Date: Mon, 27 May 2019 18:22:36 +0200
Message-Id: <20190527162237.18495-6-megous@megous.com>
In-Reply-To: <20190527162237.18495-1-megous@megous.com>
References: <20190527162237.18495-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_092246_162203_F437917C 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, Jose Abreu <joabreu@synopsys.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
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
---
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c | 55 +++++++++++++++++++++++++--
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h |  3 ++
 2 files changed, 55 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
index 39d8509d96a0..59b81ba02d96 100644
--- a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
+++ b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
@@ -98,6 +98,30 @@ static u32 sun8i_dw_hdmi_find_possible_crtcs(struct drm_device *drm,
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
@@ -151,16 +175,29 @@ static int sun8i_dw_hdmi_bind(struct device *dev, struct device *master,
 		return PTR_ERR(hdmi->regulator);
 	}
 
+	ret = sun8i_dw_hdmi_find_connector_pdev(dev, &hdmi->connector_pdev);
+	if (!ret) {
+		hdmi->ddc_en = gpiod_get_optional(&hdmi->connector_pdev->dev,
+						  "ddc-en", GPIOD_OUT_HIGH);
+		if (IS_ERR(hdmi->ddc_en)) {
+			platform_device_put(hdmi->connector_pdev);
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
@@ -213,8 +250,14 @@ static int sun8i_dw_hdmi_bind(struct device *dev, struct device *master,
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
+
+	platform_device_put(hdmi->connector_pdev);
 
 	return ret;
 }
@@ -228,7 +271,13 @@ static void sun8i_dw_hdmi_unbind(struct device *dev, struct device *master,
 	sun8i_hdmi_phy_remove(hdmi);
 	clk_disable_unprepare(hdmi->clk_tmds);
 	reset_control_assert(hdmi->rst_ctrl);
+	gpiod_set_value(hdmi->ddc_en, 0);
 	regulator_disable(hdmi->regulator);
+
+	if (hdmi->ddc_en)
+		gpiod_put(hdmi->ddc_en);
+
+	platform_device_put(hdmi->connector_pdev);
 }
 
 static const struct component_ops sun8i_dw_hdmi_ops = {
diff --git a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h
index 720c5aa8adc1..dad66b8301c2 100644
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
@@ -190,6 +191,8 @@ struct sun8i_dw_hdmi {
 	struct regulator		*regulator;
 	const struct sun8i_dw_hdmi_quirks *quirks;
 	struct reset_control		*rst_ctrl;
+	struct platform_device		*connector_pdev;
+	struct gpio_desc		*ddc_en;
 };
 
 static inline struct sun8i_dw_hdmi *
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
