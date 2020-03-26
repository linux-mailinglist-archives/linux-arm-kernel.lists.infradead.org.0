Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3791C19404B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:49:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gopI3CFa8xkQxSjfg4+wlDKsqqp1dyGJhrpIziwoKpo=; b=ocy/yrEpeQZN5A
	julk4TWcy5PewG3DOX99o0IDDVaTjLRiXeeSYOUfaSTCsD8NOYWXWGt8MlqwmOFsQsJnTL/qML4wC
	QiWIpl8OeApTWkM+NZcR4EqHH7UTwwIHIZ8y6LCzjSEuApNccNYB6QtjbFygyuugMCbSnjn5cn+5W
	Ee1UEyUqJK/sRqsy56dydUazmm3qIHuafoIQyeVXbla+739kxR6siVbvwaoXve7qJaCNaQd/3Z72A
	FMx3AZ0uhRERBexZbQrGUvELtZFtOXpARCAY3gt2yYmE6/Eky8aa2psg+3UMdNphcLNNpxiSxP1pj
	Ty2HzF/UUDTWiAzJ3zWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSsr-00017s-Up; Thu, 26 Mar 2020 13:49:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSp7-0005pV-8S
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 13:45:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id m11so1959935wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 06:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/+yRgmnGZVSZp6x2Og5KbLuzZTmkQMHFsn5IdENH0xo=;
 b=SfD1VgTJ41hRjtk+2zwtDcvVSqRHhtZIpO/6z0iWJuLsemqzc7nrs4PL21FztrH6OG
 oSAhpDy4RDJE87y9GHyjUwFHlTe3G+kucbEryCcU1e7WFenhQN/8ACLMQmWgrejPsbTb
 cauBQxi+wIYgmhk/mK3pRWO+B3yQzlC0QTMcckePHIkFb/gUGLuphx+x5UZpG84euGSF
 gTxBqL1HJDv5fBekyxqPboVHGHoIWw1mfFDzq+0dDxZ/zN4yHOMx0uTb0ODyPDXGMi5R
 /Tr99cGxUciuDI4A/ff4MfMWbAsD86/TpZGtykWC1yihYxFEfWGiOFHvGEOSW7aQoNFJ
 QIYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/+yRgmnGZVSZp6x2Og5KbLuzZTmkQMHFsn5IdENH0xo=;
 b=mgCv5p7g7be9jw+qZI81diCMYiHaAcDBzcmsFl2Y92L5ROocYOnIMsa8B44f9gqoWv
 8kGodvP4UCdoewAm0Pv22+TxJ/uT3X6mkGWwsd2CGmGaLmAR30efG5R4APSGDpBHqzy2
 VSCV32SWvPk0R2lXwaSur4C0rxd8CQasXWKHiw4fKC9kAgZR7oP0UR+bKec5j0iipdkT
 90syJfgPojbDYVNPwPlvXytTUrbhIV+Ao1xJDAiVCoxpV795sEwdrqBHPbaNVEvw2mPE
 Wm+wjdySBL3xjQn1s6sIfGUpL8BgesaTyxPiiskpuoGaoCo+8W+dTxZ5JCSaWakL4Y4h
 GWbA==
X-Gm-Message-State: ANhLgQ31b2mZonu3Gke7HGWl2NefR5XshqkdR13O6vBNtDXnrU+9gAs3
 ciD/QyomWJ82lb3btwJxKlDBdQ==
X-Google-Smtp-Source: ADFU+vsKPRT6a8OC21J5nNuwT6DO29oduL+GmiE3jhzC87z4OtUR5LDXiMgF2U6M34pXoGgMANp9Zg==
X-Received: by 2002:adf:b35d:: with SMTP id k29mr9627430wrd.239.1585230327044; 
 Thu, 26 Mar 2020 06:45:27 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h29sm4079617wrc.64.2020.03.26.06.45.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:45:26 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 12/14] usb: dwc3: of-simple: remove Amlogic GXL and AXG
 compatibles
Date: Thu, 26 Mar 2020 14:45:04 +0100
Message-Id: <20200326134507.4808-13-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326134507.4808-1-narmstrong@baylibre.com>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_064529_509486_F8CA60FE 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
