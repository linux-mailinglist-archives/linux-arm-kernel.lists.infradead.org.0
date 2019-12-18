Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B1012518B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 20:12:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHp7+qE0NXoq2uQXJHnMo2jRR5LhyPQeB1z5j/wKOhA=; b=E7DBoJmdGCocOB
	bPg+kAuxa4y9ihiMHbRg1RREDWcSi3+0xTxqbB4yvu9eg9pjXeN+DhRSBJEVrNRos16Sm2t3+tBt5
	4f7l5cjfQDXW1DgkbgpeY7+tJIDUOx7Q1te2HZ72ZRiJ3i38GTsxJwZoS54KpEGd4xERuBSkugs2c
	964WkxK+Uikqy9IS+XKJK+2u5VhibtSMlWq6QJ3SnREJaHVyQGaa4IedFa/Ksh3oTSt0jJqnL1KAO
	IT6OeN0c0QHQydN12i0IpBIxbqN1LT9Ht84JU0LXYAD29jUMXG3qq6ulAnrK9sj6SO8nzraJGsHw2
	12e84tZoW0ps1Dtph5+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihejj-0001YJ-5i; Wed, 18 Dec 2019 19:11:55 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iheic-0000iH-2m
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 19:10:47 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t101so1313599pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 11:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qISq29HsJqizQ/dr9IDqB+kkI7D+OvUtJAFPrAy/nl4=;
 b=YxQafe8jh4QPqCjejR3M34Sd/4XpSYiKBWIcOBezUR1fhLtoc82k5kx5ExrQXHKQ2C
 vS2dLSfQvTrP8O11GKbHUhcEP9GDLGdcKLUU5I2q28k6yi1c1DgTTaNzcbSVB1iyx4KX
 Cen3RsibAKaJgtVRu+yHWhpGxscNR6JCAxUXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qISq29HsJqizQ/dr9IDqB+kkI7D+OvUtJAFPrAy/nl4=;
 b=nMjDh6MnBRRfLtLwfzlAG5ApOsREae0XJt/sTdfp/4PJMkbWBGV3ayHk0VmMle83Jc
 9rjvVAqq4sBPmzWazHUpyK8mtcpR7k6e9rv1Ug+NBHL+0hJB0YohdjSLaH3PiuKQWJLq
 nc9YFNbeCjX+NGRDewx03L2wFkC1cpDk1eNWTVXYEdTyRWzAMjStOOnRYMRIMRIsvoWR
 kfZfwIWQd5TPQRRr83Gct1ccdkvBexBPMcnk5/h5u8o9KjL6q5u+bp1NRRwyCzgSAxmt
 uI07yx0c+M4XCNLMfyDjXMZug1MPe2YWD3IRboJM/ZMNWnFre1D5PT62l3+c7Sq/8LFi
 kZNw==
X-Gm-Message-State: APjAAAW5FNhGlgItXXfHV8NIQOjK70dDU7MFRfcA6rfVX6UQv1/VTMCq
 9iEhVE4v8JvPYnv4Btnc8ZUhIw==
X-Google-Smtp-Source: APXvYqx6pZtGD5CankRw2wtkMvreOH4b8xo+2gm+PpxrsNSXLh1P6DrOeczRQv/iXcWiQlhsiKLRBQ==
X-Received: by 2002:a17:90a:3747:: with SMTP id
 u65mr2730117pjb.25.1576696245276; 
 Wed, 18 Dec 2019 11:10:45 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:78ea:e014:edb4:e862])
 by smtp.gmail.com with ESMTPSA id q7sm3745855pjd.3.2019.12.18.11.10.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 11:10:44 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v13 4/7] drm/sun4i: dsi: Handle bus clock via
 regmap_mmio_attach_clk
Date: Thu, 19 Dec 2019 00:40:14 +0530
Message-Id: <20191218191017.2895-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191218191017.2895-1-jagan@amarulasolutions.com>
References: <20191218191017.2895-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_111046_272232_D19DA561 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

regmap has special API to enable the controller bus clock while
initializing register space, and current driver is using
devm_regmap_init_mmio_clk which require to specify bus
clk_id argument as "bus"

