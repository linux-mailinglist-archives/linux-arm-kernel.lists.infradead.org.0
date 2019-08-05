Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5F78149E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7uYqgwdheZTPc29w4yc/VoRd8QmmdZ2Gul1/asEgwA=; b=QsggnaT6Q9Bd6U
	ySliXMpAgDjBpPefc6+2/YsIXAkiD0jXn+paEMsOuJOlPis6AMNYm+UO+5LFt/ugrI/VCeVc7DBjj
	qp/EXJ9Uko/3HVmnqijnsbeJVDOWnUJxmsaXl5neH+0LmgMuogbXMCOVv6TLdWjPUG2XN0w063FzH
	SAxgmvxfvNjWKmDWdC0/heOyH7/IjxH3XgDsmm9l3w8QhIZnFItPztIA6Oae7rIhMSQubbCa27uIL
	KQTSseRGxwz59z4PH/ZYMtwFTxBEpuTlWugrjXYwYGIA+kOlpRWVKTDT06bOnHu5DfzbiU9OCvdgd
	hQvRSMdiMjG+HK197GHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYqf-0006Q4-1g; Mon, 05 Aug 2019 09:00:09 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYpi-0005oF-OI
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 08:59:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id p17so78639598ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 01:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LNyCV5nRBh8vr0if6GHpu5YY8NlSLnHE1s9JSiyGhqo=;
 b=j54Rj2XaGuAIh1QjDzcW4Ftb6/YJer99fQuk8COxqyd60VzDeuQ65d6FHyUF5S1IS8
 2quTXmox5D/afUITLCaLymjqQ4HeFS6BXZQTsmTQfD8ilpFQMf1hpdO7aAHUK45hj4mW
 Sji83QTaCNlQhAGJ/cWfg5t+0ArDMd2imzJUlJw7V+XZtnQuEmFsF/waSfpvNhUkJ468
 UsXI5DVCBel4zUwtGvG8QIO7esZQYpfyjCDb+xs6fif5FsbKJMuKjuJxtOkHNMDAeDNO
 x79NvYeJsVQG11B1rwQT1Rv76AIPpwFECXhDWMcjOaPelHapSXLbbAAmaaCxqOslNaoF
 12Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LNyCV5nRBh8vr0if6GHpu5YY8NlSLnHE1s9JSiyGhqo=;
 b=Ug1kUOdYwTA97duTrk1Ra66zTr7RgkzSp8+onYr05+XzbkuiVEHq6+DYuzgPgDIIg6
 isNSdlfK6hHHvv+csP9zAQskMhgdI1BwA+oW2tTNtoPcscl9RBO9qjhbJthPw9vdJfJC
 pTX3wGAqc8V4NGR3fKHfhQDRtZLEOlcMW7VaP0rHgPEs4IAXh2rzwUe9spz1l9pElCJg
 EV1wJWxd9jbTKY/GK7LYKzchkIHzDCjRQj60PNr1oOsX0OINt+8uMUR7zBC5/NGo1BSk
 qiaNR23n/yWa6MoRwwkoKcqB6kwgiZ9NV9ci+ZXOAiSqBBnDKEgr4dx0W1GEO7nbaIrj
 hIZA==
X-Gm-Message-State: APjAAAVWZAgsKkrnU25v/zwQn9Y4a/RVZiqEJA7AeU9UUAkaaf3Jqn7Y
 FSZuqFc0zo9P4T7A+Z3S7BIBdIJjCAQ=
X-Google-Smtp-Source: APXvYqxu0QuLvd1rl6bgg7HKmSXXY55bGLbA6eecyMtimwWefpBnoR3359vKaHL3B/LVkYk+ZTqmjQ==
X-Received: by 2002:a2e:8515:: with SMTP id j21mr63843840lji.233.1564995548901; 
 Mon, 05 Aug 2019 01:59:08 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id b20sm234500lfc.17.2019.08.05.01.59.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 01:59:07 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Daniel Tang <dt.tangr@gmail.com>,
	Fabian Vogt <fabian@ritter-vogt.de>
