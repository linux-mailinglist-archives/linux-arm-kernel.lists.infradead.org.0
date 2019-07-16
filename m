Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FB56A254
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 08:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Buoo5DMhOWYgjsd68PPtBbjKhJveZW+Qgq8yaaEdYFI=; b=Bzv1eIKDRafYTS
	vBfZBLSMpspWEjaAS1dEUqKBUj3NDbHSlHU7rxi3Kr5rYWFPYBhzhNrqMX0A5YEtXD4dkXq3xmMGA
	O1QwMeUWaCPb4CADkHJy6R4Sij36DOh/LTaOgTkVIx+ZbeseZEInaH3T8yLvB03YCfkZVDEf6hrrU
	af1kfWlNSDFC6E3CvrsxhFm7zVoa+C/BbLnVTVUyD+fiNX0ZFy15/vvN5C6XpHuzzXhMHTtXO7B9a
	IOSMHo4YpJncnevVljTglCmZYLupMdoPsUnz9LMvnyECada/LejMuj6cyIyVr4gt9ivMOYeuDEWDD
	rfkbkGcVoB7v9H4UhpIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHCf-0000mp-H2; Tue, 16 Jul 2019 06:44:45 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHCP-0000je-LG
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 06:44:32 +0000
Received: by mail-lj1-x244.google.com with SMTP id m23so18708103lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 23:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z6z6tflXuwmALkxagDQr8ry5/yExuROBFgtK69pjg7E=;
 b=jbPqcRbN+dPBsB5i/Cska6cSPhMF4dKyXjcb336jehUPqsJZNoEEqFyM2gSXZVOzcb
 rj6nQ5lxAU9h9ljHX0HdlRz+7wATLnfepohhTK/+e20/aEQtd9x9z5HsyZm1SU8hjuZU
 6Sd/NGPeJQTl1KX9ZZcxjnPBzxzygh99OgTLHkW3WcKPKy2qW27zY7feb/jUSz0GH9zq
 sXxchAw8rPKWqKdOKFv2doLAdu+Nq3IwrvuIjCaYMqhFo7Lnjdux8e814SHaD/TDSu89
 0amYyu5VVeiyWqGxcjqzV1fX7OOLHt9qsdj1ZX0MKyX86K0gb/5+s9httecXgg846F04
 Npag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=Z6z6tflXuwmALkxagDQr8ry5/yExuROBFgtK69pjg7E=;
 b=E/ZGa1AqwKQBmKWWfeS3b+P8dqwi+FKedYI+RUsoY8yAV5mknPgqqi2xY7/o8++Z0G
 ybOkUpEsMzw34hW9TYEJZzcnI2cWdSbQiNZICkZcfC57UFA/8u0G2RVshfJZ6k3fnEGI
 RUKeEiNRpKFCtJKP448MfywgNjFeSowpvc+zzNeSyQX9V575oj/0hzdd+vg24IN3NQUn
 7rg6myBuKFxarpZgO3sMNhWiyPIeKS9xwIx8+6HHc2WNTSbpRob1pLQ/GWihtymFUYkJ
 FvkWupaorCV99O6aUl2tUqjeryJ/kXIF3WBYOnXfqLtaFNvn6HLxyb51WxRWPBsTxOLR
 ssUw==
X-Gm-Message-State: APjAAAX95xyOvEZlAv0JLgsy7g+1d5Mu/OMS91uWzma97ZQYjiveD6BJ
 hHfJ6Y5WrVjkxCx29eBHI2Y=
X-Google-Smtp-Source: APXvYqyBW9ApxUTggadwwCarNLYbYL5oGJLYzpPyXkQxyUP4H1aiK0MCkqjL5S5wh7nMk3hHgBHqXQ==
X-Received: by 2002:a2e:9b83:: with SMTP id z3mr15900283lji.84.1563259468199; 
 Mon, 15 Jul 2019 23:44:28 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 27sm3529993ljw.97.2019.07.15.23.44.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 23:44:27 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 05/19] drm/sun4i: drop use of drmP.h
Date: Tue, 16 Jul 2019 08:42:06 +0200
Message-Id: <20190716064220.18157-6-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190716064220.18157-1-sam@ravnborg.org>
References: <20190716064220.18157-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_234429_930388_91FAF497 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop use of the deprecated drmP.h header file.

While touching the list of include file, use the typical order of the
blocks:
\#include <linux/*>

