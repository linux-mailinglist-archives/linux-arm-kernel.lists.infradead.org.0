Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791A5DE7E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voY8DsrljgodPuvqjzOTHHUXBT2VObU9OA6yBpT0zJY=; b=WNlSgDWYIa2ZFF
	uzALxD7h/6j7nuRAbA4aOr4kucmL2tZdXLP1gafEg29C9D7C/bG4QfYrQxA9V4Xsyvhf5zpOnDYth
	+SqSmkmsj6bEDvNDzfZLpK/kIyTwjsZkyWRSUX8TEnckwj06PyI0aQHlRUaammHyWShJLOEGbICjn
	JjuBJSPaL+70uVZQ1U6QYIL4eNbk3n1XyB/Qsn7QqtjzT4X/tcmEEfDUR2mjpVWFUi/hJYT3r1VUA
	Qrg7iC6ZM8kBPLnY6gD6WXG+lQ/tCAYOkJTXr3x3GCnARb1hCBx4wEqeKKF0Kc/A5OH6RVt3unoKa
	3ELxBPdhRT568pQSY//A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTqA-0005Cx-Sl; Mon, 21 Oct 2019 09:19:02 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTmZ-0002je-Qd
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:15:27 +0000
Received: by mail-wr1-f66.google.com with SMTP id w18so12446848wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 02:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L7PVn0GT+Q53b4/05X2gw4wIJMYhfbWDBhvgtlSOvjw=;
 b=ofDGK82VOw5Ncz2vVTOV1TMjbrUX7M29g/YosoTtWp/VEzgfXZJyPxyQJZaA1jYUDI
 6VwARmBgnEuTXOmVoZ8f2DWfXMOKKab/Rmyd+tFR1aerGApBOm5Kmmznv+vm1WPeHhYB
 cpID+cSEINtBgzrK0M5lSHQnuYoKG+daWWPgnqeSrV0GSnM62YZ+2ysxqmkiFeE3VVgo
 EBqoceFLRvOA8nW6RJJwjDj0rQoS0oig6aRrQNjfyGjAcWICXWjRwDap4eXeTe6mpyhW
 MaD64Zt9wNEBQUA+U/xNAAtn0ai/zoeDijMgOy3zO++Ugu65aQ6LGsIegXif1PXvfH/y
 LCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L7PVn0GT+Q53b4/05X2gw4wIJMYhfbWDBhvgtlSOvjw=;
 b=V+3vVYcnthJgnzd5nRzMidzkN0tsgQ4IyqGRFMLyvRomAATm/vosox+awUL2sqSz7i
 FnjKkbQq19sPiF3jcjBGx030JfS6n6svSO545Q6Ud/VKuP0oS3lMLWNFoOKZjMseIK2s
 jLkympAQTSi9MRHNGaudj4rTJc5lcatGAGb8MMeqWbC49X+iduIUU17Qsv8VfzioFqK0
 9em29/kcXCq070Bfk4lplBvoS6JfKDCLoI4VeBshaQnJX7Y7gRT9OucVqrxmlTC6kjTo
 nU2Hocwnx++f2gca9BL+MaWBn3qrtuX/rbnDyQqqkZCl/sZ45t0jWlGnNRpi1oRXCiwf
 qEvQ==
X-Gm-Message-State: APjAAAWnSE5Sa8Y+gEwMSEtyWJHGTMO8vbOhzxN2X/BPlx46zR5LNX1q
 gJDOOvnh3NYYicnHPMnJagigcQ==
X-Google-Smtp-Source: APXvYqwAqbtjZjSfSNeJmQ4stzCKH53tgotYC+GelIt6j4qQHRvFi9R3qDk8zExKNDBhi/6D0FAODw==
X-Received: by 2002:adf:fc4c:: with SMTP id e12mr7862537wrs.179.1571649317355; 
 Mon, 21 Oct 2019 02:15:17 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t13sm20281595wra.70.2019.10.21.02.15.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 02:15:16 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 7/9] drm/meson: viu: add AFBC modules routing functions
Date: Mon, 21 Oct 2019 11:15:07 +0200
Message-Id: <20191021091509.3864-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021091509.3864-1-narmstrong@baylibre.com>
References: <20191021091509.3864-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021519_984461_F28EF9D4 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 ayan.halder@arm.com, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic G12A AFBC Decoder pixel input need to be routed diferently
than the Amlogic GXM AFBC decoder, this adds support for routing the
VIU OSD1 pixel source to the AFBC "Mali Unpack" module.

This "Mali Unpack" module is also configured with a static RGBA mapping
for now until we support more pixel formats.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_viu.c | 81 +++++++++++++++++++++++++++++++
 drivers/gpu/drm/meson/meson_viu.h |  4 ++
 2 files changed, 85 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
index 68cf2c2eca5f..fc246248226b 100644
--- a/drivers/gpu/drm/meson/meson_viu.c
+++ b/drivers/gpu/drm/meson/meson_viu.c
@@ -7,6 +7,9 @@
  */
 
 #include <linux/export.h>
+#include <linux/bitfield.h>
+
+#include <drm/drm_fourcc.h>
 
 #include "meson_drv.h"
 #include "meson_viu.h"
