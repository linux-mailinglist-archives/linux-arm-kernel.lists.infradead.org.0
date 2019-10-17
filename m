Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04410DA92B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9RXGbhU/AMAc3r/7azdiv/H2VgW8p3t1Kl8nGBC8lc=; b=NFYn0hIIskKIdS
	Ke+ob66G0RJ0t98Dk71VPwnE5HaMWiCldB8kTMRmcQDaez4XMoZINlXLlhi8Fpzy/gmoa6gYf1xOr
	HZW7mpnwm4HEr2gQd6XVr3wTXWt0bK516StA+ChY6PXvzERVAdqkTPeSafRpCpwSu2kxeKFb2ZQAE
	DIOXyszTSmWqAZ1CHKBtk+tDbQ3ikPmxDELLzKub4fnC4+wu9K/olyjn0DTe08lNTcG1e5Z72lGig
	5ycSiCXOsPplExSOPcocTIx5wdfdINya5XMAZuJ19eDU/N6P5EG5tAfdSiBWIc7QUVr0rtU2yPf5E
	xADiRnZzH6fhCs6u1j+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2Pd-0006eZ-GN; Thu, 17 Oct 2019 09:49:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2OY-0005mB-LN
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:48:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id v17so1815793wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 02:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5iLLS7Y0EigWyUmvKnwWYMeuPvGCs9F0h7Crje9w3Z4=;
 b=M+29CLpvbth+qIKUr1cAPhn/E3zmxgmcySpB+nm7dDJh55N/P/kVcLzcAUhNO7kNwK
 0mTWL9rbP+4u6hKspusYli3udPZ+BwAsJCpFiUH1yFfhFSFGs594RIbje/I42yZFfkii
 kkAU7wNDldk28IABqlHTQneVZNCfbUa1AutjYFh9Q5rpyDiI7jZ9wrkiDSBdanUll4P7
 M9dBS42sEzsmU3t69DVzrJATWxqDxF+NiY5vIzwHDIwTcvl2hhe9VZnr9R+0phbVcQ/4
 ad0ILvRf64ZJJ/WMhXvp3Zmsk0g6j/rD3HRO9Wcl7nk1bZ0RrBKemXo1P2odDgRL+8F4
 S1xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5iLLS7Y0EigWyUmvKnwWYMeuPvGCs9F0h7Crje9w3Z4=;
 b=IYjRxJiV08sDC/qghehSF/a1Xsd8rFb9JJ1Zm1IWGpkn5tkXHeBUG4I7dkfNMPWcal
 pYDlnIKgB7WcIYGsZPXjWlJtTDVqj8nu/FE3YE7jlNqUgfFvG6ocQN+bOSECSIC7wO43
 HnZ7byhHj1FNNS/sVnYoj/KypYdA2H65AIEYle0bJ0yDqXr2uzfMWu3/o7YsvzqtlrjV
 mD29ToWZXbQr55hQxoVfY0lEVSmJi0xFHX9x4gXWS2lTZ8s02zyPCjrpozgLIFaLAj8t
 AOU3xtGolH0kHICSq8jMWZlxhpnlTG6vIGmfCzfWTw0RwLMd8YCpzrezykUo2gtcDkDC
 +YEw==
X-Gm-Message-State: APjAAAV+2kX52yNRpKvSnfl9IrgVvbIO5VjlGqZLDml11RnlCxG1bocQ
 0XGXeUgy06W0bSaqXkbg0cXqUw==
X-Google-Smtp-Source: APXvYqxfe3Pk1/LziocmZDXLLEnmpKfeDMqewKinRi8tGvfp3Ku7InG32G6MDjy89H4CUUY0+HrJtQ==
X-Received: by 2002:a7b:c8d9:: with SMTP id f25mr1951718wml.173.1571305712633; 
 Thu, 17 Oct 2019 02:48:32 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t83sm2764506wmt.18.2019.10.17.02.48.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 02:48:32 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 2/3] drm/meson: add RDMA module driver
