Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD00F2DB3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XRl5pnqtf8Nspm5Fm21Uf2Zu6VU+sAp2wyEWWOb7YI=; b=LOCMcYnAX+LsE2
	XpwwV5lCKebOrG7ZmhRAfDwzMiSmHlj+Ds2Ce28d8yU8rDCHBtjYLG+q2m7/iVoyMw/Mq4ft7mHtf
	CEptRVfoIx2Ux9eepVmuGVxfWfImswPgmZeEz0YbU/opqyGsQ02gkV0eoAnlXFRjW+mAmHgyVNI5o
	k5HadTRjnrIHSa+164kigBm/gKvqYa4dkjVprJxUirkYqD+Tc1kDWCwQLzlHV7iH1UJX6/35XkHaR
	+FTJPo4Cy+sgFTZnEnNyvUCOM1sOmhdmrG2Fkj3UhMwhmrf/e8/1SDTImwe66GitQYtpIgGUxbK6A
	lGK8t6vv2X2ZwwRP4Xuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVwGw-0005n7-WA; Wed, 29 May 2019 10:57:31 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVwGN-0005EV-Li
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:57:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id u22so1399575pfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FC7VdAbFJbt5Yt2oZYTE4laLIpQms2Qf1Hk4QbxnMd4=;
 b=om7565SC6QMBm4TkCzcGMZybF8I9SYMUFwSnBoh3VTrqwDbf/k7JvM2DxCGWhGwU6g
 HpezHtofAmHaCAmFMFJxpcQQXe1KchV4Uuaxu91IurI6SKDmdePXgO1pYSsRGKOUsptu
 VyizZ6m/neWTtDTg7A4wnfLiGOxnLH4ogdjRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FC7VdAbFJbt5Yt2oZYTE4laLIpQms2Qf1Hk4QbxnMd4=;
 b=nAUXWJAejo9mNR7bygLu69RGcKomOmQF4Efwn8V/6aarXwD8PnXAVo2ygSS48nePD5
 EGw5gphElnJO6AniOw1uGpgB1m9IacCB7V9uxylFtZudO+SNQkfVGNcJ79ZNSgJCcT19
 0dkrJdzgrodYLjjewXXT38of8bC/P+hOSYxGNbMOoXZKPhqrrDn+0qsdIrIWj1UrSz+G
 fOh0cSvAWlaIp6qj7ONlhnO7tt/Ynphd5dySfkm0sMCaU/HbkuF0vQ8W0oQRYnBLc8BG
 2HgtZrCqd1gUcBEmpZCsmb0/cID2OYELSnDVnEYudNfEVzpNjk7fA/op7bskCCLzqJV5
 CAnA==
X-Gm-Message-State: APjAAAUVDUCakDcOSdhDKm2CPo+iNFc9PloxcFdFn3WIHArStGIV69Xy
 lbRGcTmJplZdfkmWossyxtp5bg==
X-Google-Smtp-Source: APXvYqwUzv6fpT5l8WYEkz24+Q+O6xifgeyOMkKEAjaun9WXQsUx9B3IPyIta9hgd16B5f2u/V49LQ==
X-Received: by 2002:a17:90a:35c1:: with SMTP id
 r59mr4285250pjb.49.1559127415044; 
 Wed, 29 May 2019 03:56:55 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
 by smtp.gmail.com with ESMTPSA id 184sm18974479pfa.48.2019.05.29.03.56.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 03:56:54 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v9 3/9] drm/sun4i: dsi: Add has_mod_clk quirk
Date: Wed, 29 May 2019 16:26:09 +0530
Message-Id: <20190529105615.14027-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190529105615.14027-1-jagan@amarulasolutions.com>
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_035655_759429_D5FF2BA7 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Ryan Pannell <ryan@osukl.com>,
 bshah@mykolab.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Sergey Suloev <ssuloev@orpaltech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per the user manual, look like mod clock is not mandatory
for all Allwinner MIPI DSI controllers, it is connected to
CLK_DSI_SCLK for A31 and not available in A64.

So add has_mod_clk quirk and process the clk accordingly.

Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 38 ++++++++++++++++++--------
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  5 ++++
 2 files changed, 32 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 3846ee91da52..ef878175a79b 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -10,6 +10,7 @@
 #include <linux/component.h>
 #include <linux/crc-ccitt.h>
 #include <linux/of_address.h>
