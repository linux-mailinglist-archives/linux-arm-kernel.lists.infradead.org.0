Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEC1DE7C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:17:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJ7cWpNWG9cEBTdtbR6F6iuOKqKZSuC7LPEOf4RAyBY=; b=MIIfidZNaxL91j
	oPz596BQ4NwXC9QdTLJHiyaKhsvM/RGSxc9SwX8L75aSguVzbe/N/9NfcgUoBSWkqyX1Cdh0bOF9W
	F5e2uR63tH3HQAYOm3rzT8/cl9aUmmZKFbflA5cCSPEae30ctjXMnWOF0e2eyHj8oZ+PTB3g243th
	wIdh8PZkAiOPjNDARhWjb92xhIPHYfrzo6JsRH2tn3W98yeti9/eus3YCWhgw0Zs9RRjHbxxdgR1a
	5QpZoSrLWGuHH7k3VcLbUuYkm2NVZW2A4D1qUiwjkyA3zzpPqKRelJS4BwIp04AzHOuYD+wCz25zU
	BiNaMIlLy9lt9gN5NK+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTor-00041U-4m; Mon, 21 Oct 2019 09:17:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTmW-0002h1-D2
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:15:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id b24so11932177wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 02:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dkNYdr+YWaZ68tiJqlH0k2FfWy1xrNFUf+SNb2DV6/8=;
 b=nz7/d+cThNZTlPHLNwncdfWND4q1gHqmKBRATcMcN4PcDQe9B8Aw66zdm2b0NTTxy4
 S8f0MLaIszmktg5Vv2lFuv9K/D7xYZ17UCxSvqLEpT5AFezChYMUo51nRtWb4gT4bbHc
 2Qybn0x13tNzPHYaI6JH/bAOt3DUQtGTKKBAgZ65tdyfO5/J4LGlxiZxwOfaV11jqS2X
 an3LHXmZ4N2cP2llfbHDu5d1lSe2ZmVdNgxAItp5HAQ3671GYY4Zsa5jypNSmVIoE5U5
 WyRiH5p2IB0lA0j4FUioEIS7PFmg/Hv04+YP3quG/uQg5WN7xe96RouWM1J7bsmfMQU4
 mPbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dkNYdr+YWaZ68tiJqlH0k2FfWy1xrNFUf+SNb2DV6/8=;
 b=BqinO8C4BSks97F0kdH/kUDIP7STIm9UZBjTGYLkLq/qyNBkDfbwBwZYwV+LN+U8fu
 oMMz+wAqiHyJlU9DE7b+Vuiwkjsd/2wE39axNBgqJX2bTnldWOQtjp4iuz1KJ9VGPpQZ
 fBLB5dsZoTzoqlgRktZyVrTyabYwb4UkFGltHeuseD8WMlRjeHop6N6TD2PT7dum9aMy
 TpeU96sFvrmmWS+DT+mRf+hg4YcdJLzD9oVKpq2qC2ONz1kcb36z9Y6DYyDZutGfXYm3
 W6ZAalYfWOLYfoU2pI1GD0wi3p6RkT6tqMS0Dxz8EzO4XPM3RoVSFrN4B8Lf93IBdiOE
 c+Lg==
X-Gm-Message-State: APjAAAV6iwPZzFLgwiIG3l3RNAHFscb/+U0c7AqNIFMiUBG8oerKhTWl
 t2JDEAXyziqWTAW1skuDR6QrxA==
X-Google-Smtp-Source: APXvYqz3Ot+RP0k/4dkoxQcdssTlej3T7nN/cio6RzUHZvo9xeojf/kyChyNEDRoR4+LvkHX7SRCDg==
X-Received: by 2002:a7b:caea:: with SMTP id t10mr19183378wml.38.1571649314875; 
 Mon, 21 Oct 2019 02:15:14 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t13sm20281595wra.70.2019.10.21.02.15.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 02:15:14 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 4/9] drm/meson: add RDMA module driver
Date: Mon, 21 Oct 2019 11:15:04 +0200
Message-Id: <20191021091509.3864-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021091509.3864-1-narmstrong@baylibre.com>
References: <20191021091509.3864-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021516_461769_9DCEE31C 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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

The VPU embeds a "Register DMA" that can write a sequence of registers
on the VPU AHB bus, either manually or triggered by an internal IRQ
event like VSYNC or a line input counter.

