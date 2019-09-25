Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89872BE89F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 00:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBgDk0+PCXMoOnb+fPt6WJs/qDA8uac69aPqFuvVO9s=; b=YDcwBqR/IhoY/j
	FPoua/kaJeUZyUIkXrO2nKtAhWiJ3E/IHGtfFoh12yqhiB8VIbOJfGz83XnU1JEeVqK6ypQEJ1+IN
	7TQ/6Rb3+ePsQmH8uX9XeBpf6Yh/5+ARUHvD7aaZiFQ28Gp0o9GLLCd5j8IAswt6+HT+OoytQKYnS
	mh0cxaR+K/VuukOIemYlhAnxkY5bQy8toc/cWtSzXpfXnxVJYaH12vzYuMw+ytY1YtTt4SWEITSEe
	+PBLBasM+Ex+ZQPAhonLFgrNeG++SwK3PFEoo000dt+vIBRUChjAw6wY+uMZIalXmmAhi8deQMC61
	nJttiNLC2tE+NsFhYWDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDGFy-0003PF-QV; Wed, 25 Sep 2019 22:59:35 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDGF8-0002oZ-Gw
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:58:44 +0000
Received: by mail-pg1-x543.google.com with SMTP id z12so187909pgp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e54uTjhrMjS+i3uZjyZOFqJvo1DiLqu+QVKk06QE/rE=;
 b=nTzCAE+GktkwHSreEF1W8BpnrqcEc/f/Sl9mRlJjDNjgJF8kMD+xID7r4VV4G3yX9w
 GZ1hgcf0hxBU7Opu+Kn3+gQYzHMijRDwGJP1xFu3Ki5JQhoF5qFt/RieM3KgHQxrdnk3
 Fkny4XUwI2dYgIVZ5jYPO407R700wwxt6I91Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e54uTjhrMjS+i3uZjyZOFqJvo1DiLqu+QVKk06QE/rE=;
 b=m30Oofhf/tDRASip8GsHbn2vAFP0R8ZrYjNYVmND3ILJiX4/LO6EpGSQsSb3dw+Wpo
 eijWUKiwwD8pwdmt4x1aYOSy+MWJDVn7M55L7Ui77gkJFHnzBMa8BJu+8H3mxFNRtqt2
 x6Sp+MzuOXi9BpOq0uKaIIdGN7nFYht0tLH1kddJwLcQEG4BMHfOcCnvjAbpBWJKqZfL
 2KmXPh3uv+DRWDiL/WxNzOE/0zakd0E0VwbJLdgQQj45GzIhFowe3xl1Bj8m2E7IdkGg
 5HC0FwcTxiRWxz6g3xu3I4I98vRsSMEV/NNEvkGMVMwVfMDYs2n8qoBbQSco8NYsL5Ab
 B2cA==
X-Gm-Message-State: APjAAAW0ssDNMXFtcj7NElRSqqOchqjAT9tJn7XORms2cAoEqMK7QekD
 LPY0dl9GOB0wB0Y3ymcwosZtKw==
X-Google-Smtp-Source: APXvYqzK4P5iXr9jOF6+1L25eEXxPfuNyjSJPKhfdFr3rhdXJaKzGU5D+7A3nxPWuxjmqSRQYiqNoA==
X-Received: by 2002:a63:c203:: with SMTP id b3mr283133pgd.450.1569452321998;
 Wed, 25 Sep 2019 15:58:41 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id j24sm76185pff.71.2019.09.25.15.58.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 15:58:41 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 2/4] drm/panel: set display info in panel attach
Date: Wed, 25 Sep 2019 15:58:31 -0700
Message-Id: <20190925225833.7310-3-dbasehore@chromium.org>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
In-Reply-To: <20190925225833.7310-1-dbasehore@chromium.org>
References: <20190925225833.7310-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_155842_577863_B6426B28 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Devicetree systems can set panel orientation via a panel binding, but
there's no way, as is, to propagate this setting to the connector,
where the property need to be added.
To address this, this patch sets orientation, as well as other fixed
values for the panel, in the drm_panel_attach function. These values
are stored from probe in the drm_panel struct.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/drm_panel.c | 28 +++++++++++++++++++++
 include/drm/drm_panel.h     | 50 +++++++++++++++++++++++++++++++++++++
 2 files changed, 78 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index 0909b53b74e6..1cd2b56c9fe6 100644
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
@@ -126,6 +138,22 @@ EXPORT_SYMBOL(drm_panel_attach);
  */
 void drm_panel_detach(struct drm_panel *panel)
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
 }
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index d16158deacdc..f3587a54b8ac 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -141,6 +141,56 @@ struct drm_panel {
 	 */
 	const struct drm_panel_funcs *funcs;
 
+	/**
+	 * @width_mm:
+	 *
+	 * Physical width in mm.
+	 */
+	unsigned int width_mm;
+
+	/**
+	 * @height_mm:
+	 *
+	 * Physical height in mm.
+	 */
+	unsigned int height_mm;
+
+	/**
+	 * @bpc:
+	 *
+	 * Maximum bits per color channel. Used by HDMI and DP outputs.
+	 */
+	unsigned int bpc;
+
+	/**
+	 * @orientation
+	 *
+	 * Installation orientation of the panel with respect to the chassis.
+	 */
+	int orientation;
+
+	/**
+	 * @bus_formats
+	 *
+	 * Pixel data format on the wire.
+	 */
+	const u32 *bus_formats;
+
+	/**
+	 * @num_bus_formats:
+	 *
+	 * Number of elements pointed to by @bus_formats
+	 */
+	unsigned int num_bus_formats;
+
+	/**
+	 * @bus_flags:
+	 *
+	 * Additional information (like pixel signal polarity) for the pixel
+	 * data on the bus.
+	 */
+	u32 bus_flags;
+
 	/**
 	 * @list:
 	 *
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
