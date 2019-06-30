Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5838D5AEF4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 08:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FMxmHU2YQwFtY3dx5qUBmPZ3eJ1W+UhTPQk6o9NDr4=; b=VECoiR4I14ofdW
	bW6bQAAKj4xTOcE6QVydb5BjbQsjYOk15zHEwJQAcPN3nPUsfQWAsExBrmotzB+2qjcBAL55hq1cP
	SJrZyoo9UeKrKgiweEs5evQSVEh0IHU9NLLvubaT2hUDZcqYqj4ZWLXKv5a0wlP/ubBisRjBnLblq
	xLS1DzzWCy8Dh6NvJvomenLInT1UPHi0H5ft1e24s/+2X5sjAm5PG9W+IkgB9fji28ZvzyK7vNfJq
	DrsDwU83nWCQ5ZZE5KrI8C6nfo4RH1Vga4cM1+9Zzhg76b2ZSx0YXn79vHHPyiJTpLhaHSI66gCxT
	pvQ8F+bFQt8gFKAcLslg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhTCJ-0001U0-I0; Sun, 30 Jun 2019 06:20:23 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhTBW-0001FD-6R; Sun, 30 Jun 2019 06:19:37 +0000
Received: by mail-lf1-x142.google.com with SMTP id a25so6598682lfg.2;
 Sat, 29 Jun 2019 23:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nE71fWXWy1q2te2gygNRbEBDQI8PytSnI7zxvBAgKWU=;
 b=dVT31OEHcfSMQqy32jxrDxORD8Ag2RHXmDun3/tpIvpc+Ngd6Nmz+ubXqe4ePPZUBf
 M9DIjZ0S9c45Y/7LEJCdd+SST7x1mDbCr7/NFge9ndG0eqBdo89MF4CbJboHuESVoppz
 q9GVLaPYwQQ06SBinw0BSVUc4X99qvQGlg0cgr+ffBmET1DgzMtdRCUzSDwVzcpmInp+
 oZs6ryNXSRbKA5Jp2RkCLSuyCrJXdJ4fP/TgafRFQ8R1xPwu0BumRGTxmFtYPdCPEsEu
 E0b+Cpg9RbYcRNbCK3xFftqxyx5yHNhc03vEFzBlwfN49aZaKr3DM0NpvpRyRD85eprC
 OGAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=nE71fWXWy1q2te2gygNRbEBDQI8PytSnI7zxvBAgKWU=;
 b=NwMa0kuaH/jm18YBRgTODrkRDFqM3WizxBE/kF7mVa7ea1fbfCVbuQ3A+m3sGFRcYU
 zkasmtOnCiYK1ARkr5KmYpKchagOHuTz99emaWeZdEuAZIpg/6SbOXp8j6ksTKc9ZJRm
 ba8E1UwMghp+PCvVVbPw4YwDkIt7AanvtCD+SYF5IdYyh8cKOxra6m0mj9ZMVO7POkHO
 uDHrZ6s9DxN9Xqf6IxBni26UzKBdpMZxrU3wYuxVwLi4tOFr19p/ZNgXZXH/dFgFeG6+
 T0xw7WOsyHy0nl8eG45/0rPaFAeHaQ3LWWol4SqNnL/oTORQ15w45C/PrE/9rUrp7n8P
 +cjg==
X-Gm-Message-State: APjAAAUfatvtxQUkkLiWpmWY65JjHF8XrJQK6n3FZE7N3NKRVrPNd164
 qqGBnoJ6I0nBTzof/Xe2sHk=
X-Google-Smtp-Source: APXvYqyiQRKfvL7Qni7ySo20VAQbKO9DYfbT7gNCHipoMILL4jiqqsbOn0b4vRauBQmoBHwbXo9W5g==
X-Received: by 2002:ac2:52ac:: with SMTP id r12mr9600922lfm.126.1561875569436; 
 Sat, 29 Jun 2019 23:19:29 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 o74sm1794024lff.46.2019.06.29.23.19.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 23:19:28 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v1 01/33] drm/meson: drop use of drmP.h
