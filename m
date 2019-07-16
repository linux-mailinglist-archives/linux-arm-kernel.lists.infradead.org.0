Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D836A267
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 08:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jNDYRWkCanebjJrTOun9QGio8mHJSjoJRN0jbrpU5zo=; b=QH2Uws88ic9EyZ
	ZimhY/0C2Dsw8TsxeqOOpvvnrWdlR+WyKnr96/dMusoaL0ZJFWlM3IU/YQrP5bSUpSgxZF8r1us4q
	NID++vkqz98AqvcgmVEi2YDn+uCyZDz+JTPaWmk/Y9gp782iwkmMeUcqtrMIgLxB/7TVnxB+q7MUL
	zxmLOz+QdhKF8VPg1O6tW6olkGbaLR7c0kAYMnSvAA0NqT2YhT4BcYPu1SfZH+9MRibyljT313BxZ
	RzQzp5TTs5so7RKmYdhdpziKqjWktKxERLtGSntpaHNS0XMqH+xJx4jGBKa+I3+DeJRH4GUynCFhC
	5e5NrMI9oO+s4R1wq6Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHDq-0002Z7-9v; Tue, 16 Jul 2019 06:45:58 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHD0-0001b3-Pm; Tue, 16 Jul 2019 06:45:12 +0000
Received: by mail-lj1-x243.google.com with SMTP id k18so18752668ljc.11;
 Mon, 15 Jul 2019 23:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9Zj5nDAMrguYIvVx0TAurwL9zXQ93o0rmMPpsTbCSA8=;
 b=LjzsTaoX7xQ5t/aLZJyhY3rR3IdggIfUiVlqSdy3M+WR4MEmrozKckWnw0vypOtFsD
 QfVPZjoEaVII1oWdeehGH4tElX6nvFEZZ8vMhSFk2Jp+z8YvqLqofuthaA8jX0yt0UBx
 w+PYzt7XLySKwEaVwEMX3THK8vxhokKIRPErzj6sPqUIiFWcS/kSYUARDVEZwqTMekrV
 DMJxr3fyN4QXOkpj0c6mB4l86U6TNiBT5fXUanvkZijK3iSYue+awQM5kL0vXqgeMFfq
 PKyYrcF9YhhgA9OLUW2xyLPz8+dmmmeV2KGUdPEZj87mDI4PZ1545YIODsp22wHq5hbd
 jkXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=9Zj5nDAMrguYIvVx0TAurwL9zXQ93o0rmMPpsTbCSA8=;
 b=KZ2AfqNwFcT59EnSsQQKUR0cpoTTTnxvx9WWmVZ9ls2nOtt3uLsJZ3LaXuXpdC9lSs
 Xx+PBbMRhSuwWXlviDaZM2Nwy3WpFv9Ut/ZfUYzosrTAYJKQzd+EnNp7/FXhB74dkSM/
 /pY4M6XdNaBPRD525vZWs3CtpldCbSzPNqSJZCs5QoQ07GsY0QTA3vtGYbBWzIMQvsFQ
 ZYUFeXG8tvrkJnzMKXmIcblTeFjuzR6MYsJooH1/wm3n/Tz07+GdLsOSMz2YpRxN2xtX
 NdjCY3EixK6eXQElLRwpYdXWUscnaWanPugGa2DP9LWZbijpvRsjU+GHHsM/gBHIUGaH
 e4gg==
X-Gm-Message-State: APjAAAX+uboafq3FM/yrptaSD4Z8MN/M3cVrJ7g655TMordeS3yl88rF
 kk4s8JxChE+DH8RjMBHMIok=
X-Google-Smtp-Source: APXvYqxMZKIN7DWM/nfNQRVYE00DYssZbGR4hKJUuy6nZIPGZWB6VJmJ6jPbCAKeL5dvd55R8vy6DA==
X-Received: by 2002:a2e:7013:: with SMTP id l19mr16815937ljc.141.1563259505040; 
 Mon, 15 Jul 2019 23:45:05 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 27sm3529993ljw.97.2019.07.15.23.45.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 23:45:04 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 19/19] drm/mediatek: drop use of drmP.h
