Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260F8D62C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhnDDQCoZC7QSAGCZ/P0Qa4CGyDhIr1JhwYVxg6Wq6E=; b=n1gXjzA2nI3Dh5
	O2QYUTfrcAL4TqDM9QYDQrsRBP7Ru8zIMsdMLDsD/PpKUeCAfqOhyXYifpQ3wXJKWksUtchrTStQE
	pRvCIzfFNivmrpGKw7lJCg85V1ObviyBajlLGEI77ww/a1IcO8F/5dsHTNqN0EBqVqy5TmiqHejpe
	4f5HYKZuK8hAaIZejnG4r51ROHu0XakIripdnlP9ImU8OQuNKlawlTPT/lxgslikUTrkSeyey18yk
	dsKeveCCtkhZoZS5rZMCEmrAsjGLuu9bXjYNZ3KuE5r8GIoLPQcvBGJUCFes4Wo5AJwavBjk6zAe9
	ZSeQxjVkkmEwkG6NvW6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzdg-0000UN-VR; Mon, 14 Oct 2019 12:39:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzcS-00084l-BL
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:38:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id z9so19533161wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZUMaf0SNyeTXqJDQ2zj2y54gRfa0la6e9vYK/qX/aYM=;
 b=ydNvvSOIkPhQ/svDJzvckOn8NGmrpiGQKRN4sWqCiyG8VvMcy9AdVdAhx5IrlQlY8Z
 qYJkB241N2Rf+6QtFjqR8t5enA8Mhs/m3fWs3+SNC9OxjJG7MLcx/M8RD8d9n45T37yB
 nUcsIyD84PSuNj/yrOMhSmZ1KoJEns+tv3h461zXd3SVG2JDmGQU1XOCJpsriijIlzBZ
 UkI2N2pLp+0HqUgifVnOyzQ8KTUAKvqEb/4tCfznijqPvGHrtSdTClR1lGUxK73zwujo
 8kF4tV4M7Vzil0vf/95G+kH9gf2u2/2veLGCjRglDFUeXfr3YCATeW9OZM+miK0u9Ikm
 5VnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZUMaf0SNyeTXqJDQ2zj2y54gRfa0la6e9vYK/qX/aYM=;
 b=q/vpwplQ+BA6ZG1hY83DeQ2Hhrs4DG8w6zrXrLTjD0SCHPEiu/r+6CSReF7iVpLkGB
 7g30P14Yr1FSaqEdtJRcNK8tsAaz+h3clHASqW5OyAIY5mzTUz9JWMKte+a96lH0Us6h
 6t56Z298Nq7Jv/4xGKtFC1QiWoGzocGlx3gcN2TXn9JAKJRktlaHKJkhLYMzByhjjvM4
 86XjqhHV4ZBSjjPKbuLn0ovlxPXYoNZhWDGY+Qx6h9RZMyV8KIzX/d1/6Yu68a6BGWzl
 KrFevpvOFWeFaFXus/6hPAp99TPYiMlJ9Q3TnFJeE68Q4AVs83ePF1XML9Kso6hFLTS6
 lT1g==
X-Gm-Message-State: APjAAAV5OUKDRLcWtC0d+F1fT3UCwlJJ1h3bW6jeIGxfZ+Vb7zehPnOc
 UeWCbY16gzLawcEGxxfHoODOKQ==
X-Google-Smtp-Source: APXvYqzJNRPaaQMtvLEpbINL9YKBHIeyCgYQe7WPDcGPn9WtfZyiiCXRhhBXXx0P44Rp/tMTr2rkZQ==
X-Received: by 2002:adf:fd0a:: with SMTP id e10mr24001667wrr.55.1571056714934; 
 Mon, 14 Oct 2019 05:38:34 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 3sm19171203wmo.22.2019.10.14.05.38.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:38:34 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 5/7] drm/meson: viu: add AFBC modules routing functions
Date: Mon, 14 Oct 2019 14:38:24 +0200
Message-Id: <20191014123826.27629-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191014123826.27629-1-narmstrong@baylibre.com>
References: <20191014123826.27629-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_053836_389245_C179BDF9 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 linux-amlogic@lists.infradead.org, ayan.halder@arm.com, Brian.Starkey@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic G12A AFBC Decoder pixel input need to be routed diferently
than the Amlogic GXM AFBC decoder, this adds support for routing the
VIU OSD1 pixel source to the AFBC "Mali Unpack" module.

This "Mali Unpack" module is also configured with a static RGBA mapping
for now until we support more pixel formats.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_viu.c | 76 +++++++++++++++++++++++++++++++
 drivers/gpu/drm/meson/meson_viu.h |  4 ++
 2 files changed, 80 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
index 68cf2c2eca5f..07713588063e 100644
--- a/drivers/gpu/drm/meson/meson_viu.c
+++ b/drivers/gpu/drm/meson/meson_viu.c
@@ -7,6 +7,9 @@
  */
 
 #include <linux/export.h>
