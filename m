Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79574976CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 12:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Eht14MFeScCzZ+iyUZClQfxsT+asaOsJEIJhxFwV9QE=; b=ZUHoFnroP98ieQZSpH6TpAQB7d
	3H+CVh/rNlGM/PhFkLZP0bfOtq4+vulb/B/zK3ssp8Xoz3thu8Om/AwKF57svMIGvq0CedxA1iMs8
	athTh+tOtUwprPWvVZM+jpBuW5BYVXXFrWyOyvzCpze7HcbXElWZcAMmv+G4Rpt5Z6tJ9t5SeJFy3
	gif/rp5olwXt3DYN+NFxBhvGEm565+TdKuDJ/XVUbvTXYsRy1btIU2CPHK6iv/shIrXko4VPwJg5M
	VWZxG985uft0MZArPpEJkZYAOIYqbcDtzXiKWDylIYfqwVLiGxE9PKYHzziWPZMh+sTnftlOpBiHs
	woZ7ylEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0NhW-0003OC-KO; Wed, 21 Aug 2019 10:18:46 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NfB-00024p-3U
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 10:16:23 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C87CB20050D;
 Wed, 21 Aug 2019 12:16:19 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BB4982000A2;
 Wed, 21 Aug 2019 12:16:19 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 172C620612;
 Wed, 21 Aug 2019 12:16:19 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 05/15] drm/mxsfb: Update register definitions using bit
 manipulation defines
Date: Wed, 21 Aug 2019 13:15:45 +0300
Message-Id: <1566382555-12102-6-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
References: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_031621_420567_B01030DD 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use BIT(x) and GEN_MASK(h, l) for better representation the inside of
various registers.

Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
---
 drivers/gpu/drm/mxsfb/mxsfb_regs.h | 151 ++++++++++++++++++++++---------------
 1 file changed, 89 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_regs.h b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
index 71426aa..9fcb1db 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_regs.h
+++ b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
@@ -40,66 +40,93 @@
 #define LCDC_AS_BUF			0x220
 #define LCDC_AS_NEXT_BUF		0x230
 
