Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A991B284B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 15:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ptb/VgYB4hN2Yx3569ocpLn81urUBgs6f5YRLArlEnY=; b=UX1wAB2iOTp9RH
	6z6M0oJpw9fIkEP7nwJNHw+USfKGv1qIs0pMPsvdRl8DA5vSWGzO9DpwELEV2Nq/0cuGKc1HujFEB
	F26v4GRPBvCEuBmXSkg6tvbJh9kSdoaWup8/txlPIZ7Vlf3zO7meD09NQPlKJEI/AZkJpz0VgzGok
	sNcO14Fd/t1UNTpO1uMYMBBOFCuLIOIPW+G+iih4fLIK0tMMOpc+F+72FKXGebUksg1TT+v6YMFLX
	AXhvfHi29haMDgnovKtpNNTK9bpPbuHsY17lOf81TlSviVrmFG1+rlh8mmUlsG049uRefz83FXw+i
	U5EwfKhum8rTm9mRQ3ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtCR-0006yd-Qn; Tue, 21 Apr 2020 13:44:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtCE-0006vR-Gv
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 13:44:21 +0000
Received: by mail-wr1-x444.google.com with SMTP id s10so7388908wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 06:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dX9SsJrE5hBWZMCB/PsZv22atY0++ttj3tkMV3dDs0Q=;
 b=wAdOMM8Y4A0ygcev7r3LEJy6/ZEs7Rtg9U1GZXegnRmd37n2aFQq89ytgXuMqov+aY
 8j4tKi0c6Ebm8QT9cSFKk60ivx+MNgflnxuoF+GESmrHlsGgE4Law9yevtLxqViztRl1
 xC7GyCZpBnX5loqzujb0MbfvwJqrtkN+ngJ9pnjgJ7Mcfg2cOkYFVJM42jR4bQBEbt2M
 GgwoIH8AYqJKG7RXPa0iicSVSnnyFZyYBbTswnfesr1hVaV8E2YWHcKPmm8OIV/AmVOz
 MQOR1azT28LRFB7UsSNtCGPn4xzxN+Ty7SN4oDi4jX2jzbuStybR3eKmQQ7HV9Ep/bZs
 Dtdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dX9SsJrE5hBWZMCB/PsZv22atY0++ttj3tkMV3dDs0Q=;
 b=VXygjdE7esCZGleG3reLuv+E3YpXFzluEb13SVYRvraYGRxpe0JQz51yC65Rb4Ljjk
 8cqzkro4FFGQKEtG8LveFzunL70bJE7xYlBUkQeHjUEXBj9lGXAAeAntdLebmKKA6KQC
 I288rlT5oUulp/NsZKBgmmaJZ3tET8zDojgAqvcmneTj9Oj79GAT5Mxo13NTeIJGvUhO
 EkXCTK0sVXLv+3vjr4Wyxkz0Zl9PuQU8TfNOH/6GVenPm+kKb8lQLbjwlDjxjFoTVIZ3
 lhi3a9sfhfM95FcB7dJ7+mezJDsdx0+ub4rdF0DWMmUUEtV8QZPkswFTapmJ8bDT47Aj
 MSsw==
X-Gm-Message-State: AGi0PuaSw93YimxQvaQSnp8X21XeJyfzvIeLcbuDHYMmn/m/RkZexv6q
 ywSojKTH4HuE2n2J5pTPNOCykQ==
X-Google-Smtp-Source: APiQypIKm+M6SMpWmaYV4K+934zXv6wdnVmpZd13gbye74FjG+URTgYgVwpXyg3Nh+qlr1d4JJ5IOw==
X-Received: by 2002:adf:f146:: with SMTP id y6mr25802017wro.132.1587476656747; 
 Tue, 21 Apr 2020 06:44:16 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 a20sm4000854wra.26.2020.04.21.06.44.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 06:44:16 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/meson: add mode selection limits against specific SoC
 revisions
Date: Tue, 21 Apr 2020 15:44:10 +0200
Message-Id: <20200421134410.30603-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_064418_556789_DF125256 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic S805X/Y uses the same die as the S905X, but with more
limited graphics capabilities.

