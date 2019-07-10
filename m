Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF23663F37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 04:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QfiuMGx1TDyXYMb92fDOPrlyBWucLKXxN7pLlX0tzkw=; b=EBnZRCZwAoGXpW
	BlgeNzOUdXlRwlHgPo35aXRKxxq/Iqo+ARLqsUKxnJWQca+81ZbqGlxEWtPal5qneuwDDuZAlUN2P
	HNOB5OYRD4NEb9OfpiouqijSnAwDaactwapaeRdY9V50G62fU7EBstIi1n29+Eseyu1kxrlExKjiF
	wqvVbc3eASi6gv6IRy308wTNG2JUr0nc/RjwvjkxTjhJLEkBRFIqhmDOS0+Le4NkzJLiKHygl9emi
	E6lP5Ns/5pnzwXY0mwPJOpUWGpiuCaRJmrXC9GBsfGCR6bzod3YF69sFRu/IJn3sIoND4mlSdCssw
	8c8lJyiRqmhBlbcc6cEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl2BD-0004fR-CG; Wed, 10 Jul 2019 02:17:59 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl2AM-00047I-HP
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 02:17:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so373292pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 19:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rfx+Gd8oVEa1XPLGf6Uhcr6PQLb7UV/+SVQIxm9mxvM=;
 b=aawXa+LkTbucerXg4L9n9gF1KFbcTg+H2OKkFWI4ygUbxZGVqYGqbRu/syViUnFP/X
 js9OUUiu6Qrs1VAmsVJgu59Kwr3zqoUllfexi7fhUZBJh8s8sVGlQqkts+qdDLeR6FrU
 j3PeApwXk/eCwD6juKRGXxL5SfIacGIpfm3cM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rfx+Gd8oVEa1XPLGf6Uhcr6PQLb7UV/+SVQIxm9mxvM=;
 b=amo7M+kno6pe8a+fz35I5aTNELq/BeGY+sT6Hk3c2zQXs8sWnpemgpTnOSGJzwVXnz
 OzBmcRxeBhuK5XY6MUQ+KDVY/q73QpSZr165hvOPaCfC++Q6A+uIDuXyDg0jKYlxKQMW
 gRoWDR2D5SoUYbuMp2t8K3admH2i8guJjkq2e2eVsnvhbILHrPqhls7m+fpzhoQTgSBJ
 3Sme+b0xs1MutbekdWXEJhtfusGYY/yqp7xTy1QrjBUQwwv5jkh3MuisJT62y95ix9Gv
 JLBZj7+1EhhWDyJTAfklTWJGAhzOYdi7caMXURCgH/bnIH6p58ZIh7BklavwAJmdlJcH
 YsHg==
X-Gm-Message-State: APjAAAUK3zdZ9lFAWg4GlZCG0Ey2rOIvpx1x2/Odu61jtcEc4BdKSDHS
 CapT42h5Zef2iPnKeVG0mUdP8Q==
X-Google-Smtp-Source: APXvYqzd1kRHOtV+IgvJ0sC2iehhxo+KzXVpBYGiYr1K/o2l7WgEbrPY6S8Q5QQoxGtZBQ6/rKc14A==
X-Received: by 2002:a17:902:42d:: with SMTP id
 42mr34536201ple.228.1562725026148; 
 Tue, 09 Jul 2019 19:17:06 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id f17sm326296pgv.16.2019.07.09.19.17.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 19:17:05 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/4] drm/panel: set display info in panel attach
Date: Tue,  9 Jul 2019 19:16:57 -0700
Message-Id: <20190710021659.177950-3-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190710021659.177950-1-dbasehore@chromium.org>
References: <20190710021659.177950-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_191706_574220_F8F3177A 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Devicetree systems can set panel orientation via a panel binding, but
there's no way, as is, to propagate this setting to the connector,
where the property need to be added.
To address this, this patch sets orientation, as well as other fixed
values for the panel, in the drm_panel_attach function. These values
are stored from probe in the drm_panel struct.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_panel.c | 28 ++++++++++++++++++++++++++++
 include/drm/drm_panel.h     | 14 ++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index 169bab54d52d..ca01095470a9 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -104,11 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
  */
 int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
 {
+	struct drm_display_info *info;
+
 	if (panel->connector)
 		return -EBUSY;
 
 	panel->connector = connector;
 	panel->drm = connector->dev;
+	info = &connector->display_info;
+	info->width_mm = panel->width_mm;
+	info->height_mm = panel->height_mm;
+	info->bpc = panel->bpc;
+	info->panel_orientation = panel->orientation;
+	info->bus_flags = panel->bus_flags;
+	if (panel->bus_formats)
+		drm_display_info_set_bus_formats(&connector->display_info,
+						 panel->bus_formats,
+						 panel->num_bus_formats);
 
 	return 0;
 }
@@ -128,6 +140,22 @@ EXPORT_SYMBOL(drm_panel_attach);
  */
 int drm_panel_detach(struct drm_panel *panel)
 {
+	struct drm_display_info *info;
+
+	if (!panel->connector)
+		goto out;
+
+	info = &panel->connector->display_info;
+	info->width_mm = 0;
+	info->height_mm = 0;
+	info->bpc = 0;
+	info->panel_orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
+	info->bus_flags = 0;
+	kfree(info->bus_formats);
+	info->bus_formats = NULL;
+	info->num_bus_formats = 0;
+
+out:
 	panel->connector = NULL;
 	panel->drm = NULL;
 
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index fc7da55f41d9..a6a881b987dd 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -39,6 +39,8 @@ enum drm_panel_orientation;
  * struct drm_panel_funcs - perform operations on a given panel
  * @disable: disable panel (turn off back light, etc.)
  * @unprepare: turn off panel
+ * @detach: detach panel->connector (clear internal state, etc.)
+ * @attach: attach panel->connector (update internal state, etc.)
  * @prepare: turn on panel and perform set up
  * @enable: enable panel (turn on back light, etc.)
  * @get_modes: add modes to the connector that the panel is attached to and
@@ -95,6 +97,18 @@ struct drm_panel {
 
 	const struct drm_panel_funcs *funcs;
 
+	/*
+	 * panel information to be set in the connector when the panel is
+	 * attached.
+	 */
+	unsigned int width_mm;
+	unsigned int height_mm;
+	unsigned int bpc;
+	int orientation;
+	const u32 *bus_formats;
+	unsigned int num_bus_formats;
+	u32 bus_flags;
+
 	struct list_head list;
 };
 
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
