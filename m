Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B69DE7BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDHYqzIqe+bcMeTw+Bih10ydoIhbs2Y10AilHYC4R9w=; b=WQ7j/CS4Ad1I4b
	oLH0HX/yBVbKbo+sLOSj/woFcHfIFmCYOnY83LCdDUG3eH1x+i3cmpYbuROCPMd4KYml3xCbhOV0U
	2I94qj7rIkK6z+dd+S+BC7kCR/lBVrhpDvjAT3Q4v+aOWAEiIKJa4KEsfBuYCQu+rsf40XeMQJv7Y
	+9ra7Cx4k3RfpQ8Xz0/bW8yxzRv0abaMbAWcxPFv0mIz54o8S+m7atr39GkqdL0qkBfP9I+yULXgn
	TsL8JUzNRgCm+h7SYyIsAxW+GXoT7zZfIUG/pobhIh/0EZ6zHFXgw2Wcch5IxnPfOwrMi1PBX5EWb
	efUe5w0vZWH3mJkjE2hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTnt-0003Ze-UY; Mon, 21 Oct 2019 09:16:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTmU-0002fJ-A3
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:15:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id r19so12403623wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 02:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BZg3wA3CexIsdI8bucFW71CwBOf+22S0l1cVmo43X3M=;
 b=PWufA/wFydLL9PRHJggsM87f1TIWH5DDAVxg8RcwVAN8L9pshc7/zi3nnCfuHvD3uE
 QXl/b3DGbqBOvXxpDZ+VD2YnNwP/T3fvFbUl6G7bOk8yVr7TjLPHG6hEfCMAKRRzQeuK
 Mc5rb9z4mkh9t+pX6ws/G4rBfzFz2Ma86qHSHeUaEUnciGDvT2ezqgzFTk3aFGRt2zom
 qTc3EHdH3FYzxhc3axMqnzMlLecdzpIbHmPrrA0QHgNW3mo5Qkt3wCSGreOvnlsFFgGk
 HjyaklQv284iVEQspY1sqrTLoMBEZ+FdAoyh28uevH+tuE5xKSshXHjW1eF57ZtSTnrj
 b77w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BZg3wA3CexIsdI8bucFW71CwBOf+22S0l1cVmo43X3M=;
 b=J/eBFmJ0jcyMmi0x6ewTG0Sz1gCr/sZ0D0qRflnX/KVUDWxsu4UrY8hODLTmdxSv+Z
 guq0A3zZYr4SEy+m6K79XV29b1wkRwy+uPvxMIY8XXhZwOdzCvIXp5yY+H76CvyyCLDc
 FU/6NC3iuyrEDsLVgFW6zekL4BQZATzd62mBKH2uJt3sNAWTvaiNpW56EAI516vSEX9j
 Zedm5bs3G/7Jy/E9jF7UNZMhjIcIyRuIRb74cwUZVCobe6P3JmJSYlGULjHtcyvevaj6
 iYqjtDTGz5HbSnjorfbl/JaDQxw0srzwtxiRy4zjgePD/lhLAnZRH02F3zrZ+jrgjLN2
 36Fw==
X-Gm-Message-State: APjAAAU7CeXrCHcJzNwlKy5cTTAbrH0XFJ701YiQH5bB+gKYFUdEqy0G
 bSi1uVBBCtSw+TLkQArnzqGfoA==
X-Google-Smtp-Source: APXvYqw660fZJFag4TsKydDYuEUSWbov+50XcweZIjqd3PyAaIv9BmnUA4f0W8L4p0Gll/SniJlCJg==
X-Received: by 2002:a05:600c:2107:: with SMTP id
 u7mr19026586wml.86.1571649312716; 
 Mon, 21 Oct 2019 02:15:12 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t13sm20281595wra.70.2019.10.21.02.15.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 02:15:12 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 1/9] drm/meson: add AFBC decoder registers for GXM and G12A
Date: Mon, 21 Oct 2019 11:15:01 +0200
Message-Id: <20191021091509.3864-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021091509.3864-1-narmstrong@baylibre.com>
References: <20191021091509.3864-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021514_357172_435FF484 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

Add the registers used to program the ARM Framebuffer Compression decoders
used in the Amlogic GXM and G12A SoCs families.

