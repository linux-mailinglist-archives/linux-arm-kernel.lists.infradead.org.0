Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AFE9A03E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 21:40:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTlce4bH63MM13ImgjoIbpMBOvgo7S2tGFzwatTId7I=; b=Q8Vx4YUYQBtxc8
	1N5fBUkSbOCCdQSWz9E8f8VMZdO/0nDcmJ51McWgaVoqSJgfA5WF1A6uexenRTz2as7+3u2WlQ/pW
	FOcppDmvPCJ1LIOYUwu/OMUK8JpvwzEvPYiU/oEsSCFWYE3mAY6b2+ljCkL6GrGExa/3VVLpVFFGQ
	qXG1uJQdmKQ+TeyBYm7OulhDU/UgBaS6Cf60qhWLZwB5Tb6KkM8ol1rQS7PZMxnk+HfvD2bvRSjGX
	xuQ5iW9tDh/wi5W+mt1aZFYQx7ZPHk5YfKvl8Li7jsHvfxVcFpeHbf4viU/RINpyaIY+q51GmpwgP
	YS8Gdn7duPr6ab51djmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0swK-0002yd-HU; Thu, 22 Aug 2019 19:40:08 +0000
Received: from [177.133.63.56] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0svr-0002la-Pg; Thu, 22 Aug 2019 19:39:40 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1i0svo-0007Ia-IK; Thu, 22 Aug 2019 16:39:36 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 6/7] media: don't do an unsigned int with a 31 bit shift
Date: Thu, 22 Aug 2019 16:39:33 -0300
Message-Id: <1a78a757b37d2628312e1d56d7a741ba89d42a91.1566502743.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <4a411ba155eb062b6575aba0824123c840806c0b.1566502743.git.mchehab+samsung@kernel.org>
References: <4a411ba155eb062b6575aba0824123c840806c0b.1566502743.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, Kamil Debski <kamil@wypas.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Bluecherry Maintainers <maintainers@bluecherrydvr.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Anton Sviridenko <anton@corp.bluecherry.net>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Andrey Utkin <andrey.utkin@corp.bluecherry.net>,
 Antti Palosaari <crope@iki.fi>, Steve Longerbeam <slongerbeam@gmail.com>,
 Ismael Luceno <ismael@iodev.co.uk>, Kees Cook <keescook@chromium.org>,
 linux-arm-msm@vger.kernel.org,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Jeongtae Park <jtp.park@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Mike Isely <isely@pobox.com>,
 linux-arm-kernel@lists.infradead.org, Andy Walls <awalls@md.metrocast.net>,
 Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, Andy Gross <agross@kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Kukjin Kim <kgene@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Doing something like:

	i32 foo = 1, bar;

	bar = foo << 31;

has an undefined behavior in C, as warned by cppcheck, as we're
shifting a signed integer.

Instead, force the numbers to be unsigned, in order to solve this
issue.

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/media/dvb-frontends/cx24123.c           |  2 +-
 drivers/media/pci/bt8xx/bttv-input.c            |  4 ++--
 drivers/media/pci/cx18/cx18-ioctl.c             |  2 +-
 drivers/media/pci/ivtv/ivtv-driver.c            |  2 +-
 drivers/media/pci/ivtv/ivtv-ioctl.c             |  4 ++--
 drivers/media/pci/solo6x10/solo6x10-gpio.c      |  6 +++---
 drivers/media/platform/exynos4-is/mipi-csis.c   |  6 +++---
 drivers/media/platform/fsl-viu.c                |  2 +-
 drivers/media/platform/mx2_emmaprp.c            |  2 +-
 drivers/media/platform/pxa_camera.c             |  4 ++--
 drivers/media/platform/qcom/venus/core.c        |  2 +-
 drivers/media/platform/s5p-jpeg/jpeg-regs.h     | 10 +++++-----
 drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c |  4 ++--
 drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c |  2 +-
 drivers/media/radio/radio-gemtek.c              |  2 +-
 drivers/media/usb/dvb-usb-v2/gl861.c            |  2 +-
 drivers/media/usb/pvrusb2/pvrusb2-hdw.c         | 14 +++++++-------
 drivers/media/usb/pvrusb2/pvrusb2-v4l2.c        |  4 ++--
 drivers/media/v4l2-core/v4l2-ioctl.c            |  2 +-
 19 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/media/dvb-frontends/cx24123.c b/drivers/media/dvb-frontends/cx24123.c
