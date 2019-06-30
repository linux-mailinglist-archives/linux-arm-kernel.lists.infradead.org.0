Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791455AF05
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 08:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0hsaY/+zccGIIEwYTHQYb+DnpzIheqKz/WPQPvfm0o=; b=KbvMxGTUUXXx51
	WnF0Z8IxthPTT3l0yYGtAtNKF1cl33QFkz+23oHwnnRRpi5Lhu5jU28FkT9nxxjmP7OZLW8PI/wic
	YoaXzGySSz1YwqRyl7tOhHF/wncGkg/SpAXq5MV37Kx/EIuDIT1v1K1UCQLjdBurB8vJVnXpodPyw
	+rdn27v/1PRDLiv8kv143R/lCqm6fV9Y/AaKgBgs4arzED6eKx8todaRY8YeVtcviKIw5p6Wh4RKw
	YwYomRn7N9f5ZDjk1MzPMCyNEetKCw3m99HQhEyxWFDk66vZzktZDfMbPRuegWeOnkXt0D/FtU7fs
	va8E5gmU3+VfHmNtzomA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhTD7-0003IA-Qc; Sun, 30 Jun 2019 06:21:13 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhTBc-0001Hp-Tc
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 06:19:43 +0000
Received: by mail-lf1-x141.google.com with SMTP id q26so6609904lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 23:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7wXwM7fqdTBGo6tfWxwxpmB5ZmEMVuXxgtQkmiK/Zro=;
 b=ivO5CZi4igGeXu2q3wWYMD4rkbt8SsC0NJKJkwvhbx6dSU/XYke/96XHhjVZxdKbfI
 CD9j0PIn4qIe8dDDnNt2HNa/z0qdEVzHHDCK44VrmbMXsMjWTpyNIf64PQTVYr0WGBzO
 DK41LdtXW0CPGRsQODCEPyUAowvHYdcMRDJooS8DhgtqqGCZjKDoaRJhAuaPOXeOIJgV
 Xkxi1Un/FBvGLfMyOe4xRhPfImC7ViKC5dy3CLS1ANBnT30L7iD//o6rBA+hGlg3j4Rl
 ZJ1kbO0C0blDJoyvRkR9nGeSdvINpqWPzo62xIpwxKlR2fGdf3CFQW0qQVO93/SoKR2m
 TTVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=7wXwM7fqdTBGo6tfWxwxpmB5ZmEMVuXxgtQkmiK/Zro=;
 b=GMDnb8vfg+CaLzZ0MFcUN1H65KDqW6UxRvcsI6WC+L7sz+vcxKT0JwbMOfD9JwKy6k
 4uKlEulzZLBI9f61TEpwSVV94UBDlMUZ5NFrT7tcISpWLiI3f+Tj7q5EpnJSzq5uFJZO
 U1S7ILJWxpdcHgNVJSWHzur9LgvrxF0/jRTtPPzweyi8q2STXfNQ2UiyZhHBwn3Bsk6O
 2Nx/2YJw8Tr2aLdG3odnY1dtel3LAP4WLaLXVb9UdvyXFBgUEbo3uLVbctuTRdOP/05R
 oHvi17sGukLA+GCredoN/aoHAM32dFV/KTrs1e8BSeCmeuW0ge5eXAAkArr4yMicaehx
 cwzg==
X-Gm-Message-State: APjAAAVeAw6v5rZ+rSXN+KRWF6D5M1rovc8FmUR4kuRqv4c/79G9Kavx
 fTQ87a3r5LmMiB87nnPHXPM=
X-Google-Smtp-Source: APXvYqzeki/XjF8pzHK9t+0W48bFHhqcpMyUiXCri6hry72iELvSCegSHno7Pahdn1qw/RHobBYgiA==
X-Received: by 2002:a05:6512:48e:: with SMTP id
 v14mr9035771lfq.130.1561875579390; 
 Sat, 29 Jun 2019 23:19:39 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 o74sm1794024lff.46.2019.06.29.23.19.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 23:19:39 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v1 11/33] drm/sun4i: drop use of drmP.h
Date: Sun, 30 Jun 2019 08:19:00 +0200
Message-Id: <20190630061922.7254-12-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190630061922.7254-1-sam@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_231941_116836_5491A33F 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: linux-arm-kernel@lists.infradead.org
---
The list of cc: was too large to add all recipients to the cover letter.
Please find cover letter here:
https://lists.freedesktop.org/archives/dri-devel/2019-June/thread.html
Search for "drm: drop use of drmp.h in drm-misc"

        Sam

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