@@ -335,6 +338,79 @@ void meson_viu_osd1_reset(struct meson_drm *priv)
 	meson_viu_load_matrix(priv);
 }
 
+#define OSD1_MALI_ORDER_ABGR				\
+	(FIELD_PREP(VIU_OSD1_MALI_AFBCD_A_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_A) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_B_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_B) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_G_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_G) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_R_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_R))
+
+#define OSD1_MALI_ORDER_ARGB				\
+	(FIELD_PREP(VIU_OSD1_MALI_AFBCD_A_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_A) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_B_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_R) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_G_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_G) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_R_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_B))
+
+void meson_viu_g12a_enable_osd1_afbc(struct meson_drm *priv)
+{
+	u32 afbc_order = OSD1_MALI_ORDER_ARGB;
+
+	/* Enable Mali AFBC Unpack */
+	writel_bits_relaxed(VIU_OSD1_MALI_UNPACK_EN,
+			    VIU_OSD1_MALI_UNPACK_EN,
+			    priv->io_base + _REG(VIU_OSD1_MALI_UNPACK_CTRL));
+
+	switch (priv->afbcd.format) {
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_ABGR8888:
+		afbc_order = OSD1_MALI_ORDER_ABGR;
+		break;
+	}
+
+	/* Setup RGBA Reordering */
+	writel_bits_relaxed(VIU_OSD1_MALI_AFBCD_A_REORDER |
+			    VIU_OSD1_MALI_AFBCD_B_REORDER |
+			    VIU_OSD1_MALI_AFBCD_G_REORDER |
+			    VIU_OSD1_MALI_AFBCD_R_REORDER,
+			    afbc_order,
+			    priv->io_base + _REG(VIU_OSD1_MALI_UNPACK_CTRL));
+
+	/* Select AFBCD path for OSD1 */
+	writel_bits_relaxed(OSD_PATH_OSD_AXI_SEL_OSD1_AFBCD,
+			    OSD_PATH_OSD_AXI_SEL_OSD1_AFBCD,
+			    priv->io_base + _REG(OSD_PATH_MISC_CTRL));
+}
+
+void meson_viu_g12a_disable_osd1_afbc(struct meson_drm *priv)
+{
+	/* Disable AFBCD path for OSD1 */
+	writel_bits_relaxed(OSD_PATH_OSD_AXI_SEL_OSD1_AFBCD, 0,
+			    priv->io_base + _REG(OSD_PATH_MISC_CTRL));
+
+	/* Disable AFBCD unpack */
+	writel_bits_relaxed(VIU_OSD1_MALI_UNPACK_EN, 0,
+			    priv->io_base + _REG(VIU_OSD1_MALI_UNPACK_CTRL));
+}
+
+void meson_viu_gxm_enable_osd1_afbc(struct meson_drm *priv)
+{
+	writel_bits_relaxed(MALI_AFBC_MISC, FIELD_PREP(MALI_AFBC_MISC, 0x90),
+			    priv->io_base + _REG(VIU_MISC_CTRL1));
+}
+
+void meson_viu_gxm_disable_osd1_afbc(struct meson_drm *priv)
+{
+	writel_bits_relaxed(MALI_AFBC_MISC, FIELD_PREP(MALI_AFBC_MISC, 0x00),
+			    priv->io_base + _REG(VIU_MISC_CTRL1));
+}
+
 static inline uint32_t meson_viu_osd_burst_length_reg(uint32_t length)
 {
 	uint32_t val = (((length & 0x80) % 24) / 12);
@@ -420,8 +496,13 @@ void meson_viu_init(struct meson_drm *priv)
 
 		writel_bits_relaxed(DOLBY_BYPASS_EN(0xc), DOLBY_BYPASS_EN(0xc),
 				    priv->io_base + _REG(DOLBY_PATH_CTRL));
+
+		meson_viu_g12a_disable_osd1_afbc(priv);
 	}
 
+	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM))
+		meson_viu_gxm_disable_osd1_afbc(priv);
+
 	priv->viu.osd1_enabled = false;
 	priv->viu.osd1_commit = false;
 	priv->viu.osd1_interlace = false;
diff --git a/drivers/gpu/drm/meson/meson_viu.h b/drivers/gpu/drm/meson/meson_viu.h
index e297772d967f..e4a2f24d7c38 100644
--- a/drivers/gpu/drm/meson/meson_viu.h
+++ b/drivers/gpu/drm/meson/meson_viu.h
@@ -63,6 +63,10 @@
 #define OSD_PENDING_STAT_CLEAN	BIT(1)
 
 void meson_viu_osd1_reset(struct meson_drm *priv);
+void meson_viu_g12a_enable_osd1_afbc(struct meson_drm *priv);
+void meson_viu_g12a_disable_osd1_afbc(struct meson_drm *priv);
+void meson_viu_gxm_enable_osd1_afbc(struct meson_drm *priv);
+void meson_viu_gxm_disable_osd1_afbc(struct meson_drm *priv);
 void meson_viu_init(struct meson_drm *priv);
 
 #endif /* __MESON_VIU_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
