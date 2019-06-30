Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 770255AF09
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 08:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDIQrYmrM2NJJn2xLXXpfZvJEppsBuy05XuKlmhwuP8=; b=cJFHjK9d5NCQTl
	/Qs9kepX1+IQmVcAOirgMgorakTJTzdu0yDO1CErXRIjihmwuuvTPFzFo3qEwe8/M86wuIC5kzzoR
	7dDDPxfaoetRM/HJwHYzTNyemZDkVlExkSKqQgq9vC4KBsksK2ldGVDslpmukpjDD9OhPXGy5C4bT
	fSW4B33//AP6ivjiUvLAQ8iHC89yFoZUr8F3ypmHhmFcQ3HFGNJ9sFHy1f55DWLK6ca1b4FQv+s8J
	OfakA53nTf8djWOrv1yXd40J93KDnDj1u4/3gEoG4SMVraG0Mxs/T93Fgl1perq1L02GJlVC+YklT
	ifMPo5OeUggEAfL7eNmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhTE2-00044c-5A; Sun, 30 Jun 2019 06:22:10 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhTBr-0001Tq-Uz
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 06:19:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id x25so9837042ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 23:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eWgFXlxiXWxiVuhf1pMNNX46w0Lz2Jf2bQaIATSKqzY=;
 b=jytZ6GK6THCGiNNYpVsFiTXsidHLZqgNMijxn1hPCylJBVprSli3oORzbUDyRDJgG9
 9vdVtn1Ogz6tNlCs5ivKmzWltS7HdLrgNyvdFKu9AolZcVwVrLJE7F5/bByjGFPotM0V
 E/I2vI7434TO2kFHC6T+JvF2FbDDTey6TjVO0pwIeWQxlYRj7n4jjLplguhiRzfGxKuS
 sEWB44hheEkNW79TR6qXHhSPh7/A4jG9uei6EDtbXEWiAYt+BMMoL6dZGieOGxNyoL5K
 4HKtr36YUA7FurGBwHx9ysz54oVYder5w6wrhluVWMFtV5PtvMus4oPncamLrlnqL91c
 Ri+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=eWgFXlxiXWxiVuhf1pMNNX46w0Lz2Jf2bQaIATSKqzY=;
 b=DRIceSJIIpUFSRg/ocRMm4CaDqsyb7UQzZ/MPpaYeMbfAjUPPT6223oRnXAz3rkeUq
 qNcOvY895mWqb0657fwRGbePNq6YsxIX9JIj+93khIpWhHXTwzIHC++kIHsEUobTbKLE
 qf9kW6jIPZLK4qqI6UeTdeg3Qp3rvugpVpAizgjOdY5Ay6zXT6FA7NBXina/XA2jZ9Ff
 XF54YCEtkgKd3rbVwLnSKddCo9lu1Z/qNc0IJb/coQU0zthU1HLAFO4O5tXWPEJqVaHw
 jumUye3lQ2pf5fl3j0aG4eWb17n3bIjIwnks2HTx1QS2/Zpqs+a6lNp2Cb6F8Vce2dpl
 aEUw==
X-Gm-Message-State: APjAAAUqRZHn3kMWmQ2l23ZfwgUZLUO9MJK/McBVaPcrPWaz3Zqu40Bj
 Ka6nx8vY6gSsd6IrAcGHiRY=
X-Google-Smtp-Source: APXvYqwnMy+4FNR2jTBN7GiUWx8k8UKr0uvpy3pfZvzN63D9okXr5L9NI8v7IAr9WW2XhXoUoMLaaw==
X-Received: by 2002:a2e:3013:: with SMTP id w19mr10614841ljw.73.1561875594446; 
 Sat, 29 Jun 2019 23:19:54 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 o74sm1794024lff.46.2019.06.29.23.19.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 23:19:54 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v1 26/33] drm/imx: drop use of drmP.h
Date: Sun, 30 Jun 2019 08:19:15 +0200
Message-Id: <20190630061922.7254-27-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190630061922.7254-1-sam@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_231956_118742_8E52014B 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop use of the deprecated drmP.h header file.
While touching the include files divide them in blocks and sort the
include files within each block.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
The list of cc: was too large to add all recipients to the cover letter.
Please find cover letter here:
https://lists.freedesktop.org/archives/dri-devel/2019-June/thread.html
Search for "drm: drop use of drmp.h in drm-misc"

        Sam

 drivers/gpu/drm/imx/dw_hdmi-imx.c      | 14 ++++++++------
 drivers/gpu/drm/imx/imx-drm-core.c     |  8 ++++++--
 drivers/gpu/drm/imx/imx-ldb.c          | 22 ++++++++++++----------
 drivers/gpu/drm/imx/imx-tve.c          | 10 ++++++----
 drivers/gpu/drm/imx/ipuv3-crtc.c       |  8 ++++++--
 drivers/gpu/drm/imx/ipuv3-plane.c      |  5 +++--
 drivers/gpu/drm/imx/parallel-display.c |  8 +++++---
 7 files changed, 46 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/imx/dw_hdmi-imx.c b/drivers/gpu/drm/imx/dw_hdmi-imx.c
index 06393cd1067d..5a3ad6fc8ea7 100644
--- a/drivers/gpu/drm/imx/dw_hdmi-imx.c
+++ b/drivers/gpu/drm/imx/dw_hdmi-imx.c
@@ -3,19 +3,21 @@
  *
  * derived from imx-hdmi.c(renamed to bridge/dw_hdmi.c now)
  */
-#include <linux/module.h>
-#include <linux/platform_device.h>
+
 #include <linux/component.h>
 #include <linux/mfd/syscon.h>
 #include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
