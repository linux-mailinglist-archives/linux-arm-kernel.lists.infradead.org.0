Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC8CCCA67
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 16:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQ96OR7KaYnOnLbzU+YSpLq2EA9XABnprR+72Do6S7U=; b=fIAIcC3Zs8tW2J
	unLq0gRkGHBDYHWU8QML0ZBOQY6BdslGP8uhLtnXLYauIjHxPRsPslqganDnnsmDmvzbE/2E9iBqo
	VSjCGjtQtjDG0LVARXnZhQv2Fy9sbRRx2llKtxQiGP17HZttIvEzZZHBoK5OxL279sU++wi4uLIQA
	eyVCSiVvKsFMcMHWqggp3sBmTFL+xpYwHouFQQy4SvbQ1TYYyl2NXtjEB/lebJgv8CzrzgTut73TO
	FoOvImRR7QKcHe27BW3F6V/4bv0JTEngMoAKkDAJodZfEgS6qoQXhCN2s3o1AOaUjqzQtBe+t1qK0
	igdkAky5xUtCUT+OZPMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGkuu-00046l-1l; Sat, 05 Oct 2019 14:20:16 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGkuH-0003lG-RO
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 14:19:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id f21so4519485plj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 07:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Yjltb6EvZLpV/+AdDfNmytRgVwPyoroHREU7ngUBNNM=;
 b=BsvBkiMo6DBm6cGJzBJNLd228Tf08EuUIIJf0BeR+EclTzRIGbZJMtDdSUHhx8OpIc
 F+Xlh4k/QcWS0fSGqmBja22wVRjDO4om5x1FxgaX54ITrqAmrZhzcLgvaI9V0bXa21Ih
 maP8pxRVMj+RDb9fN2biqLwIEgDR2kU7jDQt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yjltb6EvZLpV/+AdDfNmytRgVwPyoroHREU7ngUBNNM=;
 b=K/DfztVlH4lV245a7WLLyuytqXjMdc0y1KjX7VIyicAX6rnBNDe+06O16pIY1eol8K
 Duy04Gl6SXJJ1ofXKg3bZ8ri1105HhhNt6oauXJdfCPjMd034m+8v7h1lHdEgzgHsAoF
 +jES+6e+uArFPC7eiN+G+5aFv7Qbjjqg+yYmvIf5psobU9V+2L13iYGb9pOM1/0fVdmE
 EfwNytk43eNB6XR9iPbkeNSF9Tl20jkBdkcl3V26OFUCBKgf9LJpfscg94jZrikDKhuH
 82dtfchBdOd7MYy0vPR9BxmQXF/Jc9AzxIDu0ac6V0Jh3RPm/nthjVPHzjpl/kvCdJWA
 fVLg==
X-Gm-Message-State: APjAAAUL72kM4U3KPgG9Lxso4qq6EjOJ1GTj2AR8wXZi/gCjAzuJo3N1
 XE+dRnc176NhZibTkkVI4Y8z4g==
X-Google-Smtp-Source: APXvYqxSOBdDN0cLa9J71egXj5f8+hpjG/uMA+wSULo66K7IF9WjoNStfIDY2/ojjM0bWat7opVIGw==
X-Received: by 2002:a17:902:d887:: with SMTP id
 b7mr19889219plz.297.1570285176389; 
 Sat, 05 Oct 2019 07:19:36 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y138sm8977604pfb.174.2019.10.05.07.19.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 07:19:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v10 3/6] drm/sun4i: dsi: Add has_mod_clk quirk
Date: Sat,  5 Oct 2019 19:49:10 +0530
Message-Id: <20191005141913.22020-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191005141913.22020-1-jagan@amarulasolutions.com>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_071937_927508_8E281B81 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
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
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 35 ++++++++++++++++++--------
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  5 ++++
 2 files changed, 30 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index b8a0d0501ca7..6724a14c816d 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -11,6 +11,7 @@
 #include <linux/crc-ccitt.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
+#include <linux/of_device.h>
 #include <linux/phy/phy-mipi-dphy.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
@@ -1092,6 +1093,7 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 	dsi->dev = dev;
 	dsi->host.ops = &sun6i_dsi_host_ops;
 	dsi->host.dev = dev;
+	dsi->variant = of_device_get_match_data(dev);
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	base = devm_ioremap_resource(dev, res);
@@ -1119,17 +1121,20 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
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
@@ -1159,7 +1164,8 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 err_pm_disable:
 	pm_runtime_disable(dev);
 err_unprotect_clk:
-	clk_rate_exclusive_put(dsi->mod_clk);
+	if (dsi->variant->has_mod_clk)
+		clk_rate_exclusive_put(dsi->mod_clk);
 	return ret;
 }
 
@@ -1171,7 +1177,8 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
 	component_del(&pdev->dev, &sun6i_dsi_ops);
 	mipi_dsi_host_unregister(&dsi->host);
 	pm_runtime_disable(dev);
-	clk_rate_exclusive_put(dsi->mod_clk);
+	if (dsi->variant->has_mod_clk)
+		clk_rate_exclusive_put(dsi->mod_clk);
 
 	return 0;
 }
@@ -1188,7 +1195,8 @@ static int __maybe_unused sun6i_dsi_runtime_resume(struct device *dev)
 	}
 
 	reset_control_deassert(dsi->reset);
-	clk_prepare_enable(dsi->mod_clk);
+	if (dsi->variant->has_mod_clk)
+		clk_prepare_enable(dsi->mod_clk);
 
 	/*
 	 * Enable the DSI block.
@@ -1229,9 +1237,16 @@ static const struct dev_pm_ops sun6i_dsi_pm_ops = {
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
index 3f4846f581ef..d791c9f6fccf 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
@@ -15,6 +15,10 @@
 
 #define SUN6I_DSI_TCON_DIV	4
 
+struct sun6i_dsi_variant {
+	bool			has_mod_clk;
+};
+
 struct sun6i_dsi {
 	struct drm_connector	connector;
 	struct drm_encoder	encoder;
@@ -31,6 +35,7 @@ struct sun6i_dsi {
 	struct sun4i_drv	*drv;
 	struct mipi_dsi_device	*device;
 	struct drm_panel	*panel;
+	const struct sun6i_dsi_variant	*variant;
 };
 
 static inline struct sun6i_dsi *host_to_sun6i_dsi(struct mipi_dsi_host *host)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