Date: Sun, 30 Jun 2019 08:18:50 +0200
Message-Id: <20190630061922.7254-2-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190630061922.7254-1-sam@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_231934_272067_73F71F63 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-amlogic@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop use of the deprecated drmP.h header.
While doing so used the opportunity
to clean up a little so includes are now
sorted and removed unused include files.
In a few cases added some forwards to allow header
files to built in different include order.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: Maxime Jourdan <mjourdan@baylibre.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
---
The list of cc: was too large to add all recipients to the cover letter.
Please find cover letter here:
https://lists.freedesktop.org/archives/dri-devel/2019-June/thread.html
Search for "drm: drop use of drmp.h in drm-misc"

	Sam

 drivers/gpu/drm/meson/meson_crtc.c       | 16 ++++++--------
 drivers/gpu/drm/meson/meson_drv.c        | 27 ++++++++++--------------
 drivers/gpu/drm/meson/meson_drv.h        | 11 ++++++----
 drivers/gpu/drm/meson/meson_dw_hdmi.c    | 19 +++++++++--------
 drivers/gpu/drm/meson/meson_overlay.c    | 13 +++++-------
 drivers/gpu/drm/meson/meson_plane.c      | 16 ++++++--------
 drivers/gpu/drm/meson/meson_registers.h  |  2 ++
 drivers/gpu/drm/meson/meson_vclk.c       |  7 +++---
 drivers/gpu/drm/meson/meson_vclk.h       |  4 ++++
 drivers/gpu/drm/meson/meson_venc.c       | 10 ++++-----
 drivers/gpu/drm/meson/meson_venc.h       |  2 ++
 drivers/gpu/drm/meson/meson_venc_cvbs.c  | 11 +++++-----
 drivers/gpu/drm/meson/meson_viu.c        |  7 ++----
 drivers/gpu/drm/meson/meson_vpp.c        |  7 +++---
 drivers/gpu/drm/meson/meson_vpp.h        |  3 +++
 include/linux/soc/amlogic/meson-canvas.h |  1 +
 16 files changed, 77 insertions(+), 79 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
index aa8ea107524e..3320a74e67fa 100644
--- a/drivers/gpu/drm/meson/meson_crtc.c
+++ b/drivers/gpu/drm/meson/meson_crtc.c
@@ -9,23 +9,21 @@
  *     Jasper St. Pierre <jstpierre@mecheye.net>
  */
 
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/mutex.h>
-#include <linux/platform_device.h>
 #include <linux/bitfield.h>
-#include <drm/drmP.h>
-#include <drm/drm_atomic.h>
+#include <linux/soc/amlogic/meson-canvas.h>
+
 #include <drm/drm_atomic_helper.h>
-#include <drm/drm_flip_work.h>
+#include <drm/drm_device.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_vblank.h>
 
 #include "meson_crtc.h"
 #include "meson_plane.h"
+#include "meson_registers.h"
 #include "meson_venc.h"
-#include "meson_vpp.h"
 #include "meson_viu.h"
-#include "meson_registers.h"
+#include "meson_vpp.h"
 
 #define MESON_G12A_VIU_OFFSET	0x5ec0
 
diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index 37dca83d6eb1..42af49afdd75 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -8,35 +8,30 @@
  *     Jasper St. Pierre <jstpierre@mecheye.net>
  */
 
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/mutex.h>
-#include <linux/platform_device.h>
 #include <linux/component.h>
+#include <linux/module.h>
 #include <linux/of_graph.h>
+#include <linux/platform_device.h>
+#include <linux/soc/amlogic/meson-canvas.h>
 
-#include <drm/drmP.h>
-#include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
-#include <drm/drm_fb_cma_helper.h>
+#include <drm/drm_drv.h>
 #include <drm/drm_fb_helper.h>
-#include <drm/drm_flip_work.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
-#include <drm/drm_plane_helper.h>
+#include <drm/drm_irq.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drm_rect.h>
+#include <drm/drm_vblank.h>
 
+#include "meson_crtc.h"
 #include "meson_drv.h"
-#include "meson_plane.h"
 #include "meson_overlay.h"
-#include "meson_crtc.h"
+#include "meson_plane.h"
+#include "meson_registers.h"
 #include "meson_venc_cvbs.h"
-
-#include "meson_vpp.h"
 #include "meson_viu.h"
-#include "meson_venc.h"
-#include "meson_registers.h"
+#include "meson_vpp.h"
 
 #define DRIVER_NAME "meson"
 #define DRIVER_DESC "Amlogic Meson DRM driver"
diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
index 7b6593f33dfe..c9aaec1a846e 100644
--- a/drivers/gpu/drm/meson/meson_drv.h
+++ b/drivers/gpu/drm/meson/meson_drv.h
@@ -7,11 +7,14 @@
 #ifndef __MESON_DRV_H
 #define __MESON_DRV_H
 
-#include <linux/platform_device.h>
-#include <linux/regmap.h>
+#include <linux/device.h>
 #include <linux/of.h>