This also adds the routing and pipeline configuration bits and registers
needed to enable AFBC support.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_registers.h | 62 +++++++++++++++++++++++++
 drivers/gpu/drm/meson/meson_viu.h       | 15 ++++++
 2 files changed, 77 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index 05fce48ceee0..547bee04b46e 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -138,19 +138,25 @@
 #define VIU_ADDR_START 0x1a00
 #define VIU_ADDR_END 0x1aff
 #define VIU_SW_RESET 0x1a01
+#define		VIU_SW_RESET_OSD1_AFBCD		BIT(31)
+#define		VIU_SW_RESET_G12A_OSD1_AFBCD	BIT(21)
+#define		VIU_SW_RESET_G12A_AFBC_ARB	BIT(19)
 #define		VIU_SW_RESET_OSD1               BIT(0)
 #define VIU_MISC_CTRL0 0x1a06
 #define		VIU_CTRL0_VD1_AFBC_MASK         0x170000
 #define VIU_MISC_CTRL1 0x1a07
+#define		MALI_AFBC_MISC			GENMASK(15, 8)
 #define D2D3_INTF_LENGTH 0x1a08
 #define D2D3_INTF_CTRL0 0x1a09
 #define VIU_OSD1_CTRL_STAT 0x1a10
 #define		VIU_OSD1_OSD_BLK_ENABLE         BIT(0)
+#define		VIU_OSD1_OSD_MEM_MODE_LINEAR	BIT(2)
 #define		VIU_OSD1_POSTBLD_SRC_VD1        (1 << 8)
 #define		VIU_OSD1_POSTBLD_SRC_VD2        (2 << 8)
 #define		VIU_OSD1_POSTBLD_SRC_OSD1       (3 << 8)
 #define		VIU_OSD1_POSTBLD_SRC_OSD2       (4 << 8)
 #define		VIU_OSD1_OSD_ENABLE             BIT(21)
+#define		VIU_OSD1_CFG_SYN_EN             BIT(31)
 #define VIU_OSD1_CTRL_STAT2 0x1a2d
 #define VIU_OSD1_COLOR_ADDR 0x1a11
 #define VIU_OSD1_COLOR 0x1a12
@@ -181,6 +187,16 @@
 #define VIU_OSD1_FIFO_CTRL_STAT 0x1a2b
 #define VIU_OSD1_TEST_RDDATA 0x1a2c
 #define VIU_OSD1_PROT_CTRL 0x1a2e
+#define VIU_OSD1_MALI_UNPACK_CTRL 0x1a2f
+#define		VIU_OSD1_MALI_UNPACK_EN		BIT(31)
+#define		VIU_OSD1_MALI_AFBCD_R_REORDER	GENMASK(15, 12)
+#define		VIU_OSD1_MALI_AFBCD_G_REORDER	GENMASK(11, 8)
+#define		VIU_OSD1_MALI_AFBCD_B_REORDER	GENMASK(7, 4)
+#define		VIU_OSD1_MALI_AFBCD_A_REORDER	GENMASK(3, 0)
+#define		VIU_OSD1_MALI_REORDER_R		1
+#define		VIU_OSD1_MALI_REORDER_G		2
+#define		VIU_OSD1_MALI_REORDER_B		3
+#define		VIU_OSD1_MALI_REORDER_A		4
 #define VIU_OSD2_CTRL_STAT 0x1a30
 #define VIU_OSD2_CTRL_STAT2 0x1a4d
 #define VIU_OSD2_COLOR_ADDR 0x1a31
@@ -1595,15 +1611,33 @@
 
 /* osd afbcd on gxtvbb */
 #define OSD1_AFBCD_ENABLE 0x31a0
+#define		OSD1_AFBCD_ID_FIFO_THRD			GENMASK(15, 9)
+#define		OSD1_AFBCD_DEC_ENABLE			BIT(8)
+#define		OSD1_AFBCD_FRM_START			BIT(0)
 #define OSD1_AFBCD_MODE 0x31a1
+#define		OSD1_AFBCD_SOFT_RESET			BIT(31)
+#define		OSD1_AFBCD_AXI_REORDER_MODE		BIT(28)
+#define		OSD1_AFBCD_MIF_URGENT			GENMASK(25, 24)
+#define		OSD1_AFBCD_HOLD_LINE_NUM		GENMASK(22, 16)
+#define		OSD1_AFBCD_RGBA_EXCHAN_CTRL		GENMASK(15, 8)
+#define		OSD1_AFBCD_HREG_BLOCK_SPLIT		BIT(6)
+#define		OSD1_AFBCD_HREG_HALF_BLOCK		BIT(5)
+#define		OSD1_AFBCD_HREG_PIXEL_PACKING_FMT	GENMASK(4, 0)
 #define OSD1_AFBCD_SIZE_IN 0x31a2
