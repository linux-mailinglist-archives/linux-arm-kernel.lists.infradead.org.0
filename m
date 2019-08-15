Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8088E22A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0U6ogC3xKNCKw68gv3DneQ7VBmBic4BqZxd9VXC0mI=; b=MxaKBSRu1azcjA
	bGnBUt4GpV3pLsn4T8G2z90Et5gDqfJhdxihBUb4H8VX4u0kiHs8eKO2GHI6LLS7VOOTSKTxj/Om+
	droHBstjskBw89Trba+cyuYklGVtP6hewXMnVpqxyhjRvCdiY3XhZUOhOB4qTpZ1Q5/TGrYGFG3nZ
	JYy7N/lv7Gco4QlxPtGyjzYDzowYoABZXZbIz4KfIbv4TOzdGjCQ2rSMnrGH9k50o4x9JNbCnx798
	6dpXmlk8s3bdxRIotQqUmORkGVygK4jPXm4w/YcdM3OCwRvJUloZcXcX7HZwqqwof37COi9hKDv4B
	9zv4FHD2RcVrgB4vKN3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy3zX-0007Ch-Cq; Thu, 15 Aug 2019 00:51:47 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x6-0004bS-1R
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:17 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id C4EEE3EA18;
 Thu, 15 Aug 2019 00:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830155;
 bh=DC5vyeikJaV2JnfcQHCSqPpy7s9WUUfxIAq5L9wP3LQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vjNJnlZ8n/UZaPOd7acB6r2zozVALV/w0H9lqBa1P0XLgtR4Q+Zujaw5Hn7jkRNoj
 rUf/jsrnmCF2mU3kjVTQxl3A0854aZ0MRGCX0rhU1DmJPlLfoNHk+vAQZuFDBaXba3
 LXlEaTrh9oHiy/f6XnfwufapRSZ8iT+ztXoC6t2w=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH RFC 06/11] drm/bridge: analogix-anx78xx: add support for
 avdd33 regulator
Date: Wed, 14 Aug 2019 20:48:49 -0400
Message-Id: <20190815004854.19860-7-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174916_152444_99FDEA04 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the avdd33 regulator to the analogix-anx78xx driver.
Note that the regulator is currently enabled during driver probe and
disabled when the driver is removed. This is currently how the
downstream MSM kernel sources do this.

Let's not merge this upstream for the mean time until I get the external
display fully working on the Nexus 5 and then I can submit proper
support then that powers down this regulator in the power off function.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
 drivers/gpu/drm/bridge/analogix-anx78xx.c | 33 +++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix-anx78xx.c
index 8daee6b1fa88..48adf010816c 100644
--- a/drivers/gpu/drm/bridge/analogix-anx78xx.c
+++ b/drivers/gpu/drm/bridge/analogix-anx78xx.c
@@ -48,6 +48,7 @@ static const u8 anx78xx_i2c_addresses[] = {
 
 struct anx78xx_platform_data {
 	struct regulator *dvdd10;
+	struct regulator *avdd33;
 	struct gpio_desc *gpiod_hpd;
 	struct gpio_desc *gpiod_pd;
 	struct gpio_desc *gpiod_reset;
@@ -707,10 +708,42 @@ static int anx78xx_start(struct anx78xx *anx78xx)
 	return err;
 }
 
+static void anx78xx_disable_regulator_action(void *_data)
+{
+	struct anx78xx_platform_data *pdata = _data;
+
+	regulator_disable(pdata->avdd33);
+}
+
 static int anx78xx_init_pdata(struct anx78xx *anx78xx)
 {
 	struct anx78xx_platform_data *pdata = &anx78xx->pdata;
 	struct device *dev = &anx78xx->client->dev;
+	int err;
+
+	/* 3.3V digital core power regulator  */
+	pdata->avdd33 = devm_regulator_get(dev, "avdd33");
+	if (IS_ERR(pdata->avdd33)) {
+		err = PTR_ERR(pdata->avdd33);
+		if (err != -EPROBE_DEFER)
+			DRM_ERROR("avdd33 regulator not found\n");
+
+		return err;
+	}
+
+	err = regulator_enable(pdata->avdd33);
+	if (err) {
+		DRM_ERROR("Failed to enable avdd33 regulator: %d\n", err);
+		return err;
+	}
+
+	err = devm_add_action(dev, anx78xx_disable_regulator_action,
+			      pdata);
+	if (err < 0) {
+		dev_err(dev, "Failed to setup regulator cleanup action %d\n",
+			err);
+		return err;
+	}
 
 	/* 1.0V digital core power regulator  */
 	pdata->dvdd10 = devm_regulator_get(dev, "dvdd10");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
