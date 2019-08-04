Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B4580C84
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aV+QIlM/Fg4wiseFbVLYjtOAZ6zrACsbkvyF2pq+htU=; b=TU1Lp33m1frDfQ
	3IGSbNzGC2yODfLESLAa6ewytURTMTygKpzBnOyReBmRSqMyRuVnyZ7AZVWL4DWkpoyhYGiqzE6Qb
	G7phh4imRhUiJAFibeGZTZZVb5XuAiIhmPygg7FzEJvWbRrYycuITHyaAFODHV0oKORdYX0TWvEAV
	YviIA/EO7Pbs3dFmk1Y2lNjARuJWewT2SMheQMMryo/ZZ0EokfoRB/8PmrFXYntrejb7yQT5Av+OW
	gjc3T+kisX5Gm9jDSEfUpPDm1w0DpaRnVLHHRlAjt+t+z3ZRkN9sVEHT18kRtWMH/qFh7s5pHkZeb
	yvqlGIz/AVX0kDQPxhuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMxB-0000up-Oi; Sun, 04 Aug 2019 20:18:05 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwO-0008Ti-T2
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:18 +0000
Received: by mail-lj1-x241.google.com with SMTP id d24so77414010ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WgVzWcgmLIPnyZKomZGLKI2l35SfEezC0RuGRG5g/EI=;
 b=Brv6b6OXXGcKeKH38lJ761HH0YTn5I9O/tREug6fGjyWJ+NCJsVZQvPQM7DlX+nsR6
 WA6HO+Rv7vxjU15u7L1NOWrHWicKyXbrTATlAAXAD8yRFsCg2XGn4VI2lwGp8s6DpiMn
 E+QAS5oYqtk6XgBCtudTDF/nIQ0Muy9Gmk0WQyu31aBZVKM5gvbZmkz16wMGlkqAX8tT
 wSS/p1pcWPPdgD67sqBEd7oUFfCCBGs7Y8NUSBCmu45zwvTYB7/dsrGKfXnKQEvSnQFP
 hjVSneDQ7YRnHrxMyOpJIf7d8FN3ltIdMphdq4MyGP2KAGXagMIV58euOaKS9DGq1EgA
 VMKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=WgVzWcgmLIPnyZKomZGLKI2l35SfEezC0RuGRG5g/EI=;
 b=MBXQqJtW1V1iFed3vr88inXYdV/JOE7FzL2WMIgtWIup9MxBxFU7HDRAFcvJNKcWDR
 9u7UZyBxkS/JYN27IDi4/YPozifhx1atKyZ4szz4824ak7ihCHCcAfPP9sLV8iO0O07L
 PLEceRDo0Pk6CrE+hxBswEZkhkXrpv9vDHUyqKDtgM/UY3/MK5M9FxTg0d9WYGuiT1Vh
 fOy/M4c+Q2pZ5eQL3Yfq/3QR1Elwnz0lftBPiXVNLLNswk1qHHLKS3vPc8899bkX6I/V
 R6Emcife9VgCwZmoX2BiF5aB9T9cNKAKEqVxJby4bCkMXplBQTkX8qAyEcHbm0Tj90sf
 avyA==
X-Gm-Message-State: APjAAAVDxX8LQ99jYuJhc/VLzhHuInVQX0THTVVfGL2WBzkQRmBPKfRn
 gZc47P/XKy0Q5bBKiNESu2g=
X-Google-Smtp-Source: APXvYqwud3tPWGlx2rT6WRxi5qtgEVcIyAyTabZz4LeIPtVV4R4zHjIsHNXrxj2gWB7phumt4Zx9PQ==
X-Received: by 2002:a2e:854d:: with SMTP id u13mr78583687ljj.236.1564949835418; 
 Sun, 04 Aug 2019 13:17:15 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:14 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 05/16] drm/fsl-dcu: fix opencoded use of drm_panel_*
Date: Sun,  4 Aug 2019 22:16:26 +0200
Message-Id: <20190804201637.1240-6-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131716_959272_F6E4A69B 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

Use drm_panel_get_modes() to access modes.
This has a nice side effect to simplify the code.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Stefan Agner <stefan@agner.ch>
Cc: Alison Wang <alison.wang@nxp.com>
---
 drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c b/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c
index 279d83eaffc0..a92fd6c70b09 100644
--- a/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c
+++ b/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c
@@ -65,17 +65,9 @@ static const struct drm_connector_funcs fsl_dcu_drm_connector_funcs = {
 static int fsl_dcu_drm_connector_get_modes(struct drm_connector *connector)
 {
 	struct fsl_dcu_drm_connector *fsl_connector;
-	int (*get_modes)(struct drm_panel *panel);
-	int num_modes = 0;
 
 	fsl_connector = to_fsl_dcu_connector(connector);
-	if (fsl_connector->panel && fsl_connector->panel->funcs &&
-	    fsl_connector->panel->funcs->get_modes) {
-		get_modes = fsl_connector->panel->funcs->get_modes;
-		num_modes = get_modes(fsl_connector->panel);
-	}
-
-	return num_modes;
+	return drm_panel_get_modes(fsl_connector->panel);
 }
 
 static int fsl_dcu_drm_connector_mode_valid(struct drm_connector *connector,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
