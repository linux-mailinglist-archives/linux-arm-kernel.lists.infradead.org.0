Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6604F36C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 05:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPuhvyDR2s+P8HeOJ4qJUbVnuLoGsC8h45yBTx9SsSE=; b=f6MjQVniRAdBFp
	KcJC4/dgM+0tGCFFPOeaG2T0W5k5R4FQMzFmbCqknBa2y58uZJhzAynpmWinrR+XHCCL7A3UD/K4t
	cPfejYHxjzoQH08Txn6H+rUS/rZGWiu+psy+4NiMRTh3D5tO5nuH5cOyIPUUhxFVIWWdfS+rOh1cS
	MKtBmJdEsPitZ8Lb4sV6JHmilvwj64KuPukSGd+bjQZxP/zBoV9RrMU2UAP83X7+TmuCVjLK/zKQh
	ax620/AjCSTCp1IcQ1evt9bhuAtyvdzHw+IdXiwRblOTv6oobzQmngjSXJP+memrSoWtmhjqJ8DP9
	n8O9byUKJlIrQJtT9Cng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heWui-00021p-Se; Sat, 22 Jun 2019 03:42:05 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heWtv-0001lR-DJ
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 03:41:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id p10so4273299pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 20:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=biEG8A6qsnV8USdVJ9nRUdT2fnx/q2QcIpfVntaLX94=;
 b=Zx53hxnih2E32q65qzSC5ntPSnd5FHE3CxkhySxwxWWHvxETmcUO4m6MiX3kwp9rEJ
 9PXuQi7aJB4u00x5PsCNcGV13f7suZavL+WDWv55eRXS7c4C9ddZKPap163QUU8mi9Qg
 05kaes90KsHnVRr1ZtZX5hjmf+LTOJCpxWIh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=biEG8A6qsnV8USdVJ9nRUdT2fnx/q2QcIpfVntaLX94=;
 b=V3P9tZBvQq2rcMSbUvA3YLeQT2Dhtp2X7p+5NIJnsIs8wtZjTfxFq/D9KduQa8hWuT
 upwAaCSXD+K6Msc6c4k7JZHzXkFu3ZoXz1KFdRXu+zUI5qEb8TaM4fNmTsj+1yDrcg6e
 6nKRBSML34V1tKew/tOiO8rqoC/qdvTOntTqhFTe1X27Cm06jxH5YOL4mGWDD+0AgPKA
 xFjPrkQ7eEBIkQpK5mmVxAKPDnVezzL8O6Bm1rl+YYDdvGFjjP/ncSlmk+9XLEnKCInD
 gQU8TchNcNiraubl2/ZahPnkTpTzaENGW0XRpA7UlzSzag7udAH5OJc/EYNwEDfT8leS
 kfzQ==
X-Gm-Message-State: APjAAAWpjYf1XuNvvPAUambtg9KppbWTwOgb1c3/KTrJZmiHScEwNSMK
 qKcnomjzbOlfLsj0nvSKKeC+LQ==
X-Google-Smtp-Source: APXvYqytWmA7aAS/phT/5ypa5EiAkWDfppuTe2MWhgSEUdreXiQBGnjXzaLIU4ep5INT6zIkSkAE4A==
X-Received: by 2002:a17:90a:26a1:: with SMTP id
 m30mr11036201pje.59.1561174874575; 
 Fri, 21 Jun 2019 20:41:14 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id u128sm4756688pfu.26.2019.06.21.20.41.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 20:41:14 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] drm/connector: Split out orientation quirk detection
Date: Fri, 21 Jun 2019 20:41:04 -0700
Message-Id: <20190622034105.188454-4-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190622034105.188454-1-dbasehore@chromium.org>
References: <20190622034105.188454-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_204115_700323_61A7A101 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, David Airlie <airlied@linux.ie>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Not every platform needs quirk detection for panel orientation, so
split the drm_connector_init_panel_orientation_property into two
functions. One for platforms without the need for quirks, and the
other for platforms that need quirks.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_connector.c | 45 ++++++++++++++++++++++++---------
 drivers/gpu/drm/i915/intel_dp.c |  4 +--
 drivers/gpu/drm/i915/vlv_dsi.c  |  5 ++--
 include/drm/drm_connector.h     |  2 ++
 4 files changed, 39 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index e17586aaa80f..c4b01adf927a 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1894,31 +1894,23 @@ EXPORT_SYMBOL(drm_connector_set_vrr_capable_property);
  * drm_connector_init_panel_orientation_property -
  *	initialize the connecters panel_orientation property
  * @connector: connector for which to init the panel-orientation property.
