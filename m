Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F225AF06
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 08:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d6oHWr5Uo5dhXJSvlV0TvpCd13fSfd1GLx4G4dbB5+s=; b=AzVpDyDtkR8/Iv
	GzhdiSHkf2MmTEkFpZVtX2FKvhk84ce1zKR0DiGqrlTxHtTpt2bV2CU9onF1hcXmNARRIK32Sznv0
	piqNKCXS3c5U6OR5cUYiX4LXf91p+gI3s2F2qYT8E6+n7Ds3bxiKRvQoRcxMadt64g5OpYkdsqGQ+
	1lhrK3Tne6teOaDi0Co61hF7MCg/Prbqi2Y1ntqW2cZ7/OlqtXRERjUjnOdQIp73FcSsI0Z3sGhcl
	OWdju6puQmaA6iP9RR0TJEBZT8H+oLsvESJjwN/SYXVuBxTTghwnoXQhm87uj9GlnAD6Zr6rpZDkw
	6WtRLSV1sM4G19YoreeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhTDK-0003Tu-Mn; Sun, 30 Jun 2019 06:21:26 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhTBg-0001Jk-04
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 06:19:46 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so9804609ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 23:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GKGCps8/24VXSJgwOB65kUByXU0vMvLaHRtnh6P82PY=;
 b=edX3jKUDv3HYbN+1NL8vUfxux1xPSXWr66MAkZ1XdCB50CkruRKTj1adfa5v6xhhr+
 02yswTwOozbHauMcmS8Dp5n4VBCTpq7qZq/hliQp2TlZlx7Azn20hNFrQARkuRQFc2Y5
 134AyxvsQ40qb0OoLjA2/PYQiae1iNsy9eNFGdWo6y4rMzCRsM1GyHJZziQc9NrCvwKv
 U787rqFC/deV8diybtiwDumKOuFY4er1W5qmjb1NC6OsdY2lpUauu0Zx3esVZWVF8slk
 iRQxgarARlzSRYuftFNhEpnoTgEgSTRDGv9bIQBJRipxtPJRF8GHaBCsc0RWhp4jI47k
 IqZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=GKGCps8/24VXSJgwOB65kUByXU0vMvLaHRtnh6P82PY=;
 b=M+bZgZsPP8lvhQIJCz9K1TWpvCg36J5olQu/PkY7xhG8ylr5HXwMKpns4PnNw3dMBO
 vHNYXQrlRC9FizM4tEoHnjPfGpjqRUSNk5Bpl34j7+UeBejGojz6fBtEEFB6TBLV52u1
 6rbj5cfA9r4p5X8079mhXa+VFNlOjbQMhrXJoZ/rrOU9bbcidKGgFaEEAolm6yhJMz7c
 T7xOaf9BGF0rTWbEfPoFrI9GtrWBrk1X8CZsa0JcHGWsIgziATef24H9RjPs/ndBOKJW
 q0wiTIcqMtHKhs/hDs36RY+OOIHr8pcQsoVNgrFPcpVZNUjxsZW/plQozYcLllZYNQK1
 1Ysw==
X-Gm-Message-State: APjAAAWbOIi6YAmoep3Y3bo56qaFdPkanDJIfrezPIFeaqteuk/VS1/4
 MP9ua5p9Y+Jm3MZZvgebHJE=
X-Google-Smtp-Source: APXvYqyrDZb/XY+l5NnFRLrBlBAGkeLeYo1widxh+Aa/Wh5nBVFYWnow/vf4gdWo1qDgXdFxb9Ku1g==
X-Received: by 2002:a2e:12c8:: with SMTP id 69mr10305377ljs.189.1561875582147; 
 Sat, 29 Jun 2019 23:19:42 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 o74sm1794024lff.46.2019.06.29.23.19.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 23:19:41 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v1 14/33] drm/atmel_hlcdc: drop use of drmP.h
