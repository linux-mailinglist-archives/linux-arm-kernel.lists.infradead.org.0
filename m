Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2147197B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1Z5RALkvp0SzHgyA7Z6llbbSChyDL0EE3kZeOnqD/8=; b=EF8nbhljhbC1Xd
	HbTMMa9kwbQX+j38AT8D7kwz/Rc0rA879Peig9eHrsk+mHRJAKJdUfMnRZCvJN7MNezNg0/AGjavM
	n2uxs0ZFRO4n/oKdg2mCeSVkPfG5C0XEQcIckgSN7fGW4Ky4tVSJgPH0Wa/WhBQCcuKF6ZeB9Z7f0
	AkICxlTBCLsGx1ZEDyoOC8g3XR2602vbVpFRK0QBpTM02ITEh6YNvvCbDompaUCcNim9bHWBhDENN
	wIt9KpiskSayyljR9TTN9Y93bomNOR/3K/WUvsRdXl/nwxvhJmqQTvMga2IF++H9Du8+oOr3zpQYV
	9wRITJ7BZ28dJRc3LNyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpv0b-0005m3-Hi; Tue, 23 Jul 2019 13:39:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuzY-00059V-Fj
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:38:10 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so41075364ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 06:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1WIz4398NalYoE1dkIhu0zv1BVloq81pBzlO+qRIk2I=;
 b=OuhS0VSszSa/G+X8Vg8wOX4jN8ZWDZS3HVget6W39BC0v6+nDLYNJ/IDrryN+4galP
 +LkZx4gw2vFzAHOuHz0XjiUHQV4UuFrYsPtsbQaAySmaNwqImGY8tYZIhAe4niKTC2Ja
 h1bGtbWp6EobD7I1no/m/iXS2qreA0g/ulZHFm6vhBJU+1jLVzEFFpbsssimk4DQEP3u
 +Oq3lV/DRdwM/3ABEguM0ZOB9oNgo3RKUKtyRgRGUu8RZYCA1hGMNeDL4YP2pAtXNIie
 VedCUoWMNl9E1LyRy9RH/I2hNhkfiXCC+HHLFHR86yN6NB7cijvL/l4GimVJsD2hR0w8
 nf9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1WIz4398NalYoE1dkIhu0zv1BVloq81pBzlO+qRIk2I=;
 b=ZjW46KURsO1o38xcY5gbpm9tGOzuwW7+84jpbbyR4tmqq94j2XUqrvIvw446eEjrjA
 zWLeVDZaG5y1wYH8NYE/V4WTVyAieVyuaP7tDN7arecOQ3tDdG/darGYge8889RcMogv
 ZzQQCn29d7/gQIAcCJ+mUwt8DGuaC1p7Eu+G5SUKz21liUhmcF/ZprKSIjRVN+AHHcRK
 cY8Dq6dahWtjsLxsD1YqIDhZ9Rz6qnm+uLXboOv5EUakBc6tJqLi+J+4QkGlHkGhmXAV
 5xvtXy+6NuZblqD85cUpMVbiGccL4foMhlKorldvf0Hf+m1LztSxdSiYbmFJ6+4MmHFv
 +eIQ==
X-Gm-Message-State: APjAAAVNVoEAeP1GtxCnQrKQP2bhalu0pMmHclD/2ReNckc7JbeFZZmc
 P6kzRBS4XAj9XTQ3HcvL4EE/JA==
X-Google-Smtp-Source: APXvYqz/2Y2BXw9Lr9zrIFx/PaE0rfUE7HpKmwIOHcpKt2QoC8yNgr5Nx1MWD1rKCScVSXzxuBjWSw==
X-Received: by 2002:a2e:89d0:: with SMTP id c16mr38667121ljk.219.1563889086687; 
 Tue, 23 Jul 2019 06:38:06 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id l24sm8069411lji.78.2019.07.23.06.38.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 06:38:05 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Daniel Tang <dt.tangr@gmail.com>,
	Fabian Vogt <fabian@ritter-vogt.de>
Subject: [PATCH 2/3] RTF: drm/panel: simple: Add TI nspire panels
Date: Tue, 23 Jul 2019 15:37:54 +0200
Message-Id: <20190723133755.22677-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723133755.22677-1-linus.walleij@linaro.org>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063809_088598_57F587BC 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/panel/panel-simple.c | 63 ++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 5a93c4edf1e4..e5cfe1398a3b 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2761,6 +2761,63 @@ static const struct panel_desc arm_rtsm = {
 	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
 };
 
+static const struct drm_display_mode nspire_cx_lcd_mode[] = {
+	{
+		.clock = 1000,
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
+static const struct panel_desc nspire_cx_lcd_panel = {
+	.modes = nspire_cx_lcd_mode,
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
+static const struct drm_display_mode nspire_classic_lcd_mode[] = {
+	{
+		.clock = 1000,
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
+static const struct panel_desc nspire_classic_lcd_panel = {
+	.modes = nspire_classic_lcd_mode,
+	.num_modes = 1,
+	/* The grayscale panel has 8 bit for the color .. Y (black) */
+	.bpc = 8,
+	.size = {
+		.width = 71,
+		.height = 53,
+	},
+	/* This is the grayscale bus format */
+	.bus_format = MEDIA_BUS_FMT_Y8_1X8,
+};
+
 static const struct of_device_id platform_of_match[] = {
 	{
 		.compatible = "ampire,am-480272h3tmqw-t01h",
@@ -2966,6 +3023,12 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "nlt,nl192108ac18-02d",
 		.data = &nlt_nl192108ac18_02d,
+	}, {
+		.compatible = "ti,nspire-cx-lcd-panel",
+		.data = &nspire_cx_lcd_panel,
+	}, {
+		.compatible = "ti,nspire-classic-lcd-panel",
+		.data = &nspire_classic_lcd_panel,
 	}, {
 		.compatible = "nvd,9128",
 		.data = &nvd_9128,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