-#define CTRL_SFTRST			(1 << 31)
-#define CTRL_CLKGATE			(1 << 30)
-#define CTRL_BYPASS_COUNT		(1 << 19)
-#define CTRL_VSYNC_MODE			(1 << 18)
-#define CTRL_DOTCLK_MODE		(1 << 17)
-#define CTRL_DATA_SELECT		(1 << 16)
-#define CTRL_SET_BUS_WIDTH(x)		(((x) & 0x3) << 10)
-#define CTRL_GET_BUS_WIDTH(x)		(((x) >> 10) & 0x3)
-#define CTRL_BUS_WIDTH_MASK		(0x3 << 10)
-#define CTRL_SET_WORD_LENGTH(x)		(((x) & 0x3) << 8)
-#define CTRL_GET_WORD_LENGTH(x)		(((x) >> 8) & 0x3)
-#define CTRL_MASTER			(1 << 5)
-#define CTRL_DF16			(1 << 3)
-#define CTRL_DF18			(1 << 2)
-#define CTRL_DF24			(1 << 1)
-#define CTRL_RUN			(1 << 0)
-
-#define CTRL1_RECOVERY_ON_UNDERFLOW	(1 << 24)
-#define CTRL1_FIFO_CLEAR		(1 << 21)
-#define CTRL1_SET_BYTE_PACKAGING(x)	(((x) & 0xf) << 16)
-#define CTRL1_GET_BYTE_PACKAGING(x)	(((x) >> 16) & 0xf)
-#define CTRL1_CUR_FRAME_DONE_IRQ_EN	(1 << 13)
-#define CTRL1_CUR_FRAME_DONE_IRQ	(1 << 9)
-
-#define CTRL2_OUTSTANDING_REQS__REQ_16		(4 << 21)
-
-#define TRANSFER_COUNT_SET_VCOUNT(x)	(((x) & 0xffff) << 16)
-#define TRANSFER_COUNT_GET_VCOUNT(x)	(((x) >> 16) & 0xffff)
-#define TRANSFER_COUNT_SET_HCOUNT(x)	((x) & 0xffff)
-#define TRANSFER_COUNT_GET_HCOUNT(x)	((x) & 0xffff)
-
-#define VDCTRL0_ENABLE_PRESENT		(1 << 28)
-#define VDCTRL0_VSYNC_ACT_HIGH		(1 << 27)
-#define VDCTRL0_HSYNC_ACT_HIGH		(1 << 26)
-#define VDCTRL0_DOTCLK_ACT_FALLING	(1 << 25)
-#define VDCTRL0_ENABLE_ACT_HIGH		(1 << 24)
-#define VDCTRL0_VSYNC_PERIOD_UNIT	(1 << 21)
-#define VDCTRL0_VSYNC_PULSE_WIDTH_UNIT	(1 << 20)
-#define VDCTRL0_HALF_LINE		(1 << 19)
-#define VDCTRL0_HALF_LINE_MODE		(1 << 18)
-#define VDCTRL0_SET_VSYNC_PULSE_WIDTH(x) ((x) & 0x3ffff)
-#define VDCTRL0_GET_VSYNC_PULSE_WIDTH(x) ((x) & 0x3ffff)
-
-#define VDCTRL2_SET_HSYNC_PERIOD(x)	((x) & 0x3ffff)
-#define VDCTRL2_GET_HSYNC_PERIOD(x)	((x) & 0x3ffff)
-
-#define VDCTRL3_MUX_SYNC_SIGNALS	(1 << 29)
-#define VDCTRL3_VSYNC_ONLY		(1 << 28)
-#define SET_HOR_WAIT_CNT(x)		(((x) & 0xfff) << 16)
-#define GET_HOR_WAIT_CNT(x)		(((x) >> 16) & 0xfff)
-#define SET_VERT_WAIT_CNT(x)		((x) & 0xffff)
-#define GET_VERT_WAIT_CNT(x)		((x) & 0xffff)
-
-#define VDCTRL4_SET_DOTCLK_DLY(x)	(((x) & 0x7) << 29) /* v4 only */
-#define VDCTRL4_GET_DOTCLK_DLY(x)	(((x) >> 29) & 0x7) /* v4 only */
-#define VDCTRL4_SYNC_SIGNALS_ON		(1 << 18)
-#define SET_DOTCLK_H_VALID_DATA_CNT(x)	((x) & 0x3ffff)
-
-#define DEBUG0_HSYNC			(1 < 26)
-#define DEBUG0_VSYNC			(1 < 25)
+/* reg bit manipulation */
+#define REG_PUT(x, h, l) (((x) << (l)) & GENMASK(h, l))
+#define REG_GET(x, h, l) (((x) & GENMASK(h, l)) >> (l))
+
+#define CTRL_SFTRST			BIT(31)
+#define CTRL_CLKGATE			BIT(30)
+#define CTRL_SHIFT_DIR(x)		REG_PUT((x), 26, 26)
+#define CTRL_SHIFT_NUM(x)		REG_PUT((x), 25, 21)
+#define CTRL_BYPASS_COUNT		BIT(19)
+#define CTRL_VSYNC_MODE			BIT(18)
+#define CTRL_DOTCLK_MODE		BIT(17)
+#define CTRL_DATA_SELECT		BIT(16)
+#define CTRL_INPUT_SWIZZLE(x)		REG_PUT((x), 15, 14)
+#define CTRL_CSC_SWIZZLE(x)		REG_PUT((x), 13, 12)
+#define CTRL_SET_BUS_WIDTH(x)		REG_PUT((x), 11, 10)
+#define CTRL_GET_BUS_WIDTH(x)		REG_GET((x), 11, 10)
+#define CTRL_BUS_WIDTH_MASK		REG_PUT((0x3), 11, 10)
+#define CTRL_SET_WORD_LENGTH(x)		REG_PUT((x), 9, 8)
+#define CTRL_GET_WORD_LENGTH(x)		REG_GET((x), 9, 8)
+#define CTRL_MASTER			BIT(5)
+#define CTRL_DF16			BIT(3)
+#define CTRL_DF18			BIT(2)
+#define CTRL_DF24			BIT(1)
+#define CTRL_RUN			BIT(0)
+
+#define CTRL1_RECOVERY_ON_UNDERFLOW	BIT(24)
+#define CTRL1_FIFO_CLEAR		BIT(21)
+
+/*
+ * BYTE_PACKAGING
+ *
+ * This bitfield is used to show which data bytes in a 32-bit word area valid.
+ * Default value 0xf indicates that all bytes are valid. For 8-bit transfers,
+ * any combination in this bitfield will mean valid data is present in the
+ * corresponding bytes. In the 16-bit mode, a 16-bit half-word is valid only if
+ * adjacent bits [1:0] or [3:2] or both are 1. A value of 0x0 will mean that
+ * none of the bytes are valid and should not be used. For example, set the bit
+ * field value to 0x7 if the display data is arranged in the 24-bit unpacked
+ * format (A-R-G-B where A value does not have be transmitted).
+ */
+#define CTRL1_SET_BYTE_PACKAGING(x)	REG_PUT((x), 19, 16)
+#define CTRL1_GET_BYTE_PACKAGING(x)	REG_GET((x), 19, 16)
+
+#define CTRL1_CUR_FRAME_DONE_IRQ_EN	BIT(13)
+#define CTRL1_CUR_FRAME_DONE_IRQ	BIT(9)
+
+#define CTRL2_OUTSTANDING_REQS(x)	REG_PUT((x), 23, 21)
+#define REQ_1	0
+#define REQ_2	1
+#define REQ_4	2
+#define REQ_8	3
+#define REQ_16	4
+
+#define TRANSFER_COUNT_SET_VCOUNT(x)	REG_PUT((x), 31, 16)
+#define TRANSFER_COUNT_GET_VCOUNT(x)	REG_GET((x), 31, 16)
+#define TRANSFER_COUNT_SET_HCOUNT(x)	REG_PUT((x), 15, 0)
+#define TRANSFER_COUNT_GET_HCOUNT(x)	REG_GET((x), 15, 0)
+
+#define VDCTRL0_ENABLE_PRESENT		BIT(28)
+#define VDCTRL0_VSYNC_ACT_HIGH		BIT(27)
+#define VDCTRL0_HSYNC_ACT_HIGH		BIT(26)
+#define VDCTRL0_DOTCLK_ACT_FALLING	BIT(25)
+#define VDCTRL0_ENABLE_ACT_HIGH		BIT(24)
+#define VDCTRL0_VSYNC_PERIOD_UNIT	BIT(21)
+#define VDCTRL0_VSYNC_PULSE_WIDTH_UNIT	BIT(20)
+#define VDCTRL0_HALF_LINE		BIT(19)
+#define VDCTRL0_HALF_LINE_MODE		BIT(18)
+#define VDCTRL0_SET_VSYNC_PULSE_WIDTH(x) REG_PUT((x), 17, 0)
+#define VDCTRL0_GET_VSYNC_PULSE_WIDTH(x) REG_GET((x), 17, 0)
+
+#define VDCTRL2_SET_HSYNC_PERIOD(x)	REG_PUT((x), 15, 0)
+#define VDCTRL2_GET_HSYNC_PERIOD(x)	REG_GET((x), 15, 0)
+
+#define VDCTRL3_MUX_SYNC_SIGNALS	BIT(29)
+#define VDCTRL3_VSYNC_ONLY		BIT(28)
+#define SET_HOR_WAIT_CNT(x)		REG_PUT((x), 27, 16)
+#define GET_HOR_WAIT_CNT(x)		REG_GET((x), 27, 16)
+#define SET_VERT_WAIT_CNT(x)		REG_PUT((x), 15, 0)
+#define GET_VERT_WAIT_CNT(x)		REG_GET((x), 15, 0)
+
+#define VDCTRL4_SET_DOTCLK_DLY(x)	REG_PUT((x), 31, 29) /* v4 only */
+#define VDCTRL4_GET_DOTCLK_DLY(x)	REG_GET((x), 31, 29) /* v4 only */
+#define VDCTRL4_SYNC_SIGNALS_ON		BIT(18)
+#define SET_DOTCLK_H_VALID_DATA_CNT(x)	REG_PUT((x), 17, 0)
+
+#define DEBUG0_HSYNC			BIT(26)
+#define DEBUG0_VSYNC			BIT(25)
 
 #define MXSFB_MIN_XRES			120
 #define MXSFB_MIN_YRES			120
@@ -116,7 +143,7 @@
 #define STMLCDIF_18BIT 2 /* pixel data bus to the display is of 18 bit width */
 #define STMLCDIF_24BIT 3 /* pixel data bus to the display is of 24 bit width */
 
-#define MXSFB_SYNC_DATA_ENABLE_HIGH_ACT	(1 << 6)
-#define MXSFB_SYNC_DOTCLK_FALLING_ACT	(1 << 7) /* negative edge sampling */
+#define MXSFB_SYNC_DATA_ENABLE_HIGH_ACT	BIT(6)
+#define MXSFB_SYNC_DOTCLK_FALLING_ACT	BIT(7) /* negative edge sampling */
 
 #endif /* __MXSFB_REGS_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
