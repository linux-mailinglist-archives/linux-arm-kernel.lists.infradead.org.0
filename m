Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C1E3C073
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 02:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+nAhNV54rTRQT9OCYgXLn0nPva6IVjY2JlHLwK2Hg4=; b=nw/pBrioWyB0ZG
	T/aIQ/uoiaiQbECwYYXl1BmD1uSz5wQXC95Dp+ZEmUNogSp2QN52n1lmwkYYbJKDIAJezv2cvZJ1t
	BzmNToJrJnlzFzvbrACh+Z4K8tcpUqk7rFlR6hgeRLrHPCl1amSz4Fb1eWo6M/FjdFl7pUbtsr/4u
	ptVGMaZZ0TiudqIxcFa12pFVC8jWyV6IY/X2HO9wJ47k3szs7dN1y0YUhVVvMUOpZEAXOak4SgiS6
	ovR5LxciJWo6TjA58SKih+n9g1VKP56nkS5RFXSh7tk4MEHIq+nkwty573zquY+biTa0twofFfy81
	AnUvXqFdt4gj1LERdH2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUaZ-0005SL-U9; Tue, 11 Jun 2019 00:24:36 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUZC-0004OM-G1
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 00:23:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so6228336pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 17:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SbGlBPyajmgb9CaueSzIfrgJlhnAGN7+8e2UjE2WPGs=;
 b=QMTcan/tAguair4X5N96kBUhDCQmzcPQ8o33atawGY8VZu4nSq4tzlWDtJGd+W/JpQ
 nl1W7EVIj+azFgH5SC++A+b3c6obUjjID0u/wvWW7dT4ASZmLXG0PkwC7/eoU1mQCkOK
 myUpXIrOD1SQJe+dlbHElyIEz85++rjSgwYnw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SbGlBPyajmgb9CaueSzIfrgJlhnAGN7+8e2UjE2WPGs=;
 b=Id3CUn9T+0vSDO1P19nX+UNh0zChr9f41kkgyGJhtckhX7ANvghXoBFvFKGIzr17na
 Vh4wN84ZUoKLYYxTDrbNy/McIG9q5kk4HV/suMkU6RUkebi05/ZLnL5qnbZOlMPmpX2y
 4x7crW46prCBdAZZ2UMIGNMY2fR3aHalrARwyckASPnMQq9wiVAGLoTG7VtYeYjrPWXu
 2RK2AP/3/KqFt8t2OTXrf5RWCZYHemNTok8W8nqJEyBKBfo4S+mjwz9FARzGvCyNlov5
 1b+IOsrhk+e+uD2r7mJtIl6J1mW8QMh9joH2iJ9pmbtrLpp33aivtOPMOSuO4DIJ1VLY
 zfKg==
X-Gm-Message-State: APjAAAXU431xv3kzrflDHiojoBn1wuAjQXdmBHXb2dEOIv8AEQOpXZ07
 XOqPNljHZGas33MPI02XTFfaCg==
X-Google-Smtp-Source: APXvYqwi56JXscBKRHfQoGNMBePzYhFMyyTHJGvp9aFG+ez3Y7Dba8/6WvJUku8BN9epZSypI5eOvQ==
X-Received: by 2002:a63:ee12:: with SMTP id e18mr18316371pgi.412.1560212589668; 
 Mon, 10 Jun 2019 17:23:09 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t4sm540317pjq.19.2019.06.10.17.23.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 17:23:09 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] drm/connector: Split out orientation quirk detection
Date: Mon, 10 Jun 2019 17:22:55 -0700
Message-Id: <20190611002256.186969-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611002256.186969-1-dbasehore@chromium.org>
References: <20190611002256.186969-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_172310_645788_76AAD069 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: Derek Basehore <dbasehore@chromium.org>, p.zabel@pengutronix.de,
 maxime.ripard@bootlin.com, sam@ravnborg.org, intel-gfx@lists.freedesktop.org,
 joonas.lahtinen@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@linux.intel.com, airlied@linux.ie, thierry.reding@gmail.com,
 matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 rodrigo.vivi@intel.com, ck.hu@mediatek.com, linux-mediatek@lists.infradead.org,
 sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This removes the orientation quirk detection from the code to add
an orientation property to a panel. This is used only for legacy x86
systems, yet we'd like to start using this on device tree systems
where quirk detection like this is not needed.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_connector.c | 16 ++++------------
 drivers/gpu/drm/i915/vlv_dsi.c  | 13 +++++++++----
 include/drm/drm_connector.h     |  2 +-
 3 files changed, 14 insertions(+), 17 deletions(-)

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
diff --git a/drivers/gpu/drm/i915/vlv_dsi.c b/drivers/gpu/drm/i915/vlv_dsi.c
index bfe2891eac37..113129996530 100644
--- a/drivers/gpu/drm/i915/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/vlv_dsi.c
@@ -1650,6 +1650,7 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
 
 	if (connector->panel.fixed_mode) {
 		u32 allowed_scalers;
+		int orientation;
 
 		allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
 		if (!HAS_GMCH(dev_priv))
@@ -1660,12 +1661,16 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
 
 		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 
-		connector->base.display_info.panel_orientation =
-			vlv_dsi_get_panel_orientation(connector);
-		drm_connector_init_panel_orientation_property(
-				&connector->base,
+		orientation = drm_get_panel_orientation_quirk(
 				connector->panel.fixed_mode->hdisplay,
 				connector->panel.fixed_mode->vdisplay);
+		if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
+			connector->display_info.panel_orientation = orientation;
+		else
+			connector->display_info.panel_orientation =
+				intel_dsi_get_panel_orientation(connector);
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
