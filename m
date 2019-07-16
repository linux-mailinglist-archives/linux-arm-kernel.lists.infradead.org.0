Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9316A266
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 08:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMtLa10it67Tpy1qJIFuuM9C8aAz13L/pmXHefFzeM4=; b=eE1Y4N7S//Vxiy
	Q56YsHFAwX1Zv0c27F8nGiRL8s76fT8n9RWjYbm4C0NnWlZJrx1SeXVMpPeRZg/hxQI4T52QljI85
	PQcReNtfF4c04wmYilicuDzCzolUMLySApRwaaUCvBb9uCbvtRRpISjPQ17FSUqlvweOHuknIW6TD
	K82PWd2kYgLc/mSHc22NKp7Hi39ynWGsgCO9mlsIJWGJSGl+Yp6yDC0EphJKSIBzNFjGa/xbXYU+e
	mNKyR+m3NFubsNpHdcG0DlcnjPVjMPA4icxoof5x1K7zBngc7QrbwzCvThsJ7fqFyf2UBRP2bGfwa
	CHgfTuT99dQs6h5FGDeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHDM-00020Y-68; Tue, 16 Jul 2019 06:45:28 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHCy-0001HT-HM
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 06:45:07 +0000
Received: by mail-lf1-x142.google.com with SMTP id z15so8521794lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 23:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=olSR7RZOrLMiyQcsktyLwT2ru8FUZErpgyrqij0qTXA=;
 b=dOjfPI9jVqefnIuMdCWYgZtTlS2Rw7wXqBP4qGy/SWFkuCXdAQCnKIysUhcLqgX4WU
 /0FgZA+Lv+G2Qr9Dcs+/Yjn9wUnSA9H98o1lnTapc50tOP/FQqznqdYSdEnyHrrjAlxL
 +Ba3hgIumQTEJNQEzvP778Rx8DPFDCCnC67esnXyZ+DKLAm0jfngnqoRZZyOz+gRHlcw
 9zvpYX73vWS4UzMXTariB734Zei6mpec230C5QFNZ2eUbwt5Eoi0aca1SUmzu2LEF8YZ
 AXWL/nyBDBAQMQFsl/IxcJL5bIrtVo5ft+Mh0XDBnX1iV4aoyvk8x6e6B/eINaLPWgeH
 Mzow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=olSR7RZOrLMiyQcsktyLwT2ru8FUZErpgyrqij0qTXA=;
 b=eNc9gVfa1kdwIMHMTJVpSaqpYxiweL8bbyp7wV610KKaYy6NmZkmj6g7jIIUN5QMUi
 JI5iVYD3Vgc7jgp+/pD7JTRs0ldnB/O7ODOoniSZMbFRH4qiD/AvO42CzcLGSdzKIvaT
 TpRJ/+0YFDc43tg/vlQ2hjNqswwGQtQmHOE2ZxrzEORFwAKs+Eb32Cra7+RH6gp3Kuhd
 41dFDuHIIfHUH6VEKH/e6oEUKxYfAJrHdqbWc52Vwo5UzYT339qM/PwBhYkGbECud9zV
 gXyyUtk9Q1zANVo3y7TdieUIsLrkt6NzZI/Xn7NHvH1heFRN/Wk7VGDTaeSojRVIJdsh
 o1Bw==
X-Gm-Message-State: APjAAAUduwvNUrBOtDgWoZ+IFQhRitdSfndWkYWdIxScnzSPuMVdcbaa
 AE1GmdUb8Mu+tiKyfD5H034=
X-Google-Smtp-Source: APXvYqx4neeaIFseUrKMt/U3gbDO3QMIXRR2XgOhFc6ACX8VF9GFnzgNbHjlEK2QIoXierJO1J8P3Q==
X-Received: by 2002:ac2:5601:: with SMTP id v1mr13966440lfd.106.1563259502877; 
 Mon, 15 Jul 2019 23:45:02 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 27sm3529993ljw.97.2019.07.15.23.45.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 23:45:02 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 17/19] drm/imx: drop use of drmP.h
Date: Tue, 16 Jul 2019 08:42:18 +0200
Message-Id: <20190716064220.18157-18-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190716064220.18157-1-sam@ravnborg.org>
References: <20190716064220.18157-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_234505_415057_42E4DC7B 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop use of the deprecated drmP.h header file.
While touching the include files divide them in blocks and sort the
include files within each block.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Acked-by: Emil Velikov <emil.velikov@collabora.com>
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
