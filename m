Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EE580C83
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsjpuRo573cHre3x9JeZP8mmeeQ8+gvKrYRxzW4iSz8=; b=rOCpozdmOXKTXo
	bMM4U/ItKOF0jvbE8ipP4GGfMWqcwAOX7mjEJHPeGEPq1Qo2BZMfm7raRWgN22hmUCogPBPk17PKx
	NyENLHZZAv6C/7kxwuxSksAwFn5lN/ezuNdJwrZujXCt2O7G8QfHsWyog/ZALb4s8ZRazk46pBOld
	8Ix7VITsvEmfyDCoyh5/LZm8mBSCXJVQonPNbnD+bcLEh+Q0PL5q2ajk0d8qeeeYA+3F+JO70l4O6
	r7+z63HAL3e1Wmjmp4/xvBD2bSI03AVQ+bBkGsTnJ/4soxp3STtd8eGeUk0nSrCBK88zUR8DkkiFg
	jmXoj0akq8nYru8Qtb8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMx2-0000ho-AJ; Sun, 04 Aug 2019 20:17:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwM-0008Q0-74
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:16 +0000
Received: by mail-lj1-x243.google.com with SMTP id i21so77437351ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OqhXxXwy9Hr3xWItmkC0WnCOZqEhN5kTgjtJyN6Z+CY=;
 b=NLLRFWKzJmEIu9OTOt7Ai8tctMWnGdjeyEFU+bfOuWd3AgIJwVV5bg33IJmsvBZup+
 JybThz+nVWyyLhyxpWRvRVqVGJqJtDYU59QsXSfu+zCyvbOcabGJOut4KqbsMVWxIH4Z
 tW+Tv7tICzEJDkmjcIBJSlRM1z6IOKUpkGKIAU/4Ybs703WZbR3nNjvMr3m+CkOHkc17
 Rb4XRehU55J1G+MqL6y4FTAHHomaoEOikxlyWWWJtnnFAqOmZ710XFHX0eWXQQL7lRT1
 f/jZm/vh9FmhUey+YmveVXZdx/reIWL8VTKKHRLpUUQZGISW6Eyybhr/rBDd1ODzkPPO
 8Y7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=OqhXxXwy9Hr3xWItmkC0WnCOZqEhN5kTgjtJyN6Z+CY=;
 b=l1F9/Dbd/6rX1YDcZdlHJSqxx/Fe5beIx/B9dJyZM6c8C5Z09FVwDOwcec3ZH9yeew
 kRsc//6cYIMMG89bs2+23qQs/9irD5nyJ5YASsATDkrSAoNcLvFtMCKm7a6lZcICeZsJ
 bCaWAYMiJXl3g5soXl01CsimVZlxDdEYHbvTLg0luECiPN5zVPWwx2H6yVsNGMqCebAI
 iuplr6rhE2y4+5Ht8fIrYbLYR4sRsRireemCqnvzzL9J1G2dzIsBRSf52yCsEAIXYWSY
 vRBq4MfBC8wwc5mlbgDGBfZzRTjlpCCBm1LLjtB4EAVsrU2HVeS4W8rSLnfp9MGhYnQL
 jgWA==
X-Gm-Message-State: APjAAAWRJCdbdZ0zFVMV/jwdB8A1YPTilH3z39oJmkwEO8GP3LfrhAwL
 QOnIwFo2eTZY2EBaRm7FqWI=
X-Google-Smtp-Source: APXvYqwr7YURU5x5uQX4eMotoB3lQEWzubIKRtOF0qGU+ymuvCnRLcgiy7sxe5BsFuWKIZGt+qJn3A==
X-Received: by 2002:a2e:86c3:: with SMTP id n3mr35048878ljj.129.1564949832447; 
 Sun, 04 Aug 2019 13:17:12 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:11 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 04/16] drm/imx: fix opencoded use of drm_panel_*
Date: Sun,  4 Aug 2019 22:16:25 +0200
Message-Id: <20190804201637.1240-5-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131714_341490_AC00C684 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

Use the drm_panel_get_modes() function to get the modes.

This patch leave one test for the function pointer:
    panel->funcs->get_modes

This is used to check if the panel may have any modes.
There is no direct replacement.
We may be able to just check that drm_panel_get_modes() return > 0,
but as this is not the same functionality it is left for later.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/imx/imx-ldb.c          | 11 ++++-------
 drivers/gpu/drm/imx/parallel-display.c | 11 ++++-------
 2 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
index db461b6a257f..695f307f36b2 100644
--- a/drivers/gpu/drm/imx/imx-ldb.c
+++ b/drivers/gpu/drm/imx/imx-ldb.c
@@ -124,14 +124,11 @@ static void imx_ldb_ch_set_bus_format(struct imx_ldb_channel *imx_ldb_ch,
 static int imx_ldb_connector_get_modes(struct drm_connector *connector)
 {
 	struct imx_ldb_channel *imx_ldb_ch = con_to_imx_ldb_ch(connector);
-	int num_modes = 0;
+	int num_modes;
 
-	if (imx_ldb_ch->panel && imx_ldb_ch->panel->funcs &&
-	    imx_ldb_ch->panel->funcs->get_modes) {
-		num_modes = imx_ldb_ch->panel->funcs->get_modes(imx_ldb_ch->panel);
-		if (num_modes > 0)
-			return num_modes;
-	}
+	num_modes = drm_panel_get_modes(imx_ldb_ch->panel);
+	if (num_modes > 0)
+		return num_modes;
 
 	if (!imx_ldb_ch->edid && imx_ldb_ch->ddc)
 		imx_ldb_ch->edid = drm_get_edid(connector, imx_ldb_ch->ddc);
diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index 2e51b2fade75..e7ce17503ae1 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -47,14 +47,11 @@ static int imx_pd_connector_get_modes(struct drm_connector *connector)
 {
 	struct imx_parallel_display *imxpd = con_to_imxpd(connector);
 	struct device_node *np = imxpd->dev->of_node;
-	int num_modes = 0;
+	int num_modes;
 
-	if (imxpd->panel && imxpd->panel->funcs &&
-	    imxpd->panel->funcs->get_modes) {
-		num_modes = imxpd->panel->funcs->get_modes(imxpd->panel);
-		if (num_modes > 0)
-			return num_modes;
-	}
+	num_modes = drm_panel_get_modes(imxpd->panel);
+	if (num_modes > 0)
+		return num_modes;
 
 	if (imxpd->edid) {
 		drm_connector_update_edid_property(connector, imxpd->edid);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