\#include <video/*>

\#include <drm/*>

\#include ""

Within each block, sort the files.
Include necessary files to fix build after the drmP.h removal.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Acked-by: Emil Velikov <emil.velikov@collabora.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/sun4i/sun4i_backend.c     | 16 +++++++++-------
 drivers/gpu/drm/sun4i/sun4i_crtc.c        | 13 +++++++------
 drivers/gpu/drm/sun4i/sun4i_drv.c         |  5 ++++-
 drivers/gpu/drm/sun4i/sun4i_framebuffer.c |  1 -
 drivers/gpu/drm/sun4i/sun4i_frontend.c    | 10 +++++++---
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c    | 17 +++++++++--------
 drivers/gpu/drm/sun4i/sun4i_layer.c       |  3 +--
 drivers/gpu/drm/sun4i/sun4i_lvds.c        |  2 +-
 drivers/gpu/drm/sun4i/sun4i_rgb.c         |  2 +-
 drivers/gpu/drm/sun4i/sun4i_tcon.c        | 20 +++++++++++---------
 drivers/gpu/drm/sun4i/sun4i_tv.c          |  4 +++-
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c    |  9 +++++----
 drivers/gpu/drm/sun4i/sun8i_csc.c         |  2 +-
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c     |  3 +--
 drivers/gpu/drm/sun4i/sun8i_mixer.c       | 14 +++++++-------
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c    |  6 +++---
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c    |  2 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c    |  1 -
 18 files changed, 71 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_backend.c b/drivers/gpu/drm/sun4i/sun4i_backend.c
index 78d8c3afe825..4e29f4fe4a05 100644
--- a/drivers/gpu/drm/sun4i/sun4i_backend.c
+++ b/drivers/gpu/drm/sun4i/sun4i_backend.c
@@ -6,21 +6,23 @@
  * Maxime Ripard <maxime.ripard@free-electrons.com>
  */
 
-#include <drm/drmP.h>
+#include <linux/component.h>
+#include <linux/list.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/of_graph.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_fb_cma_helper.h>
+#include <drm/drm_fourcc.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
 
-#include <linux/component.h>
-#include <linux/list.h>
-#include <linux/of_device.h>
-#include <linux/of_graph.h>
-#include <linux/reset.h>
-
 #include "sun4i_backend.h"
 #include "sun4i_drv.h"
 #include "sun4i_frontend.h"
diff --git a/drivers/gpu/drm/sun4i/sun4i_crtc.c b/drivers/gpu/drm/sun4i/sun4i_crtc.c
index 9d8504f813a4..3a153648b369 100644
--- a/drivers/gpu/drm/sun4i/sun4i_crtc.c
+++ b/drivers/gpu/drm/sun4i/sun4i_crtc.c
@@ -6,12 +6,6 @@
  * Maxime Ripard <maxime.ripard@free-electrons.com>
  */
 
-#include <drm/drmP.h>
-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_crtc.h>
-#include <drm/drm_modes.h>
-#include <drm/drm_probe_helper.h>
-
 #include <linux/clk-provider.h>
 #include <linux/ioport.h>
 #include <linux/of_address.h>
@@ -21,6 +15,13 @@
 
 #include <video/videomode.h>
 
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_crtc.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_print.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_vblank.h>
+
 #include "sun4i_backend.h"
 #include "sun4i_crtc.h"
 #include "sun4i_drv.h"
diff --git a/drivers/gpu/drm/sun4i/sun4i_drv.c b/drivers/gpu/drm/sun4i/sun4i_drv.c
index d0fda2bf8224..a5757b11b730 100644
--- a/drivers/gpu/drm/sun4i/sun4i_drv.c
+++ b/drivers/gpu/drm/sun4i/sun4i_drv.c
@@ -8,16 +8,19 @@
 
 #include <linux/component.h>
 #include <linux/kfifo.h>
+#include <linux/module.h>
 #include <linux/of_graph.h>
 #include <linux/of_reserved_mem.h>
+#include <linux/platform_device.h>
 
-#include <drm/drmP.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_drv.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_vblank.h>
 
 #include "sun4i_drv.h"
 #include "sun4i_frontend.h"
