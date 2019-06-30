Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4007E5AF0C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 08:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CpkyKHF+cam9cNrpodVDtcDNH+Ko94BRBBuUhH7Xwc=; b=Evb7k62Id8zn9x
	pa6P4fj2vqBu14bR/mrPEWxfdhVgFclzFYqQXJNC1cGyoFrmwafguvrPgH4i44D57w2289G0Lb4ZY
	7TE0P7CYtWLhFMalZJZ7kk3NxsstW3saI4mqLE0X2tqPHjWxbJxFE/gtWF3DfGEYOumPrcTyDHknX
	Rq8E5pL7xRJIyMGqK7KVTRlXewVp1TAPeYUb+TFJovqhFXD/lESdlfPlybrp++SNTau+ofp0mqfGC
	j6VfyHvVtTLd7iM0r1/UvHQABU6OSPN0ehnctQG3LB+ePLt17UtBfqgJ4m9+G1kRYdUWQsKe3WPS8
	mivq15LdFrAzzPLbTevA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhTEh-00057i-Op; Sun, 30 Jun 2019 06:22:51 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhTBv-0001WI-7a; Sun, 30 Jun 2019 06:20:08 +0000
Received: by mail-lf1-x144.google.com with SMTP id j29so6559944lfk.10;
 Sat, 29 Jun 2019 23:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XAeqPK1yLenLfxS4mll3E4fkiCo6w4OOQPJX/DKUs9I=;
 b=beH6GJxzGwyvScEEhIVCjj5PQ1ie4rjKZ2jc+geRGeG6Sb1Ra38v4HpBtOIApg/7Qe
 pJh/zllR9MazvwFliiIGzeNIBrh3RoIctiOk64wEj6q7LdEBJjDwAS+AGh4KeD5/m35T
 t3bySpUWP6uB4QO/rEC2IVUSTi22smTmuRe/lOZpnLuml4ZaVqBJ2TkI6MNohiSbrSjq
 DXw8VZMHUqoDtXAVCNXPcOfkT0dNcuvY5HUlZMGd6S5tvuqPs4NDM7/XSOEWp1Y04TEl
 YrsokWkNpu89IW0nj3Yy/FTEtzKhIqyHpq2wN18Dr864A97w+mn1vTq1GbuA+jJ5o9EU
 FCrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=XAeqPK1yLenLfxS4mll3E4fkiCo6w4OOQPJX/DKUs9I=;
 b=AJaxbDHKMQVtq5NZXgUWiN3jOQdDCnma09zdoRMfJHR0fhDZfyJBY6UeAwi2PaFrdq
 8lMDfLsMZa+PlNG3vT54/GMdQbn6Rm81PfWUgCNCgi7+Mg2VIK3++ANLeRfR36Fp+G9a
 6hu2LMqeGAD+lBD4y+Qt8vKC+8eaxJN7sJpV3OAaNuh0UsIjRtQCFkkcuv7Ofh3tR6vi
 GTRpbjmKXGKKAYWUYRldWOCzrMcFKxntXhAYrwKKoie/MuKq+zaUVbAz8XA2NdDu1RM2
 v6dOrPc0+TzTDtJjTAWj658YJ2hjnnhDCPsdeGdaH9v8byMzsdHy8GX430ZvAHw3xILc
 Hwiw==
X-Gm-Message-State: APjAAAVYD5CilAMycibkKvb3Cbmao3ROhLFUzzhf4fWGEDQ+pgwDhAn/
 n5eHYPmAiahdSt6czscJvGw=
X-Google-Smtp-Source: APXvYqwack84kxAXMtS2M350I/6+sEO7W20vMNhc8sQOTLovoOqG22add9MPmFXXeB4rfaB3zAWjOQ==
X-Received: by 2002:ac2:51a3:: with SMTP id f3mr7891343lfk.125.1561875597407; 
 Sat, 29 Jun 2019 23:19:57 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 o74sm1794024lff.46.2019.06.29.23.19.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 23:19:57 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v1 29/33] drm/mediatek: drop use of drmP.h
Date: Sun, 30 Jun 2019 08:19:18 +0200
Message-Id: <20190630061922.7254-30-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190630061922.7254-1-sam@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_231959_581195_A1766159 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
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
Cc: CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
The list of cc: was too large to add all recipients to the cover letter.
Please find cover letter here:
https://lists.freedesktop.org/archives/dri-devel/2019-June/thread.html
Search for "drm: drop use of drmp.h in drm-misc"

        Sam

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
