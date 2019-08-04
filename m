Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F9380C8E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gi0QGBtUdSHUV5q3cCkIT4ects6qjCpnqr/wlPyZIyo=; b=LbH3OaV6o4fMYN
	fvSdPRKRmMdknY8jfFPPVSgIevOleU+0iOteiN89UKAzW9nY5VHXVFCqwxFOyTTt4S695K3FQXTbl
	PqkZvYZeKQ+N498EbZAGGrjiL2U6GqWFrAQiCfS00BI9BH3cqv0K9U9k+PCah/GuQD2zlBNWtrQW2
	KHPszCx+f92xKQ73zS6+GU1KlFCrHRnmHJ/cACSQgOqB/SJpA1puBCC6mHX0jypaGqc65J5+/QGWP
	39ho+hCLcgL2zXgBCjLxUJu78ChmP6Dsji5LFvKCQudhjgmDR1zkJ3fSQzUw14K4ut86WbGwz3Ex0
	PD8jqkXdqmED2qOizB1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMyn-00037m-8i; Sun, 04 Aug 2019 20:19:45 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwn-0000a0-QC
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id p17so77443501ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hrCo/4/IXJ1Yj7iZxjXNzvDGpEFw4E2sYzii2ko4Lpc=;
 b=H21lvLH6tpUmdeSL+ZX13j4skteYo8F27F85lXg12JKWPkHdL9eQI/B0aLzSqteuZF
 JyDo1GkMya2KG2lCA+5ozRHKZoM8bI0aMUsUg5BtlHAYP91P4BmM0zzLa4mWzMlSnA7I
 qyT/LzC1eJL/P11buVSMfZh7ZhWipjYNxIRhgMf4ylvnGbNNefyfl7yHxVBGN2ZHpQ22
 gUEEURWNc9F1uLD9qoAxlTK9z2PhqI2SkEfqyfuaRea3WQ1BR88k6Hn6mhvY6MQmx/oD
 Xi16syJcz/Ah5wLJDfB/ZZj2FJP5FKD8/fQopj0w00bxP4/2GIq+x6Nwr2fkLDpTy4ym
 dl6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=hrCo/4/IXJ1Yj7iZxjXNzvDGpEFw4E2sYzii2ko4Lpc=;
 b=IqJIWHSLgCHWmAjKqdesD/SFKdOW3A76S1+4Eu4NKOfVXPZ8S7sKZbgDvdIHPe6ya1
 +E5dSBP/gacpBjdRBEXui3eR3fVNmPgTdZSlT0jeibmhPhz/xO73bDhPwp3G8xg6GoYd
 Bgtflwa9diaqdna5YVfTgpE+RfhQeJRDRwbScr9NIefz6iXDEjg4FJrfPe8DX64mvGnS
 cxeiW2oCyFI5CNj0zbgvlR+4MayeQzBm7znN0WMQoNqdq0GpVXpj4aHIYuHwYZ09gXcw
 7BT6pHOibui+EvvhQOilMIsVcAco9f9U7ZmetzJcmTZp351AWwXddmR5ML6N+i5AFAqt
 MkTg==
X-Gm-Message-State: APjAAAX6e7jTuFTFuN4ShcNOcOSivLkkwFFQXQSncq1tmNwDQzpg0O+v
 1CxGUot7TdKPCzvaW+1rWUE=
X-Google-Smtp-Source: APXvYqyTjMcUeH7cKtM9ez8brS0M2L7PogMF1Pn26x5fiPtQY2s/TzFZyoXXnejWHprywDHCWV88IA==
X-Received: by 2002:a2e:9213:: with SMTP id k19mr73854900ljg.237.1564949860364; 
 Sun, 04 Aug 2019 13:17:40 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:39 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 14/16] drm/panel: call prepare/enable only once
Date: Sun,  4 Aug 2019 22:16:35 +0200
Message-Id: <20190804201637.1240-15-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131742_015551_F1E886F5 
X-CRM114-Status: GOOD (  17.54  )
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

Many panel drivers duplicate logic to prevent prepare to be called
for a panel that is already prepared.
Likewise for enable.

Implement this logic in drm_panel so the individual drivers
no longer needs this.
A panel is considered prepared/enabled only if the prepare/enable call
succeeds.
For disable/unprepare it is unconditionally considered
disabled/unprepared.