diff --git a/drivers/gpu/drm/sun4i/sun4i_framebuffer.c b/drivers/gpu/drm/sun4i/sun4i_framebuffer.c
index 35c040716680..1568f68f9a9e 100644
--- a/drivers/gpu/drm/sun4i/sun4i_framebuffer.c
+++ b/drivers/gpu/drm/sun4i/sun4i_framebuffer.c
@@ -9,7 +9,6 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
-#include <drm/drmP.h>
 
 #include "sun4i_drv.h"
 #include "sun4i_framebuffer.h"
diff --git a/drivers/gpu/drm/sun4i/sun4i_frontend.c b/drivers/gpu/drm/sun4i/sun4i_frontend.c
index 346c8071bd38..ec2a032e07b9 100644
--- a/drivers/gpu/drm/sun4i/sun4i_frontend.c
+++ b/drivers/gpu/drm/sun4i/sun4i_frontend.c
@@ -3,9 +3,6 @@
  * Copyright (C) 2017 Free Electrons
  * Maxime Ripard <maxime.ripard@free-electrons.com>
  */
-#include <drm/drmP.h>
-#include <drm/drm_gem_cma_helper.h>
-#include <drm/drm_fb_cma_helper.h>
 
 #include <linux/clk.h>
 #include <linux/component.h>
@@ -16,6 +13,13 @@
 #include <linux/regmap.h>
 #include <linux/reset.h>
 
+#include <drm/drm_device.h>
+#include <drm/drm_fb_cma_helper.h>
+#include <drm/drm_fourcc.h>
+#include <drm/drm_framebuffer.h>
+#include <drm/drm_gem_cma_helper.h>
+#include <drm/drm_plane.h>
+
 #include "sun4i_drv.h"
 #include "sun4i_frontend.h"
 
diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
index 9c3f99339b82..b2df76addc75 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
@@ -5,23 +5,24 @@
  * Maxime Ripard <maxime.ripard@free-electrons.com>
  */
 
-#include <drm/drmP.h>
-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_probe_helper.h>
-#include <drm/drm_edid.h>
-#include <drm/drm_encoder.h>
-#include <drm/drm_of.h>
-#include <drm/drm_panel.h>
-
 #include <linux/clk.h>
 #include <linux/component.h>
 #include <linux/iopoll.h>
+#include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
 
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_edid.h>
+#include <drm/drm_encoder.h>
+#include <drm/drm_of.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_print.h>
+#include <drm/drm_probe_helper.h>
+
 #include "sun4i_backend.h"
 #include "sun4i_crtc.h"
 #include "sun4i_drv.h"
diff --git a/drivers/gpu/drm/sun4i/sun4i_layer.c b/drivers/gpu/drm/sun4i/sun4i_layer.c
index e72dd4de90ce..c04f4ba0d69d 100644
--- a/drivers/gpu/drm/sun4i/sun4i_layer.c
+++ b/drivers/gpu/drm/sun4i/sun4i_layer.c
@@ -7,9 +7,8 @@
  */
 
 #include <drm/drm_atomic_helper.h>
-#include <drm/drm_plane_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
-#include <drm/drmP.h>
+#include <drm/drm_plane_helper.h>
 
 #include "sun4i_backend.h"
 #include "sun4i_frontend.h"
diff --git a/drivers/gpu/drm/sun4i/sun4i_lvds.c b/drivers/gpu/drm/sun4i/sun4i_lvds.c
index 3a3ba99fed22..7fbf425acb55 100644
--- a/drivers/gpu/drm/sun4i/sun4i_lvds.c
+++ b/drivers/gpu/drm/sun4i/sun4i_lvds.c
@@ -6,10 +6,10 @@
 
 #include <linux/clk.h>
 
-#include <drm/drmP.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
 #include "sun4i_crtc.h"
diff --git a/drivers/gpu/drm/sun4i/sun4i_rgb.c b/drivers/gpu/drm/sun4i/sun4i_rgb.c
index a901ec689b62..aac56983f208 100644
--- a/drivers/gpu/drm/sun4i/sun4i_rgb.c
+++ b/drivers/gpu/drm/sun4i/sun4i_rgb.c
@@ -8,10 +8,10 @@
 
 #include <linux/clk.h>
 
-#include <drm/drmP.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
 #include "sun4i_crtc.h"
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 3e97953628ed..690aeb822704 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -6,7 +6,15 @@
  * Maxime Ripard <maxime.ripard@free-electrons.com>
  */
 
