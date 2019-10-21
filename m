Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC22DE7CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hfBbdhogpjP0hAeBd3oQBjSoT1pSh1d6yp1Oe0zU2qk=; b=QwRTeOvmx5MziQ
	0OKTIHIZutT0mxS6Y279EpifjhX+4/EW01mPsnUWqLPfl14gr3ESDA0Xn16OpHpvSXypx8w9Hb6Xc
	fwhjPcjRwj6vPs8THbx1ZWhnLV7mz8AzI/MvEL37vq2GtVrS2IQnryTi/UAf7MAqLUNjjo/yR4gNf
	DleWNLDL6me1Q806tgM7QdrlpumsP1CUgXX/2kUTkWRn+jnw5CMVhyNQ+krmIdfRLyQ+5yXBiCnh1
	UxpDxaysxIgbwuuJxmjRgH1m9GjaMp+8NnzAvBKNSuvcRoMelPEPvJE3uE39X2ZzYJ2smIellkM9l
	Q4p3hzkLA+hCwUkdG+Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTpL-0004T4-6l; Mon, 21 Oct 2019 09:18:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTme-0002n7-2b
 for linux-arm-kernel@bombadil.infradead.org; Mon, 21 Oct 2019 09:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BI7/GGnf7LyKGTIxdHfJEkCTbGlJPGbjilZnBILY85c=; b=oo4MopWfF5WL2L3rCNmZaiSSfx
 Rak/IzWlgqJTx5gIbBfKTUv8LtaFstdA5GWpIKJi/pKk1isi3Xe+sQpml31LRyUFOrsXxwnJZhoxx
 fZI0Hn6hqDDBCr15WMksF28vOjLDql3o5zlx0UfEMd2MlrRNc0GC75+vCAmmkDK6MLtwT8GsUbtVh
 xWlaVnNlunM0n7hmGxbuf7O91u385qem11OOGrSYlaMk5ztBz390tH7l5jZzl8WMcPDenbLOSHQIL
 Zxpw+UNLERUO54D7QlkyZcwKaMzR/BgA6l0xzftp41r6aeP7xzAD2tZhJQKhpwJlrEOcImPJZnwYk
 y1KYvpoA==;
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTn3-00009X-Kd
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:15:51 +0000
Received: by mail-wm1-x343.google.com with SMTP id p7so12392298wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 02:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BI7/GGnf7LyKGTIxdHfJEkCTbGlJPGbjilZnBILY85c=;
 b=ER00yFInnm2n+UrJGw6fSOXxdGwLgCwHMOoyd15c4MEBVt0/lH1dhBMwlPTfTEr6Ee
 ngHglotiy5TmUP7YrDOkwVX3FuwVcsbF2RqsedolqLyiqQo31pXn1FRXtuXfEFU+IrpQ
 LwkQW4OUW5VqmQIGuz9OAffD90RB8x73MnSUDQlaXV2HaGA++7EP192vUy0BxnwKRseA
 9BQp7atfM/UnXYf6VDuAHXNPbOa/W3LeVrWzSKuaq8/Axg6Ow7ZkzpiD0lbXMkTvn2X1
 ag5pzZgLM1Pk02kyDzNKg0fnFF6eiOYS6ndxt69PbFV3YQLdmzLPZ+TKq02f+dCFrqCT
 JDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BI7/GGnf7LyKGTIxdHfJEkCTbGlJPGbjilZnBILY85c=;
 b=Zip1EfBjeboVDZWBWL5RcNUVVwsXKsMomYHk9SKN8TbpKoc0+AViP8xZNPpyDGyWeU
 MrXAgR6Y4RahjsHQBlmcQD9lEHVJR2sJCQxV3PadEHUedojyA0UHWuo0coRjUDrA2VpW
 1uBzHBzqSg6z73rFEyUnzSpJKs+spDnq5fqCM9reu/P/O7bmaJBdMtSyqMb8X8gEPv0E
 ABkNW+u8NwpDt8UuLydr/zHdQxoIzquLBrgJ0Ljh3rCmoRlnaKhLBJFZzvrrCfyrKOSU
 dRC4ezh+OIX11HDMU2Hw5U7LVP6ozTQAbpf3SsF9U0+F8JdXLeUmpgLzdSghi37eEILd
 0rLA==