+#define		OSD1_AFBCD_HREG_VSIZE_IN		GENMASK(31, 16)
+#define		OSD1_AFBCD_HREG_HSIZE_IN		GENMASK(15, 0)
 #define OSD1_AFBCD_HDR_PTR 0x31a3
 #define OSD1_AFBCD_FRAME_PTR 0x31a4
 #define OSD1_AFBCD_CHROMA_PTR 0x31a5
 #define OSD1_AFBCD_CONV_CTRL 0x31a6
+#define		OSD1_AFBCD_CONV_LBUF_LEN		GENMASK(15, 0)
 #define OSD1_AFBCD_STATUS 0x31a8
 #define OSD1_AFBCD_PIXEL_HSCOPE 0x31a9
+#define		OSD1_AFBCD_DEC_PIXEL_BGN_H		GENMASK(31, 16)
+#define		OSD1_AFBCD_DEC_PIXEL_END_H		GENMASK(15, 0)
 #define OSD1_AFBCD_PIXEL_VSCOPE 0x31aa
+#define		OSD1_AFBCD_DEC_PIXEL_BGN_V		GENMASK(31, 16)
+#define		OSD1_AFBCD_DEC_PIXEL_END_V		GENMASK(15, 0)
 
 /* add for gxm and 962e dv core2 */
 #define DOLBY_CORE2A_SWAP_CTRL1	0x3434
@@ -1615,12 +1649,34 @@
 #define VPU_MAFBC_IRQ_CLEAR 0x3a02
 #define VPU_MAFBC_IRQ_MASK 0x3a03
 #define VPU_MAFBC_IRQ_STATUS 0x3a04
+#define		VPU_MAFBC_IRQ_SECURE_ID_ERROR		BIT(5)
+#define		VPU_MAFBC_IRQ_AXI_ERROR			BIT(4)
+#define		VPU_MAFBC_IRQ_DETILING_ERROR		BIT(3)
+#define		VPU_MAFBC_IRQ_DECODE_ERROR		BIT(2)
+#define		VPU_MAFBC_IRQ_CONFIGURATION_SWAPPED	BIT(1)
+#define		VPU_MAFBC_IRQ_SURFACES_COMPLETED	BIT(0)
 #define VPU_MAFBC_COMMAND 0x3a05
+#define		VPU_MAFBC_PENDING_SWAP	BIT(1)
+#define		VPU_MAFBC_DIRECT_SWAP	BIT(0)
 #define VPU_MAFBC_STATUS 0x3a06
+#define		VPU_MAFBC_ERROR		BIT(2)
+#define		VPU_MAFBC_SWAPPING	BIT(1)
+#define		VPU_MAFBC_ACTIVE	BIT(0)
 #define VPU_MAFBC_SURFACE_CFG 0x3a07
+#define		VPU_MAFBC_CONTINUOUS_DECODING_ENABLE	BIT(16)
+#define		VPU_MAFBC_S3_ENABLE			BIT(3)
+#define		VPU_MAFBC_S2_ENABLE			BIT(2)
+#define		VPU_MAFBC_S1_ENABLE			BIT(1)
+#define		VPU_MAFBC_S0_ENABLE			BIT(0)
 #define VPU_MAFBC_HEADER_BUF_ADDR_LOW_S0 0x3a10
 #define VPU_MAFBC_HEADER_BUF_ADDR_HIGH_S0 0x3a11
 #define VPU_MAFBC_FORMAT_SPECIFIER_S0 0x3a12
+#define		VPU_MAFBC_PAYLOAD_LIMIT_EN	BIT(19)
+#define		VPU_MAFBC_TILED_HEADER_EN	BIT(18)
+#define		VPU_MAFBC_SUPER_BLOCK_ASPECT	GENMASK(17, 16)
+#define		VPU_MAFBC_BLOCK_SPLIT		BIT(9)
+#define		VPU_MAFBC_YUV_TRANSFORM		BIT(8)
+#define		VPU_MAFBC_PIXEL_FORMAT		GENMASK(3, 0)
 #define VPU_MAFBC_BUFFER_WIDTH_S0 0x3a13
 #define VPU_MAFBC_BUFFER_HEIGHT_S0 0x3a14
 #define VPU_MAFBC_BOUNDING_BOX_X_START_S0 0x3a15