-#include <drm/drmP.h>
+#include <linux/component.h>
+#include <linux/ioport.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/of_irq.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_crtc.h>
@@ -14,18 +22,12 @@
 #include <drm/drm_modes.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_vblank.h>
 
 #include <uapi/drm/drm_mode.h>
 
-#include <linux/component.h>
-#include <linux/ioport.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
-#include <linux/of_irq.h>
-#include <linux/regmap.h>
-#include <linux/reset.h>
-
 #include "sun4i_crtc.h"
 #include "sun4i_dotclock.h"
 #include "sun4i_drv.h"
diff --git a/drivers/gpu/drm/sun4i/sun4i_tv.c b/drivers/gpu/drm/sun4i/sun4i_tv.c
index f998153c141f..39c15282e448 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tv.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tv.c
@@ -8,14 +8,16 @@
 
 #include <linux/clk.h>
 #include <linux/component.h>
+#include <linux/module.h>
 #include <linux/of_address.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
 
-#include <drm/drmP.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
 #include "sun4i_crtc.h"
diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index a1fc8b520985..472f73985deb 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -9,19 +9,20 @@
 #include <linux/clk.h>
 #include <linux/component.h>
 #include <linux/crc-ccitt.h>
+#include <linux/module.h>
 #include <linux/of_address.h>
+#include <linux/phy/phy-mipi-dphy.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
 
-#include <linux/phy/phy.h>
-#include <linux/phy/phy-mipi-dphy.h>
-
-#include <drm/drmP.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_panel.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
 #include "sun4i_crtc.h"
diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.c b/drivers/gpu/drm/sun4i/sun8i_csc.c
index b8c059f1a118..00706a494c89 100644
--- a/drivers/gpu/drm/sun4i/sun8i_csc.c
+++ b/drivers/gpu/drm/sun4i/sun8i_csc.c
@@ -3,7 +3,7 @@
  * Copyright (C) Jernej Skrabec <jernej.skrabec@siol.net>
  */
 
-#include <drm/drmP.h>
+#include <drm/drm_print.h>
 
 #include "sun8i_csc.h"
 #include "sun8i_mixer.h"
diff --git a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
index 39d8509d96a0..8ca5af0c912f 100644
--- a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
+++ b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
@@ -8,9 +8,8 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 
-#include <drm/drm_of.h>
-#include <drm/drmP.h>
 #include <drm/drm_crtc_helper.h>
+#include <drm/drm_of.h>
 
 #include "sun8i_dw_hdmi.h"
 #include "sun8i_tcon_top.h"
diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index c2eedf58bf4b..8b803eb903b8 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -7,7 +7,13 @@
  *   Copyright (C) 2015 NextThing Co
  */
 
-#include <drm/drmP.h>
+#include <linux/component.h>
+#include <linux/dma-mapping.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/of_graph.h>
+#include <linux/reset.h>
+
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_fb_cma_helper.h>
@@ -15,12 +21,6 @@
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
 
-#include <linux/component.h>
-#include <linux/dma-mapping.h>
-#include <linux/of_device.h>
-#include <linux/of_graph.h>
-#include <linux/reset.h>
-
 #include "sun4i_drv.h"
 #include "sun8i_mixer.h"
 #include "sun8i_ui_layer.h"
diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index 3267d0f9b9b2..75d8e60c149d 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -1,18 +1,18 @@
 // SPDX-License-Identifier: GPL-2.0+
 /* Copyright (c) 2018 Jernej Skrabec <jernej.skrabec@siol.net> */
 
-#include <drm/drmP.h>
-
-#include <dt-bindings/clock/sun8i-tcon-top.h>
 
 #include <linux/bitfield.h>
 #include <linux/component.h>
 #include <linux/device.h>
+#include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_graph.h>
 #include <linux/platform_device.h>
 
+#include <dt-bindings/clock/sun8i-tcon-top.h>
+
 #include "sun8i_tcon_top.h"
 
 struct sun8i_tcon_top_quirks {
diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index dd2a1c851939..c87fd842918e 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -13,11 +13,11 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_fb_cma_helper.h>
+#include <drm/drm_fourcc.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drmP.h>
 
 #include "sun8i_ui_layer.h"
 #include "sun8i_mixer.h"
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index bd0e6a52d1d8..1bdcbf53dd20 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -11,7 +11,6 @@
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drmP.h>
 
 #include "sun8i_vi_layer.h"
 #include "sun8i_mixer.h"
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