+#include <linux/bitfield.h>
+
+#include <drm/drm_fourcc.h>
 
 #include "meson_drv.h"
 #include "meson_viu.h"
@@ -335,6 +338,79 @@ void meson_viu_osd1_reset(struct meson_drm *priv)
 	meson_viu_load_matrix(priv);
 }
 
+#define OSD1_MALI_ORDER_ABGR				\
+	(FIELD_PREP(VIU_OSD1_MALI_AFBCD_A_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_A) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_B_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_B) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_G_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_G) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_R_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_R))
+
+#define OSD1_MALI_ORDER_ARGB				\
+	(FIELD_PREP(VIU_OSD1_MALI_AFBCD_A_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_A) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_B_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_R) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_G_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_G) |		\
+	 FIELD_PREP(VIU_OSD1_MALI_AFBCD_R_REORDER,	\
+		    VIU_OSD1_MALI_REORDER_B))
+
+void meson_viu_g12a_enable_osd1_afbc(struct meson_drm *priv)
+{
+	u32 afbc_order = OSD1_MALI_ORDER_ARGB;
+
+	/* Enable Mali AFBC Unpack */
+	writel_bits_relaxed(VIU_OSD1_MALI_UNPACK_EN,
+			    VIU_OSD1_MALI_UNPACK_EN,
+			    priv->io_base + _REG(VIU_OSD1_MALI_UNPACK_CTRL));
+
+	switch (priv->afbcd.format) {
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_ABGR8888:
+		afbc_order = OSD1_MALI_ORDER_ABGR;
+		break;
+	}
+
+	/* Setup RGBA Reordering */
+	writel_bits_relaxed(VIU_OSD1_MALI_AFBCD_A_REORDER |
+			    VIU_OSD1_MALI_AFBCD_B_REORDER |
+			    VIU_OSD1_MALI_AFBCD_G_REORDER |
+			    VIU_OSD1_MALI_AFBCD_R_REORDER,
+			    afbc_order,
+			    priv->io_base + _REG(VIU_OSD1_MALI_UNPACK_CTRL));
+
+	/* Select AFBCD path for OSD1 */
+	writel_bits_relaxed(OSD_PATH_OSD_AXI_SEL_OSD1_AFBCD,
+			    OSD_PATH_OSD_AXI_SEL_OSD1_AFBCD,
+			    priv->io_base + _REG(OSD_PATH_MISC_CTRL));
+}
+
+void meson_viu_g12a_disable_osd1_afbc(struct meson_drm *priv)
+{
+	/* Disable AFBCD path for OSD1 */
+	writel_bits_relaxed(OSD_PATH_OSD_AXI_SEL_OSD1_AFBCD, 0,
+			    priv->io_base + _REG(OSD_PATH_MISC_CTRL));
+
+	/* Disable AFBCD unpack */
+	writel_bits_relaxed(VIU_OSD1_MALI_UNPACK_EN, 0,
+			    priv->io_base + _REG(VIU_OSD1_MALI_UNPACK_CTRL));
+}
+
+void meson_viu_gxm_enable_osd1_afbc(struct meson_drm *priv)
+{
+	writel_bits_relaxed(MALI_AFBC_MISC, FIELD_PREP(MALI_AFBC_MISC, 0x90),
+			    priv->io_base + _REG(VIU_MISC_CTRL1));
+}
+
+void meson_viu_gxm_disable_osd1_afbc(struct meson_drm *priv)
+{
+	writel_bits_relaxed(MALI_AFBC_MISC, FIELD_PREP(MALI_AFBC_MISC, 0x00),
+			    priv->io_base + _REG(VIU_MISC_CTRL1));
+}
+
 static inline uint32_t meson_viu_osd_burst_length_reg(uint32_t length)
 {
 	uint32_t val = (((length & 0x80) % 24) / 12);
diff --git a/drivers/gpu/drm/meson/meson_viu.h b/drivers/gpu/drm/meson/meson_viu.h
index e297772d967f..e4a2f24d7c38 100644
--- a/drivers/gpu/drm/meson/meson_viu.h
+++ b/drivers/gpu/drm/meson/meson_viu.h
@@ -63,6 +63,10 @@
 #define OSD_PENDING_STAT_CLEAN	BIT(1)
 
 void meson_viu_osd1_reset(struct meson_drm *priv);
+void meson_viu_g12a_enable_osd1_afbc(struct meson_drm *priv);
+void meson_viu_g12a_disable_osd1_afbc(struct meson_drm *priv);
+void meson_viu_gxm_enable_osd1_afbc(struct meson_drm *priv);
+void meson_viu_gxm_disable_osd1_afbc(struct meson_drm *priv);
 void meson_viu_init(struct meson_drm *priv);
 
 #endif /* __MESON_VIU_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
