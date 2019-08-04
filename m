Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 140A480C8B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uhj/s/9D3JCP9I9qCGANKpKnCxN+GO0euSV8YiglvoU=; b=uXbuQ8Ja0O9F+4
	MRmAdOTbN4RLAEa9QSei6pzRa8zz6amfZbXwmtvGHk3O+hynalrPFofVOjOJvWYGo3PgJztoewD8r
	TfDBxwVk891gB8VzyBPZBMOiX5vPgKHsM4sC2wJDElhOyICCpLHwbrxsZ1zYjyYkqkfKyRuSVv7o1
	Pp38GPU/GuJocs6y+D5sXCysxALRcmBi9j7f72kx+rk4XnI9GjQRTUuJLsKiQEfHSgeEDv3abRmY8
	RwyxPGKMHoGsoKfAiPbkhwwems8ffboFED431HK+cDdhficfi3cky2Bj86SuY6THSySqwfC8EFoTA
	U6pL/Ga2c+tkbXMJGj7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMyC-0002QW-Gy; Sun, 04 Aug 2019 20:19:08 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwg-0000PM-9Q
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:36 +0000
Received: by mail-lf1-x141.google.com with SMTP id b29so49115915lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zmDbQLWBPvdGtXiOhDaz/7hniPxt2/VRvQ2x7qHXkvc=;
 b=s4IADMOVf42u/6pqR78DZ9tNZGLzQlKpBIxSAXOvRnryRasEKiiKhE/sD9hrmH7nBj
 JFJsiv5xTkl/5pz0rv6qPLrZCwTDZf76EG7w8vGPr1gJbZwrC4zoo9p4n/Hm3IoVNHqI
 2bdtyQxrCXrwR0e2w3jKP0lcbaM+wwjULdRjn08W4mHfuSaraJHdkDagW9NDw8nBLypm
 ZWAI5gRs6Pm/E0kZDsBChhztPTxMo5J4a1bOBoMBQ51NlUnvfNDDB4FaD8s9Z9hCGTVU
 UBiSl3rDoJ72Lg4KsXLS6c0WqjHuSkzHl1QmJN+QM5bKEMv66d1DVQipSbeY5aPhJzYN
 Fg5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=zmDbQLWBPvdGtXiOhDaz/7hniPxt2/VRvQ2x7qHXkvc=;
 b=Mf0LdaLuk+rj/I2qPiOsP57zPXYj6FtrTTMQ+kmFcn5HVN11MgJwWc/Nn4ILimyGp+
 akxjhwr8QW34poKBrU/FRT4vXpiwfF2b3cQiJzODJxZt69j4ZalrfN7t+eg6AL9u/F+t
 YFrieixWNwFHfvETrgNnEM+gsWs+4uTH6KvW9yTdUZfzkW+Gcs1xbfsn93FzUAaynjXs
 UzOE6jFp+PonIEeVs1sGbtj+g90jf9CruySyXB1QsCX+JYrsZ1cHr/Aulk7iPMLJRuqO
 W8rFvjRMcIWbfixqCz9ZXcMGxtpTDH9k11evhJmmqYgceJ403WQLdQ9GL59vWQOLG7BS
 GZ5Q==
X-Gm-Message-State: APjAAAWULl/OpGEroUNMwmMXzSu4LOF4R5FvO2zjn3MSelBCUuYlsZG4
 6PJDfkv7cJ7TsX3dJS7DWBx/CS2sgOtnew==
X-Google-Smtp-Source: APXvYqwXoeBAY2sI3ofQs6dNYkdTExTgHsLqUwkyioR39Y08/hYP6aps6+rfkCuVvgbQUKdUpdZ9Dw==
X-Received: by 2002:a19:8c08:: with SMTP id o8mr68661177lfd.57.1564949852351; 
 Sun, 04 Aug 2019 13:17:32 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:31 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 11/16] drm/panel: move drm_panel functions to .c file
Date: Sun,  4 Aug 2019 22:16:32 +0200
Message-Id: <20190804201637.1240-12-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131734_389874_85332F21 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

Move inline functions from include/drm/drm_panel.h to drm_panel.c.
This is in preparation for follow-up patches that will add extra
logic to the functions.
As they are no longer static inline, EXPORT them.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_panel.c | 96 +++++++++++++++++++++++++++++++++++
 include/drm/drm_panel.h     | 99 +++----------------------------------
 2 files changed, 104 insertions(+), 91 deletions(-)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index dbd5b873e8f2..9946b8d9bacc 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -54,6 +54,102 @@ void drm_panel_init(struct drm_panel *panel)
 }
 EXPORT_SYMBOL(drm_panel_init);
 