Date: Thu, 17 Oct 2019 11:48:25 +0200
Message-Id: <20191017094826.21552-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191017094826.21552-1-narmstrong@baylibre.com>
References: <20191017094826.21552-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024834_740279_2443CD55 
X-CRM114-Status: GOOD (  22.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
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
 drivers/gpu/drm/meson/Makefile     |   2 +-
 drivers/gpu/drm/meson/meson_drv.c  |  14 ++-
 drivers/gpu/drm/meson/meson_drv.h  |   6 ++
 drivers/gpu/drm/meson/meson_rdma.c | 132 +++++++++++++++++++++++++++++
 drivers/gpu/drm/meson/meson_rdma.h |  21 +++++
 5 files changed, 171 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/meson/meson_rdma.c
 create mode 100644 drivers/gpu/drm/meson/meson_rdma.h

diff --git a/drivers/gpu/drm/meson/Makefile b/drivers/gpu/drm/meson/Makefile
index b1fa055aaed3..9e36f0c7b816 100644
--- a/drivers/gpu/drm/meson/Makefile
+++ b/drivers/gpu/drm/meson/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 meson-drm-y := meson_drv.o meson_plane.o meson_crtc.o meson_venc_cvbs.o
 meson-drm-y += meson_viu.o meson_vpp.o meson_venc.o meson_vclk.o meson_overlay.o
-meson-drm-y += meson_osd_afbcd.o
+meson-drm-y += meson_osd_afbcd.o meson_rdma.o
 
 obj-$(CONFIG_DRM_MESON) += meson-drm.o
 obj-$(CONFIG_DRM_MESON_DW_HDMI) += meson_dw_hdmi.o
diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index 0f31e70bb94f..2200d8b5252e 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -33,6 +33,7 @@
 #include "meson_venc_cvbs.h"
 #include "meson_viu.h"
 #include "meson_vpp.h"
+#include "meson_rdma.h"
 
 #define DRIVER_NAME "meson"
 #define DRIVER_DESC "Amlogic Meson DRM driver"
@@ -295,8 +296,11 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
 	meson_venc_init(priv);
 	meson_vpp_init(priv);
 	meson_viu_init(priv);
-	if (priv->afbcd.ops)
-		priv->afbcd.ops->init(priv);
+	if (priv->afbcd.ops) {
+		ret = priv->afbcd.ops->init(priv);
+		if (ret)
+			return ret;
+	}
 
 	/* Encoder Initialization */
 
@@ -367,12 +371,16 @@ static void meson_drv_unbind(struct device *dev)
 		meson_canvas_free(priv->canvas, priv->canvas_id_vd1_2);
 	}
 
+	if (priv->afbcd.ops) {
+		priv->afbcd.ops->reset(priv);
+		meson_rdma_free(priv);
+	}
+
 	drm_dev_unregister(drm);
 	drm_irq_uninstall(drm);
 	drm_kms_helper_poll_fini(drm);
 	drm_mode_config_cleanup(drm);
 	drm_dev_put(drm);
-
 }
 
 static const struct component_master_ops meson_drv_master_ops = {
diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
index de25349be8aa..9995d74c5ded 100644
--- a/drivers/gpu/drm/meson/meson_drv.h
+++ b/drivers/gpu/drm/meson/meson_drv.h
@@ -139,6 +139,12 @@ struct meson_drm {
 		u64 modifier;
 		u32 format;
 	} afbcd;
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
index 000000000000..4ef5e402d5ca
--- /dev/null
+++ b/drivers/gpu/drm/meson/meson_rdma.c
@@ -0,0 +1,132 @@
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
+	/* Allocate a 4k buffer */
+	priv->rdma.addr = dma_alloc_coherent(priv->dev, SZ_4K,
+					     &priv->rdma.addr_phys,
+					     GFP_KERNEL);
+	if (!priv->rdma.addr)
+		return -ENOMEM;
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