Date: Sun, 30 Jun 2019 08:19:03 +0200
Message-Id: <20190630061922.7254-15-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190630061922.7254-1-sam@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_231944_064033_CD51750B 
X-CRM114-Status: GOOD (  11.95  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>, David Airlie <airlied@linux.ie>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop use of the deprecated header drmP.h.
Make header file self-contained, with only the required set
of include files.
And fixed fallout in remaining files.
Divide include files in blocks and sort them within each block.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Boris Brezillon <bbrezillon@kernel.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-arm-kernel@lists.infradead.org
---
The list of cc: was too large to add all recipients to the cover letter.
Please find cover letter here:
https://lists.freedesktop.org/archives/dri-devel/2019-June/thread.html
Search for "drm: drop use of drmp.h in drm-misc"

        Sam

 .../gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c    | 12 +++++++----
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c  | 12 +++++++++++
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h  | 20 +++----------------
 .../gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c  |  3 ++-
 .../gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c   | 10 ++++++++++
 5 files changed, 35 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
index 81c50772df05..edcd0042bc9c 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
@@ -19,15 +19,19 @@
  */
 
 #include <linux/clk.h>
+#include <linux/mfd/atmel-hlcdc.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/pm.h>
 #include <linux/pm_runtime.h>
-#include <linux/pinctrl/consumer.h>
 
+#include <video/videomode.h>
+
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drmP.h>
-
-#include <video/videomode.h>
+#include <drm/drm_vblank.h>
 
 #include "atmel_hlcdc_dc.h"
 
diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
index 2b794a50e7ab..891708048c8f 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
@@ -22,8 +22,20 @@
 #include <linux/clk.h>
 #include <linux/irq.h>
 #include <linux/irqchip.h>
+#include <linux/mfd/atmel-hlcdc.h>
 #include <linux/module.h>
 #include <linux/pm_runtime.h>
+#include <linux/platform_device.h>
+
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_fb_helper.h>
+#include <drm/drm_gem_cma_helper.h>
+#include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_irq.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_vblank.h>
 
 #include "atmel_hlcdc_dc.h"
 
diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h
index 0155efb9c443..b56c399f8715 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h
@@ -22,23 +22,9 @@
 #ifndef DRM_ATMEL_HLCDC_H
 #define DRM_ATMEL_HLCDC_H
 
-#include <linux/clk.h>
-#include <linux/dmapool.h>
-#include <linux/irqdomain.h>
-#include <linux/mfd/atmel-hlcdc.h>
-#include <linux/pwm.h>
-
-#include <drm/drm_atomic.h>
-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_crtc.h>
-#include <drm/drm_probe_helper.h>
-#include <drm/drm_fb_helper.h>
-#include <drm/drm_fb_cma_helper.h>
-#include <drm/drm_gem_cma_helper.h>
-#include <drm/drm_gem_framebuffer_helper.h>
-#include <drm/drm_panel.h>
-#include <drm/drm_plane_helper.h>
-#include <drm/drmP.h>
+#include <linux/regmap.h>
+
+#include <drm/drm_plane.h>
 
 #define ATMEL_HLCDC_LAYER_CHER			0x0
 #define ATMEL_HLCDC_LAYER_CHDR			0x4
diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c
index f73d8a92274e..24938bd5adf6 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c
@@ -19,9 +19,10 @@
  * this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
+#include <linux/media-bus-format.h>
 #include <linux/of_graph.h>
 
-#include <drm/drmP.h>
+#include <drm/drm_encoder.h>
 #include <drm/drm_of.h>
 #include <drm/drm_bridge.h>
 
diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
index 0ee5b7a3a4b0..e66ea9f32185 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
@@ -17,6 +17,16 @@
  * this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
+#include <linux/dmapool.h>
+#include <linux/mfd/atmel-hlcdc.h>
+
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_fb_cma_helper.h>
+#include <drm/drm_fourcc.h>
+#include <drm/drm_gem_cma_helper.h>
+#include <drm/drm_plane_helper.h>
+
 #include "atmel_hlcdc_dc.h"
 
 /**
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
