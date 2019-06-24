Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD3450F21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	References:Date:Subject:To:From:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=bUba2InTsNZJWH7MSzEK76byeL2O3ZuWUiPDACgbdZs=; b=HI0R5NnPb3W9vs
	N7ujEHTyrm0yHvzJhKfyBwF2xj+C7eI0Qkx/iUonQCTtxNoSw4nPnR8ZUegKYi+yHe5kSmfJYUa9i
	JaxCGegr+Og7T+S/+eZkvurt06utvztjJEomG/Md3bDj9AuqZziB7NxhoOdV9Xa/r84l9HuUQ9UYt
	qg/aTwrAZmBhg8z4KFvP5UTjmU7CLlE0234Sz7aL8QKuZoV0dKCuZA4Bx4fvJnG8aJJo57giIK4eT
	sodGmlMrcjWR1JGRPbhkLuShQfaUooXdE5czVqPLGXby9tQrHJDcPk4iAp1z+G+qMAQ2U2xcNb8HY
	SxGKqfe3q3V2LZURRx4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQJh-0002t4-Uh; Mon, 24 Jun 2019 14:51:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQHK-0008Eg-5j
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:49:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id p13so14211810wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:references:reply-to:message-id:mime-version;
 bh=KpqFfKyYpHvcFHiZp299BoodwcnTKM05Y0f01Ts4g1I=;
 b=2TM9fGrpuET2vQSwF8Kyu4OpOUHVfswWR2nE9XSvtHbkMCuksPQVAAhBP1dzTIMgdJ
 1ovkZoxdkGUFLrUC+u9g+CUukV89Hq+s1PbgddRnDLpOctTSlrmbIs/Z6XsseXU/Wmhk
 YOcqoBkSscwYxQAvhNRggH2VZ8Aem5l+fUcitCeYIP8zyjPDCysegKQPFe6xU7xQ7CB5
 6wk+39Xq95bhaKOVr2R//ATT4twbGrzFLACTwgB98PjKFTXiNMwPm6StAs4HYi1Vi6W7
 i0k3f7X8bvFFB5sU81sA49JFXvAs+uxVNxpoayDAru9YerldGHGlJjOCIPyo5XR5jZI4
 0REw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:references:reply-to
 :message-id:mime-version;
 bh=KpqFfKyYpHvcFHiZp299BoodwcnTKM05Y0f01Ts4g1I=;
 b=DgV4rf1UCrRrMHr1W4fcqApLuR0nxJ96+4m7jJbVDLa+RRAjIkIG0TFmf2GH34xv3p
 LWZsx8znnUUDgWHXl4RxddiXKNPUVhzarVePIYHpT2En+SMCn/Ne0aMB8elOavqCgZmI
 IWUIV4bt7e/lIIgtpT0qBEBLauOnitCQAsdgTtAdUin18NgqgtQ/JpBCw5yDjJcEx7pH
 6+Lit3NFt0RQrnJD/GbXJBAcpvC2NuidIm2K++qAUs+nVxBRJXA+fQnVfaAj0iB5cWFK
 jQIKw/KpxnJLzi1gP/hF4AXG0rmkZ3VkiLQc8qV4nPmoeZoIvojZmFeAh2qRLDTHwI2U
 eiKg==
X-Gm-Message-State: APjAAAXgG4BzjzHUnm9U3t+C3WrKpzhhVuxQXt3ITakYXkZsrI49VTBp
 stCj4AmH5ey5GTVmi96rJc4gxA4BE4U=
X-Google-Smtp-Source: APXvYqwQjPMsIr7ts1knHAlSeJPG1En3cHLU0FGlLc+8q9yfwwXEERiY4Y7jTsxhuj+qEejqaMV63w==
X-Received: by 2002:adf:b1ca:: with SMTP id r10mr33168600wra.156.1561387744583; 
 Mon, 24 Jun 2019 07:49:04 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l16sm11000869wrw.42.2019.06.24.07.49.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 07:49:04 -0700 (PDT)