-#include <linux/soc/amlogic/meson-canvas.h>
-#include <drm/drmP.h>
+#include <linux/regmap.h>
+
+struct drm_crtc;
+struct drm_device;
+struct drm_plane;
+struct meson_drm;
 
 struct meson_drm {
 	struct device *dev;
diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
index df3f9ddd2234..9f0b08eaf003 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
@@ -5,29 +5,30 @@
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
  */
 
+#include <linux/clk.h>
+#include <linux/component.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/component.h>
 #include <linux/of_device.h>
 #include <linux/of_graph.h>
-#include <linux/reset.h>
-#include <linux/clk.h>
 #include <linux/regulator/consumer.h>
+#include <linux/reset.h>
 
-#include <drm/drmP.h>
+#include <drm/bridge/dw_hdmi.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_device.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/bridge/dw_hdmi.h>
+#include <drm/drm_print.h>
 
-#include <uapi/linux/media-bus-format.h>
-#include <uapi/linux/videodev2.h>
+#include <linux/media-bus-format.h>
+#include <linux/videodev2.h>
 
 #include "meson_drv.h"
-#include "meson_venc.h"
-#include "meson_vclk.h"
 #include "meson_dw_hdmi.h"
 #include "meson_registers.h"
+#include "meson_vclk.h"
+#include "meson_venc.h"
 
 #define DRIVER_NAME "meson-dw-hdmi"
 #define DRIVER_DESC "Amlogic Meson HDMI-TX DRM driver"
diff --git a/drivers/gpu/drm/meson/meson_overlay.c b/drivers/gpu/drm/meson/meson_overlay.c
index cc7c6ae3013d..5aa9dcb4b35e 100644
--- a/drivers/gpu/drm/meson/meson_overlay.c
+++ b/drivers/gpu/drm/meson/meson_overlay.c
@@ -5,24 +5,21 @@
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
  */
 
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/mutex.h>
 #include <linux/bitfield.h>
-#include <linux/platform_device.h>
-#include <drm/drmP.h>
+
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_device.h>
+#include <drm/drm_fourcc.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
-#include <drm/drm_rect.h>
 
 #include "meson_overlay.h"
-#include "meson_vpp.h"
-#include "meson_viu.h"
 #include "meson_registers.h"
+#include "meson_viu.h"
+#include "meson_vpp.h"
 
 /* VD1_IF0_GEN_REG */
 #define VD_URGENT_CHROMA		BIT(28)
diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
index 7a7e88dadd0b..80b8d70c4d75 100644
--- a/drivers/gpu/drm/meson/meson_plane.c
+++ b/drivers/gpu/drm/meson/meson_plane.c
@@ -9,24 +9,20 @@
  *     Jasper St. Pierre <jstpierre@mecheye.net>
  */
 
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/mutex.h>
 #include <linux/bitfield.h>
-#include <linux/platform_device.h>
-#include <drm/drmP.h>
+
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
-#include <drm/drm_plane_helper.h>
-#include <drm/drm_gem_cma_helper.h>
+#include <drm/drm_device.h>
 #include <drm/drm_fb_cma_helper.h>
+#include <drm/drm_fourcc.h>
+#include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
-#include <drm/drm_rect.h>
+#include <drm/drm_plane_helper.h>
 
 #include "meson_plane.h"
-#include "meson_vpp.h"
-#include "meson_viu.h"
 #include "meson_registers.h"
+#include "meson_viu.h"
 
 /* OSD_SCI_WH_M1 */
 #define SCI_WH_M1_W(w)			FIELD_PREP(GENMASK(28, 16), w)
diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index 410e324d6f93..057453ce027c 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -6,6 +6,8 @@
 #ifndef __MESON_REGISTERS_H
 #define __MESON_REGISTERS_H
 
+#include <linux/io.h>
+
 /* Shift all registers by 2 */
 #define _REG(reg)	((reg) << 2)
 
diff --git a/drivers/gpu/drm/meson/meson_vclk.c b/drivers/gpu/drm/meson/meson_vclk.c
index 26732f038d19..8abff51f937d 100644
--- a/drivers/gpu/drm/meson/meson_vclk.c
+++ b/drivers/gpu/drm/meson/meson_vclk.c
@@ -5,9 +5,10 @@
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
  */
 
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <drm/drmP.h>
+#include <linux/export.h>
+
+#include <drm/drm_print.h>
+
 #include "meson_drv.h"
 #include "meson_vclk.h"
 
diff --git a/drivers/gpu/drm/meson/meson_vclk.h b/drivers/gpu/drm/meson/meson_vclk.h
index ed993d20abda..b62125540aef 100644
--- a/drivers/gpu/drm/meson/meson_vclk.h
+++ b/drivers/gpu/drm/meson/meson_vclk.h
@@ -9,6 +9,10 @@
 #ifndef __MESON_VCLK_H
 #define __MESON_VCLK_H
 
+#include <drm/drm_modes.h>
+
+struct meson_drm;
+
 enum {
 	MESON_VCLK_TARGET_CVBS = 0,
 	MESON_VCLK_TARGET_HDMI = 1,
diff --git a/drivers/gpu/drm/meson/meson_venc.c b/drivers/gpu/drm/meson/meson_venc.c
index 7b7a0d8d737c..3d4791798ae0 100644
--- a/drivers/gpu/drm/meson/meson_venc.c
+++ b/drivers/gpu/drm/meson/meson_venc.c
@@ -5,14 +5,14 @@
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
  */
 
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <drm/drmP.h>
+#include <linux/export.h>
+
+#include <drm/drm_modes.h>
+
 #include "meson_drv.h"
+#include "meson_registers.h"
 #include "meson_venc.h"
 #include "meson_vpp.h"
-#include "meson_vclk.h"
-#include "meson_registers.h"
 
 /**
  * DOC: Video Encoder
diff --git a/drivers/gpu/drm/meson/meson_venc.h b/drivers/gpu/drm/meson/meson_venc.h
index 985642a1678e..576768bdd08d 100644
--- a/drivers/gpu/drm/meson/meson_venc.h
+++ b/drivers/gpu/drm/meson/meson_venc.h
@@ -14,6 +14,8 @@
 #ifndef __MESON_VENC_H
 #define __MESON_VENC_H
 
+struct drm_display_mode;
+
 enum {
 	MESON_VENC_MODE_NONE = 0,
 	MESON_VENC_MODE_CVBS_PAL,
diff --git a/drivers/gpu/drm/meson/meson_venc_cvbs.c b/drivers/gpu/drm/meson/meson_venc_cvbs.c
index 6313a519f257..45a467f10b9b 100644
--- a/drivers/gpu/drm/meson/meson_venc_cvbs.c
+++ b/drivers/gpu/drm/meson/meson_venc_cvbs.c
@@ -9,19 +9,18 @@
  *     Jasper St. Pierre <jstpierre@mecheye.net>
  */
 
-#include <linux/kernel.h>
-#include <linux/module.h>
+#include <linux/export.h>
 #include <linux/of_graph.h>
 
-#include <drm/drmP.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_device.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_print.h>
 
-#include "meson_venc_cvbs.h"
-#include "meson_venc.h"
-#include "meson_vclk.h"
 #include "meson_registers.h"
+#include "meson_vclk.h"
+#include "meson_venc_cvbs.h"
 
 /* HHI VDAC Registers */
 #define HHI_VDAC_CNTL0		0x2F4 /* 0xbd offset in data sheet */
diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
index 4b2b3024d371..9f8a450d50d5 100644
--- a/drivers/gpu/drm/meson/meson_viu.c
+++ b/drivers/gpu/drm/meson/meson_viu.c
@@ -6,13 +6,10 @@
  * Copyright (C) 2014 Endless Mobile
  */
 
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <drm/drmP.h>
+#include <linux/export.h>
+
 #include "meson_drv.h"
 #include "meson_viu.h"
-#include "meson_vpp.h"
-#include "meson_venc.h"
 #include "meson_registers.h"
 
 /**
diff --git a/drivers/gpu/drm/meson/meson_vpp.c b/drivers/gpu/drm/meson/meson_vpp.c
index bfee30fa6e34..cbe6cf46e541 100644
--- a/drivers/gpu/drm/meson/meson_vpp.c
+++ b/drivers/gpu/drm/meson/meson_vpp.c
@@ -6,12 +6,11 @@
  * Copyright (C) 2014 Endless Mobile
  */
 
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <drm/drmP.h>
+#include <linux/export.h>
+
 #include "meson_drv.h"
-#include "meson_vpp.h"
 #include "meson_registers.h"
+#include "meson_vpp.h"
 
 /**
  * DOC: Video Post Processing
diff --git a/drivers/gpu/drm/meson/meson_vpp.h b/drivers/gpu/drm/meson/meson_vpp.h
index 9fc82db8a12d..afc9553ed8d3 100644
--- a/drivers/gpu/drm/meson/meson_vpp.h
+++ b/drivers/gpu/drm/meson/meson_vpp.h
@@ -9,6 +9,9 @@
 #ifndef __MESON_VPP_H
 #define __MESON_VPP_H
 
+struct drm_rect;
+struct meson_drm;
+
 /* Mux VIU/VPP to ENCI */
 #define MESON_VIU_VPP_MUX_ENCI	0x5
 /* Mux VIU/VPP to ENCP */
diff --git a/include/linux/soc/amlogic/meson-canvas.h b/include/linux/soc/amlogic/meson-canvas.h
index b4dde2fbeb3f..0cb2a6050d1f 100644
--- a/include/linux/soc/amlogic/meson-canvas.h
+++ b/include/linux/soc/amlogic/meson-canvas.h
@@ -20,6 +20,7 @@
 #define MESON_CANVAS_ENDIAN_SWAP64	0x7
 #define MESON_CANVAS_ENDIAN_SWAP128	0xf
 
+struct device;
 struct meson_canvas;
 
 /**
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