The initial implementation handles a single channel (over 8), triggered
by the VSYNC irq and does not handle the RDMA irq.

The RDMA will be usefull to reset and program the AFBC decoder unit
on each vsync without involving the interrupt handler that can
be masked for a log period of time, producing display glitches.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/Makefile     |   1 +
 drivers/gpu/drm/meson/meson_drv.h  |   6 ++
 drivers/gpu/drm/meson/meson_rdma.c | 135 +++++++++++++++++++++++++++++
 drivers/gpu/drm/meson/meson_rdma.h |  21 +++++
 4 files changed, 163 insertions(+)
 create mode 100644 drivers/gpu/drm/meson/meson_rdma.c
 create mode 100644 drivers/gpu/drm/meson/meson_rdma.h

diff --git a/drivers/gpu/drm/meson/Makefile b/drivers/gpu/drm/meson/Makefile
index c389e2399133..fb7f5440fe57 100644
--- a/drivers/gpu/drm/meson/Makefile
+++ b/drivers/gpu/drm/meson/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 meson-drm-y := meson_drv.o meson_plane.o meson_crtc.o meson_venc_cvbs.o
 meson-drm-y += meson_viu.o meson_vpp.o meson_venc.o meson_vclk.o meson_overlay.o
+meson-drm-y += meson_rdma.o
 
 obj-$(CONFIG_DRM_MESON) += meson-drm.o
 obj-$(CONFIG_DRM_MESON_DW_HDMI) += meson_dw_hdmi.o
diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
index 3287282450a9..ea39be913c0f 100644
--- a/drivers/gpu/drm/meson/meson_drv.h
+++ b/drivers/gpu/drm/meson/meson_drv.h
@@ -123,6 +123,12 @@ struct meson_drm {
 		bool venc_repeat;
 		bool hdmi_use_enci;
 	} venc;
