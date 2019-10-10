Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE89FD2645
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 11:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkMfsYCG236l0M5fYbeIXS3Imsj/hRALItOwa0q2NLk=; b=SnGO+vN0VZrEjn
	y5xtCZTY0LPsT5cCNaI8Ve9RBCd3us8gbAs+Mo6xv5pVGsUJOG8K2W6RihYntXnCJV23DhQifZDtH
	N/Lu5VgTyUj8ffBf/6yYIyNivUNK5bND/bFLwZl/l46cKYasU21OQSir+u3OG4BCnL9yueFdcFw0L
	Sat43fVIk1Ui/zLujhZkiK/t+2ZrRE/5GS+oFpifBhx7H01KSPftK6z0kMz2AEHvwHE2ClAbi8OxN
	c3nmjBFgpUu6KyvMFo33NmqRULj4wVBXwky/VQSpHXTVn65bH4JX8ez5+KssGJoWrEx/vSqrCjw55
	tNru4dwtrzT6R7vlCmrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUio-0007C0-56; Thu, 10 Oct 2019 09:26:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUhS-0005zh-IH
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 09:25:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id q9so6939451wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 02:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NpGaBOGMKyAB4Ohuci7O2fHoJMWm7VBJJx757ititKU=;
 b=tRWbY5ZoCA+9rVsCN1XkCwCjVsFOPhvmVoh16VtJVAOYE/sexaVXoLRfYLAyXlonfg
 Z50hDQ9X6tqY6bvc9pze8s7SRg9xFlqxdD5HNYMgvtjOmfG1dLsg2TU429hMRVH00T2+
 4kvdteaNWKl63O1+DToVeaoZlBP1+Lq8+QUgFJQsl/1crFfqH+mhmln/ajwNu53sfbyk
 O1rf/i3Q5AerWgSj2Malofn8SbCdMNHa23ENAKdcR5aluhM7HUfnSeX8wEOZiZzAS3qB
 fq+DMW7xBJPsapQWhiBrF+QL/VYCOOvhDmv6oY6o8Y4j72WFWeCPLJTXVAMOVw9BhWHG
 EFNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NpGaBOGMKyAB4Ohuci7O2fHoJMWm7VBJJx757ititKU=;
 b=nD1pZgHxj4KDxUZdJzyMD8k3Z0yJD3FH1yLolDyojOISh/q0ZzvVIy/WYoJzjbnZQY
 IuFh9xX5d1TMTIqObVLb5oFoKgZS3Hnmoq0+rPXvH4PTECXtpyq7JuafMK7Zu49cKtzi
 em9iS7+ihjSnT96huKWesdigJrJlgSBu50x6JlonuTmBTpckbGBLoLrAfxCIQfVNtsDe
 CpJgHEjuWeQ2VxgwrdGoMbkvsmr18TZsgP9BGBzrkyNJD050Q6gAGgPflt/j4NJNMhZj
 gJ93D0UT1hkHAG99cDBDeC2OH+ESvI+Db+l4IHMkro1zTTQ9pppQasouBAUdjb99DLef
 hkvQ==
X-Gm-Message-State: APjAAAWetX3144dVbeZfmOS61UCuOkrdGzFg5JsOkheyrMnGivAWi8iz
 IjDf0Wpt/AJgAtFgSKqLh9UrPw==
X-Google-Smtp-Source: APXvYqxaKkhImEXY4h60rg4IFjEADFfbAKFMUuKxjHR+5zY5ZvBAbCp70nq+WoLbJQMSeAcGi+9hlA==
X-Received: by 2002:a5d:4302:: with SMTP id h2mr7975471wrq.35.1570699533163;
 Thu, 10 Oct 2019 02:25:33 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s10sm8373770wmf.48.2019.10.10.02.25.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 02:25:32 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 5/7] drm/meson: viu: add AFBC modules routing functions
Date: Thu, 10 Oct 2019 11:25:24 +0200
Message-Id: <20191010092526.10419-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191010092526.10419-1-narmstrong@baylibre.com>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_022534_637394_872B2C94 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 ayan.halder@arm.com, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
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
 drivers/gpu/drm/meson/meson_viu.c | 52 +++++++++++++++++++++++++++++++
 drivers/gpu/drm/meson/meson_viu.h |  4 +++
 2 files changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
index 68cf2c2eca5f..cdd4962484db 100644
--- a/drivers/gpu/drm/meson/meson_viu.c
+++ b/drivers/gpu/drm/meson/meson_viu.c
@@ -7,6 +7,7 @@
  */
 
 #include <linux/export.h>
+#include <linux/bitfield.h>
 
 #include "meson_drv.h"
 #include "meson_viu.h"
@@ -335,6 +336,57 @@ void meson_viu_osd1_reset(struct meson_drm *priv)
 	meson_viu_load_matrix(priv);
 }
 
+void meson_viu_g12a_enable_osd1_afbc(struct meson_drm *priv)
+{
+	/* Enable Mali AFBC Unpack */
+	writel_bits_relaxed(VIU_OSD1_MALI_UNPACK_EN,
+			    VIU_OSD1_MALI_UNPACK_EN,
+			    priv->io_base + _REG(VIU_OSD1_MALI_UNPACK_CTRL));
+
+	/* Setup RGBA Reordering */
+	writel_bits_relaxed(VIU_OSD1_MALI_AFBCD_A_REORDER |
+			    VIU_OSD1_MALI_AFBCD_B_REORDER |
+			    VIU_OSD1_MALI_AFBCD_G_REORDER |
+			    VIU_OSD1_MALI_AFBCD_R_REORDER,
+			    FIELD_PREP(VIU_OSD1_MALI_AFBCD_A_REORDER,
+				       VIU_OSD1_MALI_REORDER_A) |
+			    FIELD_PREP(VIU_OSD1_MALI_AFBCD_B_REORDER,
+				       VIU_OSD1_MALI_REORDER_B) |
+			    FIELD_PREP(VIU_OSD1_MALI_AFBCD_G_REORDER,
+				       VIU_OSD1_MALI_REORDER_G) |
+			    FIELD_PREP(VIU_OSD1_MALI_AFBCD_R_REORDER,
+				       VIU_OSD1_MALI_REORDER_R),
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
