Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E24A73C1FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 06:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+qC3KS1Tn+cFa0bZJau/ZaFG+Jmp08U0kCPH21+YEY=; b=t3QVwNzV2yUkFn
	mxJIi6Pk6mPZAhNWmurbO2ySea0igDRMJ24gNyUtr33L4T0Fti2Axuy0/+SixTaPqyb31r1bn19AK
	qBV5p10khr32krD8dCxcgZmZX9DJonEgPOx5yZAt3r6lYOHIqeJi7Fmk9GGoz0cp89ysLz7i++xTJ
	UcRi1jwZ4qdea+T7S2lbFzh1cHaz7ovFnBk59YaSd5vdLYSHNu9YVSdWs/G3JyE5XE40ykfbQpmEN
	qye/rG5XpjBjQBirGp/DbqhHJl+BW0QE6CabaEQRstOw02MhwSSdpqlMzoegJkHTVKV5b5GYohwGf
	cNahSgPUv+TdXu4o9Tjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haY2t-0008Na-Sr; Tue, 11 Jun 2019 04:06:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haY0v-0005jx-0S
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 04:04:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id w34so6142988pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 21:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PRf5zwh2omhJlMBygQXOHV94QlDCvtVP6qLo6sclvew=;
 b=hBI5kWhyOvyp1E+jRaOMnfLP/satVRSFRP8f6NRNyVUCGpgshs8WxNVYT2q0NV/2gj
 wPweK/9YAhTa7JtVa4YtP2wEqtfpY4oObASG+1jPXLuAcs6ScW9XvYt1hu3mmb1W4mC3
 qnv5BgzYpqfI2qcra266da1Q0lOBymxK6SKqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PRf5zwh2omhJlMBygQXOHV94QlDCvtVP6qLo6sclvew=;
 b=KNCpAzFL2uehwYpikNAhnpBBqwhpsnhUSisDeGFMJ8JddyGAVDdSNTMBjidX9b6YgG
 W01ptg/NZyb4EOvJxu6+7NhAUd/KW1OXZRS67FyhT1xpF51YkcHNFozJcXmtPicaB/Uc
 Kgap6rHthng1KzI5MkIKxKbBjqpZ7rC/gNlR//i9GzOAsnC0H/0W/T+cYM4C+2Pyb9+i
 M2c8aZL/xU3aqD/BtpndV1srfvvtTUQnQbemMbvKsVLi4sH61h5EeDmVR3q0qGdjBS5o
 Er8gM0dbA1iTCO2Qyv2thpas1oh7m0R26GrFzG6aXvgTvVf9qvQvl/yPJbWHrXb0VnXo
 uihg==
X-Gm-Message-State: APjAAAUr62GrLSw/Jeh08AAaLGm9/rTgIU0z+Fov2KGW9r77K2fNYng9
 TYwCfgwjgNnuGM+IMk9GJseaSg==
X-Google-Smtp-Source: APXvYqzw8Zl9pN/Pa5y81l8eb8hfV6D4yF7M05gc2/1u6/QOO7gYQ1T3DU+QBeRduFts4YBZE+xKeg==
X-Received: by 2002:a62:6303:: with SMTP id x3mr62758208pfb.261.1560225840106; 
 Mon, 10 Jun 2019 21:04:00 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.03.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 21:03:59 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] drm/connector: Split out orientation quirk detection
Date: Mon, 10 Jun 2019 21:03:49 -0700
Message-Id: <20190611040350.90064-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611040350.90064-1-dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_210401_088571_74B974C4 
X-CRM114-Status: GOOD (  18.42  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This removes the orientation quirk detection from the code to add
an orientation property to a panel. This is used only for legacy x86
systems, yet we'd like to start using this on devicetree systems where
quirk detection like this is not needed.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_connector.c | 16 ++++------------
 drivers/gpu/drm/i915/intel_dp.c | 14 +++++++++++---
 drivers/gpu/drm/i915/vlv_dsi.c  | 14 ++++++++++----
 include/drm/drm_connector.h     |  2 +-
 4 files changed, 26 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index e17586aaa80f..58a09b65028b 100644
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
diff --git a/drivers/gpu/drm/i915/intel_dp.c b/drivers/gpu/drm/i915/intel_dp.c
index b099a9dc28fd..72ab090ea97a 100644
--- a/drivers/gpu/drm/i915/intel_dp.c
+++ b/drivers/gpu/drm/i915/intel_dp.c
@@ -40,6 +40,7 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_hdcp.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_utils.h>
 #include <drm/i915_drm.h>
 
 #include "i915_debugfs.h"
@@ -7281,9 +7282,16 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_connector->panel.backlight.power = intel_edp_backlight_power;
 	intel_panel_setup_backlight(connector, pipe);
 
-	if (fixed_mode)
-		drm_connector_init_panel_orientation_property(
-			connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
+	if (fixed_mode) {
+		int orientation = drm_get_panel_orientation_quirk(
+				fixed_mode->hdisplay, fixed_mode->vdisplay);
+
+		if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
+			connector->display_info.panel_orientation =
+				orientation;
+
+		drm_connector_init_panel_orientation_property(connector);
+	}
 
 	return true;
 
diff --git a/drivers/gpu/drm/i915/vlv_dsi.c b/drivers/gpu/drm/i915/vlv_dsi.c
index bfe2891eac37..27f86a787f60 100644
--- a/drivers/gpu/drm/i915/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/vlv_dsi.c
@@ -30,6 +30,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
+#include <drm/drm_utils.h>
 
 #include "i915_drv.h"
 #include "intel_atomic.h"
@@ -1650,6 +1651,7 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
 
 	if (connector->panel.fixed_mode) {
 		u32 allowed_scalers;
+		int orientation;
 
 		allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
 		if (!HAS_GMCH(dev_priv))
@@ -1660,12 +1662,16 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
 
 		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 
-		connector->base.display_info.panel_orientation =
-			vlv_dsi_get_panel_orientation(connector);
-		drm_connector_init_panel_orientation_property(
-				&connector->base,
+		orientation = drm_get_panel_orientation_quirk(
 				connector->panel.fixed_mode->hdisplay,
 				connector->panel.fixed_mode->vdisplay);
+		if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
+			connector->base.display_info.panel_orientation = orientation;
+		else
+			connector->base.display_info.panel_orientation =
+				vlv_dsi_get_panel_orientation(connector);
+
+		drm_connector_init_panel_orientation_property(&connector->base);
 	}
 }
 
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 47e749b74e5f..c2992f7a0dd5 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1370,7 +1370,7 @@ void drm_connector_set_link_status_property(struct drm_connector *connector,
 void drm_connector_set_vrr_capable_property(
 		struct drm_connector *connector, bool capable);
 int drm_connector_init_panel_orientation_property(
-	struct drm_connector *connector, int width, int height);
+	struct drm_connector *connector);
 int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 					  int min, int max);
 
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