Date: Tue, 16 Jul 2019 08:42:20 +0200
Message-Id: <20190716064220.18157-20-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190716064220.18157-1-sam@ravnborg.org>
References: <20190716064220.18157-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_234506_855702_68793C4B 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop use of the deprecated drmP.h header file.

While touching the include files divide them up in blocks
in the typical order:

\#include <linux/*>

\#include <video/*>

\#include <drm/*>

\#include ""

And sort the includes in the blocks
Add the necessary includes to fix build after removal of drmP.h

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Acked-by: Emil Velikov <emil.velikov@collabora.com>
Cc: CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/gpu/drm/mediatek/mtk_disp_color.c   |  2 +-
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  2 +-
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  2 +-
 drivers/gpu/drm/mediatek/mtk_dpi.c          | 18 ++++++++++--------
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 10 ++++++----
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c |  2 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c      | 16 ++++++++++------
 drivers/gpu/drm/mediatek/mtk_drm_fb.c       |  7 ++++---
 drivers/gpu/drm/mediatek/mtk_drm_gem.c      |  6 ++++--
 drivers/gpu/drm/mediatek/mtk_drm_plane.c    |  2 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c          | 14 ++++++++------
 drivers/gpu/drm/mediatek/mtk_hdmi.c         | 14 +++++++++-----
 12 files changed, 56 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_color.c b/drivers/gpu/drm/mediatek/mtk_disp_color.c
index f33d98b356d6..59de2a46aa49 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_color.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_color.c
@@ -3,9 +3,9 @@
  * Copyright (c) 2017 MediaTek Inc.
  */
 
-#include <drm/drmP.h>
 #include <linux/clk.h>
 #include <linux/component.h>
+#include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index c4f07c28c74f..21851756c579 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -3,9 +3,9 @@
  * Copyright (c) 2015 MediaTek Inc.
  */
 
-#include <drm/drmP.h>
 #include <linux/clk.h>
 #include <linux/component.h>
+#include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
index 9a6f0a29e43c..405afef31407 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
@@ -3,9 +3,9 @@
  * Copyright (c) 2015 MediaTek Inc.
  */
 
-#include <drm/drmP.h>
 #include <linux/clk.h>
 #include <linux/component.h>
+#include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index bacd989cc9aa..be6d95c5ff25 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -3,21 +3,23 @@
  * Copyright (c) 2014 MediaTek Inc.
  * Author: Jie Qiu <jie.qiu@mediatek.com>
  */
-#include <drm/drmP.h>
-#include <drm/drm_crtc.h>
-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_of.h>
-#include <linux/kernel.h>
+
+#include <linux/clk.h>
 #include <linux/component.h>
-#include <linux/platform_device.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/of_graph.h>
-#include <linux/interrupt.h>
+#include <linux/platform_device.h>
 #include <linux/types.h>
-#include <linux/clk.h>
+
 #include <video/videomode.h>
 
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_crtc.h>
+#include <drm/drm_of.h>
+
 #include "mtk_dpi_regs.h"
 #include "mtk_drm_ddp_comp.h"
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index a9007210dda1..34a731755791 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -3,14 +3,16 @@
  * Copyright (c) 2015 MediaTek Inc.
  */
 
+#include <linux/clk.h>
+#include <linux/pm_runtime.h>
+
 #include <asm/barrier.h>
-#include <drm/drmP.h>
+#include <soc/mediatek/smi.h>
+
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
-#include <linux/clk.h>
-#include <linux/pm_runtime.h>
-#include <soc/mediatek/smi.h>
+#include <drm/drm_vblank.h>
 
 #include "mtk_drm_drv.h"
 #include "mtk_drm_crtc.h"
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index b38963f1f2ec..efa85973e46b 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -12,7 +12,7 @@
 #include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
