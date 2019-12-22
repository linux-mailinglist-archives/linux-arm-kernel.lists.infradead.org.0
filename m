Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9504128E3B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 14:30:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9UxXrLT0GmjyX4vuzEprGaVcQRRapLV74LP6a00tMXw=; b=AFTedsv/ovcY8k
	TQP1PYydV4Nie/NjuSDXxUPhU9T1d90Q6p6+1qrFQO2twJxpXGtz97VCvCe+N0Jzb0TSTfG3sIeHm
	IKfcyyRDtJTaL6iNYzzaRMDKJy/qWQzy4STQpJIeqSRJkaQTyoMdihBi6Ig4la+HwqCx6zrUzV91t
	WDN1Uoc8gzKUwhwLBLFqPf1T56PZ9xl73p7SvNDkxX0okxcOTDUltxEFM4tVWmPnjEjlN+c3/3S2K
	+mkYz9xO24pHTQ0UPRxsxs8nxUAmuzCwPhNJVfEfWtPn52rjNrGKx+j2wPq1XJug4gd2WWCXR2xPL
	qLFMtF64pJD+pfHNRNvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1Jn-0005TJ-Dh; Sun, 22 Dec 2019 13:30:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1Io-0003Zj-Jz
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 13:29:48 +0000
Received: by mail-pl1-x641.google.com with SMTP id bd4so6110945plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 05:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9EK74rOb2z7EDUkpcZJ+pjm2y3iAMcEo48mh6FOoxhw=;
 b=elp3iMXtldViCwMF3JjT3bZYVczFV91HufAwoMDwVKUlMBQTJzocTtRCPkNBZMIA9g
 2VG1BztxAum0YPvU8OBwZOSVW5E9wgbKIBqnXdWU8ONLA/+ucglW6TcP3PR9UVYG6GNo
 SfCb4jXdvRDs/0qiGzLsCQH00UaN3uPOVome4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9EK74rOb2z7EDUkpcZJ+pjm2y3iAMcEo48mh6FOoxhw=;
 b=qwMI8sbmlVrzySSZIDRgTKuUwNMO35733V5CamdqAcrZmzEC50MsJCwpDHqIM3ntax
 HJaEmA3Bo4ARytOL+9oN2CpMws0Iq+Nnf/xHFN6T3PidplxtCF0hrdl2C5Smh+chEyph
 7jdbhOsY61rE36+IdT4/GpAk8vK11OiSlCcOx5qL9uSP/RK3kUz8QGVCo+UlGfZIPkF/
 J9g63I7gs3acNRpvOy17/RtsOpcBqX3zXJeUmWoMqBsI4DbE9pMtRj7xD4E7lE99fC8t
 p4Mql+KjVC1Ql4t7AZmRNqiXDvrvPan/9fSxK8MsftWwk+//ENpbrtWVoQs7HiP5Xdmr
 jDkg==
X-Gm-Message-State: APjAAAX1SbJuUnVFuUZiXg7c9oVD2Py48qAB9E6Kkmu5IbacTz12s6z9
 8k0f7hzsuE60sUdD3nMESmocDg==
X-Google-Smtp-Source: APXvYqwbCvY+32jV+/QgjoePmeG6bzYo9uGs3ZgswBABaoyGH34YZ1Q2hfocbLiZGUbMXhjjrYPS2A==
X-Received: by 2002:a17:90a:db48:: with SMTP id
 u8mr7360374pjx.54.1577021385351; 
 Sun, 22 Dec 2019 05:29:45 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.16])
 by smtp.gmail.com with ESMTPSA id o2sm12073058pjo.26.2019.12.22.05.29.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 05:29:44 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v14 4/7] drm/sun4i: dsi: Handle bus clock via
 regmap_mmio_attach_clk
Date: Sun, 22 Dec 2019 18:52:26 +0530
Message-Id: <20191222132229.30276-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191222132229.30276-1-jagan@amarulasolutions.com>
References: <20191222132229.30276-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_052946_667391_1102BB67 
X-CRM114-Status: GOOD (  15.99  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Changes for v14:
- drop regmap_exit, clk_put

 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 37 ++++++++++++++++++++------
 1 file changed, 29 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 68b88a3dc4c5..2577b237d06a 100644
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
@@ -1107,25 +1112,35 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
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
+		return PTR_ERR(dsi->bus_clk);
+	} else {
+		ret = regmap_mmio_attach_clk(dsi->regs, dsi->bus_clk);
+		if (ret)
+			return ret;
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
 
@@ -1164,6 +1179,9 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 	pm_runtime_disable(dev);
 err_unprotect_clk:
 	clk_rate_exclusive_put(dsi->mod_clk);
+err_attach_clk:
+	if (!IS_ERR(dsi->bus_clk))
+		regmap_mmio_detach_clk(dsi->regs);
 	return ret;
 }
 
@@ -1177,6 +1195,9 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
 	pm_runtime_disable(dev);
 	clk_rate_exclusive_put(dsi->mod_clk);
 
+	if (!IS_ERR(dsi->bus_clk))
+		regmap_mmio_detach_clk(dsi->regs);
+
 	return 0;
 }
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