This allows calls to prepare/enable again, even if there were
some issue disabling a regulator or similar during disable/unprepare.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_panel.c | 66 ++++++++++++++++++++++++++++++-------
 include/drm/drm_panel.h     | 21 ++++++++++++
 2 files changed, 75 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index da19d5b4a2f4..0853764040de 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -66,10 +66,21 @@ EXPORT_SYMBOL(drm_panel_init);
  */
 int drm_panel_prepare(struct drm_panel *panel)
 {
-	if (panel && panel->funcs && panel->funcs->prepare)
-		return panel->funcs->prepare(panel);
+	int ret = -ENOSYS;
 
-	return panel ? -ENOSYS : -EINVAL;
+	if (!panel)
+		return -EINVAL;
+
+	if (panel->prepared)
+		return 0;
+
+	if (panel->funcs && panel->funcs->prepare)
+		ret = panel->funcs->prepare(panel);
+
+	if (ret >= 0)
+		panel->prepared = true;
+
+	return ret;
 }
 EXPORT_SYMBOL(drm_panel_prepare);
 
@@ -85,10 +96,21 @@ EXPORT_SYMBOL(drm_panel_prepare);
  */
 int drm_panel_enable(struct drm_panel *panel)
 {
-	if (panel && panel->funcs && panel->funcs->enable)
-		return panel->funcs->enable(panel);
+	int ret = -ENOSYS;
 
-	return panel ? -ENOSYS : -EINVAL;
+	if (!panel)
+		return -EINVAL;
+
+	if (panel->enabled)
+		return 0;
+
+	if (panel->funcs && panel->funcs->enable)
+		ret = panel->funcs->enable(panel);
+
+	if (ret >= 0)
+		panel->enabled = true;
+
+	return ret;
 }
 EXPORT_SYMBOL(drm_panel_enable);
 
@@ -104,10 +126,20 @@ EXPORT_SYMBOL(drm_panel_enable);
  */
 int drm_panel_disable(struct drm_panel *panel)
 {
-	if (panel && panel->funcs && panel->funcs->disable)
-		return panel->funcs->disable(panel);
+	int ret = -ENOSYS;
 
-	return panel ? -ENOSYS : -EINVAL;
+	if (!panel)
+		return -EINVAL;
+
+	if (!panel->enabled)
+		return 0;
+
+	if (panel->funcs && panel->funcs->disable)
+		ret = panel->funcs->disable(panel);
+
+	panel->enabled = false;
+
+	return ret;
 }
 EXPORT_SYMBOL(drm_panel_disable);
 
@@ -124,10 +156,20 @@ EXPORT_SYMBOL(drm_panel_disable);
  */
 int drm_panel_unprepare(struct drm_panel *panel)
 {
-	if (panel && panel->funcs && panel->funcs->unprepare)
-		return panel->funcs->unprepare(panel);
+	int ret = -ENOSYS;
 
-	return panel ? -ENOSYS : -EINVAL;
+	if (!panel)
+		return -EINVAL;
+
+	if (!panel->prepared)
+		return 0;
+
+	if (panel->funcs && panel->funcs->unprepare)
+		ret = panel->funcs->unprepare(panel);
+
+	panel->prepared = false;
+
+	return ret;
 }
 EXPORT_SYMBOL(drm_panel_unprepare);
 
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index 624bd15ecfab..7493500fc9bd 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -65,6 +65,9 @@ struct drm_panel_funcs {
 	 * @prepare:
 	 *
 	 * Turn on panel and perform set up.
+	 * When the panel is successfully prepared the prepare() function
+	 * will not be called again until the panel has been unprepared.
+	 *
 	 */
 	int (*prepare)(struct drm_panel *panel);
 
@@ -72,6 +75,8 @@ struct drm_panel_funcs {
 	 * @enable:
 	 *
 	 * Enable panel (turn on back light, etc.).
+	 * When the panel is successfully enabled the enable() function
+	 * will not be called again until the panel has been disabled.
 	 */
 	int (*enable)(struct drm_panel *panel);
 
@@ -79,6 +84,7 @@ struct drm_panel_funcs {
 	 * @disable:
 	 *
 	 * Disable panel (turn off back light, etc.).
+	 * If the panel is already disabled the disable() function is not called.
 	 */
 	int (*disable)(struct drm_panel *panel);
 
@@ -86,6 +92,7 @@ struct drm_panel_funcs {
 	 * @unprepare:
 	 *
 	 * Turn off panel.
+	 * If the panel is already unprepared the unprepare() function is not called.
 	 */
 	int (*unprepare)(struct drm_panel *panel);
 
@@ -145,6 +152,20 @@ struct drm_panel {
 	 * Panel entry in registry.
 	 */
 	struct list_head list;
+
+	/**
+	 * @prepared:
+	 *
+	 * Set to true when the panel is successfully prepared.
+	 */
+	bool prepared;
+
+	/**
+	 * @enabled:
+	 *
+	 * Set to true when the panel is successfully enabled.
+	 */
+	bool enabled;
 };
 
 void drm_panel_init(struct drm_panel *panel);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