-#include <drm/bridge/dw_hdmi.h>
-#include <video/imx-ipu-v3.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
-#include <drm/drm_of.h>
-#include <drm/drmP.h>
+
+#include <video/imx-ipu-v3.h>
+
+#include <drm/bridge/dw_hdmi.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_encoder_slave.h>
+#include <drm/drm_of.h>
 
 #include "imx-drm.h"
 
diff --git a/drivers/gpu/drm/imx/imx-drm-core.c b/drivers/gpu/drm/imx/imx-drm-core.c
index bdefaa1635eb..da87c70e413b 100644
--- a/drivers/gpu/drm/imx/imx-drm-core.c
+++ b/drivers/gpu/drm/imx/imx-drm-core.c
@@ -4,14 +4,18 @@
  *
  * Copyright (C) 2011 Sascha Hauer, Pengutronix
  */
+
 #include <linux/component.h>
 #include <linux/device.h>
 #include <linux/dma-buf.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
-#include <drm/drmP.h>
+
+#include <video/imx-ipu-v3.h>
+
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_drv.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_cma_helper.h>
@@ -19,7 +23,7 @@
 #include <drm/drm_of.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
-#include <video/imx-ipu-v3.h>
+#include <drm/drm_vblank.h>
 
 #include "imx-drm.h"
 #include "ipuv3-plane.h"
diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
index 383733302280..de62a4cd4827 100644
--- a/drivers/gpu/drm/imx/imx-ldb.c
+++ b/drivers/gpu/drm/imx/imx-ldb.c
@@ -5,25 +5,27 @@
  * Copyright (C) 2012 Sascha Hauer, Pengutronix
  */
 
-#include <linux/module.h>
 #include <linux/clk.h>
 #include <linux/component.h>
-#include <drm/drmP.h>
-#include <drm/drm_atomic.h>
-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_fb_helper.h>
-#include <drm/drm_of.h>
-#include <drm/drm_panel.h>
-#include <drm/drm_probe_helper.h>
 #include <linux/mfd/syscon.h>
 #include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
+#include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_graph.h>
-#include <video/of_display_timing.h>
-#include <video/of_videomode.h>
 #include <linux/regmap.h>
 #include <linux/videodev2.h>
 
+#include <video/of_display_timing.h>
+#include <video/of_videomode.h>
+
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_fb_helper.h>
+#include <drm/drm_of.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_print.h>
+#include <drm/drm_probe_helper.h>
+
 #include "imx-drm.h"
 
 #define DRIVER_NAME "imx-ldb"
diff --git a/drivers/gpu/drm/imx/imx-tve.c b/drivers/gpu/drm/imx/imx-tve.c
index e725af8a0025..649515868f86 100644
--- a/drivers/gpu/drm/imx/imx-tve.c
+++ b/drivers/gpu/drm/imx/imx-tve.c
@@ -5,20 +5,22 @@
  * Copyright (C) 2013 Philipp Zabel, Pengutronix
  */
 
-#include <linux/clk.h>
 #include <linux/clk-provider.h>
+#include <linux/clk.h>
 #include <linux/component.h>
-#include <linux/module.h>
 #include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/spinlock.h>
 #include <linux/videodev2.h>
-#include <drm/drmP.h>
+
+#include <video/imx-ipu-v3.h>
+
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_probe_helper.h>
-#include <video/imx-ipu-v3.h>
 
 #include "imx-drm.h"
 
diff --git a/drivers/gpu/drm/imx/ipuv3-crtc.c b/drivers/gpu/drm/imx/ipuv3-crtc.c
index 9cc1d678674f..4b575450c127 100644
--- a/drivers/gpu/drm/imx/ipuv3-crtc.c
+++ b/drivers/gpu/drm/imx/ipuv3-crtc.c
@@ -4,21 +4,25 @@
  *
  * Copyright (C) 2011 Sascha Hauer, Pengutronix
  */
+
 #include <linux/clk.h>
 #include <linux/component.h>
 #include <linux/device.h>
+#include <linux/dma-mapping.h>
 #include <linux/errno.h>
 #include <linux/export.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
-#include <drm/drmP.h>
+
+#include <video/imx-ipu-v3.h>
+
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_vblank.h>
 
-#include <video/imx-ipu-v3.h>
 #include "imx-drm.h"
 #include "ipuv3-plane.h"
 
diff --git a/drivers/gpu/drm/imx/ipuv3-plane.c b/drivers/gpu/drm/imx/ipuv3-plane.c
index 2c19054ed570..8bb1c4c96d20 100644
--- a/drivers/gpu/drm/imx/ipuv3-plane.c
+++ b/drivers/gpu/drm/imx/ipuv3-plane.c
@@ -5,15 +5,16 @@
  * Copyright (C) 2013 Philipp Zabel, Pengutronix
  */
 
-#include <drm/drmP.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fb_cma_helper.h>
+#include <drm/drm_fourcc.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_plane_helper.h>
 
-#include "video/imx-ipu-v3.h"
+#include <video/imx-ipu-v3.h>
+
 #include "imx-drm.h"
 #include "ipuv3-plane.h"
 
diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index 1a76de1e8e7b..2e51b2fade75 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -7,14 +7,16 @@
 
 #include <linux/component.h>
 #include <linux/module.h>
-#include <drm/drmP.h>
+#include <linux/platform_device.h>
+#include <linux/videodev2.h>
+
+#include <video/of_display_timing.h>
+
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 #include <drm/drm_probe_helper.h>
-#include <linux/videodev2.h>
-#include <video/of_display_timing.h>
 
 #include "imx-drm.h"
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