Subject: [PATCH 3/4 v2] drm/panel: simple: Support TI nspire panels
Date: Mon,  5 Aug 2019 10:58:46 +0200
Message-Id: <20190805085847.25554-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805085847.25554-1-linus.walleij@linaro.org>
References: <20190805085847.25554-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_015910_900455_28FD3FA6 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for the TI nspire panels to the simple panel
roster. This code is based on arch/arm/mach-nspire/clcd.c.
This includes likely the first grayscale panel supported.

These panels will be used with the PL11x DRM driver.

Cc: Daniel Tang <dt.tangr@gmail.com>
Cc: Fabian Vogt <fabian@ritter-vogt.de>
Tested-by: Fabian Vogt <fabian@ritter-vogt.de>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Bump clock frequency to 10 MHz after Fabian's trial-and-error
- Changed vsymbol names to ti_nspire_*
- Sorted alphabetically
- Specify positive edge on the classic display bus
---
 drivers/gpu/drm/panel/panel-simple.c | 64 ++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 5a93c4edf1e4..96f894b44313 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2578,6 +2578,64 @@ static const struct panel_desc tianma_tm070rvhg71 = {
 	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
 };
 
+static const struct drm_display_mode ti_nspire_cx_lcd_mode[] = {
+	{
+		.clock = 10000,
+		.hdisplay = 320,
+		.hsync_start = 320 + 50,
+		.hsync_end = 320 + 50 + 6,
+		.htotal = 320 + 50 + 6 + 38,
+		.vdisplay = 240,
+		.vsync_start = 240 + 3,
+		.vsync_end = 240 + 3 + 1,
+		.vtotal = 240 + 3 + 1 + 17,
+		.vrefresh = 60,
+		.flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
+	},
+};
+
+static const struct panel_desc ti_nspire_cx_lcd_panel = {
+	.modes = ti_nspire_cx_lcd_mode,
+	.num_modes = 1,
+	.bpc = 8,
+	.size = {
+		.width = 65,
+		.height = 49,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
+	.bus_flags = DRM_BUS_FLAG_PIXDATA_NEGEDGE,
+};
+
+static const struct drm_display_mode ti_nspire_classic_lcd_mode[] = {
+	{
+		.clock = 10000,
+		.hdisplay = 320,
+		.hsync_start = 320 + 6,
+		.hsync_end = 320 + 6 + 6,
+		.htotal = 320 + 6 + 6 + 6,
+		.vdisplay = 240,
+		.vsync_start = 240 + 0,
+		.vsync_end = 240 + 0 + 1,
+		.vtotal = 240 + 0 + 1 + 0,
+		.vrefresh = 60,
+		.flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC,
+	},
+};
+
+static const struct panel_desc ti_nspire_classic_lcd_panel = {
+	.modes = ti_nspire_classic_lcd_mode,
+	.num_modes = 1,
+	/* The grayscale panel has 8 bit for the color .. Y (black) */
+	.bpc = 8,
+	.size = {
+		.width = 71,
+		.height = 53,
+	},
+	/* This is the grayscale bus format */
+	.bus_format = MEDIA_BUS_FMT_Y8_1X8,
+	.bus_flags = DRM_BUS_FLAG_PIXDATA_POSEDGE,
+};
+
 static const struct drm_display_mode toshiba_lt089ac29000_mode = {
 	.clock = 79500,
 	.hdisplay = 1280,
@@ -3029,6 +3087,12 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "tianma,tm070rvhg71",
 		.data = &tianma_tm070rvhg71,
+	}, {
+		.compatible = "ti,nspire-cx-lcd-panel",
+		.data = &ti_nspire_cx_lcd_panel,
+	}, {
+		.compatible = "ti,nspire-classic-lcd-panel",
+		.data = &ti_nspire_classic_lcd_panel,
 	}, {
 		.compatible = "toshiba,lt089ac29000",
 		.data = &toshiba_lt089ac29000,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