index ac519c3eff18..3d84ee17e54c 100644
--- a/drivers/media/dvb-frontends/cx24123.c
+++ b/drivers/media/dvb-frontends/cx24123.c
@@ -431,7 +431,7 @@ static u32 cx24123_int_log2(u32 a, u32 b)
 	u32 div = a / b;
 	if (a % b >= b / 2)
 		++div;
-	if (div < (1 << 31)) {
+	if (div < (1UL << 31)) {
 		for (exp = 1; div > exp; nearest++)
 			exp += exp;
 	}
diff --git a/drivers/media/pci/bt8xx/bttv-input.c b/drivers/media/pci/bt8xx/bttv-input.c
index 9adfac4d5187..492bc85c2700 100644
--- a/drivers/media/pci/bt8xx/bttv-input.c
+++ b/drivers/media/pci/bt8xx/bttv-input.c
@@ -84,7 +84,7 @@ static void ir_enltv_handle_key(struct bttv *btv)
 	data = ir_extract_bits(gpio, ir->mask_keycode);
 
 	/* Check if it is keyup */
-	keyup = (gpio & ir->mask_keyup) ? 1 << 31 : 0;
+	keyup = (gpio & ir->mask_keyup) ? 1UL << 31 : 0;
 
 	if ((ir->last_gpio & 0x7f) != data) {
 		dprintk("gpio=0x%x code=%d | %s\n",
@@ -95,7 +95,7 @@ static void ir_enltv_handle_key(struct bttv *btv)
 		if (keyup)
 			rc_keyup(ir->dev);
 	} else {
-		if ((ir->last_gpio & 1 << 31) == keyup)
+		if ((ir->last_gpio & 1UL << 31) == keyup)
 			return;
 
 		dprintk("(cnt) gpio=0x%x code=%d | %s\n",
diff --git a/drivers/media/pci/cx18/cx18-ioctl.c b/drivers/media/pci/cx18/cx18-ioctl.c
index d9ffc9c359ca..85f3e7307538 100644
--- a/drivers/media/pci/cx18/cx18-ioctl.c
+++ b/drivers/media/pci/cx18/cx18-ioctl.c
@@ -78,7 +78,7 @@ static u16 select_service_from_set(int field, int line, u16 set, int is_pal)
 			return 0;
 	}
 	for (i = 0; i < 32; i++) {
-		if ((1 << i) & set)
+		if (BIT(i) & set)
 			return 1 << i;
 	}
 	return 0;
diff --git a/drivers/media/pci/ivtv/ivtv-driver.c b/drivers/media/pci/ivtv/ivtv-driver.c
index dd727098daf4..3f3f40ea890b 100644
--- a/drivers/media/pci/ivtv/ivtv-driver.c
+++ b/drivers/media/pci/ivtv/ivtv-driver.c
@@ -910,7 +910,7 @@ static void ivtv_load_and_init_modules(struct ivtv *itv)
 
 	/* check which i2c devices are actually found */
 	for (i = 0; i < 32; i++) {
-		u32 device = 1 << i;
+		u32 device = BIT(i);
 
 		if (!(device & hw))
 			continue;
diff --git a/drivers/media/pci/ivtv/ivtv-ioctl.c b/drivers/media/pci/ivtv/ivtv-ioctl.c
index 5595f6a274e7..137853944e46 100644
--- a/drivers/media/pci/ivtv/ivtv-ioctl.c
+++ b/drivers/media/pci/ivtv/ivtv-ioctl.c
@@ -73,8 +73,8 @@ static u16 select_service_from_set(int field, int line, u16 set, int is_pal)
 			return 0;
 	}
 	for (i = 0; i < 32; i++) {
-		if ((1 << i) & set)
-			return 1 << i;
+		if (BIT(i) & set)
+			return BIT(i);
 	}
 	return 0;
 }
diff --git a/drivers/media/pci/solo6x10/solo6x10-gpio.c b/drivers/media/pci/solo6x10/solo6x10-gpio.c
index 5caeca8b5dd0..526d67cf9942 100644
--- a/drivers/media/pci/solo6x10/solo6x10-gpio.c
+++ b/drivers/media/pci/solo6x10/solo6x10-gpio.c
@@ -39,13 +39,13 @@ static void solo_gpio_mode(struct solo_dev *solo_dev,
 	ret = solo_reg_read(solo_dev, SOLO_GPIO_CONFIG_1);
 
 	for (port = 0; port < 16; port++) {
-		if (!((1 << (port + 16)) & port_mask))
+		if (!((1UL << (port + 16)) & port_mask))
 			continue;
 
 		if (!mode)
-			ret &= ~(1 << port);
+			ret &= ~(1UL << port);
 		else
-			ret |= 1 << port;
+			ret |= 1UL << port;
 	}
 
 	/* Enable GPIO[31:16] */
diff --git a/drivers/media/platform/exynos4-is/mipi-csis.c b/drivers/media/platform/exynos4-is/mipi-csis.c
index b9f1cc42b0ab..540151bbf58f 100644
--- a/drivers/media/platform/exynos4-is/mipi-csis.c
+++ b/drivers/media/platform/exynos4-is/mipi-csis.c
@@ -41,7 +41,7 @@ MODULE_PARM_DESC(debug, "Debug level (0-2)");
 /* CSIS global control */
 #define S5PCSIS_CTRL			0x00
 #define S5PCSIS_CTRL_DPDN_DEFAULT	(0 << 31)
-#define S5PCSIS_CTRL_DPDN_SWAP		(1 << 31)
+#define S5PCSIS_CTRL_DPDN_SWAP		(1UL << 31)
 #define S5PCSIS_CTRL_ALIGN_32BIT	(1 << 20)
 #define S5PCSIS_CTRL_UPDATE_SHADOW	(1 << 16)
 #define S5PCSIS_CTRL_WCLK_EXTCLK	(1 << 8)
@@ -65,7 +65,7 @@ MODULE_PARM_DESC(debug, "Debug level (0-2)");
 
 /* Interrupt mask */
 #define S5PCSIS_INTMSK			0x10
-#define S5PCSIS_INTMSK_EVEN_BEFORE	(1 << 31)
+#define S5PCSIS_INTMSK_EVEN_BEFORE	(1UL << 31)
 #define S5PCSIS_INTMSK_EVEN_AFTER	(1 << 30)
 #define S5PCSIS_INTMSK_ODD_BEFORE	(1 << 29)
 #define S5PCSIS_INTMSK_ODD_AFTER	(1 << 28)
@@ -83,7 +83,7 @@ MODULE_PARM_DESC(debug, "Debug level (0-2)");
 
 /* Interrupt source */
 #define S5PCSIS_INTSRC			0x14
-#define S5PCSIS_INTSRC_EVEN_BEFORE	(1 << 31)
+#define S5PCSIS_INTSRC_EVEN_BEFORE	(1UL << 31)
 #define S5PCSIS_INTSRC_EVEN_AFTER	(1 << 30)
 #define S5PCSIS_INTSRC_EVEN		(0x3 << 30)
 #define S5PCSIS_INTSRC_ODD_BEFORE	(1 << 29)
diff --git a/drivers/media/platform/fsl-viu.c b/drivers/media/platform/fsl-viu.c
index bb64152acf94..81a8faedbba6 100644
--- a/drivers/media/platform/fsl-viu.c
+++ b/drivers/media/platform/fsl-viu.c
@@ -214,7 +214,7 @@ enum status_config {
 	FIELD_NO		= 0x01 << 28,	/* Field number */
 	DITHER_ON		= 0x01 << 29,	/* Dithering is on */
 	ROUND_ON		= 0x01 << 30,	/* Round is on */
-	MODE_32BIT		= 0x01 << 31,	/* Data in RGBa888,
+	MODE_32BIT		= 1UL << 31,	/* Data in RGBa888,
 						 * 0 in RGB565
 						 */
 };
diff --git a/drivers/media/platform/mx2_emmaprp.c b/drivers/media/platform/mx2_emmaprp.c
index e6c7a616b599..27779b75df54 100644
--- a/drivers/media/platform/mx2_emmaprp.c
+++ b/drivers/media/platform/mx2_emmaprp.c
@@ -120,7 +120,7 @@ module_param(debug, bool, 0644);
 #define PRP_CNTL_RZ_FIFO_LEVEL(x)       ((x) << 27)
 #define PRP_CNTL_CH2B1EN        (1 << 29)
 #define PRP_CNTL_CH2B2EN        (1 << 30)
-#define PRP_CNTL_CH2FEN         (1 << 31)
+#define PRP_CNTL_CH2FEN         (1UL << 31)
 
 #define PRP_SIZE_HEIGHT(x)	(x)
 #define PRP_SIZE_WIDTH(x)	((x) << 16)
diff --git a/drivers/media/platform/pxa_camera.c b/drivers/media/platform/pxa_camera.c
index 53682da099c5..8d47ea0c33f8 100644
--- a/drivers/media/platform/pxa_camera.c
+++ b/drivers/media/platform/pxa_camera.c
@@ -64,7 +64,7 @@
 #define CIBR1		0x0030
 #define CIBR2		0x0038
 
-#define CICR0_DMAEN	(1 << 31)	/* DMA request enable */
+#define CICR0_DMAEN	(1UL << 31)	/* DMA request enable */
 #define CICR0_PAR_EN	(1 << 30)	/* Parity enable */
 #define CICR0_SL_CAP_EN	(1 << 29)	/* Capture enable for slave mode */
 #define CICR0_ENB	(1 << 28)	/* Camera interface enable */
@@ -81,7 +81,7 @@
 #define CICR0_EOFM	(1 << 1)	/* End-of-frame mask */
 #define CICR0_FOM	(1 << 0)	/* FIFO-overrun mask */
 
-#define CICR1_TBIT	(1 << 31)	/* Transparency bit */
+#define CICR1_TBIT	(1UL << 31)	/* Transparency bit */
 #define CICR1_RGBT_CONV	(0x3 << 29)	/* RGBT conversion mask */
 #define CICR1_PPL	(0x7ff << 15)	/* Pixels per line mask */
 #define CICR1_RGB_CONV	(0x7 << 12)	/* RGB conversion mask */
diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 0acc7576cc58..e6eff512a8a1 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -198,7 +198,7 @@ static int venus_enumerate_codecs(struct venus_core *core, u32 type)
 		goto err;
 
 	for (i = 0; i < MAX_CODEC_NUM; i++) {
-		codec = (1 << i) & codecs;
+		codec = (1UL << i) & codecs;
 		if (!codec)
 			continue;
 
diff --git a/drivers/media/platform/s5p-jpeg/jpeg-regs.h b/drivers/media/platform/s5p-jpeg/jpeg-regs.h
index bab7fa46b89a..86f376b50581 100644
--- a/drivers/media/platform/s5p-jpeg/jpeg-regs.h
+++ b/drivers/media/platform/s5p-jpeg/jpeg-regs.h
@@ -121,14 +121,14 @@
 
 /* JPEG timer setting register */
 #define S5P_JPG_TIMER_SE		0x7c
-#define S5P_TIMER_INT_EN_MASK		(0x1 << 31)
-#define S5P_TIMER_INT_EN		(0x1 << 31)
+#define S5P_TIMER_INT_EN_MASK		(0x1UL << 31)
+#define S5P_TIMER_INT_EN		(0x1UL << 31)
 #define S5P_TIMER_INIT_MASK		0x7fffffff
 
 /* JPEG timer status register */
 #define S5P_JPG_TIMER_ST		0x80
 #define S5P_TIMER_INT_STAT_SHIFT	31
-#define S5P_TIMER_INT_STAT_MASK		(0x1 << S5P_TIMER_INT_STAT_SHIFT)
+#define S5P_TIMER_INT_STAT_MASK		(0x1UL << S5P_TIMER_INT_STAT_SHIFT)
 #define S5P_TIMER_CNT_SHIFT		0
 #define S5P_TIMER_CNT_MASK		0x7fffffff
 
@@ -562,13 +562,13 @@
 /* JPEG timer setting register */
 #define EXYNOS3250_TIMER_SE			0x148
 #define EXYNOS3250_TIMER_INT_EN_SHIFT		31
-#define EXYNOS3250_TIMER_INT_EN			(1 << EXYNOS3250_TIMER_INT_EN_SHIFT)
+#define EXYNOS3250_TIMER_INT_EN			(1UL << EXYNOS3250_TIMER_INT_EN_SHIFT)
 #define EXYNOS3250_TIMER_INIT_MASK		0x7fffffff
 
 /* JPEG timer status register */
 #define EXYNOS3250_TIMER_ST			0x14c
 #define EXYNOS3250_TIMER_INT_STAT_SHIFT		31
-#define EXYNOS3250_TIMER_INT_STAT		(1 << EXYNOS3250_TIMER_INT_STAT_SHIFT)
+#define EXYNOS3250_TIMER_INT_STAT		(1UL << EXYNOS3250_TIMER_INT_STAT_SHIFT)
 #define EXYNOS3250_TIMER_CNT_SHIFT		0
 #define EXYNOS3250_TIMER_CNT_MASK		0x7fffffff
 
diff --git a/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c b/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c
index f76a07400966..49503c20d320 100644
--- a/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c
+++ b/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c
@@ -711,7 +711,7 @@ static int s5p_mfc_set_enc_params(struct s5p_mfc_ctx *ctx)
 	reg = mfc_read(dev, S5P_FIMV_ENC_PADDING_CTRL);
 	if (p->pad) {
 		/** enable */
-		reg |= (1 << 31);
+		reg |= (1UL << 31);
 		/** cr value */
 		reg &= ~(0xFF << 16);
 		reg |= (p->pad_cr << 16);
@@ -955,7 +955,7 @@ static int s5p_mfc_set_enc_params_mpeg4(struct s5p_mfc_ctx *ctx)
 				S5P_FIMV_ENC_RC_FRAME_RATE);
 			shm = s5p_mfc_read_info_v5(ctx, RC_VOP_TIMING);
 			shm &= ~(0xFFFFFFFF);
-			shm |= (1 << 31);
+			shm |= (1UL << 31);
 			shm |= ((p->rc_framerate_num & 0x7FFF) << 16);
 			shm |= (p->rc_framerate_denom & 0xFFFF);
 			s5p_mfc_write_info_v5(ctx, shm, RC_VOP_TIMING);
diff --git a/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c b/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c
index f7621a9051cb..a1453053e31a 100644
--- a/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c
+++ b/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c
@@ -840,7 +840,7 @@ static int s5p_mfc_set_enc_params(struct s5p_mfc_ctx *ctx)
 	if (p->pad) {
 		reg = 0;
 		/** enable */
-		reg |= (1 << 31);
+		reg |= (1UL << 31);
 		/** cr value */
 		reg |= ((p->pad_cr & 0xFF) << 16);
 		/** cb value */
diff --git a/drivers/media/radio/radio-gemtek.c b/drivers/media/radio/radio-gemtek.c
index 06400112aebb..a532f63aa9d9 100644
--- a/drivers/media/radio/radio-gemtek.c
+++ b/drivers/media/radio/radio-gemtek.c
@@ -125,7 +125,7 @@ struct gemtek {
 #define BU2614_FMUN_SHIFT	(BU2614_VOID2_BITS + BU2614_VOID2_SHIFT)
 #define BU2614_TEST_SHIFT	(BU2614_FMUN_BITS + BU2614_FMUN_SHIFT)
 
-#define MKMASK(field)	(((1<<BU2614_##field##_BITS) - 1) << \
+#define MKMASK(field)	(((1UL<<BU2614_##field##_BITS) - 1) << \
 			BU2614_##field##_SHIFT)
 #define BU2614_PORT_MASK	MKMASK(PORT)
 #define BU2614_FREQ_MASK	MKMASK(FREQ)
diff --git a/drivers/media/usb/dvb-usb-v2/gl861.c b/drivers/media/usb/dvb-usb-v2/gl861.c
index b784d9da1a82..c7197e534c02 100644
--- a/drivers/media/usb/dvb-usb-v2/gl861.c
+++ b/drivers/media/usb/dvb-usb-v2/gl861.c
@@ -353,7 +353,7 @@ static int friio_ext_ctl(struct dvb_usb_device *d,
 	ret += i2c_transfer(&d->i2c_adap, &msg, 1);
 
 	/* send 32bit(satur, R, G, B) data in serial */
-	mask = 1 << 31;
+	mask = 1UL << 31;
 	for (i = 0; i < 32; i++) {
 		buf[1] = power | FRIIO_CTL_STROBE;
 		if (sat_color & mask)
diff --git a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
index e5afbcacdb37..2a946cff84b7 100644
--- a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
+++ b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
@@ -660,7 +660,7 @@ static int ctrl_check_input(struct pvr2_ctrl *cptr,int v)
 {
 	if (v < 0 || v > PVR2_CVAL_INPUT_MAX)
 		return 0;
-	return ((1 << v) & cptr->hdw->input_allowed_mask) != 0;
+	return ((1UL << v) & cptr->hdw->input_allowed_mask) != 0;
 }
 
 static int ctrl_set_input(struct pvr2_ctrl *cptr,int m,int v)
@@ -2445,7 +2445,7 @@ struct pvr2_hdw *pvr2_hdw_create(struct usb_interface *intf,
 	/* Ensure that default input choice is a valid one. */
 	m = hdw->input_avail_mask;
 	if (m) for (idx = 0; idx < (sizeof(m) << 3); idx++) {
-		if (!((1 << idx) & m)) continue;
+		if (!((1UL << idx) & m)) continue;
 		hdw->input_val = idx;
 		break;
 	}
@@ -2501,11 +2501,11 @@ struct pvr2_hdw *pvr2_hdw_create(struct usb_interface *intf,
 	// Initialize control data regarding video standard masks
 	valid_std_mask = pvr2_std_get_usable();
 	for (idx = 0; idx < 32; idx++) {
-		if (!(valid_std_mask & (1 << idx))) continue;
+		if (!(valid_std_mask & (1UL << idx))) continue;
 		cnt1 = pvr2_std_id_to_str(
 			hdw->std_mask_names[idx],
 			sizeof(hdw->std_mask_names[idx])-1,
-			1 << idx);
+			1UL << idx);
 		hdw->std_mask_names[idx][cnt1] = 0;
 	}
 	cptr = pvr2_hdw_get_ctrl_by_id(hdw,PVR2_CID_STDAVAIL);
@@ -4672,7 +4672,7 @@ static unsigned int print_input_mask(unsigned int msk,
 	unsigned int idx,ccnt;
 	unsigned int tcnt = 0;
 	for (idx = 0; idx < ARRAY_SIZE(control_values_input); idx++) {
-		if (!((1 << idx) & msk)) continue;
+		if (!((1UL << idx) & msk)) continue;
 		ccnt = scnprintf(buf+tcnt,
 				 acnt-tcnt,
 				 "%s%s",
@@ -5099,7 +5099,7 @@ int pvr2_hdw_set_input_allowed(struct pvr2_hdw *hdw,
 			break;
 		}
 		hdw->input_allowed_mask = nv;
-		if ((1 << hdw->input_val) & hdw->input_allowed_mask) {
+		if ((1UL << hdw->input_val) & hdw->input_allowed_mask) {
 			/* Current mode is still in the allowed mask, so
 			   we're done. */
 			break;
@@ -5112,7 +5112,7 @@ int pvr2_hdw_set_input_allowed(struct pvr2_hdw *hdw,
 		}
 		m = hdw->input_allowed_mask;
 		for (idx = 0; idx < (sizeof(m) << 3); idx++) {
-			if (!((1 << idx) & m)) continue;
+			if (!((1UL << idx) & m)) continue;
 			pvr2_hdw_set_input(hdw,idx);
 			break;
 		}
diff --git a/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c b/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
index 0aff2f396392..a34717eba409 100644
--- a/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
+++ b/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
@@ -1003,7 +1003,7 @@ static int pvr2_v4l2_open(struct file *file)
 	input_mask &= pvr2_hdw_get_input_available(hdw);
 	input_cnt = 0;
 	for (idx = 0; idx < (sizeof(input_mask) << 3); idx++) {
-		if (input_mask & (1 << idx)) input_cnt++;
+		if (input_mask & (1UL << idx)) input_cnt++;
 	}
 	fhp->input_cnt = input_cnt;
 	fhp->input_map = kzalloc(input_cnt,GFP_KERNEL);
@@ -1018,7 +1018,7 @@ static int pvr2_v4l2_open(struct file *file)
 	}
 	input_cnt = 0;
 	for (idx = 0; idx < (sizeof(input_mask) << 3); idx++) {
-		if (!(input_mask & (1 << idx))) continue;
+		if (!(input_mask & (1UL << idx))) continue;
 		fhp->input_map[input_cnt++] = idx;
 	}
 
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index 39f10621c91b..51b912743f0f 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1388,7 +1388,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 					(char)((fmt->pixelformat >> 8) & 0x7f),
 					(char)((fmt->pixelformat >> 16) & 0x7f),
 					(char)((fmt->pixelformat >> 24) & 0x7f),
-					(fmt->pixelformat & (1 << 31)) ? "-BE" : "");
+					(fmt->pixelformat & (1UL << 31)) ? "-BE" : "");
 			break;
 		}
 	}
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