- * @width: width in pixels of the panel, used for panel quirk detection
- * @height: height in pixels of the panel, used for panel quirk detection
  *
  * This function should only be called for built-in panels, after setting
  * connector->display_info.panel_orientation first (if known).
  *
- * This function will check for platform specific (e.g. DMI based) quirks
- * overriding display_info.panel_orientation first, then if panel_orientation
- * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
- * "panel orientation" property to the connector.
+ * This function will check if the panel_orientation is not
+ * DRM_MODE_PANEL_ORIENTATION_UNKNOWN. If not, it will attach the "panel
+ * orientation" property to the connector.
  *
  * Returns:
  * Zero on success, negative errno on failure.
  */
 int drm_connector_init_panel_orientation_property(
-	struct drm_connector *connector, int width, int height)
+	struct drm_connector *connector)
 {
 	struct drm_device *dev = connector->dev;
 	struct drm_display_info *info = &connector->display_info;
 	struct drm_property *prop;
-	int orientation_quirk;
-
-	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
-	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
-		info->panel_orientation = orientation_quirk;
 
 	if (info->panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return 0;
@@ -1941,6 +1933,35 @@ int drm_connector_init_panel_orientation_property(
 }
 EXPORT_SYMBOL(drm_connector_init_panel_orientation_property);
 
+/**
+ * drm_connector_init_panel_orientation_property_quirk -
+ *	initialize the connecters panel_orientation property with a quirk
+ *	override
+ * @connector: connector for which to init the panel-orientation property.
+ * @width: width in pixels of the panel, used for panel quirk detection
+ * @height: height in pixels of the panel, used for panel quirk detection
+ *
+ * This function will check for platform specific (e.g. DMI based) quirks
+ * overriding display_info.panel_orientation first, then if panel_orientation
+ * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
+ * "panel orientation" property to the connector.
+ *
+ * Returns:
+ * Zero on success, negative errno on failure.
+ */
+int drm_connector_init_panel_orientation_property_quirk(
+	struct drm_connector *connector, int width, int height)
+{
+	int orientation_quirk;
+
+	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
+	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
+		connector->display_info.panel_orientation = orientation_quirk;
+
+	return drm_connector_init_panel_orientation_property(connector);
+}
+EXPORT_SYMBOL(drm_connector_init_panel_orientation_property_quirk);
+
 int drm_connector_set_obj_prop(struct drm_mode_object *obj,
 				    struct drm_property *property,
 				    uint64_t value)
diff --git a/drivers/gpu/drm/i915/intel_dp.c b/drivers/gpu/drm/i915/intel_dp.c
index b099a9dc28fd..7d4e61cf5463 100644
--- a/drivers/gpu/drm/i915/intel_dp.c
+++ b/drivers/gpu/drm/i915/intel_dp.c
@@ -7282,8 +7282,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_panel_setup_backlight(connector, pipe);
 
 	if (fixed_mode)
-		drm_connector_init_panel_orientation_property(
-			connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
+		drm_connector_init_panel_orientation_property_quirk(connector,
+				fixed_mode->hdisplay, fixed_mode->vdisplay);
 
 	return true;
 
diff --git a/drivers/gpu/drm/i915/vlv_dsi.c b/drivers/gpu/drm/i915/vlv_dsi.c
index bfe2891eac37..fa9833dbe359 100644
--- a/drivers/gpu/drm/i915/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/vlv_dsi.c
@@ -1650,6 +1650,7 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
 
 	if (connector->panel.fixed_mode) {
 		u32 allowed_scalers;
+		int orientation;
 
 		allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
 		if (!HAS_GMCH(dev_priv))
@@ -1660,9 +1661,7 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
 
 		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 
-		connector->base.display_info.panel_orientation =
-			vlv_dsi_get_panel_orientation(connector);
-		drm_connector_init_panel_orientation_property(
+		drm_connector_init_panel_orientation_property_quirk(
 				&connector->base,
 				connector->panel.fixed_mode->hdisplay,
 				connector->panel.fixed_mode->vdisplay);
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 47e749b74e5f..0468fd9a4418 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1370,6 +1370,8 @@ void drm_connector_set_link_status_property(struct drm_connector *connector,
 void drm_connector_set_vrr_capable_property(
 		struct drm_connector *connector, bool capable);
 int drm_connector_init_panel_orientation_property(
+	struct drm_connector *connector);
+int drm_connector_init_panel_orientation_property_quirk(
 	struct drm_connector *connector, int width, int height);
 int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 					  int min, int max);
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