+/**
+ * drm_panel_prepare - power on a panel
+ * @panel: DRM panel
+ *
+ * Calling this function will enable power and deassert any reset signals to
+ * the panel. After this has completed it is possible to communicate with any
+ * integrated circuitry via a command bus.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int drm_panel_prepare(struct drm_panel *panel)
+{
+	if (panel && panel->funcs && panel->funcs->prepare)
+		return panel->funcs->prepare(panel);
+
+	return panel ? -ENOSYS : -EINVAL;
+}
+EXPORT_SYMBOL(drm_panel_prepare);
+
+/**
+ * drm_panel_enable - enable a panel
+ * @panel: DRM panel
+ *
+ * Calling this function will cause the panel display drivers to be turned on
+ * and the backlight to be enabled. Content will be visible on screen after
+ * this call completes.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int drm_panel_enable(struct drm_panel *panel)
+{
+	if (panel && panel->funcs && panel->funcs->enable)
+		return panel->funcs->enable(panel);
+
+	return panel ? -ENOSYS : -EINVAL;
+}
+EXPORT_SYMBOL(drm_panel_enable);
+
+/**
+ * drm_panel_disable - disable a panel
+ * @panel: DRM panel
+ *
+ * This will typically turn off the panel's backlight or disable the display
+ * drivers. For smart panels it should still be possible to communicate with
+ * the integrated circuitry via any command bus after this call.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int drm_panel_disable(struct drm_panel *panel)
+{
+	if (panel && panel->funcs && panel->funcs->disable)
+		return panel->funcs->disable(panel);
+
+	return panel ? -ENOSYS : -EINVAL;
+}
+EXPORT_SYMBOL(drm_panel_disable);
+
+/**
+ * drm_panel_unprepare - power off a panel
+ * @panel: DRM panel
+ *
+ * Calling this function will completely power off a panel (assert the panel's
+ * reset, turn off power supplies, ...). After this function has completed, it
+ * is usually no longer possible to communicate with the panel until another
+ * call to drm_panel_prepare().
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int drm_panel_unprepare(struct drm_panel *panel)
+{
+	if (panel && panel->funcs && panel->funcs->unprepare)
+		return panel->funcs->unprepare(panel);
+
+	return panel ? -ENOSYS : -EINVAL;
+}
+EXPORT_SYMBOL(drm_panel_unprepare);
+
+/**
+ * drm_panel_get_modes - probe the available display modes of a panel
+ * @panel: DRM panel
+ *
+ * The modes probed from the panel are automatically added to the connector
+ * that the panel is attached to.
+ *
+ * Return: The number of modes available from the panel on success or a
+ * negative error code on failure.
+ */
+int drm_panel_get_modes(struct drm_panel *panel)
+{
+	if (panel && panel->funcs && panel->funcs->get_modes)
+		return panel->funcs->get_modes(panel);
+
+	return panel ? -ENOSYS : -EINVAL;
+}
+EXPORT_SYMBOL(drm_panel_get_modes);
+
 /**
  * drm_panel_add - add a panel to the global registry
  * @panel: panel to add
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index 26377836141c..053d611656b9 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -97,97 +97,6 @@ struct drm_panel {
 	struct list_head list;
 };
 
-/**
- * drm_disable_unprepare - power off a panel
- * @panel: DRM panel
- *
- * Calling this function will completely power off a panel (assert the panel's
- * reset, turn off power supplies, ...). After this function has completed, it
- * is usually no longer possible to communicate with the panel until another
- * call to drm_panel_prepare().
- *
- * Return: 0 on success or a negative error code on failure.
- */
-static inline int drm_panel_unprepare(struct drm_panel *panel)
-{
-	if (panel && panel->funcs && panel->funcs->unprepare)
-		return panel->funcs->unprepare(panel);
-
-	return panel ? -ENOSYS : -EINVAL;
-}
-
-/**
- * drm_panel_disable - disable a panel
- * @panel: DRM panel
- *
- * This will typically turn off the panel's backlight or disable the display
- * drivers. For smart panels it should still be possible to communicate with
- * the integrated circuitry via any command bus after this call.
- *
- * Return: 0 on success or a negative error code on failure.
- */
-static inline int drm_panel_disable(struct drm_panel *panel)
-{
-	if (panel && panel->funcs && panel->funcs->disable)
-		return panel->funcs->disable(panel);
-
-	return panel ? -ENOSYS : -EINVAL;
-}
-
-/**
- * drm_panel_prepare - power on a panel
- * @panel: DRM panel
- *
- * Calling this function will enable power and deassert any reset signals to
- * the panel. After this has completed it is possible to communicate with any
- * integrated circuitry via a command bus.
- *
- * Return: 0 on success or a negative error code on failure.
- */
-static inline int drm_panel_prepare(struct drm_panel *panel)
-{
-	if (panel && panel->funcs && panel->funcs->prepare)
-		return panel->funcs->prepare(panel);
-
-	return panel ? -ENOSYS : -EINVAL;
-}
-
-/**
- * drm_panel_enable - enable a panel
- * @panel: DRM panel
- *
- * Calling this function will cause the panel display drivers to be turned on
- * and the backlight to be enabled. Content will be visible on screen after
- * this call completes.
- *
- * Return: 0 on success or a negative error code on failure.
- */
-static inline int drm_panel_enable(struct drm_panel *panel)
-{
-	if (panel && panel->funcs && panel->funcs->enable)
-		return panel->funcs->enable(panel);
-
-	return panel ? -ENOSYS : -EINVAL;
-}
-
-/**
- * drm_panel_get_modes - probe the available display modes of a panel
- * @panel: DRM panel
- *
- * The modes probed from the panel are automatically added to the connector
- * that the panel is attached to.
- *
- * Return: The number of modes available from the panel on success or a
- * negative error code on failure.
- */
-static inline int drm_panel_get_modes(struct drm_panel *panel)
-{
-	if (panel && panel->funcs && panel->funcs->get_modes)
-		return panel->funcs->get_modes(panel);
-
-	return panel ? -ENOSYS : -EINVAL;
-}
-
 void drm_panel_init(struct drm_panel *panel);
 
 int drm_panel_add(struct drm_panel *panel);
@@ -196,6 +105,14 @@ void drm_panel_remove(struct drm_panel *panel);
 int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector);
 int drm_panel_detach(struct drm_panel *panel);
 
+int drm_panel_prepare(struct drm_panel *panel);
+int drm_panel_unprepare(struct drm_panel *panel);
+
+int drm_panel_enable(struct drm_panel *panel);
+int drm_panel_disable(struct drm_panel *panel);
+
+int drm_panel_get_modes(struct drm_panel *panel);
+
 #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
 struct drm_panel *of_drm_find_panel(const struct device_node *np);
 #else
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
