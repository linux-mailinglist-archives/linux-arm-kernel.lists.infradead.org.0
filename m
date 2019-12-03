Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1044D10FF40
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9aa3ZaQ5G5vshs/OR7CTB7AEQle2FCx6x+V24n4MgRk=; b=mI51yt05P09h+P
	yiXG+dqdWwE/cOrMW38ZTW9OUL9Gx74QYfOVwlcQyOGJdKHz8ChrUH0uUce5EGevHNqOGWTIrsdBI
	fm27e+Vb8ump2vNeNcnN2i8xTMleXg+BBwsANZR30dh1F37e6LMuJPiF9MzqjWk3ZI58NAsVZxQrz
	fdq4YYKu0/WheAWdjKqnUb8niiyYHosAeuDBpZPW5qcL04qPDw+3cTYA/syWBtguMSDU0ipvltNOg
	wdQBIsVFRKcpqWnMR7FGcUPB97CGvSlRgnFqB6qZASiOAQI8P7LBIXDWLuxulfAEv2hKYjX3NVHVQ
	mejMTlVx4hfBNg5o5SxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8ZO-0000kz-68; Tue, 03 Dec 2019 13:50:26 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8Xt-00006K-0m
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:48:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id q127so1715763pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 05:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lDJf2uYfDmQWtbbV6ZzytU1h+3qcWlYg0vHzuCFbvic=;
 b=dljMBjZTTzYVZx3NJIiaTEKY+fBL1rJ0VhDMi5ObHjHZmD6d6/YkIak3capZ8MXAcl
 0HHbF26ngBJZQ8gJi72dDs2EJfcuSffsgquhnS4ZKAxUvU+FNQDus06hoTP4S7gV2V4D
 p5ozM+tkWAxjwq6p5k8NVEHgMcFwOo6kIyG9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lDJf2uYfDmQWtbbV6ZzytU1h+3qcWlYg0vHzuCFbvic=;
 b=QNUweDKFYBZQYYVoUsxSui6iIMLpYfXgAIW9IZhzB9tmn/+KW/xNjsyPSMpTgNryl2
 f5ofYGd+GG6ecFhjZmEULek5JJqGvodfFj8PrYW2uOq1WQBNUOE8A3ntGUOMbdRv+7XO
 HEQm0kHwpqq/d82gOm7/EQOtqPd4y6dbtnfcN8JAblWwD1XxjA8P10l8kxbfLFIiFKQ7
 TNfwmlSQeWU4mTLzhOizBfR8cSPBQ+jHHg3N51I03stmk9iEB8xO8YwqcbwAyqtmTAI5
 UicrBrJ2SHIahIyaeiqrwsvno1HXCD5EHP2j0cEyLC0eEENiuXQ1Gx5jnVIKzPuH0mf1
 I9XQ==
X-Gm-Message-State: APjAAAU+HVuFoFcgu22nBxa8G24SR8gMgR9iSadUtKSX2MaqqzrEY6rY
 dMEWhwOURa7JssZce0c0jSMaww==
X-Google-Smtp-Source: APXvYqwQHjJFEEwhVh4UAmgN93Bdic+cbDd2uJ8/t2CawkxL9VtbaPUQzrKhamJ0900Y+rNZOt7WkQ==
X-Received: by 2002:a63:4466:: with SMTP id t38mr5499310pgk.316.1575380930403; 
 Tue, 03 Dec 2019 05:48:50 -0800 (PST)
Received: from localhost.localdomain ([115.97.190.29])
 by smtp.gmail.com with ESMTPSA id y144sm4397892pfb.188.2019.12.03.05.48.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 05:48:49 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v12 4/7] drm/sun4i: dsi: Handle bus clock via
 regmap_mmio_attach_clk
Date: Tue,  3 Dec 2019 19:18:13 +0530
Message-Id: <20191203134816.5319-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191203134816.5319-1-jagan@amarulasolutions.com>
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_054853_090351_762E2B22 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Changes for v12:
- get bus clock only when mod clock present
- use regmap_mmio_attach_clk

 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 43 +++++++++++++++++++++-----
 1 file changed, 35 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 8c4c541224dd..6085ad2eafc3 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1082,6 +1082,7 @@ static const struct component_ops sun6i_dsi_ops = {
 static int sun6i_dsi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	const char *clk_name = NULL;
 	struct sun6i_dsi *dsi;
 	struct resource *res;
 	void __iomem *base;
@@ -1095,6 +1096,8 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 	dsi->host.ops = &sun6i_dsi_host_ops;
 	dsi->host.dev = dev;
 	dsi->variant = of_device_get_match_data(dev);
+	if (dsi->variant->has_mod_clk)
+		clk_name = "bus";
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	base = devm_ioremap_resource(dev, res);
@@ -1109,24 +1112,35 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
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
+	dsi->bus_clk = devm_clk_get(dev, clk_name);
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
 	if (dsi->variant->has_mod_clk) {
 		dsi->mod_clk = devm_clk_get(dev, "mod");
 		if (IS_ERR(dsi->mod_clk)) {
 			dev_err(dev, "Couldn't get the DSI mod clock\n");
-			return PTR_ERR(dsi->mod_clk);
+			ret = PTR_ERR(dsi->mod_clk);
+			goto err_attach_clk;
 		}
 	}
 
@@ -1167,6 +1181,14 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 err_unprotect_clk:
 	if (dsi->variant->has_mod_clk)
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
 
@@ -1181,6 +1203,11 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
 	if (dsi->variant->has_mod_clk)
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