+#include <linux/of_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
@@ -1154,6 +1155,7 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 	dsi->dev = dev;
 	dsi->host.ops = &sun6i_dsi_host_ops;
 	dsi->host.dev = dev;
+	dsi->variant = of_device_get_match_data(dev);
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	base = devm_ioremap_resource(dev, res);
@@ -1181,17 +1183,20 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 		return PTR_ERR(dsi->reset);
 	}
 
-	dsi->mod_clk = devm_clk_get(dev, "mod");
-	if (IS_ERR(dsi->mod_clk)) {
-		dev_err(dev, "Couldn't get the DSI mod clock\n");
-		return PTR_ERR(dsi->mod_clk);
+	if (dsi->variant->has_mod_clk) {
+		dsi->mod_clk = devm_clk_get(dev, "mod");
+		if (IS_ERR(dsi->mod_clk)) {
+			dev_err(dev, "Couldn't get the DSI mod clock\n");
+			return PTR_ERR(dsi->mod_clk);
+		}
 	}
 
 	/*
 	 * In order to operate properly, that clock seems to be always
 	 * set to 297MHz.
 	 */
-	clk_set_rate_exclusive(dsi->mod_clk, 297000000);
+	if (dsi->variant->has_mod_clk)
+		clk_set_rate_exclusive(dsi->mod_clk, 297000000);
 
 	dsi->dphy = devm_phy_get(dev, "dphy");
 	if (IS_ERR(dsi->dphy)) {
@@ -1221,7 +1226,8 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 err_pm_disable:
 	pm_runtime_disable(dev);
 err_unprotect_clk:
-	clk_rate_exclusive_put(dsi->mod_clk);
+	if (dsi->variant->has_mod_clk)
+		clk_rate_exclusive_put(dsi->mod_clk);
 	return ret;
 }
 
@@ -1233,7 +1239,8 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
 	component_del(&pdev->dev, &sun6i_dsi_ops);
 	mipi_dsi_host_unregister(&dsi->host);
 	pm_runtime_disable(dev);
-	clk_rate_exclusive_put(dsi->mod_clk);
+	if (dsi->variant->has_mod_clk)
+		clk_rate_exclusive_put(dsi->mod_clk);
 
 	return 0;
 }
@@ -1250,7 +1257,8 @@ static int __maybe_unused sun6i_dsi_runtime_resume(struct device *dev)
 	}
 
 	reset_control_deassert(dsi->reset);
-	clk_prepare_enable(dsi->mod_clk);
+	if (dsi->variant->has_mod_clk)
+		clk_prepare_enable(dsi->mod_clk);
 
 	/*
 	 * Enable the DSI block.
@@ -1278,7 +1286,8 @@ static int __maybe_unused sun6i_dsi_runtime_suspend(struct device *dev)
 {
 	struct sun6i_dsi *dsi = dev_get_drvdata(dev);
 
-	clk_disable_unprepare(dsi->mod_clk);
+	if (dsi->variant->has_mod_clk)
+		clk_disable_unprepare(dsi->mod_clk);
 	reset_control_assert(dsi->reset);
 	regulator_disable(dsi->regulator);
 
@@ -1291,9 +1300,16 @@ static const struct dev_pm_ops sun6i_dsi_pm_ops = {
 			   NULL)
 };
 
+static const struct sun6i_dsi_variant sun6i_a31_mipi_dsi = {
+	.has_mod_clk = true,
+};
+
 static const struct of_device_id sun6i_dsi_of_table[] = {
-	{ .compatible = "allwinner,sun6i-a31-mipi-dsi" },
-	{ }
+	{
+		.compatible = "allwinner,sun6i-a31-mipi-dsi",
+		.data = &sun6i_a31_mipi_dsi,
+	},
+	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, sun6i_dsi_of_table);
 
diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
index c76b71259d2e..76874ff8e3ef 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
@@ -15,6 +15,10 @@
 
 #include <linux/regulator/consumer.h>
 
+struct sun6i_dsi_variant {
+	bool			has_mod_clk;
+};
+
 struct sun6i_dsi {
 	struct drm_connector	connector;
 	struct drm_encoder	encoder;
@@ -33,6 +37,7 @@ struct sun6i_dsi {
 	struct mipi_dsi_device	*device;
 	struct drm_panel	*panel;
 	struct drm_bridge	*bridge;
+	const struct sun6i_dsi_variant	*variant;
 };
 
 static inline struct sun6i_dsi *host_to_sun6i_dsi(struct mipi_dsi_host *host)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