But, the usage of clocks are varies between different Allwinner
DSI controllers. Clocking in A33 would need bus and mod clocks
where as A64 would need only bus clock.

Since A64 support only single bus clock, it is optional to
specify the clock-names on the controller device tree node.
So using NULL on clk_id would get the attached clock.

To support clk_id as "bus" and "NULL" during clock enablement
between controllers, this patch add generic code to handle
the bus clock using regmap_mmio_attach_clk with associated
regmap APIs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v13:
- update the changes since has_mod_clk is dropped in previous patch

 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 45 +++++++++++++++++++++-----
 1 file changed, 37 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 68b88a3dc4c5..de8955fbeb00 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1081,6 +1081,7 @@ static const struct component_ops sun6i_dsi_ops = {
 static int sun6i_dsi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	const char *bus_clk_name = NULL;
 	struct sun6i_dsi *dsi;
 	struct resource *res;
 	void __iomem *base;
@@ -1094,6 +1095,10 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 	dsi->host.ops = &sun6i_dsi_host_ops;
 	dsi->host.dev = dev;
 
+	if (of_device_is_compatible(dev->of_node,
+				    "allwinner,sun6i-a31-mipi-dsi"))
+		bus_clk_name = "bus";
+
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(base)) {
@@ -1107,25 +1112,36 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 		return PTR_ERR(dsi->regulator);
 	}
 
-	dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
-					      &sun6i_dsi_regmap_config);
-	if (IS_ERR(dsi->regs)) {
-		dev_err(dev, "Couldn't create the DSI encoder regmap\n");
-		return PTR_ERR(dsi->regs);
-	}
-
 	dsi->reset = devm_reset_control_get_shared(dev, NULL);
 	if (IS_ERR(dsi->reset)) {
 		dev_err(dev, "Couldn't get our reset line\n");
 		return PTR_ERR(dsi->reset);
 	}
 
+	dsi->regs = devm_regmap_init_mmio(dev, base, &sun6i_dsi_regmap_config);
+	if (IS_ERR(dsi->regs)) {
+		dev_err(dev, "Couldn't init regmap\n");
+		return PTR_ERR(dsi->regs);
+	}
+
+	dsi->bus_clk = devm_clk_get(dev, bus_clk_name);
+	if (IS_ERR(dsi->bus_clk)) {
+		dev_err(dev, "Couldn't get the DSI bus clock\n");
+		ret = PTR_ERR(dsi->bus_clk);
+		goto err_regmap;
+	} else {
+		ret = regmap_mmio_attach_clk(dsi->regs, dsi->bus_clk);
+		if (ret)
+			goto err_bus_clk;
+	}
+
 	if (of_device_is_compatible(dev->of_node,
 				    "allwinner,sun6i-a31-mipi-dsi")) {
 		dsi->mod_clk = devm_clk_get(dev, "mod");
 		if (IS_ERR(dsi->mod_clk)) {
 			dev_err(dev, "Couldn't get the DSI mod clock\n");
-			return PTR_ERR(dsi->mod_clk);
+			ret = PTR_ERR(dsi->mod_clk);
+			goto err_attach_clk;
 		}
 	}
 
@@ -1164,6 +1180,14 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 	pm_runtime_disable(dev);
 err_unprotect_clk:
 	clk_rate_exclusive_put(dsi->mod_clk);
+err_attach_clk:
+	if (!IS_ERR(dsi->bus_clk))
+		regmap_mmio_detach_clk(dsi->regs);
+err_bus_clk:
+	if (!IS_ERR(dsi->bus_clk))
+		clk_put(dsi->bus_clk);
+err_regmap:
+	regmap_exit(dsi->regs);
 	return ret;
 }
 
@@ -1177,6 +1201,11 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
 	pm_runtime_disable(dev);
 	clk_rate_exclusive_put(dsi->mod_clk);
 
+	if (!IS_ERR(dsi->bus_clk))
+		regmap_mmio_detach_clk(dsi->regs);
+
+	regmap_exit(dsi->regs);
+
 	return 0;
 }
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
