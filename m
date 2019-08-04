Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D50080C8A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UalVsxCqK0reWHtJAnDGuzVqRwX3LVWodv+tH3AravU=; b=Eb2Wv/MZI4XOp4
	Do4aoTFiadjH/0p+xW5+c0kcKRXaNhi2o7cm0Jqp75H7RhtBS4M3P1nMHxfGCSRvPuhiFyL6xHSJz
	4nuGBSHwnJ9srxn+9NW29coaBYnM03b+x0rOF2R/pYHzc0hTSt4VTU4l814FUb4+IMW9k76Y1vL7g
	cZloBD6gm34jJQ/vUBS01cyRlcwBIGs0qpBguikUjY87OoyFlt4TTiQrujaYNLf+OcJeAu8XVM0sN
	QG9ZFgY1pOGScB8WY2c7zMBdyWXbibVl/u/y5s+rWK7J2D463x9e/hgiIhkYC2W8sSy2y/vl70yPF
	Uw38vIeocYsEMawvIvbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMy4-0002BG-MQ; Sun, 04 Aug 2019 20:19:00 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwd-0000LS-1J
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:32 +0000
Received: by mail-lf1-x143.google.com with SMTP id x3so2581860lfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=shoyTDJcoi5HvA8suEJ+ePhtLRmu1CfLIIIm8v7PNNs=;
 b=TT0liCbgGg0E/gJCenrGbe3V7qxESoHcLYR9Fqum61d5epYgpLiaYRYFfKL92Pr3ih
 8qYhDSumrhQUVMEQzIyzfC1SGb+fphtyBPbjIx90BYEUkYkHRusp/zv3xYTe4Q5JntxV
 tPvq1numLSzbK1j6IgLi22GioQ71kzagFKwDFQTjXRdiZQgt2p+E4RM5HcLdsKTlmHBc
 xcIoztstMzYcu0dtXtODbAIM4OsypFfHT2H5Sbqg70r2FfpBM/xvUiRRgTp1cQZhCVPM
 63T3SG4pNSJFLmpPNWxgt7AqRvsoRkBsILlP/FwlXKZdsAnovbJMjKhi+vrEpjsIAHnh
 ymFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=shoyTDJcoi5HvA8suEJ+ePhtLRmu1CfLIIIm8v7PNNs=;
 b=Fu2cfqSPwrXU2bXtSC23SnuqDk6jDwZw1HJw2mvRgBu7WfT3W0NB4p3pR1FVn8s3fV
 u95oM6fDmTn2y/ac6kkaqgSDZS5yPZnBm5NV63tZGS9+yljyThU39QqWsYnWcdxWWfP/
 3krDHS+iiyGM1KkX6J3B/WmpR9Xkh6rMM7LGIuABZMBma9KCBNJrSaIe991w06XmBpDq
 L2T3Lem1qes3Bs3IqAIakHiBBigIofnBCA/VkJ59NXAROlGr6e0i8/b66mPSQQat3Aw5
 gRPyd+KlPidHXc0AIkEl6wtnD3DuotyXlbRIlaYr1TgO/A4WtPPCtTmkr8ECfJZT4F36
 mWpg==
X-Gm-Message-State: APjAAAVIw1RixKFrQaAJblAFjm4E5Ch2JQeP65Y0zCSbSx9LFcPqt+zF
 cI2rruw6912lloxPuUxz+8Q=
X-Google-Smtp-Source: APXvYqzl1MkkA4C89bp42Rzz6UlZz/8K8R5A5+jNjhZrXPItPaaVvFQmywl+F1LIRSh1rcVqQi6CzA==
X-Received: by 2002:ac2:5c1d:: with SMTP id r29mr18089640lfp.72.1564949849567; 
 Sun, 04 Aug 2019 13:17:29 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:29 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 10/16] drm/panel: ili9322: move bus_flags to get_modes()
Date: Sun,  4 Aug 2019 22:16:31 +0200
Message-Id: <20190804201637.1240-11-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131731_099979_8C020291 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 Allison Randal <allison@lohutok.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Shawn Guo <shawnguo@kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Vincent Abriou <vincent.abriou@st.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To prepare the driver to receive drm_connector only in the get_modes()
callback, move bus_flags handling to ili9322_get_modes().

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/panel/panel-ilitek-ili9322.c | 34 +++++++++-----------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9322.c b/drivers/gpu/drm/panel/panel-ilitek-ili9322.c
index 53dd1e128795..3c58f63adbf7 100644
--- a/drivers/gpu/drm/panel/panel-ilitek-ili9322.c
+++ b/drivers/gpu/drm/panel/panel-ilitek-ili9322.c
@@ -349,7 +349,6 @@ static const struct regmap_config ili9322_regmap_config = {
 
 static int ili9322_init(struct drm_panel *panel, struct ili9322 *ili)
 {
-	struct drm_connector *connector = panel->connector;
 	u8 reg;
 	int ret;
 	int i;
@@ -407,23 +406,11 @@ static int ili9322_init(struct drm_panel *panel, struct ili9322 *ili)
 	 * Polarity and inverted color order for RGB input.
 	 * None of this applies in the BT.656 mode.
 	 */
-	if (ili->conf->dclk_active_high) {
+	reg = 0;
+	if (ili->conf->dclk_active_high)
 		reg = ILI9322_POL_DCLK;
-		connector->display_info.bus_flags |=
-			DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE;
-	} else {
-		reg = 0;
-		connector->display_info.bus_flags |=
-			DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE;
-	}
-	if (ili->conf->de_active_high) {
+	if (ili->conf->de_active_high)
 		reg |= ILI9322_POL_DE;
-		connector->display_info.bus_flags |=
-			DRM_BUS_FLAG_DE_HIGH;
-	} else {
-		connector->display_info.bus_flags |=
-			DRM_BUS_FLAG_DE_LOW;
-	}
 	if (ili->conf->hsync_active_high)
 		reg |= ILI9322_POL_HSYNC;
 	if (ili->conf->vsync_active_high)
@@ -659,9 +646,20 @@ static int ili9322_get_modes(struct drm_panel *panel)
 	struct drm_connector *connector = panel->connector;
 	struct ili9322 *ili = panel_to_ili9322(panel);
 	struct drm_display_mode *mode;
+	struct drm_display_info *info;
+
+	info = &connector->display_info;
+	info->width_mm = ili->conf->width_mm;
+	info->height_mm = ili->conf->height_mm;
+	if (ili->conf->dclk_active_high)
+		info->bus_flags |= DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE;
+	else
+		info->bus_flags |= DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE;
 
-	connector->display_info.width_mm = ili->conf->width_mm;
-	connector->display_info.height_mm = ili->conf->height_mm;
+	if (ili->conf->de_active_high)
+		info->bus_flags |= DRM_BUS_FLAG_DE_HIGH;
+	else
+		info->bus_flags |= DRM_BUS_FLAG_DE_LOW;
 
 	switch (ili->input) {
 	case ILI9322_INPUT_SRGB_DUMMY_320X240:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