@@ -1631,6 +1687,8 @@
 #define VPU_MAFBC_OUTPUT_BUF_ADDR_HIGH_S0 0x3a1a
 #define VPU_MAFBC_OUTPUT_BUF_STRIDE_S0 0x3a1b
 #define VPU_MAFBC_PREFETCH_CFG_S0 0x3a1c
+#define		VPU_MAFBC_PREFETCH_READ_DIRECTION_Y	BIT(1)
+#define		VPU_MAFBC_PREFETCH_READ_DIRECTION_X	BIT(0)
 
 #define VPU_MAFBC_HEADER_BUF_ADDR_LOW_S1 0x3a30
 #define VPU_MAFBC_HEADER_BUF_ADDR_HIGH_S1 0x3a31
@@ -1677,7 +1735,11 @@
 #define DOLBY_PATH_CTRL 0x1a0c
 #define		DOLBY_BYPASS_EN(val)            (val & 0xf)
 #define OSD_PATH_MISC_CTRL 0x1a0e
+#define		OSD_PATH_OSD_AXI_SEL_OSD1_AFBCD	BIT(4)
+#define		OSD_PATH_OSD_AXI_SEL_OSD2_AFBCD	BIT(5)
+#define		OSD_PATH_OSD_AXI_SEL_OSD3_AFBCD	BIT(6)
 #define MALI_AFBCD_TOP_CTRL 0x1a0f
+#define		MALI_AFBCD_MANUAL_RESET		BIT(23)
 
 #define VIU_OSD_BLEND_CTRL 0x39b0
 #define		VIU_OSD_BLEND_REORDER(dest, src)      ((src) << (dest * 4))
diff --git a/drivers/gpu/drm/meson/meson_viu.h b/drivers/gpu/drm/meson/meson_viu.h
index a112e8d18850..e297772d967f 100644
--- a/drivers/gpu/drm/meson/meson_viu.h
+++ b/drivers/gpu/drm/meson/meson_viu.h
@@ -10,6 +10,8 @@
 #define __MESON_VIU_H
 
 /* OSDx_BLKx_CFG */
+#define OSD_MALI_SRC_EN		BIT(30)
+
 #define OSD_CANVAS_SEL		16
 
 #define OSD_ENDIANNESS_LE	BIT(15)
@@ -33,19 +35,32 @@
 #define OSD_COLOR_MATRIX_16_RGB655	(0x00 << 2)
 #define OSD_COLOR_MATRIX_16_RGB565	(0x04 << 2)
 
+#define OSD_MALI_COLOR_MODE_R8		(0 << 8)
+#define OSD_MALI_COLOR_MODE_YUV422	(1 << 8)
+#define OSD_MALI_COLOR_MODE_RGB565	(2 << 8)
+#define OSD_MALI_COLOR_MODE_RGBA5551	(3 << 8)
+#define OSD_MALI_COLOR_MODE_RGBA4444	(4 << 8)
+#define OSD_MALI_COLOR_MODE_RGBA8888	(5 << 8)
+#define OSD_MALI_COLOR_MODE_RGB888	(7 << 8)
+#define OSD_MALI_COLOR_MODE_YUV422_10B	(8 << 8)
+#define OSD_MALI_COLOR_MODE_RGBA1010102	(9 << 8)
+
 #define OSD_INTERLACE_ENABLED	BIT(1)
 #define OSD_INTERLACE_ODD	BIT(0)
 #define OSD_INTERLACE_EVEN	(0)
 
 /* OSDx_CTRL_STAT */
 #define OSD_ENABLE		BIT(21)
+#define OSD_MEM_LINEAR_ADDR	BIT(2)
 #define OSD_BLK0_ENABLE		BIT(0)
 
 #define OSD_GLOBAL_ALPHA_SHIFT	12
 
 /* OSDx_CTRL_STAT2 */
+#define OSD_DPATH_MALI_AFBCD	BIT(15)
 #define OSD_REPLACE_EN		BIT(14)
 #define OSD_REPLACE_SHIFT	6
+#define OSD_PENDING_STAT_CLEAN	BIT(1)
 
 void meson_viu_osd1_reset(struct meson_drm *priv);
 void meson_viu_init(struct meson_drm *priv);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
