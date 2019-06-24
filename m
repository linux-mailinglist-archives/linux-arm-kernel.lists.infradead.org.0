Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBD350F1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	References:Date:Subject:To:From:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=0Vi/zGEDeKQIxW5LFfC8Fe8CJwkUFbuLypg9o9KbBpQ=; b=fIVKwdIVZq2NBk
	gf2u82BIL0Yb2zFXZ9TZRcIUtRXysJbSlkw6KbhhBoZ6g0C3ZFJ7p+9MCgL3mQHSLaYaWvnaI/BRJ
	5moGGOyEIaioZQKf25IvE1a1WV3q4D2QHpb2Rgv5Ft2rb6q0BLV0mrIoo8m3otc24k1qi2bhKHUAQ
	UMNa9XSbJVVWWcDOGea6aR7nzeuNOEJ33VvM1Wo48igIcFScQZAmQiPyuPifCXBA/Z5m6o2kvskQP
	5ulXsRwsKM2p5gv4AqWd3fX88mivflItJq4K413UfS6Fee6n4RwKkThmfFjMZCwfo52T9pZObFbJh
	VUv7s/oSFaHhRKnj/v8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQIy-0002HW-Mr; Mon, 24 Jun 2019 14:50:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQH6-00084f-U2
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:48:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id x17so14210376wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:references:reply-to:message-id:mime-version;
 bh=juy6npE4x6ryiVLllsHp8u5iInxEujD/MRGnVmG1/YQ=;
 b=H9ldGHEeuGuYcjOkm3/0ZWiDlAL9VtyJvlkkzJidq+rbywqqp7p2/YWlP1bCexDvDU
 iyrWkW9mbn3LpH2Wy6CHHBUtBRR7z4GoOy0UImMKffEe3eD4PRefm7g6KzCbykHyOYS7
 kfwe1NXTHIZL50swmnRIq8+4OUmDQzAynsdWn+MMKeCAgD6p8BFWLJ/82Eoetcirq6IX
 RgGgrvAVF6bZKdgLESsD/56rAq43l843/kldAvWQKs7HNvFuMguAiu2tl9lxqCjbz9RV
 dvyPVZM15Y1JtzsRXX7XdxVaTLCLTjM7fYHrA/dnoLLsU6MInjNf0DbmsuLHER8D5oWp
 gnPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:references:reply-to
 :message-id:mime-version;
 bh=juy6npE4x6ryiVLllsHp8u5iInxEujD/MRGnVmG1/YQ=;
 b=PIWGD8l86JNuWfLRKXkAOXFPibGQ1U9xDnbkaBzkhPX+TdEt609NpdoANfO29tAhgN
 jTrwALCcH21ybovNNobwZ+RVjZK5TPx65GVGSCGHyYuJ6kgJRecAMGZiWdlMObwMywiE
 onKCn+bdtjziTiQcnt4dXPtunWBWV0CNuEUsvze6IwIBwpkAI9einD0kwLtabSp78kTa
 PjDzdLmi9SNuyi5nIH86fTVLljatFJoDDaHpVaqwSXg8BPlreh+PhHsKdQutjWh26ggl
 uwb3TsWEi2sscNJ5/5Z+6uinu2fH1tE1jWJBV7fnDdusa1AftXo/nMh8cibZmdy4CFw+
 zHFQ==
X-Gm-Message-State: APjAAAWRq5vhSG5Bm7Wl6HHuFiX0yMq2sHZDaoLrtnc9SHlF8XEMuQ84
 63vgspeRBoIlf2m8u9cd8/c3Ig==
X-Google-Smtp-Source: APXvYqxxLc+nbX5PifpBkUVwkKXIfj6DkyPicnW1mw0Qid9r+VSQ7Jb321Lae3rzPdteWldp09o+5Q==
X-Received: by 2002:adf:b1ca:: with SMTP id r10mr33167899wra.156.1561387730934; 
 Mon, 24 Jun 2019 07:48:50 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v65sm18453644wme.31.2019.06.24.07.48.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 07:48:50 -0700 (PDT)
From: Julien Masson <jmasson@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 5/9] drm: meson: viu: use proper macros instead of magic
 constants
Date: Mon, 24 Jun 2019 16:48:43 +0200
References: <86zhm782g5.fsf@baylibre.com>
Message-ID: <86sgrz82em.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_074853_037099_C5C9133B 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 URG_BIZ                BODY: Contains urgent matter
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
Reply-To: 86zhm782g5.fsf@baylibre.com
Cc: Julien Masson <jmasson@baylibre.com>, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add new macros which are used to set the following
registers:
- VIU_SW_RESET
- VIU_OSD1_CTRL_STAT
- VIU_OSD2_CTRL_STAT
- VIU_OSD1_FIFO_CTRL_STAT
- VIU_OSD2_FIFO_CTRL_STAT
- VIU_MISC_CTRL0
- VIU_OSD_BLEND_CTRL
- OSD1_BLEND_SRC_CTRL
- OSD2_BLEND_SRC_CTRL
- DOLBY_PATH_CTRL