X-Gm-Message-State: APjAAAUawAU82IY2fXu76AzETAfmyr684Opn0QoGW1IO6Jq/wHZF887k
 YtyTostNCvIL2Z8PbQJkVmehjg==
X-Google-Smtp-Source: APXvYqz5kg405DoTSLqWUJdxrTCmpf7doYKj695/q7infDCDeYEQdJqYii08eWdp4wLiFzTD2WKxIg==
X-Received: by 2002:a1c:a657:: with SMTP id p84mr5141637wme.35.1571649318821; 
 Mon, 21 Oct 2019 02:15:18 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t13sm20281595wra.70.2019.10.21.02.15.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 02:15:18 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 9/9] drm/meson: crtc: add OSD1 plane AFBC commit
Date: Mon, 21 Oct 2019 11:15:09 +0200
Message-Id: <20191021091509.3864-10-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021091509.3864-1-narmstrong@baylibre.com>
References: <20191021091509.3864-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_101549_710715_C3324D49 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Finally, setup the VIU registers and start the AFBC decoder to support
displaying AFBC encoded buffers on Amlogic GXM and G12A SoCs.

The RDMA is used here to reset and program the AFBC decoder unit
on each vsync without involving the interrupt handler that can
be masked for a long period of time, producing display glitches.

The vsync irq must still be left enabled otherwise the RDMA modules isn't
trigerred when the interrupt line is masked.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_crtc.c | 77 ++++++++++++++++++++++++++++--
 1 file changed, 72 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
index d478fa232951..8366a0ed37af 100644
--- a/drivers/gpu/drm/meson/meson_crtc.c
+++ b/drivers/gpu/drm/meson/meson_crtc.c
@@ -23,7 +23,9 @@
 #include "meson_registers.h"
 #include "meson_venc.h"
 #include "meson_viu.h"
+#include "meson_rdma.h"
 #include "meson_vpp.h"
+#include "meson_osd_afbcd.h"
 
 #define MESON_G12A_VIU_OFFSET	0x5ec0
 
@@ -35,7 +37,11 @@ struct meson_crtc {
 	struct meson_drm *priv;
 	void (*enable_osd1)(struct meson_drm *priv);
 	void (*enable_vd1)(struct meson_drm *priv);
+	void (*enable_osd1_afbc)(struct meson_drm *priv);
+	void (*disable_osd1_afbc)(struct meson_drm *priv);
 	unsigned int viu_offset;
+	bool vsync_forced;
+	bool vsync_disabled;
 };
 #define to_meson_crtc(x) container_of(x, struct meson_crtc, base)
 
@@ -46,6 +52,7 @@ static int meson_crtc_enable_vblank(struct drm_crtc *crtc)
 	struct meson_crtc *meson_crtc = to_meson_crtc(crtc);
 	struct meson_drm *priv = meson_crtc->priv;
 
+	meson_crtc->vsync_disabled = false;
 	meson_venc_enable_vsync(priv);
 
 	return 0;
@@ -56,7 +63,10 @@ static void meson_crtc_disable_vblank(struct drm_crtc *crtc)
 	struct meson_crtc *meson_crtc = to_meson_crtc(crtc);
 	struct meson_drm *priv = meson_crtc->priv;
 
-	meson_venc_disable_vsync(priv);
+	if (!meson_crtc->vsync_forced) {
+		meson_crtc->vsync_disabled = true;
+		meson_venc_disable_vsync(priv);
+	}
 }
 
 static const struct drm_crtc_funcs meson_crtc_funcs = {
@@ -236,6 +246,26 @@ static void meson_crtc_enable_osd1(struct meson_drm *priv)
 			    priv->io_base + _REG(VPP_MISC));
 }
 
+static void meson_crtc_g12a_enable_osd1_afbc(struct meson_drm *priv)
+{
+	writel_relaxed(priv->viu.osd1_blk2_cfg4,
+		       priv->io_base + _REG(VIU_OSD1_BLK2_CFG_W4));
+
+	writel_bits_relaxed(OSD_MEM_LINEAR_ADDR, OSD_MEM_LINEAR_ADDR,
+			    priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
+
+	writel_relaxed(priv->viu.osd1_blk1_cfg4,
+		       priv->io_base + _REG(VIU_OSD1_BLK1_CFG_W4));
+
+	meson_viu_g12a_enable_osd1_afbc(priv);
+
+	writel_bits_relaxed(OSD_MEM_LINEAR_ADDR, OSD_MEM_LINEAR_ADDR,
+			    priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
+
+	writel_bits_relaxed(OSD_MALI_SRC_EN, OSD_MALI_SRC_EN,
+			    priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W0));
+}
+
 static void meson_g12a_crtc_enable_osd1(struct meson_drm *priv)
 {
 	writel_relaxed(priv->viu.osd_blend_din0_scope_h,
@@ -293,6 +323,20 @@ void meson_crtc_irq(struct meson_drm *priv)
 				priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W3));
 		writel_relaxed(priv->viu.osd1_blk0_cfg[4],
 				priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W4));
