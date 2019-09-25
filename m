Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EC8BE8A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 01:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQWl/PdWLUJNLlKIrw9aOFH7Wg47/rY1CowpqTJkKYY=; b=Rn1BPfShXVnAG1
	46dWf6ybkn5ojtX7REKW3k6Kj2uFLutdRuUMUk9HWBMeArkhu3PDQNnWIv6OPvULRBL5e65bmrTFc
	FrZuhrRS3NRCFiYhk6WJFCpTzephDcGudab8Oletd2YmQ5yotjv6c8dAL5CD9k1PBW3xB1bYRZwR3
	Uwb/M7QYn67dWZHbJa5k2s7gC1F6RmiOlj/FKjsU7libuJnwegETa8NTNf3NCOb9ZsBO9Z5FtSXEQ
	petjLk9StcyeLizb9+NRBWoZPVdZ6rfZjOjlqjGObG8/5yFYsrHSOOSRh5g2oQD+/Lrhut8SnDaGk
	h7IQYtGQq24gn8Gdxxnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDGGH-0003jI-45; Wed, 25 Sep 2019 22:59:53 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDGFA-0002qt-BE
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:58:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id i30so229240pgl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D3R5p5aNmKg+no70gbWvodTwkrK5NbK9C77qnFGnPQI=;
 b=cIhCIVsFGefuQt7T8cW/AELGwXMhBV6XE1nXXaQCSx/Su5g9tAvLUHyazV9tnQ4UIi
 QdTdIDPpoy4opw9OOungkLA59WwHdQgmovVe21mB5VGzxgh2dc6q6feeSOBBT2XHLHYn
 8gzP/CNxYAeDLGNA3uO/OnX2tAw0STo2HeU4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D3R5p5aNmKg+no70gbWvodTwkrK5NbK9C77qnFGnPQI=;
 b=b3cDW8oANxcFQCfygslBl5qhQNYT90kPH2L0Q+a7DU575OIvNDGembT9CU4Q1/DOdt
 FMy3wDr/9wjpMvUe4kYt4CUy7uG7KbMo7muu/XpLt07Ly3pPtmUqNYEITarHRlmIAVm1
 u6JmqnZH4MCC9TYRsxbNBHEOwVL/heolM0+xNNvgARYk40diWE5eWuZ6Dhhr+we3KBNm
 GMMX0MiI6CDa1LzLDiuNSSoiA1jPaYXaKXUK7f2pTmgz8Cu13Uc09cvmVvHvTAH9HaNH
 inSudP9UGbIbFDI/DIV8i4FpjHKlmqwmT+MxVAntB6UNq4o62WOl9CdefHkkS5emLXXd
 byDw==
X-Gm-Message-State: APjAAAW8Pydu+u6l3tnnwgN9ir4N+zRFHPLluG9BiYxTK6CqQ/1tSNfF
 zkxRceipi1dLAmoB1QFmoqxmww==
X-Google-Smtp-Source: APXvYqxt4ZE4wndDOv1/jjE+oMuxgVXXEHo5vY3RQOoGHyikzdjvu8e07adIF96NGluVObY2mCmgFQ==
X-Received: by 2002:aa7:81d7:: with SMTP id c23mr106190pfn.207.1569452323842; 
 Wed, 25 Sep 2019 15:58:43 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id j24sm76185pff.71.2019.09.25.15.58.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 15:58:43 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 3/4] drm/connector: Split out orientation quirk detection
Date: Wed, 25 Sep 2019 15:58:32 -0700
Message-Id: <20190925225833.7310-4-dbasehore@chromium.org>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
In-Reply-To: <20190925225833.7310-1-dbasehore@chromium.org>
References: <20190925225833.7310-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_155844_584741_06EA624D 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/drm_connector.c         | 45 ++++++++++++++++++-------
 drivers/gpu/drm/i915/display/icl_dsi.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c |  4 +--
 drivers/gpu/drm/i915/display/vlv_dsi.c  |  2 +-
 include/drm/drm_connector.h             |  2 ++
 5 files changed, 39 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 4c766624b20d..faef25683faf 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1989,31 +1989,23 @@ EXPORT_SYMBOL(drm_connector_set_vrr_capable_property);
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
@@ -2036,6 +2028,35 @@ int drm_connector_init_panel_orientation_property(
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
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 6e398c33a524..483287984090 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1538,7 +1538,7 @@ static void icl_dsi_add_properties(struct intel_connector *connector)
 
 	connector->base.display_info.panel_orientation =
 			intel_dsi_get_panel_orientation(connector);
-	drm_connector_init_panel_orientation_property(&connector->base,
+	drm_connector_init_panel_orientation_property_quirk(&connector->base,
 				connector->panel.fixed_mode->hdisplay,
 				connector->panel.fixed_mode->vdisplay);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 921ad0a2f7ba..419413fa8165 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7076,8 +7076,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_panel_setup_backlight(connector, pipe);
 
 	if (fixed_mode)
-		drm_connector_init_panel_orientation_property(
-			connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
+		drm_connector_init_panel_orientation_property_quirk(connector,
+				fixed_mode->hdisplay, fixed_mode->vdisplay);
 
 	return true;
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index a71b22bdd95b..46cfb0821c17 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1634,7 +1634,7 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
 
 		connector->base.display_info.panel_orientation =
 			vlv_dsi_get_panel_orientation(connector);
-		drm_connector_init_panel_orientation_property(
+		drm_connector_init_panel_orientation_property_quirk(
 				&connector->base,
 				connector->panel.fixed_mode->hdisplay,
 				connector->panel.fixed_mode->vdisplay);
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 681cb590f952..e3416ac11478 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1540,6 +1540,8 @@ void drm_connector_set_link_status_property(struct drm_connector *connector,
 void drm_connector_set_vrr_capable_property(
 		struct drm_connector *connector, bool capable);
 int drm_connector_init_panel_orientation_property(
+	struct drm_connector *connector);
+int drm_connector_init_panel_orientation_property_quirk(
 	struct drm_connector *connector, int width, int height);
 int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 					  int min, int max);
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