Signed-off-by: Julien Masson <jmasson@baylibre.com>
---
 drivers/gpu/drm/meson/meson_plane.c     |  2 +-
 drivers/gpu/drm/meson/meson_registers.h | 27 ++++++++
 drivers/gpu/drm/meson/meson_viu.c       | 82 +++++++++++++------------
 3 files changed, 72 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
index d90427b93a51..f2b2be1e8088 100644
--- a/drivers/gpu/drm/meson/meson_plane.c
+++ b/drivers/gpu/drm/meson/meson_plane.c
@@ -318,7 +318,7 @@ static void meson_plane_atomic_disable(struct drm_plane *plane,
 
 	/* Disable OSD1 */
 	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
-		writel_bits_relaxed(3 << 8, 0,
+		writel_bits_relaxed(VIU_OSD1_POSTBLD_SRC_OSD1, 0,
 				    priv->io_base + _REG(OSD1_BLEND_SRC_CTRL));
 	else
 		writel_bits_relaxed(VPP_OSD1_POSTBLEND, 0,
diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index 172f0794e0cd..7a52aac7e28a 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -146,11 +146,19 @@
 #define VIU_ADDR_START 0x1a00
 #define VIU_ADDR_END 0x1aff
 #define VIU_SW_RESET 0x1a01
+#define		VIU_SW_RESET_OSD1               BIT(0)
 #define VIU_MISC_CTRL0 0x1a06
+#define		VIU_CTRL0_VD1_AFBC_MASK         0x170000
 #define VIU_MISC_CTRL1 0x1a07
 #define D2D3_INTF_LENGTH 0x1a08
 #define D2D3_INTF_CTRL0 0x1a09
 #define VIU_OSD1_CTRL_STAT 0x1a10
+#define		VIU_OSD1_OSD_BLK_ENABLE         BIT(0)
+#define		VIU_OSD1_POSTBLD_SRC_VD1        (1 << 8)
+#define		VIU_OSD1_POSTBLD_SRC_VD2        (2 << 8)
+#define		VIU_OSD1_POSTBLD_SRC_OSD1       (3 << 8)
+#define		VIU_OSD1_POSTBLD_SRC_OSD2       (4 << 8)
+#define		VIU_OSD1_OSD_ENABLE             BIT(21)
 #define VIU_OSD1_CTRL_STAT2 0x1a2d
 #define VIU_OSD1_COLOR_ADDR 0x1a11
 #define VIU_OSD1_COLOR 0x1a12
@@ -240,6 +248,12 @@
 #define VIU_OSD3_MALI_UNPACK_CTRL 0x3d9f
 #define VIU_OSD3_DIMM_CTRL 0x3da0
 
+#define VIU_OSD_DDR_PRIORITY_URGENT      BIT(0)
+#define VIU_OSD_HOLD_FIFO_LINES(lines)   ((lines & 0x1f) << 5)
+#define VIU_OSD_FIFO_DEPTH_VAL(val)      ((val & 0x7f) << 12)
+#define VIU_OSD_WORDS_PER_BURST(words)   (((words & 0x4) >> 1) << 22)
+#define VIU_OSD_FIFO_LIMITS(size)        ((size & 0xf) << 24)
+
 #define VD1_IF0_GEN_REG 0x1a50
 #define VD1_IF0_CANVAS0 0x1a51
 #define VD1_IF0_CANVAS1 0x1a52
@@ -1620,10 +1634,18 @@
 #define VPU_MAFBC_PREFETCH_CFG_S3 0x3a7c
 
 #define DOLBY_PATH_CTRL 0x1a0c
+#define		DOLBY_BYPASS_EN(val)            (val & 0xf)
 #define OSD_PATH_MISC_CTRL 0x1a0e
 #define MALI_AFBCD_TOP_CTRL 0x1a0f
 
 #define VIU_OSD_BLEND_CTRL 0x39b0
+#define		VIU_OSD_BLEND_REORDER(dest, src)      ((src) << (dest * 4))
+#define		VIU_OSD_BLEND_DIN_EN(bits)            ((bits & 0xf) << 20)
+#define		VIU_OSD_BLEND1_DIN3_BYPASS_TO_DOUT1   BIT(24)
+#define		VIU_OSD_BLEND1_DOUT_BYPASS_TO_BLEND2  BIT(25)
+#define		VIU_OSD_BLEND_DIN0_BYPASS_TO_DOUT0    BIT(26)
+#define		VIU_OSD_BLEND_BLEN2_PREMULT_EN(input) ((input & 0x3) << 27)
+#define		VIU_OSD_BLEND_HOLD_LINES(lines)       ((lines & 0x7) << 29)
 #define VIU_OSD_BLEND_CTRL1 0x39c0
 #define VIU_OSD_BLEND_DIN0_SCOPE_H 0x39b1
 #define VIU_OSD_BLEND_DIN0_SCOPE_V 0x39b2
@@ -1665,6 +1687,11 @@
 #define		VD_BLEND_POSTBLD_PREMULT_EN     BIT(16)
 #define OSD1_BLEND_SRC_CTRL 0x1dfd
 #define OSD2_BLEND_SRC_CTRL 0x1dfe
+#define		OSD_BLEND_POSTBLD_SRC_VD1       (1 << 8)
+#define		OSD_BLEND_POSTBLD_SRC_VD2       (2 << 8)
+#define		OSD_BLEND_POSTBLD_SRC_OSD1      (3 << 8)
+#define		OSD_BLEND_POSTBLD_SRC_OSD2      (4 << 8)
+#define		OSD_BLEND_PATH_SEL_ENABLE       BIT(20)
 
 #define VPP_POST_BLEND_BLEND_DUMMY_DATA 0x3968
 #define VPP_POST_BLEND_DUMMY_ALPHA 0x3969
diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
index 4b2b3024d371..8b7fde2de489 100644
--- a/drivers/gpu/drm/meson/meson_viu.c
+++ b/drivers/gpu/drm/meson/meson_viu.c
@@ -323,9 +323,9 @@ void meson_viu_osd1_reset(struct meson_drm *priv)
 				priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
 
 	/* Reset OSD1 */
-	writel_bits_relaxed(BIT(0), BIT(0),
+	writel_bits_relaxed(VIU_SW_RESET_OSD1, VIU_SW_RESET_OSD1,
 			    priv->io_base + _REG(VIU_SW_RESET));
-	writel_bits_relaxed(BIT(0), 0,
+	writel_bits_relaxed(VIU_SW_RESET_OSD1, 0,
 			    priv->io_base + _REG(VIU_SW_RESET));
 
 	/* Rewrite these registers state lost in the reset */
@@ -338,15 +338,22 @@ void meson_viu_osd1_reset(struct meson_drm *priv)
 	meson_viu_load_matrix(priv);
 }
 
+static inline uint32_t meson_viu_osd_burst_length_reg(uint32_t length)
+{
+	uint32_t val = (((length & 0x80) % 24) / 12);
+
+	return (((val & 0x3) << 10) | (((val & 0x4) >> 2) << 31));
+}
+
 void meson_viu_init(struct meson_drm *priv)
 {
 	uint32_t reg;
 
 	/* Disable OSDs */
-	writel_bits_relaxed(BIT(0) | BIT(21), 0,
-			priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
-	writel_bits_relaxed(BIT(0) | BIT(21), 0,
-			priv->io_base + _REG(VIU_OSD2_CTRL_STAT));
+	writel_bits_relaxed(VIU_OSD1_OSD_BLK_ENABLE | VIU_OSD1_OSD_ENABLE, 0,
+			    priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
+	writel_bits_relaxed(VIU_OSD1_OSD_BLK_ENABLE | VIU_OSD1_OSD_ENABLE, 0,
+			    priv->io_base + _REG(VIU_OSD2_CTRL_STAT));
 
 	/* On GXL/GXM, Use the 10bit HDR conversion matrix */
 	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu") ||
@@ -357,19 +364,17 @@ void meson_viu_init(struct meson_drm *priv)
 					       true);
 
 	/* Initialize OSD1 fifo control register */
-	reg = BIT(0) |	/* Urgent DDR request priority */
-	      (4 << 5); /* hold_fifo_lines */
+	reg = VIU_OSD_DDR_PRIORITY_URGENT |
+		VIU_OSD_HOLD_FIFO_LINES(4) |
+		VIU_OSD_FIFO_DEPTH_VAL(32) | /* fifo_depth_val: 32*8=256 */
+		VIU_OSD_WORDS_PER_BURST(4) | /* 4 words in 1 burst */
+		VIU_OSD_FIFO_LIMITS(2);      /* fifo_lim: 2*16=32 */
+
 	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
-		reg |= (1 << 10) | /* burst length 32 */
-		       (32 << 12) | /* fifo_depth_val: 32*8=256 */
-		       (2 << 22) | /* 4 words in 1 burst */
-		       (2 << 24) |
-		       (1 << 31);
+		reg |= meson_viu_osd_burst_length_reg(32);
 	else
-		reg |= (3 << 10) | /* burst length 64 */
-		       (32 << 12) | /* fifo_depth_val: 32*8=256 */
-		       (2 << 22) | /* 4 words in 1 burst */
-		       (2 << 24);
+		reg |= meson_viu_osd_burst_length_reg(64);
+
 	writel_relaxed(reg, priv->io_base + _REG(VIU_OSD1_FIFO_CTRL_STAT));
 	writel_relaxed(reg, priv->io_base + _REG(VIU_OSD2_FIFO_CTRL_STAT));
 
@@ -382,12 +387,9 @@ void meson_viu_init(struct meson_drm *priv)
 			    priv->io_base + _REG(VIU_OSD2_CTRL_STAT2));
 
 	/* Disable VD1 AFBC */
-	/* di_mif0_en=0 mif0_to_vpp_en=0 di_mad_en=0 */
-	writel_bits_relaxed(0x7 << 16, 0,
-			priv->io_base + _REG(VIU_MISC_CTRL0));
-	/* afbc vd1 set=0 */
-	writel_bits_relaxed(BIT(20), 0,
-			priv->io_base + _REG(VIU_MISC_CTRL0));
+	/* di_mif0_en=0 mif0_to_vpp_en=0 di_mad_en=0 and afbc vd1 set=0*/
+	writel_bits_relaxed(VIU_CTRL0_VD1_AFBC_MASK, 0,
+			    priv->io_base + _REG(VIU_MISC_CTRL0));
 	writel_relaxed(0, priv->io_base + _REG(AFBC_ENABLE));
 
 	writel_relaxed(0x00FF00C0,
@@ -396,27 +398,31 @@ void meson_viu_init(struct meson_drm *priv)
 			priv->io_base + _REG(VD2_IF0_LUMA_FIFO_SIZE));
 
 	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
-		writel_relaxed(4 << 29 |
-				1 << 27 |
-				1 << 26 | /* blend_din0 input to blend0 */
-				1 << 25 | /* blend1_dout to blend2 */
-				1 << 24 | /* blend1_din3 input to blend1 */
-				1 << 20 |
-				0 << 16 |
-				1,
-				priv->io_base + _REG(VIU_OSD_BLEND_CTRL));
-		writel_relaxed(1 << 20,
-				priv->io_base + _REG(OSD1_BLEND_SRC_CTRL));
-		writel_relaxed(1 << 20,
-				priv->io_base + _REG(OSD2_BLEND_SRC_CTRL));
+		writel_relaxed(VIU_OSD_BLEND_REORDER(0, 1) |
+			       VIU_OSD_BLEND_REORDER(1, 0) |
+			       VIU_OSD_BLEND_REORDER(2, 0) |
+			       VIU_OSD_BLEND_REORDER(3, 0) |
+			       VIU_OSD_BLEND_DIN_EN(1) |
+			       VIU_OSD_BLEND1_DIN3_BYPASS_TO_DOUT1 |
+			       VIU_OSD_BLEND1_DOUT_BYPASS_TO_BLEND2 |
+			       VIU_OSD_BLEND_DIN0_BYPASS_TO_DOUT0 |
+			       VIU_OSD_BLEND_BLEN2_PREMULT_EN(1) |
+			       VIU_OSD_BLEND_HOLD_LINES(4),
+			       priv->io_base + _REG(VIU_OSD_BLEND_CTRL));
+
+		writel_relaxed(VIU_OSD1_POSTBLD_SRC_OSD1,
+			       priv->io_base + _REG(OSD1_BLEND_SRC_CTRL));
+		writel_relaxed(OSD_BLEND_PATH_SEL_ENABLE,
+			       priv->io_base + _REG(OSD2_BLEND_SRC_CTRL));
 		writel_relaxed(0, priv->io_base + _REG(VD1_BLEND_SRC_CTRL));
 		writel_relaxed(0, priv->io_base + _REG(VD2_BLEND_SRC_CTRL));
 		writel_relaxed(0,
 				priv->io_base + _REG(VIU_OSD_BLEND_DUMMY_DATA0));
 		writel_relaxed(0,
 				priv->io_base + _REG(VIU_OSD_BLEND_DUMMY_ALPHA));
-		writel_bits_relaxed(0x3 << 2, 0x3 << 2,
-				priv->io_base + _REG(DOLBY_PATH_CTRL));
+
+		writel_bits_relaxed(DOLBY_BYPASS_EN(0xc), DOLBY_BYPASS_EN(0xc),
+				    priv->io_base + _REG(DOLBY_PATH_CTRL));
 	}
 
 	priv->viu.osd1_enabled = false;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