+
+		if (priv->viu.osd1_afbcd) {
+			if (meson_crtc->enable_osd1_afbc)
+				meson_crtc->enable_osd1_afbc(priv);
+		} else {
+			if (meson_crtc->disable_osd1_afbc)
+				meson_crtc->disable_osd1_afbc(priv);
+			if (priv->afbcd.ops) {
+				priv->afbcd.ops->reset(priv);
+				priv->afbcd.ops->disable(priv);
+			}
+			meson_crtc->vsync_forced = false;
+		}
+
 		writel_relaxed(priv->viu.osd_sc_ctrl0,
 				priv->io_base + _REG(VPP_OSD_SC_CTRL0));
 		writel_relaxed(priv->viu.osd_sc_i_wh_m1,
@@ -314,15 +358,25 @@ void meson_crtc_irq(struct meson_drm *priv)
 		writel_relaxed(priv->viu.osd_sc_v_ctrl0,
 				priv->io_base + _REG(VPP_OSD_VSC_CTRL0));
 
-		meson_canvas_config(priv->canvas, priv->canvas_id_osd1,
-				priv->viu.osd1_addr, priv->viu.osd1_stride,
-				priv->viu.osd1_height, MESON_CANVAS_WRAP_NONE,
-				MESON_CANVAS_BLKMODE_LINEAR, 0);
+		if (!priv->viu.osd1_afbcd)
+			meson_canvas_config(priv->canvas, priv->canvas_id_osd1,
+					    priv->viu.osd1_addr,
+					    priv->viu.osd1_stride,
+					    priv->viu.osd1_height,
+					    MESON_CANVAS_WRAP_NONE,
+					    MESON_CANVAS_BLKMODE_LINEAR, 0);
 
 		/* Enable OSD1 */
 		if (meson_crtc->enable_osd1)
 			meson_crtc->enable_osd1(priv);
 
+		if (priv->viu.osd1_afbcd) {
+			priv->afbcd.ops->reset(priv);
+			priv->afbcd.ops->setup(priv);
+			priv->afbcd.ops->enable(priv);
+			meson_crtc->vsync_forced = true;
+		}
+
 		priv->viu.osd1_commit = false;
 	}
 
@@ -545,6 +599,9 @@ void meson_crtc_irq(struct meson_drm *priv)
 		priv->viu.vd1_commit = false;
 	}
 
+	if (meson_crtc->vsync_disabled)
+		return;
+
 	drm_crtc_handle_vblank(priv->crtc);
 
 	spin_lock_irqsave(&priv->drm->event_lock, flags);
@@ -581,10 +638,20 @@ int meson_crtc_create(struct meson_drm *priv)
 		meson_crtc->enable_osd1 = meson_g12a_crtc_enable_osd1;
 		meson_crtc->enable_vd1 = meson_g12a_crtc_enable_vd1;
 		meson_crtc->viu_offset = MESON_G12A_VIU_OFFSET;
+		meson_crtc->enable_osd1_afbc =
+					meson_crtc_g12a_enable_osd1_afbc;
+		meson_crtc->disable_osd1_afbc =
+					meson_viu_g12a_disable_osd1_afbc;
 		drm_crtc_helper_add(crtc, &meson_g12a_crtc_helper_funcs);
 	} else {
 		meson_crtc->enable_osd1 = meson_crtc_enable_osd1;
 		meson_crtc->enable_vd1 = meson_crtc_enable_vd1;
+		if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM)) {
+			meson_crtc->enable_osd1_afbc =
+					meson_viu_gxm_enable_osd1_afbc;
+			meson_crtc->disable_osd1_afbc =
+					meson_viu_gxm_disable_osd1_afbc;
+		}
 		drm_crtc_helper_add(crtc, &meson_crtc_helper_funcs);
 	}
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
