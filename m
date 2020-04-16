Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8747B1AC103
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 14:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gopI3CFa8xkQxSjfg4+wlDKsqqp1dyGJhrpIziwoKpo=; b=sZviNcX3KX2hdR
	m+m/GHUkINr7N7sISAyORs38fnv3ZffbQnE2AANaUwsgArEGn2OI9TO5U+N+CI2PCe1mx52mlMIZN
	bHJAXmSGKKWbp6njwn1hDrkwZvNccmICysEb7DkzkIDQ3yOC9zwB1DOtQPrRwmzsYdlGGaFt14OBT
	Zb46Bi76GVt51FlYqxZgC9VkErByH0/ZeifDQO+BZAZjAPHvXeKWO0VxqfrQWRL9qP0E0dD8sMOwa
	AdlxLZG8uaxi/yTmwLsH0U0r8ffEM4q4rUlO+f75dVg3o1s4nWLroWMv9gXEwtvCc4xnn8vQyMT7o
	oHkxldc389M1XKHatgOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3WI-00023y-Qx; Thu, 16 Apr 2020 12:21:26 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3UM-0006Ei-8f
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 12:19:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id z6so4633917wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 05:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/+yRgmnGZVSZp6x2Og5KbLuzZTmkQMHFsn5IdENH0xo=;
 b=ufQGGuWCPkMB7/EFw9Wt+LrJiz/21r7eAG+tmcYVR9eMCg8P0OCZnVVQZuEq9UBLz2
 0ZTu66nzJfys5AaRDj0eaUpi0eheZIqByN/0xHHXRlAs6H75HBHlWPnv8oyyxFd6QPqC
 jV9FAOycTx9/aPd6C1Li8IzL3ZdzdbTtOTBBB8j7iRQsCJdTV8ujXAE+LF0W0l0GO3V2
 GEAVbsfwXMg9vuwPbYiVDzhTQ9N1fnpycEsYDXa0aNmD6J+/dIQPRFl4jnTY5+BFnUvF
 jiapo7LovpME1UBMMlYyfBTE2pbjFLNp2OD4xOH9+tLAg/jkdj6sYopRsLINPX8KvLUe
 vrEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/+yRgmnGZVSZp6x2Og5KbLuzZTmkQMHFsn5IdENH0xo=;
 b=r3mjgN+1HWG3c5vBdEQJe7vQzmy/qNU4JvnsRCWWiCdJLKoulsJu4LpQZdTNYgqeJw
 MVew6qiWwkAyeHEf5lSYH19N6wyJ6oVrsJN+cz8qBzatcgZei8xT7o7HIT4UJnmgy6e3
 qLPphfr3ikqR0eXdnGIe0JYjPitC5KCmcKFBJD0X2K7wdBOBzwVKM8naNdrydXLW5hgK
 HqW9Ij2TZM1ZX+nofDeGg5XehXIkydCOAG16PO9hFQIIlRPFRTmHczMVkjBf7OQWjz80
 ntOoGNd3+drylr+o5FQ+yHF+Wda51kpLNh1N4Ij+n0RnaVwEOlq2k9ywW0N6TNv4/PHt
 2rpQ==
X-Gm-Message-State: AGi0PuYo2JzNSqujHv3k3foAXk2RifS7CbCSi1hgAr5d40z3Vfyx6aCq
 so30Ccci8f2V5XVssH6ymIY/XQ==
X-Google-Smtp-Source: APiQypLhp1htfgHbb4+jVnEHHKkg4OXjNr7cHMLrpiuzz2MMYDxeajyVqpWhGLcg4U9FTsR0JQbIFw==
X-Received: by 2002:a7b:cc88:: with SMTP id p8mr4471285wma.108.1587039564912; 
 Thu, 16 Apr 2020 05:19:24 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 i13sm22035602wro.50.2020.04.16.05.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 05:19:24 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v3 6/8] usb: dwc3: of-simple: remove Amlogic GXL and AXG
 compatibles
Date: Thu, 16 Apr 2020 14:19:08 +0200
Message-Id: <20200416121910.12723-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200416121910.12723-1-narmstrong@baylibre.com>
References: <20200416121910.12723-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_051926_321192_0A8A4D10 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

There is now a dedicated driver for these SoCs making the old compatible
obsolete.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 30 ++++++------------------------
 1 file changed, 6 insertions(+), 24 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index e64754be47b4..8852fbfdead4 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -27,7 +27,6 @@ struct dwc3_of_simple {
 	struct clk_bulk_data	*clks;
 	int			num_clocks;
 	struct reset_control	*resets;
-	bool			pulse_resets;
 	bool			need_reset;
 };
 
@@ -38,7 +37,6 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 	struct device_node	*np = dev->of_node;
 
 	int			ret;
-	bool			shared_resets = false;
 
 	simple = devm_kzalloc(dev, sizeof(*simple), GFP_KERNEL);
 	if (!simple)
@@ -54,13 +52,7 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 	if (of_device_is_compatible(np, "rockchip,rk3399-dwc3"))
 		simple->need_reset = true;
 
-	if (of_device_is_compatible(np, "amlogic,meson-axg-dwc3") ||
-	    of_device_is_compatible(np, "amlogic,meson-gxl-dwc3")) {
-		shared_resets = true;
-		simple->pulse_resets = true;
-	}
-
-	simple->resets = of_reset_control_array_get(np, shared_resets, true,
+	simple->resets = of_reset_control_array_get(np, false, true,
 						    true);
 	if (IS_ERR(simple->resets)) {
 		ret = PTR_ERR(simple->resets);
@@ -68,15 +60,9 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	if (simple->pulse_resets) {
-		ret = reset_control_reset(simple->resets);
-		if (ret)
-			goto err_resetc_put;
-	} else {
-		ret = reset_control_deassert(simple->resets);
-		if (ret)
-			goto err_resetc_put;
-	}
+	ret = reset_control_deassert(simple->resets);
+	if (ret)
+		goto err_resetc_put;
 
 	ret = clk_bulk_get_all(simple->dev, &simple->clks);
 	if (ret < 0)
@@ -102,8 +88,7 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 	clk_bulk_put_all(simple->num_clocks, simple->clks);
 
 err_resetc_assert:
-	if (!simple->pulse_resets)
-		reset_control_assert(simple->resets);
+	reset_control_assert(simple->resets);
 
 err_resetc_put:
 	reset_control_put(simple->resets);
@@ -118,8 +103,7 @@ static void __dwc3_of_simple_teardown(struct dwc3_of_simple *simple)
 	clk_bulk_put_all(simple->num_clocks, simple->clks);
 	simple->num_clocks = 0;
 
-	if (!simple->pulse_resets)
-		reset_control_assert(simple->resets);
+	reset_control_assert(simple->resets);
 
 	reset_control_put(simple->resets);
 
@@ -191,8 +175,6 @@ static const struct of_device_id of_dwc3_simple_match[] = {
 	{ .compatible = "xlnx,zynqmp-dwc3" },
 	{ .compatible = "cavium,octeon-7130-usb-uctl" },
 	{ .compatible = "sprd,sc9860-dwc3" },
-	{ .compatible = "amlogic,meson-axg-dwc3" },
-	{ .compatible = "amlogic,meson-gxl-dwc3" },
 	{ .compatible = "allwinner,sun50i-h6-dwc3" },
 	{ /* Sentinel */ }
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