-#include <drm/drmP.h>
+
 #include "mtk_drm_drv.h"
 #include "mtk_drm_plane.h"
 #include "mtk_drm_ddp_comp.h"
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 2d5caf532431..2ee809a6f3dc 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -4,22 +4,26 @@
  * Author: YT SHEN <yt.shen@mediatek.com>
  */
 
-#include <drm/drmP.h>
+#include <linux/component.h>
+#include <linux/iommu.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_platform.h>
+#include <linux/pm_runtime.h>
+
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_drv.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
-#include <linux/component.h>
-#include <linux/iommu.h>
-#include <linux/of_address.h>
-#include <linux/of_platform.h>
-#include <linux/pm_runtime.h>
+#include <drm/drm_vblank.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp.h"
+#include "mtk_drm_ddp.h"
 #include "mtk_drm_ddp_comp.h"
 #include "mtk_drm_drv.h"
 #include "mtk_drm_fb.h"
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.c b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
index 396ba497986d..ae40b080ae47 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_fb.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
@@ -3,13 +3,14 @@
  * Copyright (c) 2015 MediaTek Inc.
  */
 
-#include <drm/drmP.h>
+#include <linux/dma-buf.h>
+#include <linux/reservation.h>
+
 #include <drm/drm_modeset_helper.h>
 #include <drm/drm_fb_helper.h>
+#include <drm/drm_fourcc.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_framebuffer_helper.h>
-#include <linux/dma-buf.h>
-#include <linux/reservation.h>
 
 #include "mtk_drm_drv.h"
 #include "mtk_drm_fb.h"
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
index 0d69698f8173..9434f88c6341 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
@@ -3,10 +3,12 @@
  * Copyright (c) 2015 MediaTek Inc.
  */
 
-#include <drm/drmP.h>
-#include <drm/drm_gem.h>
 #include <linux/dma-buf.h>
 
+#include <drm/drm_device.h>
+#include <drm/drm_gem.h>
+#include <drm/drm_prime.h>
+
 #include "mtk_drm_drv.h"
 #include "mtk_drm_gem.h"
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 42cc9823eaaa..584a9ecadce6 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -4,9 +4,9 @@
  * Author: CK Hu <ck.hu@mediatek.com>
  */
 
-#include <drm/drmP.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_fourcc.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 
diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index b91c4616644a..224afb666881 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -3,12 +3,6 @@
  * Copyright (c) 2015 MediaTek Inc.
  */
 
-#include <drm/drmP.h>
-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_mipi_dsi.h>
-#include <drm/drm_panel.h>
-#include <drm/drm_of.h>
-#include <drm/drm_probe_helper.h>
 #include <linux/clk.h>
 #include <linux/component.h>
 #include <linux/iopoll.h>
@@ -17,9 +11,17 @@
 #include <linux/of_platform.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+
 #include <video/mipi_display.h>
 #include <video/videomode.h>
 
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_of.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_print.h>
+#include <drm/drm_probe_helper.h>
+
 #include "mtk_drm_ddp_comp.h"
 
 #define DSI_START		0x00
diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 5d6a9f094df5..ce91b61364eb 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -3,11 +3,7 @@
  * Copyright (c) 2014 MediaTek Inc.
  * Author: Jie Qiu <jie.qiu@mediatek.com>
  */
-#include <drm/drmP.h>
-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_crtc.h>
-#include <drm/drm_probe_helper.h>
-#include <drm/drm_edid.h>
+
 #include <linux/arm-smccc.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
@@ -23,7 +19,15 @@
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
+
 #include <sound/hdmi-codec.h>
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_crtc.h>
+#include <drm/drm_edid.h>
+#include <drm/drm_print.h>
+#include <drm/drm_probe_helper.h>
+
 #include "mtk_cec.h"
 #include "mtk_hdmi.h"
 #include "mtk_hdmi_regs.h"
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
