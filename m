Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483C05AF04
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 08:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PivB9B5FwOi4uY05S9pTS7McQ01o/Isf9XALRnw/CX4=; b=FYblzRly5GZwuk
	xSJa4ZRVtfoUZ+zlx2cbT32BZ4lRedqqIm2+5jbPGnm4NwEd5BNy/B0IlxvRdKf1u05Gb8hE//u3S
	MKbz0jWkAithknXSKUVgZMp8zcmf3k6NwJxlRLVf+v6Rz/j2VECo5sAiVWB0Cqk5UoK4u93dF60A3
	LSwBQgZLRCAmJkzwQOF+CJ/o7iANDDXRn5wgRpoafIIKj1f0Am37VVPRjrc9IAOJbbGdsa0jSvEwT
	hPsCBTXms+MHx/2FmH5n5BCdzYLVgilubiD4irG+ig4+wfiB17WIV4gMU7Em/FSYfF5wjM8nN6cKl
	sAGUE0mavQZZo+/eppVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhTCq-00031X-V0; Sun, 30 Jun 2019 06:20:56 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhTBY-0001Fd-Dc
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 06:19:40 +0000
Received: by mail-lf1-x144.google.com with SMTP id z15so6556375lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 23:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pie3bF0Beq7A4Qi7Y+Jt/Mfj6J+UZFL00b2HhJwwAh4=;
 b=r0ojnuhlV4I3+OBY6RxNVAHnJENgfGuSTB9JODpw2PmKQRwJrsUmCrMwsZ8bEE3yGz
 LTcEL2RPMTueO2lFIWw7pV0LEoyE4tsQ9PMVdg0E4G1cGYcb69vbfCeemEnZfWec4DSb
 0M/CgjyR8YYd12HzNuZpFoZfE8Ufd3aLiCbvmPayome7TPROyjYZgg73LpwQUcY3PxCb
 9B0Q5TdJimtJ0II3m5oiMxwNgTAbJUnxAKyxQ1RYA3Cqp5eCNRT0KHhffLhBI3NwPj1C
 0kFQ+ZeXjKZKEU0HY4Vwbhque2fOccMWCTWbxiucXYDlMSPTggDGwSXr2dn1u76fr4Oa
 ivvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=pie3bF0Beq7A4Qi7Y+Jt/Mfj6J+UZFL00b2HhJwwAh4=;
 b=UzvlznTSA0QdTmhNoGlw/KKxZCwd/wJ4eQUpN0sggAT922TEyPW9dv6zEySqPEf824
 SyWUFurCLhgK2MVNKs3P2029Nxg/G4DY8VkesZz0YLs9MrtK97A1K1FMDinNeI8pJlhd
 OZUQCcgXnHrKBeURJoSunETNZOLYhSWPla78Se7FNrpAtEm0hJR96+XdbxSx4Qc6hPUT
 si7i4UI8/mlWT7Uvfr4+2bMqq7xa8dKuBqwWt2ZFM0z+Zp5F02bFeVu6fOzVcKGyvZ2M
 iJ+G9pma6phLPnAcUiiKolXxnjLKBAzelyBej931KTexh4A7DgaXRUFJBzM0+VBkxpu/
 XwHg==
X-Gm-Message-State: APjAAAWpIMNv2DD35t1mFoo6MLPCVEOoCojkc3sMsueg+RyIPmYEUeDi
 r/3kCmXe/nOND/PZCBRFCiM=
X-Google-Smtp-Source: APXvYqwlWpNP0oPaKWfBeIMt8MF9zCDkHBbWvg+OXB1cI8cwUii73hLajpr5ewQkWGpgp6jq5dqXaA==
X-Received: by 2002:a19:c383:: with SMTP id t125mr9020687lff.89.1561875573783; 
 Sat, 29 Jun 2019 23:19:33 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 o74sm1794024lff.46.2019.06.29.23.19.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 23:19:33 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v1 05/33] drm/mxsfb: drop use of drmP.h
Date: Sun, 30 Jun 2019 08:18:54 +0200
Message-Id: <20190630061922.7254-6-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190630061922.7254-1-sam@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_231936_456396_1C268D7B 
X-CRM114-Status: GOOD (  12.66  )
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Stefan Agner <stefan@agner.ch>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop use of the deprecated drmP.h header file.

While touching the list of include files divided them
in blocks and sort them within each block.
Fixed fallout in the relevant files.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Marek Vasut <marex@denx.de>
Cc: Stefan Agner <stefan@agner.ch>
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

 drivers/gpu/drm/mxsfb/mxsfb_crtc.c | 16 +++++++++-------
 drivers/gpu/drm/mxsfb/mxsfb_drv.c  | 11 +++++++----
 drivers/gpu/drm/mxsfb/mxsfb_out.c  |  1 -
 3 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
index 93f413345e0d..12421567af89 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
@@ -8,21 +8,23 @@
  * Copyright (C) 2008 Embedded Alley Solutions, Inc All Rights Reserved.
  */
 
-#include <drm/drmP.h>
+#include <linux/clk.h>
+#include <linux/iopoll.h>
+#include <linux/of_graph.h>
+#include <linux/platform_data/simplefb.h>
+
+#include <video/videomode.h>
+
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
-#include <drm/drm_fb_helper.h>
 #include <drm/drm_fb_cma_helper.h>
+#include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
-#include <linux/clk.h>
-#include <linux/iopoll.h>
-#include <linux/of_graph.h>
-#include <linux/platform_data/simplefb.h>
-#include <video/videomode.h>
+#include <drm/drm_vblank.h>
 
 #include "mxsfb_drv.h"
 #include "mxsfb_regs.h"
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
index 6d6a0b3e2bb0..878ef6822812 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
@@ -8,29 +8,32 @@
  * Copyright (C) 2008 Embedded Alley Solutions, Inc All Rights Reserved.
  */
 
-#include <linux/module.h>
-#include <linux/spinlock.h>
 #include <linux/clk.h>
 #include <linux/component.h>
+#include <linux/dma-mapping.h>
 #include <linux/list.h>
+#include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_graph.h>
 #include <linux/of_reserved_mem.h>
 #include <linux/pm_runtime.h>
 #include <linux/reservation.h>
+#include <linux/spinlock.h>
 
-#include <drm/drmP.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
-#include <drm/drm_fb_helper.h>
+#include <drm/drm_drv.h>
 #include <drm/drm_fb_cma_helper.h>
+#include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_irq.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
+#include <drm/drm_vblank.h>
 
 #include "mxsfb_drv.h"
 #include "mxsfb_regs.h"
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_out.c b/drivers/gpu/drm/mxsfb/mxsfb_out.c
index 91e76f9cead6..231d016c6f47 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_out.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_out.c
@@ -15,7 +15,6 @@
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
-#include <drm/drmP.h>
 
 #include "mxsfb_drv.h"
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