From: Julien Masson <jmasson@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 7/9] drm: meson: global clean-up
Date: Mon, 24 Jun 2019 16:48:57 +0200
References: <86zhm782g5.fsf@baylibre.com>
Message-ID: <86pnn382e8.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_074906_378917_D8CF084D 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This patch aims to:
- Add general and TODO comments
- Respect coding style for multi-line comments
- Align macro definitions
- Remove useless macro

Signed-off-by: Julien Masson <jmasson@baylibre.com>
---
 drivers/gpu/drm/meson/meson_dw_hdmi.c   |  2 ++
 drivers/gpu/drm/meson/meson_dw_hdmi.h   | 12 ++++++----
 drivers/gpu/drm/meson/meson_registers.h | 31 +++++++++++--------------
 drivers/gpu/drm/meson/meson_vclk.c      |  4 +++-
 drivers/gpu/drm/meson/meson_venc.c      | 10 ++++----
 5 files changed, 33 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
index df3f9ddd2234..1579ff76c1ed 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
@@ -428,6 +428,8 @@ static int dw_hdmi_phy_init(struct dw_hdmi *hdmi, void *data,
 	/* Enable internal pixclk, tmds_clk, spdif_clk, i2s_clk, cecclk */
 	dw_hdmi_top_write_bits(dw_hdmi, HDMITX_TOP_CLK_CNTL,
 			       0x3, 0x3);
+
+	/* Enable cec_clk and hdcp22_tmdsclk_en */
 	dw_hdmi_top_write_bits(dw_hdmi, HDMITX_TOP_CLK_CNTL,
 			       0x3 << 4, 0x3 << 4);
 
diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.h b/drivers/gpu/drm/meson/meson_dw_hdmi.h
index 1b2ef043eb5c..08e1c14e4ea0 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.h
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.h
@@ -100,7 +100,8 @@
 #define HDMITX_TOP_INTR_RXSENSE_RISE	BIT(6)
 #define HDMITX_TOP_INTR_RXSENSE_FALL	BIT(7)
 
-/* Bit 14:12 RW tmds_sel: 3'b000=Output zero; 3'b001=Output normal TMDS data;
+/*
+ * Bit 14:12 RW tmds_sel: 3'b000=Output zero; 3'b001=Output normal TMDS data;
  *     3'b010=Output PRBS data; 3'b100=Output shift pattern. Default 0.
  * Bit 11: 9 RW shift_pttn_repeat: 0=New pattern every clk cycle; 1=New pattern
  *     every 2 clk cycles; ...; 7=New pattern every 8 clk cycles. Default 0.
@@ -135,7 +136,8 @@
 /* Bit  9: 0 RW tmds_clk_pttn[29:20]. Default 0. */
 #define HDMITX_TOP_TMDS_CLK_PTTN_23             (0x00B)
 
-/* Bit 1 RW shift_tmds_clk_pttn:1=Enable shifting clk pattern,
+/*
+ * Bit 1 RW shift_tmds_clk_pttn:1=Enable shifting clk pattern,
  * used when TMDS CLK rate = TMDS character rate /4. Default 0.
  * Bit 0 R  Reserved. Default 0.
  * [	1] shift_tmds_clk_pttn
@@ -143,12 +145,14 @@
  */
 #define HDMITX_TOP_TMDS_CLK_PTTN_CNTL           (0x00C)
 
-/* Bit 0 RW revocmem_wr_fail: Read back 1 to indicate Host write REVOC MEM
+/*
+ * Bit 0 RW revocmem_wr_fail: Read back 1 to indicate Host write REVOC MEM
  * failure, write 1 to clear the failure flag.  Default 0.
  */
 #define HDMITX_TOP_REVOCMEM_STAT                (0x00D)
 
-/* Bit	   1 R	filtered RxSense status
+/*
+ * Bit	   1 R	filtered RxSense status
  * Bit     0 R  filtered HPD status.
  */
 #define HDMITX_TOP_STAT0                        (0x00E)
diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index 537a779492bd..3581fb3d9727 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -406,19 +406,19 @@
 #define VPP_PREBLEND_CURRENT_XY 0x1d24
 #define VPP_POSTBLEND_CURRENT_XY 0x1d25
 #define VPP_MISC 0x1d26
-#define		VPP_PREBLEND_ENABLE	BIT(6)
-#define		VPP_POSTBLEND_ENABLE	BIT(7)
-#define		VPP_OSD2_ALPHA_PREMULT	BIT(8)
-#define		VPP_OSD1_ALPHA_PREMULT	BIT(9)
-#define		VPP_VD1_POSTBLEND	BIT(10)
-#define		VPP_VD2_POSTBLEND	BIT(11)
-#define		VPP_OSD1_POSTBLEND	BIT(12)
-#define		VPP_OSD2_POSTBLEND	BIT(13)
-#define		VPP_VD1_PREBLEND	BIT(14)
-#define		VPP_VD2_PREBLEND	BIT(15)
-#define		VPP_OSD1_PREBLEND	BIT(16)
-#define		VPP_OSD2_PREBLEND	BIT(17)
-#define		VPP_COLOR_MNG_ENABLE	BIT(28)
+#define		VPP_PREBLEND_ENABLE             BIT(6)
+#define		VPP_POSTBLEND_ENABLE            BIT(7)
+#define		VPP_OSD2_ALPHA_PREMULT          BIT(8)
+#define		VPP_OSD1_ALPHA_PREMULT          BIT(9)
+#define		VPP_VD1_POSTBLEND               BIT(10)
+#define		VPP_VD2_POSTBLEND               BIT(11)
+#define		VPP_OSD1_POSTBLEND              BIT(12)
+#define		VPP_OSD2_POSTBLEND              BIT(13)
+#define		VPP_VD1_PREBLEND                BIT(14)
+#define		VPP_VD2_PREBLEND                BIT(15)
+#define		VPP_OSD1_PREBLEND               BIT(16)
+#define		VPP_OSD2_PREBLEND               BIT(17)
+#define		VPP_COLOR_MNG_ENABLE            BIT(28)
 #define VPP_OFIFO_SIZE 0x1d27
 #define		VPP_OFIFO_SIZE_MASK             GENMASK(13, 0)
 #define		VPP_OFIFO_SIZE_DEFAULT          (0xfff << 20 | 0x1000)
@@ -629,6 +629,7 @@
 #define OSD34_SCI_WH_M1 0x3d29
 #define OSD34_SCO_H_START_END 0x3d2a
 #define OSD34_SCO_V_START_END 0x3d2b
+
 /* viu2 */
 #define VIU2_ADDR_START 0x1e00
 #define VIU2_ADDR_END 0x1eff
@@ -1611,7 +1612,6 @@
 #define OSD1_AFBCD_STATUS 0x31a8
 #define OSD1_AFBCD_PIXEL_HSCOPE 0x31a9
 #define OSD1_AFBCD_PIXEL_VSCOPE 0x31aa
-#define VIU_MISC_CTRL1 0x1a07
 
 /* add for gxm and 962e dv core2 */
 #define DOLBY_CORE2A_SWAP_CTRL1	0x3434
@@ -1626,8 +1626,6 @@
 #define VPU_MAFBC_COMMAND 0x3a05
 #define VPU_MAFBC_STATUS 0x3a06
 #define VPU_MAFBC_SURFACE_CFG 0x3a07
-
-/* osd afbc on g12a */
 #define VPU_MAFBC_HEADER_BUF_ADDR_LOW_S0 0x3a10
 #define VPU_MAFBC_HEADER_BUF_ADDR_HIGH_S0 0x3a11
 #define VPU_MAFBC_FORMAT_SPECIFIER_S0 0x3a12
@@ -1748,6 +1746,5 @@
 #define VPP_POST_BLEND_DUMMY_ALPHA 0x3969
 #define VPP_RDARB_MODE 0x3978
 #define VPP_RDARB_REQEN_SLV 0x3979
-#define VPU_RDARB_MODE_L2C1 0x279d
 
 #endif /* __MESON_REGISTERS_H */
diff --git a/drivers/gpu/drm/meson/meson_vclk.c b/drivers/gpu/drm/meson/meson_vclk.c
index 26732f038d19..e7c2b439d0f7 100644
--- a/drivers/gpu/drm/meson/meson_vclk.c
+++ b/drivers/gpu/drm/meson/meson_vclk.c
@@ -495,6 +495,7 @@ void meson_hdmi_pll_set_params(struct meson_drm *priv, unsigned int m,
 		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x0b3a0400 | m);
 
 		/* Enable and reset */
+		/* TODO: add specific macro for g12a here */
 		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL,
 				   0x3 << 28, 0x3 << 28);
 