This adds a soc version detection adding specific limitations on the HDMI
mode selections.

Here, we limit to HDMI 1.3a max HDMI PHY clock frequency.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_drv.c     | 29 ++++++++++++++++++++++++++-
 drivers/gpu/drm/meson/meson_drv.h     |  6 ++++++
 drivers/gpu/drm/meson/meson_dw_hdmi.c |  7 +++++++
 3 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index 6f29fab79952..621f6de0f076 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -11,6 +11,7 @@
 #include <linux/component.h>
 #include <linux/module.h>
 #include <linux/of_graph.h>
+#include <linux/sys_soc.h>
 #include <linux/platform_device.h>
 #include <linux/soc/amlogic/meson-canvas.h>
 
@@ -183,6 +184,24 @@ static void meson_remove_framebuffers(void)
 	kfree(ap);
 }
 
+struct meson_drm_soc_attr {
+	struct meson_drm_soc_limits limits;
+	const struct soc_device_attribute *attrs;
+};
+
+static const struct meson_drm_soc_attr meson_drm_soc_attrs[] = {
+	/* S805X/S805Y HDMI PLL won't lock for HDMI PHY freq > 1,65GHz */
+	{
+		.limits = {
+			.max_hdmi_phy_freq = 1650000,
+		},
+		.attrs = (const struct soc_device_attribute []) {
+			{ .soc_id = "GXL (S805*)", },
+			{ /* sentinel */ },
+		}
+	},
+};
+
 static int meson_drv_bind_master(struct device *dev, bool has_components)
 {
 	struct platform_device *pdev = to_platform_device(dev);
@@ -191,7 +210,7 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
 	struct drm_device *drm;
 	struct resource *res;
 	void __iomem *regs;
-	int ret;
+	int ret, i;
 
 	/* Checks if an output connector is available */
 	if (!meson_vpu_has_available_connectors(dev)) {
@@ -281,6 +300,14 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
 	if (ret)
 		goto free_drm;
 
+	/* Assign limits per soc revision/package */
+	for (i = 0 ; i < ARRAY_SIZE(meson_drm_soc_attrs) ; ++i) {
+		if (soc_device_match(meson_drm_soc_attrs[i].attrs)) {
+			priv->limits = &meson_drm_soc_attrs[i].limits;
+			break;
+		}
+	}
+
 	/* Remove early framebuffers (ie. simplefb) */
 	meson_remove_framebuffers();
 
diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
index 04fdf3826643..5b23704a80d6 100644
--- a/drivers/gpu/drm/meson/meson_drv.h
+++ b/drivers/gpu/drm/meson/meson_drv.h
@@ -30,6 +30,10 @@ struct meson_drm_match_data {
 	struct meson_afbcd_ops *afbcd_ops;
 };
 
+struct meson_drm_soc_limits {
+	unsigned int max_hdmi_phy_freq;
+};
+
 struct meson_drm {
 	struct device *dev;
 	enum vpu_compatible compat;
@@ -48,6 +52,8 @@ struct meson_drm {
 	struct drm_plane *primary_plane;
 	struct drm_plane *overlay_plane;
 
+	const struct meson_drm_soc_limits *limits;
+
 	/* Components Data */
 	struct {
 		bool osd1_enabled;
diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
index e8c94915a4fc..dc3d5122475a 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
@@ -695,6 +695,13 @@ dw_hdmi_mode_valid(struct drm_connector *connector,
 	dev_dbg(connector->dev->dev, "%s: vclk:%d phy=%d venc=%d hdmi=%d\n",
 		__func__, phy_freq, vclk_freq, venc_freq, hdmi_freq);
 
+	/* Check against soc revision/package limits */
+	if (priv->limits) {
+		if (priv->limits->max_hdmi_phy_freq &&
+		    phy_freq > priv->limits->max_hdmi_phy_freq)
+			return MODE_CLOCK_HIGH;
+	}
+
 	return meson_vclk_vic_supported_freq(phy_freq, vclk_freq);
 }
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