+
+	struct {
+		dma_addr_t addr_phys;
+		uint32_t *addr;
+		unsigned int offset;
+	} rdma;
 };
 
 static inline int meson_vpu_is_compatible(struct meson_drm *priv,
diff --git a/drivers/gpu/drm/meson/meson_rdma.c b/drivers/gpu/drm/meson/meson_rdma.c
new file mode 100644
index 000000000000..25b34b1e72a7
--- /dev/null
+++ b/drivers/gpu/drm/meson/meson_rdma.c
@@ -0,0 +1,135 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/dma-mapping.h>
+
+#include "meson_drv.h"
+#include "meson_registers.h"
+#include "meson_rdma.h"
+
+/*
+ * The VPU embeds a "Register DMA" that can write a sequence of registers
+ * on the VPU AHB bus, either manually or triggered by an internal IRQ
+ * event like VSYNC or a line input counter.
+ * The initial implementation handles a single channel (over 8), triggered
+ * by the VSYNC irq and does not handle the RDMA irq.
+ */
+
+#define RDMA_DESC_SIZE	(sizeof(uint32_t) * 2)
+
+int meson_rdma_init(struct meson_drm *priv)
+{
+	if (!priv->rdma.addr) {
+		/* Allocate a PAGE buffer */
+		priv->rdma.addr =
+			dma_alloc_coherent(priv->dev, SZ_4K,
+					   &priv->rdma.addr_phys,
+					   GFP_KERNEL);
+		if (!priv->rdma.addr)
+			return -ENOMEM;
+	}
+
+	priv->rdma.offset = 0;
+
+	writel_relaxed(RDMA_CTRL_SW_RESET,
+		       priv->io_base + _REG(RDMA_CTRL));
+	writel_relaxed(RDMA_DEFAULT_CONFIG |
+		       FIELD_PREP(RDMA_CTRL_AHB_WR_BURST, 3) |
+		       FIELD_PREP(RDMA_CTRL_AHB_RD_BURST, 0),
+		       priv->io_base + _REG(RDMA_CTRL));
+
+	return 0;
+}
+
+void meson_rdma_free(struct meson_drm *priv)
+{
+	if (!priv->rdma.addr && !priv->rdma.addr_phys)
+		return;
+
+	meson_rdma_stop(priv);
+
+	dma_free_coherent(priv->dev, SZ_4K,
+			  priv->rdma.addr, priv->rdma.addr_phys);
+
+	priv->rdma.addr = NULL;
+	priv->rdma.addr_phys = (dma_addr_t)NULL;
+}
+
+void meson_rdma_setup(struct meson_drm *priv)
+{
+	/* Channel 1: Write Flag, No Address Increment */
+	writel_bits_relaxed(RDMA_ACCESS_RW_FLAG_CHAN1 |
+			    RDMA_ACCESS_ADDR_INC_CHAN1,
+			    RDMA_ACCESS_RW_FLAG_CHAN1,
+			    priv->io_base + _REG(RDMA_ACCESS_AUTO));
+}
+
+void meson_rdma_stop(struct meson_drm *priv)
+{
+	writel_bits_relaxed(RDMA_IRQ_CLEAR_CHAN1,
+			    RDMA_IRQ_CLEAR_CHAN1,
+			    priv->io_base + _REG(RDMA_CTRL));
+
+	/* Stop Channel 1 */
+	writel_bits_relaxed(RDMA_ACCESS_TRIGGER_CHAN1,
+			    FIELD_PREP(RDMA_ACCESS_ADDR_INC_CHAN1,
+				       RDMA_ACCESS_TRIGGER_STOP),
+			    priv->io_base + _REG(RDMA_ACCESS_AUTO));
+}
+
+void meson_rdma_reset(struct meson_drm *priv)
+{
+	meson_rdma_stop(priv);
+
+	priv->rdma.offset = 0;
+}
+
+static void meson_rdma_writel(struct meson_drm *priv, uint32_t val,
+			      uint32_t reg)
+{
+	if (priv->rdma.offset >= (SZ_4K / RDMA_DESC_SIZE)) {
+		dev_warn_once(priv->dev, "%s: overflow\n", __func__);
+		return;
+	}
+
+	priv->rdma.addr[priv->rdma.offset++] = reg;
+	priv->rdma.addr[priv->rdma.offset++] = val;
+}
+
+/*
+ * This will add the register to the RDMA buffer and write it to the
+ * hardware at the same time.
+ * When meson_rdma_flush is called, the RDMA will replay the register
+ * writes in order.
+ */
+void meson_rdma_writel_sync(struct meson_drm *priv, uint32_t val, uint32_t reg)
+{
+	meson_rdma_writel(priv, val, reg);
+
+	writel_relaxed(val, priv->io_base + _REG(reg));
+}
+
+void meson_rdma_flush(struct meson_drm *priv)
+{
+	meson_rdma_stop(priv);
+
+	/* Start of Channel 1 register writes buffer */
+	writel(priv->rdma.addr_phys,
+	       priv->io_base + _REG(RDMA_AHB_START_ADDR_1));
+
+	/* Last byte on Channel 1 register writes buffer */
+	writel(priv->rdma.addr_phys + (priv->rdma.offset * RDMA_DESC_SIZE) - 1,
+	       priv->io_base + _REG(RDMA_AHB_END_ADDR_1));
+
+	/* Trigger Channel 1 on VSYNC event */
+	writel_bits_relaxed(RDMA_ACCESS_TRIGGER_CHAN1,
+			    FIELD_PREP(RDMA_ACCESS_TRIGGER_CHAN1,
+				       RDMA_ACCESS_TRIGGER_VSYNC),
+			    priv->io_base + _REG(RDMA_ACCESS_AUTO));
+
+	priv->rdma.offset = 0;
+}
diff --git a/drivers/gpu/drm/meson/meson_rdma.h b/drivers/gpu/drm/meson/meson_rdma.h
new file mode 100644
index 000000000000..3870bff7b47f
--- /dev/null
+++ b/drivers/gpu/drm/meson/meson_rdma.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (C) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#ifndef __MESON_RDMA_H
+#define __MESON_RDMA_H
+
+#include "meson_drv.h"
+
+int meson_rdma_init(struct meson_drm *priv);
+void meson_rdma_free(struct meson_drm *priv);
+void meson_rdma_setup(struct meson_drm *priv);
+void meson_rdma_reset(struct meson_drm *priv);
+void meson_rdma_stop(struct meson_drm *priv);
+
+void meson_rdma_writel_sync(struct meson_drm *priv, uint32_t val, uint32_t reg);
+void meson_rdma_flush(struct meson_drm *priv);
+
+#endif /* __MESON_RDMA_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