@@ -969,7 +970,8 @@ void meson_vclk_setup(struct meson_drm *priv, unsigned int target,
 		meson_venci_cvbs_clock_config(priv);
 		return;
 	} else if (target == MESON_VCLK_TARGET_DMT) {
-		/* The DMT clock path is fixed after the PLL:
+		/*
+		 * The DMT clock path is fixed after the PLL:
 		 * - automatic PLL freq + OD management
 		 * - vid_pll_div = VID_PLL_DIV_5
 		 * - vclk_div = 2
diff --git a/drivers/gpu/drm/meson/meson_venc.c b/drivers/gpu/drm/meson/meson_venc.c
index 918df02d2aef..2835133ab676 100644
--- a/drivers/gpu/drm/meson/meson_venc.c
+++ b/drivers/gpu/drm/meson/meson_venc.c
@@ -61,9 +61,9 @@
 /* HHI Registers */
 #define HHI_GCLK_MPEG2		0x148 /* 0x52 offset in data sheet */
 #define HHI_VDAC_CNTL0		0x2F4 /* 0xbd offset in data sheet */
-#define HHI_VDAC_CNTL0_G12A	0x2EC /* 0xbd offset in data sheet */
+#define HHI_VDAC_CNTL0_G12A	0x2EC /* 0xbb offset in data sheet */
 #define HHI_VDAC_CNTL1		0x2F8 /* 0xbe offset in data sheet */
-#define HHI_VDAC_CNTL1_G12A	0x2F0 /* 0xbe offset in data sheet */
+#define HHI_VDAC_CNTL1_G12A	0x2F0 /* 0xbc offset in data sheet */
 #define HHI_HDMI_PHY_CNTL0	0x3a0 /* 0xe8 offset in data sheet */
 
 struct meson_cvbs_enci_mode meson_cvbs_enci_pal = {
@@ -1085,7 +1085,8 @@ void meson_venc_hdmi_mode_set(struct meson_drm *priv, int vic,
 		writel_relaxed(vmode->enci.video_mode,
 				priv->io_base + _REG(ENCI_VIDEO_MODE));
 
-		/* Advanced Video Mode :
+		/*
+		 * Advanced Video Mode :
 		 * Demux shifting 0x2
 		 * Blank line end at line17/22
 		 * High bandwidth Luma Filter
@@ -1599,7 +1600,8 @@ void meson_venci_cvbs_mode_set(struct meson_drm *priv,
 	writel_relaxed(mode->video_mode,
 			priv->io_base + _REG(ENCI_VIDEO_MODE));
 
-	/* Advanced Video Mode :
+	/*
+	 * Advanced Video Mode :
 	 * Demux shifting 0x2
 	 * Blank line end at line17/22
 	 * High bandwidth Luma Filter
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
