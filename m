Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE0E17302
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 09:56:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlCPEWlvZXLVhZ9O76dmRP8yJ8/FlY5bFv5AKs9avhA=; b=W7HS9yfaWhMll/
	Cold6659zg+kgwRXtMOTitHAZxXUp7yeIsxwYop2S9jXuLz+mLn+Ze9X7HjFtrCgsVH3s9KwYbLzG
	cFKE287O25aZlXmXsqIjoU4keUHPABEB5WBBlC2m2+/Sdo90aQqsqqu6NPAYmJm6yx4EVavbBdnT3
	KC4NAauu0HhECWfINlCt3sZrU9IGtB1omp7aifVDr5uuIE8HHhTXYCjfPYanoBrY9P5QbyvQIL+sm
	5tUFyi+PRKC1/aDLZlWM2d6yp3tZf2hdTn2QU2ftfXcEMKuwXj/kT2enu2beIvkngWz0Rq55GHTWt
	v6HIiplXY++kwDhe/vOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHRH-0003h5-Nm; Wed, 08 May 2019 07:56:31 +0000
Received: from hc210-202-87-179.vdslpro.static.apol.com.tw ([210.202.87.179]
 helo=ironport.ite.com.tw)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHR6-0003gV-Hx; Wed, 08 May 2019 07:56:26 +0000
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
 by ironport.ite.com.tw with ESMTP; 08 May 2019 15:55:01 +0800
Received: from csbcas.internal.ite.com.tw (csbcas1.internal.ite.com.tw
 [192.168.65.46]) by mse.ite.com.tw with ESMTP id x487suVU075733;
 Wed, 8 May 2019 15:54:56 +0800 (GMT-8)
 (envelope-from allen.chen@ite.com.tw)
Received: from allen-VirtualBox.internal.ite.com.tw (192.168.70.14) by
 csbcas1.internal.ite.com.tw (192.168.65.45) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Wed, 8 May 2019 15:54:56 +0800
From: allen <allen.chen@ite.com.tw>
To: 
Subject: [PATCH 2/3] drm/bridge: add it6505 driver
Date: Wed, 8 May 2019 15:48:41 +0800
Message-ID: <1557301722-20827-3-git-send-email-allen.chen@ite.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557301722-20827-1-git-send-email-allen.chen@ite.com.tw>
References: <1557301722-20827-1-git-send-email-allen.chen@ite.com.tw>
MIME-Version: 1.0
X-Originating-IP: [192.168.70.14]
X-MAIL: mse.ite.com.tw x487suVU075733
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_005621_426225_4368888D 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.202.87.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Archit Taneja <architt@codeaurora.org>, Jitao Shi <jitao.shi@mediatek.com>,
 Yilun Lin <yllin@google.com>, Allen Chen <allen.chen@ite.com.tw>,
 David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Allen Chen <allen.chen@ite.com.tw>

This adds support for the iTE IT6505.
This device can convert DPI signal to DP output.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Signed-off-by: Yilun Lin <yllin@google.com>
Signed-off-by: Allen Chen <allen.chen@ite.com.tw>
---
 drivers/gpu/drm/bridge/Kconfig      |   22 +
 drivers/gpu/drm/bridge/Makefile     |    1 +
 drivers/gpu/drm/bridge/ite-it6505.c | 2637 +++++++++++++++++++++++++++++++++++
 3 files changed, 2660 insertions(+)
 create mode 100644 drivers/gpu/drm/bridge/ite-it6505.c

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 9c9c4df..d12e48c 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -43,6 +43,28 @@ config DRM_DUMB_VGA_DAC
 	  Support for non-programmable RGB to VGA DAC bridges, such as ADI
 	  ADV7123, TI THS8134 and THS8135 or passive resistor ladder DACs.
 
+config DRM_ITE_IT6505
+	tristate "ITE IT6505 DP bridge"
+	depends on OF
+	select DRM_KMS_HELPER
+	help
+	  ITE IT6505 DP bridge chip driver.
+
+config DRM_ITE_IT6505_ENHDCP
+	tristate "Enable IT6505 HDCP function"
+	depends on DRM_ITE_IT6505
+	default y
+
+config DRM_ITE_IT6505_ENAUD
+        tristate "Enable IT6505 audio function"
+        depends on DRM_ITE_IT6505
+        default y
+
+config DRM_ITE_IT6505_ENPWRONOFF
+        tristate "Enable IT6505 power on/off function"
+        depends on DRM_ITE_IT6505
+        default y
+
 config DRM_LVDS_ENCODER
 	tristate "Transparent parallel to LVDS encoder support"
 	depends on OF
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index 4934fcf..f5abca5 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -2,6 +2,7 @@
 obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
 obj-$(CONFIG_DRM_CDNS_DSI) += cdns-dsi.o
 obj-$(CONFIG_DRM_DUMB_VGA_DAC) += dumb-vga-dac.o
+obj-$(CONFIG_DRM_ITE_IT6505) += ite-it6505.o
 obj-$(CONFIG_DRM_LVDS_ENCODER) += lvds-encoder.o
 obj-$(CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW) += megachips-stdpxxxx-ge-b850v3-fw.o
 obj-$(CONFIG_DRM_NXP_PTN3460) += nxp-ptn3460.o
diff --git a/drivers/gpu/drm/bridge/ite-it6505.c b/drivers/gpu/drm/bridge/ite-it6505.c
new file mode 100644
index 0000000..13079a8
--- /dev/null
+++ b/drivers/gpu/drm/bridge/ite-it6505.c
@@ -0,0 +1,2637 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2018, The Linux Foundation. All rights reserved.
+ */
+#include <linux/bits.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/extcon.h>
+#include <linux/fs.h>
+#include <linux/gpio/consumer.h>
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/semaphore.h>
+#include <linux/types.h>
+#include <crypto/hash.h>
+#include <crypto/sha.h>
+#include <drm/drmP.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_crtc.h>
+#include <drm/drm_crtc_helper.h>
+#include <drm/drm_dp_helper.h>
+#include <drm/drm_edid.h>
+
+#define AX 0
+#define BX 1
+#define AUDSEL I2S
+#define AUDTYPE LPCM
+#define AUDFS AUD48K
+#define AUDCH 2
+/* 0: Standard I2S;1: 32bit I2S */
+#define I2SINPUTFMT 1
+/* 0: Left-justified;1: Right-justified */
+#define I2SJUSTIFIED 0
+/* 0: Data delay 1T correspond to WS;1: No data delay correspond to WS */
+#define I2SDATADELAY 0
+/* 0: is left channel;1: is right channel */
+#define I2SWSCHANNEL 0
+/* 0: MSB shift first;1: LSB shift first */
+#define I2SDATASEQ 0
+
+#define LANESWAP 0
+#define LANE 4
+#define _HBR 1
+#define ENHFRAME 1
+#define ENSSC 1
+
+#define FLAGTRAINDOWN 100
+#define TRAINFAILCNT 5
+#define AUX_WAIT_TIMEOUT_MS 15
+#define PCLK_DELAY 1
+#define PCLK_INV 0
+#define EDIDRETRYTIME 5
+#define SHOWVIDEOTIMING 2
+#define PWROFFRETRYTIME 5
+
+/* AX or BX */
+#define CHIP_VERSION BX
+
+/* if use this define will power on in probe */
+/* #define TEST_MODE */
+
+/* if use this define will enable AUX debug option */
+/* #define ENAUX_TRANSFER_DEBUG */
+
+/* if use this define will enable SHA debug */
+/* #define SHA_DEBUG */
+
+enum sys_status {
+	SYS_UNPLUG = 0,
+	SYS_HPD,
+	SYS_AUTOTRAIN,
+	SYS_WAIT,
+	SYS_TRAINFAIL,
+	SYS_ReHDCP,
+	SYS_PWRDN,
+	SYS_NOROP,
+	SYS_Unknown,
+};
+
+enum it6505_aud_sel {
+	I2S = 0,
+	SPDIF,
+};
+
+enum it6505_aud_fs {
+	AUD24K = 0x6,
+	AUD32K = 0x3,
+	AUD48K = 0x2,
+	AUD96K = 0xA,
+	AUD192K = 0xE,
+	AUD44P1K = 0x0,
+	AUD88P2K = 0x8,
+	AUD176P4K = 0xC,
+};
+
+enum it6505_aud_type {
+	LPCM = 0,
+	NLPCM,
+	DSS,
+	HBR,
+};
+
+enum aud_word_length {
+	AUD16BIT = 0,
+	AUD18BIT,
+	AUD20BIT,
+	AUD24BIT,
+};
+
+/* Audio Sample Word Length: AUD16BIT, AUD18BIT, AUD20BIT, AUD24BIT */
+#define AUDWORDLENGTH AUD24BIT
+
+struct it6505_platform_data {
+	struct regulator *pwr18;
+	struct regulator *ovdd;
+	struct gpio_desc *gpiod_hpd;
+	struct gpio_desc *gpiod_pd;
+	struct gpio_desc *gpiod_reset;
+
+	int hpd_irq;
+	int intp_irq;
+};
+
+struct it6505_dp_port {
+	struct it6505 *it6505_dp;
+	struct notifier_block event_nb;
+	struct extcon_dev *extcon;
+	struct work_struct extcon_wq;
+	u8 id;
+};
+
+struct it6505 {
+	struct drm_dp_aux aux;
+	struct drm_bridge bridge;
+	struct i2c_client *client;
+	struct edid *edid;
+	struct drm_connector connector;
+	struct drm_dp_link link;
+	struct it6505_platform_data pdata;
+	struct mutex lock;
+	struct regmap *regmap;
+	struct it6505_dp_port *port;
+	/* thread sequence control */
+	struct semaphore sem_notifier;
+
+	u8 dpcd[DP_RECEIVER_CAP_SIZE];
+	enum sys_status status;
+	u8 dumpdpcd[30];
+	u8 dpcd_rev;
+	bool hbr;
+	u8 lane;
+	u8 en_ssc;
+	bool en_hframe;
+	bool laneswap;
+
+	enum it6505_aud_sel aud_sel;
+	enum it6505_aud_fs aud_fs;
+	enum it6505_aud_type aud_type;
+	u8 aud_ch;
+	u8 i2s_input_fmt;
+	u8 i2s_justified;
+	u8 i2s_data_delay;
+	u8 i2s_ws_channel;
+	u8 i2s_data_seq;
+	u8 vidstable_done;
+	enum aud_word_length audwordlength;
+	u8 cntfsm;
+	bool cp_ready;
+	unsigned int bstatus;
+	bool cp_done;
+	u8 downstream_repeater;
+	u8 am0[8];
+	u8 binfo[2];
+	u8 ksvlist[5 * 12];
+	unsigned int sha[5];
+	unsigned int w[80];
+	u8 shainput[64];
+	u8 av[5][4];
+	u8 bv[5][4];
+	u8 passsha;
+	bool powered;
+	/* it6505 driver hold option */
+	unsigned int it6505_drv_hold;
+};
+
+static int it6505_poweron(struct it6505 *it6505);
+#ifdef CONFIG_DRM_ITE_IT6505_ENPWRONOFF
+static int it6505_poweroff(struct it6505 *it6505);
+#endif
+
+static const struct regmap_range it6505_bridge_volatile_ranges[] = {
+	{ .range_min = 0, .range_max = 0xFF },
+};
+
+static const struct regmap_access_table it6505_bridge_volatile_table = {
+	.yes_ranges = it6505_bridge_volatile_ranges,
+	.n_yes_ranges = ARRAY_SIZE(it6505_bridge_volatile_ranges),
+};
+
+static const struct regmap_config it6505_bridge_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.volatile_table = &it6505_bridge_volatile_table,
+	.cache_type = REGCACHE_NONE,
+};
+
+static int dptxrd(struct it6505 *it6505, unsigned int reg_addr,
+		  unsigned int *value)
+{
+	int err;
+
+	err = regmap_read(it6505->regmap, reg_addr, value);
+	if (err < 0) {
+		DRM_ERROR("%s read fail err reg_addr[0x%x] err:%d\n",
+			  __func__, reg_addr, err);
+		return err;
+	}
+
+	return 0;
+}
+
+static void it6505_dump(struct it6505 *it6505)
+{
+	unsigned int value, i;
+
+	DRM_DEBUG_DRIVER("\n----------%s start----------\n", __func__);
+	for (i = 0; i <= 0xff; i++) {
+		dptxrd(it6505, i, &value);
+		DRM_DEBUG_DRIVER("%s[0x%x] = 0x%x\n", __func__, i, value);
+	}
+	DRM_DEBUG_DRIVER("\n----------%s end----------\n\n", __func__);
+}
+
+static int dptxwr(struct it6505 *it6505, unsigned int reg_addr,
+		  unsigned int reg_val)
+{
+	int err;
+
+	err = regmap_write(it6505->regmap, reg_addr, reg_val);
+
+	if (err < 0) {
+		DRM_ERROR("%s write fail err reg[0x%x] = 0x%x err = %d\n",
+			__func__, reg_addr, reg_val, err);
+		return err;
+	}
+
+	return 0;
+}
+
+static int dptxset(struct it6505 *it6505, unsigned int reg, unsigned int mask,
+		   unsigned int value)
+{
+	int err;
+
+	err = regmap_update_bits(it6505->regmap, reg, mask, value);
+	if (err < 0) {
+		DRM_ERROR("%s write fail err %d\n", __func__, err);
+		return err;
+	}
+
+	return 0;
+}
+
+static inline struct it6505 *connector_to_it6505(struct drm_connector *c)
+{
+	return container_of(c, struct it6505, connector);
+}
+
+static inline struct it6505 *bridge_to_it6505(struct drm_bridge *bridge)
+{
+	return container_of(bridge, struct it6505, bridge);
+}
+
+static void it6505_init_fsm(struct it6505 *it6505)
+{
+	it6505->aud_sel = AUDSEL;
+	it6505->aud_fs = AUDFS;
+	it6505->aud_ch = AUDCH;
+	it6505->aud_type = AUDTYPE;
+	it6505->i2s_input_fmt = I2SINPUTFMT;
+	it6505->i2s_justified = I2SJUSTIFIED;
+	it6505->i2s_data_delay = I2SDATADELAY;
+	it6505->i2s_ws_channel = I2SWSCHANNEL;
+	it6505->i2s_data_seq = I2SDATASEQ;
+	it6505->audwordlength = AUDWORDLENGTH;
+
+	it6505->status = SYS_Unknown;
+	it6505->hbr = _HBR;
+	it6505->lane = LANE;
+	it6505->en_ssc = ENSSC;
+	it6505->en_hframe = ENHFRAME;
+	it6505->laneswap = LANESWAP;
+	it6505->vidstable_done = 0;
+}
+
+#if (CHIP_VERSION == BX)
+static void it6505_termination(struct it6505 *it6505, bool s)
+{
+	DRM_DEBUG_DRIVER("%s switch!!\n", __func__);
+	if (s) {
+		dptxset(it6505, 0x5D, 0x80, 0x00);
+		dptxset(it6505, 0x5E, 0x02, 0x02);
+		DRM_DEBUG_DRIVER("%s ON!!\n", __func__);
+	} else {
+		dptxset(it6505, 0x5D, 0x80, 0x80);
+		dptxset(it6505, 0x5E, 0x02, 0x00);
+		dptxset(it6505, 0x5C, 0xF0, 0x00);
+		DRM_DEBUG_DRIVER("%s OFF!!\n", __func__);
+	}
+}
+#endif
+
+static bool dptx_getsinkhpd(struct it6505 *it6505)
+{
+	unsigned int value;
+	int ret;
+
+	ret = dptxrd(it6505, 0x0D, &value);
+
+	if (ret < 0)
+		return false;
+
+	return (value & 2) == 2;
+}
+
+static void show_vid_info(struct it6505 *it6505)
+{
+	int hsync_pol, vsync_pol, interlaced;
+	int htotal, hdes, hdew, hfph, hsyncw;
+	int vtotal, vdes, vdew, vfph, vsyncw;
+	int rddata, rddata1, i;
+	int pclk, sum;
+
+	usleep_range(10000, 15000);
+	dptxwr(it6505, 0x0F, 0x00);
+	dptxrd(it6505, 0xa0, &rddata);
+	hsync_pol = rddata & BIT(0);
+	vsync_pol = (rddata & BIT(2)) >> 2;
+	interlaced = (rddata & BIT(4)) >> 4;
+
+	dptxrd(it6505, 0xa1, &rddata);
+	dptxrd(it6505, 0xa2, &rddata1);
+	htotal = ((rddata1 & 0x1F) << 8) + rddata;
+
+	dptxrd(it6505, 0xa3, &rddata);
+	dptxrd(it6505, 0xa4, &rddata1);
+
+	hdes = ((rddata1 & 0x1F) << 8) + rddata;
+
+	dptxrd(it6505, 0xa5, &rddata);
+	dptxrd(it6505, 0xa6, &rddata1);
+
+	hdew = ((rddata1 & 0x1F) << 8) + rddata;
+
+	dptxrd(it6505, 0xa7, &rddata);
+	dptxrd(it6505, 0xa8, &rddata1);
+
+	hfph = ((rddata1 & 0x1F) << 8) + rddata;
+
+	dptxrd(it6505, 0xa9, &rddata);
+	dptxrd(it6505, 0xaa, &rddata1);
+
+	hsyncw = ((rddata1 & 0x1F) << 8) + rddata;
+
+	dptxrd(it6505, 0xab, &rddata);
+	dptxrd(it6505, 0xac, &rddata1);
+	vtotal = ((rddata1 & 0x0F) << 8) + rddata;
+
+	dptxrd(it6505, 0xad, &rddata);
+	dptxrd(it6505, 0xae, &rddata1);
+	vdes = ((rddata1 & 0x0F) << 8) + rddata;
+
+	dptxrd(it6505, 0xaf, &rddata);
+	dptxrd(it6505, 0xb0, &rddata1);
+	vdew = ((rddata1 & 0x0F) << 8) + rddata;
+
+	dptxrd(it6505, 0xb1, &rddata);
+	dptxrd(it6505, 0xb2, &rddata1);
+	vfph = ((rddata1 & 0x0F) << 8) + rddata;
+
+	dptxrd(it6505, 0xb3, &rddata);
+	dptxrd(it6505, 0xb4, &rddata1);
+	vsyncw = ((rddata1 & 0x0F) << 8) + rddata;
+
+	sum = 0;
+	for (i = 0; i < 100; i++) {
+		dptxset(it6505, 0x12, 0x80, 0x80);
+		usleep_range(10000, 15000);
+		dptxset(it6505, 0x12, 0x80, 0x00);
+
+		dptxrd(it6505, 0x13, &rddata);
+		dptxrd(it6505, 0x14, &rddata1);
+		rddata = ((rddata1 & 0x0F) << 8) + rddata;
+
+		sum += rddata;
+	}
+
+	sum /= 100;
+	pclk = 13500 * 2048 / sum;
+
+	DRM_DEBUG_DRIVER("\n----------Video Input Timing----------\n");
+	DRM_DEBUG_DRIVER("PCLK = %d.%dMHz\n", pclk / 1000, pclk % 1000);
+	DRM_DEBUG_DRIVER("HTotal = %d\n", htotal);
+	DRM_DEBUG_DRIVER("HActive = %d\n", hdew);
+	DRM_DEBUG_DRIVER("HFrontPorch = %d\n", hfph);
+	DRM_DEBUG_DRIVER("HSyncWidth = %d\n", hsyncw);
+	DRM_DEBUG_DRIVER("HBackPorch = %d\n", htotal - hdew - hfph - hsyncw);
+	DRM_DEBUG_DRIVER("VTotal = %d\n", vtotal);
+	DRM_DEBUG_DRIVER("VActive = %d\n", vdew);
+	DRM_DEBUG_DRIVER("VFrontPorch = %d\n", vfph);
+	DRM_DEBUG_DRIVER("VSyncWidth = %d\n", vsyncw);
+	DRM_DEBUG_DRIVER("VBackPorch = %d\n", vtotal - vdew - vfph - vsyncw);
+}
+
+static void dptx_sys_chg(struct it6505 *it6505, enum sys_status newstate)
+{
+	unsigned int i = 0;
+	unsigned int reg06, reg07, reg08, reg0d, reg0e;
+
+	dptxrd(it6505, 0x06, &reg06);
+	dptxrd(it6505, 0x07, &reg07);
+	dptxrd(it6505, 0x08, &reg08);
+	dptxrd(it6505, 0x0d, &reg0d);
+	dptxrd(it6505, 0x0e, &reg0e);
+
+	DRM_DEBUG_DRIVER("[%s]reg06 = 0x%x\n", __func__, reg06);
+	DRM_DEBUG_DRIVER("[%s]reg07 = 0x%x\n", __func__, reg07);
+	DRM_DEBUG_DRIVER("[%s]reg08 = 0x%x\n", __func__, reg08);
+	DRM_DEBUG_DRIVER("[%s]reg0d = 0x%x\n", __func__, reg0d);
+	DRM_DEBUG_DRIVER("[%s]reg0e = 0x%x\n", __func__, reg0e);
+
+	if (newstate != SYS_UNPLUG) {
+		if (!dptx_getsinkhpd(it6505))
+			newstate = SYS_UNPLUG;
+	}
+
+	it6505->status = newstate;
+
+	switch (it6505->status) {
+	case SYS_UNPLUG:
+		DRM_DEBUG_DRIVER("sys_state is changing to SYS_UNPLUG!");
+		kfree(it6505->edid);
+		it6505->edid = NULL;
+		DRM_DEBUG_DRIVER("Free it6505 EDID memory!");
+#if (CHIP_VERSION == BX)
+		it6505_termination(it6505, false);
+#endif
+		break;
+	case SYS_HPD:
+		DRM_DEBUG_DRIVER("sys_state is changing to SYS_HPD!");
+#if (CHIP_VERSION == BX)
+		it6505_termination(it6505, true);
+#endif
+		break;
+	case SYS_AUTOTRAIN:
+		DRM_DEBUG_DRIVER("sys_state is changing to SYS_AUTOTRAIN!");
+		break;
+	case SYS_WAIT:
+		DRM_DEBUG_DRIVER("sys_state is changing to SYS_WAIT!");
+		break;
+#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
+	case SYS_ReHDCP:
+		DRM_DEBUG_DRIVER("sys_state is changing to SYS_ReHDCP!");
+		break;
+#endif
+	case SYS_NOROP:
+		DRM_DEBUG_DRIVER("sys_state is changing to SYS_NOROP!");
+		for (i = 0; i < SHOWVIDEOTIMING; i++)
+			show_vid_info(it6505);
+#ifdef TEST_MODE
+		it6505->it6505_drv_hold = 1;
+		DRM_DEBUG_DRIVER("set it6505_drv_hold:%d",
+				it6505->it6505_drv_hold);
+#endif
+		break;
+	case SYS_PWRDN:
+		DRM_DEBUG_DRIVER("sys_state is changing to SYS_PWRDN!");
+		/* Reset and PwrDn AFE */
+		break;
+	default:
+		DRM_DEBUG_DRIVER("sys_state is changing to SYS_UNKNOWN!");
+		break;
+	}
+}
+
+static bool it6505_aux_op_finished(struct it6505 *it6505)
+{
+	unsigned int value;
+	int err;
+
+	err = regmap_read(it6505->regmap, 0x2b, &value);
+	if (err < 0)
+		return false;
+
+	return (value & BIT(5)) == 0;
+}
+
+
+static int dptx_auxwait(struct it6505 *it6505)
+{
+	unsigned int status;
+	unsigned long timeout;
+	int err;
+
+	timeout = jiffies + msecs_to_jiffies(AUX_WAIT_TIMEOUT_MS) + 1;
+
+	while (!it6505_aux_op_finished(it6505)) {
+		if (time_after(jiffies, timeout)) {
+			DRM_DEBUG_DRIVER("Timed out waiting AUX to finish");
+			return -ETIMEDOUT;
+		}
+		usleep_range(1000, 2000);
+	}
+
+	err = dptxrd(it6505, 0x9f, &status);
+	if (err < 0) {
+		DRM_ERROR("Failed to read from AUX channel: %d\n", err);
+		return err;
+	}
+
+	if (status & 0x03) {
+		DRM_ERROR("Failed to wait for AUX channel (status: 0x%x)\n",
+				status);
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static int dptx_aux_r_edid(struct it6505 *it6505, unsigned int nosegw,
+			   unsigned int block, unsigned int offset)
+{
+	unsigned int value, status;
+	int ret;
+
+	/* enable pc aux access */
+	dptxwr(it6505, 0x23, (nosegw << 6) + 0x03);
+	/* edid fifo clr */
+	dptxwr(it6505, 0x23, (nosegw << 6) + 0x82);
+	/* start address[7:0] */
+	dptxwr(it6505, 0x24, (block % 2) * 128 + offset);
+	/* start address[15:8] */
+	dptxwr(it6505, 0x25, block / 256);
+	/* writenum[3:0]+startadr[19:16] */
+	dptxwr(it6505, 0x26, 0xf0);
+	/* aux edid read fire */
+	dptxwr(it6505, 0x2b, 0x0b);
+	dptx_auxwait(it6505);
+
+	ret = dptxrd(it6505, 0x07, &value);
+	if (ret)
+		return ret;
+
+	if (value & BIT(0)) {
+		DRM_DEBUG_DRIVER("aux channel request fail interrupt\n");
+
+		ret = dptxrd(it6505, 0x9f, &status);
+		if (ret) {
+			DRM_DEBUG_DRIVER("AUX channel failed : %d !\n", ret);
+			return ret;
+		}
+
+		switch ((status & 0xc0) >> 6) {
+		case 0:
+			DRM_DEBUG_DRIVER("no error !!!\n");
+			return 0;
+		case 1:
+			DRM_DEBUG_DRIVER("defer > 7 times status: 0x%x!\n",
+					 status);
+			return -ETIMEDOUT;
+
+		case 2:
+			DRM_DEBUG_DRIVER("Nack response status: 0x%x!\n",
+					 status);
+			return -ETIMEDOUT;
+
+		default:
+			DRM_DEBUG_DRIVER("timeout status: 0x%x!\n", status);
+			return -ETIMEDOUT;
+		}
+
+	}
+	return 0;
+}
+
+static int dptx_get_edidblock(struct it6505 *it6505, u8 *pedidbuff,
+			      unsigned int blockno, unsigned int *chk)
+{
+	ushort i;
+	unsigned int offset, value, reg0d;
+
+	if (pedidbuff == NULL)
+		return 0xff;
+
+	dptxset(it6505, 0x05, 0x08, 0x08);
+	dptxset(it6505, 0x05, 0x08, 0x00);
+
+	for (offset = 0; offset < 0x80; offset += 8) {
+		dptxrd(it6505, 0x0D, &reg0d);
+		if (!(reg0d & BIT(1))) {
+			dptx_sys_chg(it6505, SYS_UNPLUG);
+			return -ENXIO;
+		}
+		dptx_aux_r_edid(it6505, 1, blockno, offset);
+
+		for (i = 0; i < 8; i++) {
+			dptxrd(it6505, 0x2f, &value);
+			pedidbuff[offset + i] = value;
+			DRM_DEBUG_DRIVER("%s[%d][%d]: 0x%x !!\n",
+					 __func__, blockno, i, value);
+		}
+	}
+	/* disable pc aux access */
+	dptxwr(it6505, 0x23, 1 << 6);
+	*chk = 0;
+	for (i = 0; i < 0x80; i++)
+		*chk += pedidbuff[i];
+
+	*chk &= 0xff;
+	return 0;
+}
+
+static int it6505_get_extension_num(struct it6505 *it6505, u8 *block)
+{
+	unsigned int checksum = 0, retrytime = 0, reg0d;
+	int err;
+	u8 buff[EDID_LENGTH];
+
+	do {
+		dptxrd(it6505, 0x0D, &reg0d);
+		if (!(reg0d & BIT(1))) {
+			dptx_sys_chg(it6505, SYS_UNPLUG);
+			return -ENXIO;
+		}
+		err = dptx_get_edidblock(it6505, buff, 0, &checksum);
+		if (err < 0)
+			return err;
+		retrytime++;
+		DRM_DEBUG_DRIVER("read EDID %d time", retrytime);
+	} while (checksum != 0 && retrytime < EDIDRETRYTIME);
+
+	if (checksum)
+		return -EINVAL;
+	*block = buff[0x7e];
+	DRM_DEBUG_DRIVER("extension number:%d", *block);
+	return 0;
+}
+
+static struct edid *it6505_get_edid(struct it6505 *it6505)
+{
+	unsigned int checksum = 0, retrytime = 0;
+	unsigned int i, reg0d, total_size;
+	u8 block;
+	u8 *pedidbuff = kmalloc(EDID_LENGTH, GFP_KERNEL);
+	u8 *pedidbuff1;
+
+	if (!pedidbuff)
+		return NULL;
+
+	it6505_dump(it6505);
+	if (it6505_get_extension_num(it6505, &block) < 0)
+		return NULL;
+	/* dp does not have the hdmi tx four block test requirement */
+	if (block > 2)
+		block = 2;
+
+	total_size = (block + 1) * EDID_LENGTH;
+	if (total_size > EDID_LENGTH) {
+		pedidbuff1 = krealloc(pedidbuff, total_size, GFP_KERNEL);
+		if (!pedidbuff1) {
+			kfree(pedidbuff);
+			return NULL;
+		}
+		pedidbuff = pedidbuff1;
+	}
+
+	for (i = 0; i <= block; i++) {
+		DRM_DEBUG_DRIVER("Read block 0x%x", i);
+		retrytime = 0;
+		do {
+			dptxrd(it6505, 0x0D, &reg0d);
+			if (!(reg0d & BIT(1))) {
+				dptx_sys_chg(it6505, SYS_UNPLUG);
+				kfree(pedidbuff);
+				return NULL;
+			}
+			if (dptx_get_edidblock(
+				it6505, pedidbuff + i * EDID_LENGTH, i,
+				&checksum) < 0)
+				return NULL;
+			DRM_DEBUG_DRIVER("%s in block %d %s",
+					 checksum ? "Fake" : "True", i,
+					 checksum ? "and read again!" : "!");
+			retrytime++;
+			DRM_DEBUG_DRIVER("read EDID %d time", retrytime);
+		} while (checksum != 0 && retrytime < EDIDRETRYTIME);
+		if (checksum) {
+			kfree(pedidbuff);
+			return NULL;
+		}
+	}
+	return (struct edid *)pedidbuff;
+}
+
+static int it6505_get_modes(struct drm_connector *connector)
+{
+	struct it6505 *ctx = connector_to_it6505(connector);
+	int err, num_modes = 0;
+	unsigned int reg9f, reg0d;
+
+	DRM_DEBUG_DRIVER("start %s", __func__);
+	err = it6505_poweron(ctx);
+	if (err) {
+		DRM_DEBUG_DRIVER("power on fail!");
+		goto unlock;
+	}
+	DRM_DEBUG_DRIVER("power on success!");
+	if (ctx->edid)
+		return drm_add_edid_modes(connector, ctx->edid);
+	mutex_lock(&ctx->lock);
+	dptxrd(ctx, 0x0D, &reg0d);
+	if (reg0d & BIT(1))
+		dptx_sys_chg(ctx, SYS_HPD);
+	else
+		dptx_sys_chg(ctx, SYS_UNPLUG);
+
+	dptxrd(ctx, 0x9F, &reg9f);
+	DRM_DEBUG_DRIVER("Aux status reg9F:0x%02x\n", reg9f);
+	ctx->edid = it6505_get_edid(ctx);
+	if (!ctx->edid) {
+		DRM_ERROR("Failed to read EDID\n");
+		goto unlock;
+	}
+
+	err = drm_connector_update_edid_property(connector, ctx->edid);
+	if (err) {
+		DRM_ERROR("Failed to update EDID property: %d\n", err);
+		goto unlock;
+	}
+
+	num_modes = drm_add_edid_modes(connector, ctx->edid);
+
+unlock:
+	mutex_unlock(&ctx->lock);
+
+	return num_modes;
+}
+
+static const struct drm_connector_helper_funcs
+it6505_connector_helper_funcs = {
+	.get_modes = it6505_get_modes,
+};
+
+static enum drm_connector_status it6505_detect(struct drm_connector *connector,
+					       bool force)
+{
+	struct it6505 *ctx = connector_to_it6505(connector);
+
+	if (gpiod_get_value(ctx->pdata.gpiod_hpd))
+		return connector_status_disconnected;
+
+	return connector_status_connected;
+}
+
+static const struct drm_connector_funcs it6505_connector_funcs = {
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.detect = it6505_detect,
+	.destroy = drm_connector_cleanup,
+	.reset = drm_atomic_helper_connector_reset,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+static ssize_t it6505_aux_transfer(struct drm_dp_aux *aux,
+				   struct drm_dp_aux_msg *msg)
+{
+	/* reserved code for future debug using */
+#ifdef ENAUX_TRANSFER_DEBUG
+
+	struct it6505 *ctx = container_of(aux, struct it6505, aux);
+	u8 ctrl1 = msg->request;
+	u8 ctrl2 = SP_AUX_EN;
+	u8 *buffer = msg->buffer;
+	int err;
+
+	/* The DP AUX transmit and receive buffer has 16 bytes. */
+	if (WARN_ON(msg->size > AUX_CH_BUFFER_SIZE))
+		return -E2BIG;
+
+	/* Zero-sized messages specify address-only transactions. */
+	if (msg->size < 1)
+		ctrl2 |= SP_ADDR_ONLY;
+	else	/* For non-zero-sized set the length field. */
+		ctrl1 |= (msg->size - 1) << SP_AUX_LENGTH_SHIFT;
+
+	if ((msg->request & DP_AUX_I2C_READ) == 0) {
+		/* When WRITE | MOT write values to data buffer */
+		err = regmap_bulk_write(ctx->map[I2C_IDX_TX_P0],
+					SP_DP_BUF_DATA0_REG, buffer,
+					msg->size);
+		if (err)
+			return err;
+	}
+
+	/* Write address and request */
+	err = it6505_aux_address(ctx, msg->address);
+	if (err)
+		return err;
+
+	err = regmap_write(ctx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL1_REG,
+			   ctrl1);
+	if (err)
+		return err;
+
+	/* Start transaction */
+	err = regmap_update_bits(ctx->map[I2C_IDX_TX_P0],
+				 SP_DP_AUX_CH_CTRL2_REG, SP_ADDR_ONLY |
+				 SP_AUX_EN, ctrl2);
+	if (err)
+		return err;
+
+	err = it6505_aux_wait(ctx);
+	if (err)
+		return err;
+
+	msg->reply = DP_AUX_I2C_REPLY_ACK;
+
+	if ((msg->size > 0) && (msg->request & DP_AUX_I2C_READ)) {
+		/* Read values from data buffer */
+		err = regmap_bulk_read(ctx->map[I2C_IDX_TX_P0],
+				       SP_DP_BUF_DATA0_REG, buffer,
+				       msg->size);
+		if (err)
+			return err;
+	}
+
+	err = it6505_clear_bits(ctx->map[I2C_IDX_TX_P0],
+				SP_DP_AUX_CH_CTRL2_REG, SP_ADDR_ONLY);
+	if (err)
+		return err;
+
+	return msg->size;
+
+#endif
+	return 0;
+}
+
+static int it6505_extcon_notifier(struct notifier_block *self,
+				  unsigned long event, void *ptr)
+{
+	struct it6505_dp_port *port =
+		container_of(self, struct it6505_dp_port, event_nb);
+
+	schedule_work(&port->extcon_wq);
+	return NOTIFY_DONE;
+}
+
+static void it6505_extcon_work(struct work_struct *work)
+{
+	struct it6505_dp_port *port =
+		container_of(work, struct it6505_dp_port, extcon_wq);
+	struct it6505 *ctx = port->it6505_dp;
+	int reg06 = 0;
+	int state = extcon_get_state(port->extcon, EXTCON_DISP_DP);
+#ifdef CONFIG_DRM_ITE_IT6505_ENPWRONOFF
+	unsigned int pwroffretry = 0;
+#endif
+	DRM_DEBUG_DRIVER("[%s]start", __func__);
+	if (dptxrd(ctx, 0x06, &reg06) < 0)
+		goto no_power;
+	if (!(reg06 & BIT(0))) {
+		DRM_DEBUG_DRIVER("[%s] no extcon event and return", __func__);
+		return;
+	}
+no_power:
+	down(&ctx->sem_notifier);
+	DRM_DEBUG_DRIVER("no_power reg06:0x%02x", reg06);
+	DRM_DEBUG_DRIVER("[%s] state:%d %s", __func__, state,
+			 state ? "cable in" : "cable out");
+	if (state > 0) {
+		DRM_DEBUG_DRIVER("[%s] start to power on!", __func__);
+		it6505_poweron(ctx);
+		drm_helper_hpd_irq_event(ctx->connector.dev);
+	} else {
+		drm_helper_hpd_irq_event(ctx->connector.dev);
+#ifdef CONFIG_DRM_ITE_IT6505_ENPWRONOFF
+		DRM_DEBUG_DRIVER("[%s] start to power off!", __func__);
+		while (it6505_poweroff(ctx) &&
+		       pwroffretry++ < PWROFFRETRYTIME) {
+			DRM_DEBUG_DRIVER("power off it6505 fail! %d times",
+					 pwroffretry);
+		}
+		DRM_DEBUG_DRIVER("power off it6505 success!");
+#endif
+	}
+	up(&ctx->sem_notifier);
+}
+
+static int it6505_use_notifier_module(struct it6505 *ctx)
+{
+	struct it6505_dp_port *port = ctx->port;
+	int ret;
+
+	port->event_nb.notifier_call = it6505_extcon_notifier;
+	INIT_WORK(&port->extcon_wq, it6505_extcon_work);
+	ret = devm_extcon_register_notifier(&ctx->client->dev, port->extcon,
+					    EXTCON_DISP_DP, &port->event_nb);
+	if (ret) {
+		DRM_ERROR("failed to register notifier for DP");
+		return ret;
+	}
+	return 0;
+}
+
+static int it6505_bridge_attach(struct drm_bridge *bridge)
+{
+	struct it6505 *ctx = bridge_to_it6505(bridge);
+	struct extcon_dev *extcon;
+	struct it6505_dp_port *port;
+	struct device *dev;
+	int err;
+
+	dev = &ctx->client->dev;
+	if (!bridge->encoder) {
+		DRM_ERROR("Parent encoder object not found");
+		return -ENODEV;
+	}
+
+	/* get extcon device from DTS */
+	extcon = extcon_get_edev_by_phandle(dev, 0);
+	if (PTR_ERR(extcon) == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+	if (IS_ERR(extcon)) {
+		DRM_DEBUG_DRIVER("%s can not get extcon device!", __func__);
+		return -EINVAL;
+	}
+	DRM_DEBUG_DRIVER("%s get extcon device!", __func__);
+
+	port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
+	if (!port)
+		return -ENOMEM;
+	port->extcon = extcon;
+	port->it6505_dp = ctx;
+	port->id = 0;
+	ctx->port = port;
+
+	/* Register aux channel */
+	ctx->aux.name = "DP-AUX";
+	ctx->aux.dev = dev;
+	ctx->aux.transfer = it6505_aux_transfer;
+
+	err = drm_dp_aux_register(&ctx->aux);
+	if (err < 0) {
+		DRM_ERROR("Failed to register aux channel: %d\n", err);
+		return err;
+	}
+
+	err = drm_connector_init(bridge->dev, &ctx->connector,
+				 &it6505_connector_funcs,
+				 DRM_MODE_CONNECTOR_DisplayPort);
+	if (err) {
+		DRM_ERROR("Failed to initialize connector: %d\n", err);
+		goto unregister_aux;
+	}
+
+	drm_connector_helper_add(&ctx->connector,
+				 &it6505_connector_helper_funcs);
+
+	err = drm_connector_register(&ctx->connector);
+	if (err) {
+		DRM_ERROR("Failed to register connector: %d\n", err);
+		goto unregister_aux;
+	}
+
+	ctx->connector.polled = DRM_CONNECTOR_POLL_HPD;
+
+	err = drm_connector_attach_encoder(&ctx->connector, bridge->encoder);
+	if (err) {
+		DRM_ERROR("Failed to link up connector to encoder: %d\n", err);
+		goto unregister_connector;
+	}
+
+	err = it6505_use_notifier_module(ctx);
+	if (err < 0)
+		goto unregister_connector;
+	return 0;
+
+unregister_connector:
+	drm_connector_unregister(&ctx->connector);
+unregister_aux:
+	drm_dp_aux_unregister(&ctx->aux);
+	return err;
+}
+
+static enum drm_mode_status
+it6505_bridge_mode_valid(struct drm_bridge *bridge,
+			 const struct drm_display_mode *mode)
+{
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		return MODE_NO_INTERLACE;
+
+	/* Max 1200p at 5.4 Ghz, one lane */
+	if (mode->clock > 80000)
+		return MODE_CLOCK_HIGH;
+
+	return MODE_OK;
+}
+
+static int it6505_send_video_infoframe(struct it6505 *it6505,
+				       struct hdmi_avi_infoframe *frame)
+{
+	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
+	int err;
+
+	err = hdmi_avi_infoframe_pack(frame, buffer, sizeof(buffer));
+	if (err < 0) {
+		DRM_ERROR("Failed to pack AVI infoframe: %d\n", err);
+		return err;
+	}
+
+	err = dptxset(it6505, 0xe8, 1, 0);
+	if (err)
+		return err;
+
+	err = regmap_bulk_write(it6505->regmap, 0xe9, buffer, frame->length);
+	if (err)
+		return err;
+
+	err = dptxset(it6505, 0xe8, 1, 1);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static void it6505_bridge_mode_set(struct drm_bridge *bridge,
+				   struct drm_display_mode *mode,
+				   struct drm_display_mode *adjusted_mode)
+{
+	struct it6505 *ctx = bridge_to_it6505(bridge);
+	struct hdmi_avi_infoframe frame;
+	int err;
+
+	mutex_lock(&ctx->lock);
+
+	err = drm_hdmi_avi_infoframe_from_display_mode(&frame, adjusted_mode,
+						       false);
+	if (err) {
+		DRM_ERROR("Failed to setup AVI infoframe: %d\n", err);
+		goto unlock;
+	}
+	err = it6505_send_video_infoframe(ctx, &frame);
+	if (err)
+		DRM_ERROR("Failed to send AVI infoframe: %d\n", err);
+
+unlock:
+	mutex_unlock(&ctx->lock);
+
+}
+
+static void dptx_init(struct it6505 *it6505)
+{
+	dptxwr(it6505, 0x05, 0x3B);
+	usleep_range(1000, 2000);
+	dptxwr(it6505, 0x05, 0x1F);
+	usleep_range(1000, 1500);
+}
+
+static void it6505_int_mask(struct it6505 *it6505)
+{
+#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
+	dptxwr(it6505, 0x09, 0x1F);
+#else
+	dptxwr(it6505, 0x09, 0x07);
+#endif
+
+#ifdef CONFIG_DRM_ITE_IT6505_ENAUD
+	dptxwr(it6505, 0x0A, 0x07);
+#else
+	dptxwr(it6505, 0x0A, 0x03);
+#endif
+	dptxwr(it6505, 0x0B, 0x90);
+}
+
+static void dptx_set_aud_fmt(struct it6505 *it6505, enum it6505_aud_sel audsel,
+			     unsigned int audch)
+{
+	unsigned int audsrc;
+	/* I2S MODE */
+	dptxwr(it6505, 0xB9,
+		(it6505->audwordlength << 5) | (it6505->i2s_data_seq << 4) |
+		(it6505->i2s_ws_channel << 3) |
+		(it6505->i2s_data_delay << 2) |
+		(it6505->i2s_justified << 1) | it6505->i2s_input_fmt);
+	if (audsel == SPDIF) {
+		dptxwr(it6505, 0xBA, 0x00);
+		/* 0x30 = 128*FS */
+		dptxset(it6505, 0x11, 0xF0, 0x30);
+	} else {
+		dptxwr(it6505, 0xBA, 0xe4);
+	}
+
+	dptxwr(it6505, 0xBB, 0x00);
+	dptxwr(it6505, 0xBC, 0x00);
+	audsrc = 1;
+
+	if (audch > 2)
+		audsrc |= 2;
+
+	if (audch > 4)
+		audsrc |= 4;
+
+	if (audch == 8)
+		audsrc |= 8;
+
+	audsrc |= audsel << 4;
+
+	dptxwr(it6505, 0xB8, audsrc);
+}
+
+static void dptx_set_aud_chsts(struct it6505 *it6505,
+			       enum it6505_aud_type audtype,
+			       enum it6505_aud_fs audfs)
+{
+	/* Channel Status */
+	dptxwr(it6505, 0xBF, audtype << 1);
+	dptxwr(it6505, 0xC0, 0x00);
+	dptxwr(it6505, 0xC1, 0x00);
+	dptxwr(it6505, 0xC2, audfs);
+	switch (it6505->audwordlength) {
+	case AUD16BIT:
+		dptxwr(it6505, 0xC3, ((~audfs) << 4) + 0x02);
+		break;
+
+	case AUD18BIT:
+		dptxwr(it6505, 0xC3, ((~audfs) << 4) + 0x04);
+		break;
+
+	case AUD20BIT:
+		dptxwr(it6505, 0xC3, ((~audfs) << 4) + 0x03);
+		break;
+
+	case AUD24BIT:
+		dptxwr(it6505, 0xC3, ((~audfs) << 4) + 0x0B);
+		break;
+	}
+}
+
+
+static void dptx_set_audio_infoframe(struct it6505 *it6505, unsigned int audch)
+{
+	dptxwr(it6505, 0xf7, audch - 1);
+
+	switch (audch) {
+	case 2:
+		dptxwr(it6505, 0xF9, 0x00);
+		break;
+	case 3:
+		dptxwr(it6505, 0xF9, 0x01);
+		break;
+	case 4:
+		dptxwr(it6505, 0xF9, 0x03);
+		break;
+	case 5:
+		dptxwr(it6505, 0xF9, 0x07);
+		break;
+	case 6:
+		dptxwr(it6505, 0xF9, 0x0B);
+		break;
+	case 7:
+		dptxwr(it6505, 0xF9, 0x0F);
+		break;
+	case 8:
+		dptxwr(it6505, 0xF9, 0x1F);
+		break;
+	default:
+		DRM_ERROR("audio channel number error: %u\n", audch);
+	}
+	/* Enable Audio InfoFrame */
+	dptxset(it6505, 0xE8, 0x22, 0x22);
+}
+
+
+static void it6505_set_audio(struct it6505 *it6505, enum it6505_aud_sel audsel,
+		      enum it6505_aud_type audtype, enum it6505_aud_fs audfs,
+		      unsigned int audch)
+{
+	/* Audio Clock Domain Reset */
+	dptxset(it6505, 0x05, 0x02, 0x02);
+	/* Audio mute */
+	dptxset(it6505, 0xD3, 0x20, 0x20);
+	/* Release Audio Clock Domain Reset */
+	dptxset(it6505, 0x05, 0x02, 0x00);
+
+	dptx_set_aud_chsts(it6505, audtype, audfs);
+	dptx_set_audio_infoframe(it6505, audch);
+	dptx_set_aud_fmt(it6505, audsel, audch);
+	/* Enable Enhanced Audio TimeStmp Mode */
+	dptxset(it6505, 0xD4, 0x04, 0x04);
+	/* Disable Full Audio Packet */
+	dptxset(it6505, 0xBB, 0x10, 0x00);
+
+	dptxwr(it6505, 0xDE, 0x00);
+	dptxwr(it6505, 0xDF, 0x80);
+	dptxwr(it6505, 0xE0, 0x00);
+	dptxset(it6505, 0xD3, 0x20, 0x00);
+
+	/* Clear Video M Error Interrupt */
+	dptxset(it6505, 0x08, 0x08, 0x08);
+	/* Clear Audio FIFO OverFlow Interrupt */
+	dptxset(it6505, 0x07, 0x04, 0x04);
+}
+
+/***************************************************************************
+ * DPCD Read and EDID
+ ***************************************************************************/
+
+static unsigned int dptx_dpcdrd(struct it6505 *it6505, unsigned long offset)
+{
+	unsigned int startadr0, startadr1, startadr2;
+
+	startadr0 = (unsigned int)((offset >> 0) & 0xFF);
+	startadr1 = (unsigned int)((offset >> 8) & 0xFF);
+	startadr2 = (unsigned int)((offset >> 16) & 0x0F);
+	/* Enable PC Aux Access */
+	dptxwr(it6505, 0x23, (0 << 6) + 0x02);
+	/* Start Address[7:0] */
+	dptxwr(it6505, 0x24, startadr0);
+	/* Start Address[15:8] */
+	dptxwr(it6505, 0x25, startadr1);
+	/* WriteNum[3:0]+StartAdr[19:16] */
+	dptxwr(it6505, 0x26, startadr2);
+	/* Aux Read Fire */
+	dptxwr(it6505, 0x2B, 0x00);
+	dptx_auxwait(it6505);
+	/* Disable PC Aux Access */
+	dptxwr(it6505, 0x23, (0 << 6) + 0x00);
+
+	dptxrd(it6505, 0x2C, &startadr0);
+
+	return startadr0;
+}
+
+static int dptx_dpcdwr(struct it6505 *it6505, unsigned long offset,
+		       unsigned long datain)
+{
+	unsigned int startadr0, startadr1, startadr2;
+
+	startadr0 = (unsigned int)(offset >> 0) & 0xFF;
+	startadr1 = (unsigned int)(offset >> 8) & 0xFF;
+	startadr2 = (unsigned int)(offset >> 16) & 0x0F;
+	/* Enable PC Aux Access */
+	dptxwr(it6505, 0x23, (1 << 6) + 0x02);
+	/* Start Address[7:0] */
+	dptxwr(it6505, 0x24, startadr0);
+	/* Start Address[15:8] */
+	dptxwr(it6505, 0x25, startadr1);
+	/* WriteNum[3:0]+StartAdr[19:16] */
+	dptxwr(it6505, 0x26, startadr2);
+	/* WriteData Byte 1 */
+	dptxwr(it6505, 0x27, datain);
+	/* Aux Write Fire */
+	dptxwr(it6505, 0x2B, 0x05);
+	dptx_auxwait(it6505);
+	/* Aux Read Fire */
+	dptxwr(it6505, 0x2B, 0x00);
+	dptx_auxwait(it6505);
+	/* Disable PC Aux Access */
+	dptxwr(it6505, 0x23, (1 << 6) + 0x00);
+
+	dptxrd(it6505, 0x2C, &startadr0);
+
+	if (startadr0 != datain)
+		return -EINVAL;
+
+	return 0;
+}
+
+static void it6505_get_dpcd(struct it6505 *it6505)
+{
+	unsigned int offset = 0;
+
+	DRM_DEBUG_DRIVER("========== [DPCD] ===========\n");
+	for (offset = 0; offset < 0x10; offset++) {
+		it6505->dumpdpcd[offset] = dptx_dpcdrd(it6505, offset);
+		DRM_DEBUG_DRIVER("DPCD[0x%02x] = 0x%02x\n", offset,
+				 it6505->dumpdpcd[offset]);
+	}
+	DRM_DEBUG_DRIVER("=============================\n");
+}
+
+static void it6505_parse_dpcd(struct it6505 *it6505)
+{
+	u8 max_lanes;
+
+	it6505->dpcd_rev = it6505->dumpdpcd[0];
+	DRM_DEBUG_DRIVER("#########DPCD Rev.: %d.%d###########\n",
+			 it6505->dpcd_rev >> 4, it6505->dpcd_rev & 0x0F);
+
+	switch (it6505->dumpdpcd[1]) {
+	case 0x06:
+		DRM_DEBUG_DRIVER("Maximum Link Rate: 1.62Gbps per lane\n");
+		if (it6505->hbr) {
+			DRM_DEBUG_DRIVER(
+				"Not support HBR Mode, will train LBR\n");
+			it6505->hbr = false;
+		} else {
+			DRM_DEBUG_DRIVER("Training LBR\n");
+		}
+		break;
+
+	case 0x0A:
+		DRM_DEBUG_DRIVER("Maximum Link Rate: 2.7Gbps per lane\n");
+		if (!it6505->hbr) {
+			DRM_DEBUG_DRIVER("Support HBR Mode, will train LBR\n");
+			it6505->hbr = false;
+		} else {
+			DRM_DEBUG_DRIVER("Training HBR\n");
+		}
+		break;
+
+	case 0x14:
+		DRM_DEBUG_DRIVER("Maximum Link Rate: 2.7Gbps per lane\n");
+		break;
+
+	default:
+		DRM_ERROR("Unknown Maximum Link Rate: %u\n",
+			  it6505->dumpdpcd[1]);
+		break;
+	}
+
+	max_lanes = it6505->dumpdpcd[2] & 0x1F;
+	if (max_lanes == 1 || max_lanes == 2 || max_lanes == 4) {
+		DRM_DEBUG_DRIVER(
+			"Maximum Lane Count: %u lane, it6505->lane = %u\n",
+			max_lanes,
+			it6505->lane);
+		if (it6505->lane > max_lanes)
+			it6505->lane = max_lanes;
+		DRM_DEBUG_DRIVER("Training %u lane\n", it6505->lane);
+	} else {
+		DRM_ERROR("Maximum Lane Count: Error (%u)\n", max_lanes);
+	}
+
+	if (it6505->dpcd_rev == 0x11 && it6505->dumpdpcd[2] & BIT(7)) {
+		DRM_DEBUG_DRIVER("Support Enhanced Framing Mode");
+	} else {
+		DRM_DEBUG_DRIVER("Can not support Enhanced Framing Mode");
+		if (it6505->en_hframe) {
+			DRM_DEBUG_DRIVER("Can not support Enhanced Framing!");
+			it6505->en_hframe = 0;
+		}
+	}
+
+	if (it6505->dumpdpcd[3] & BIT(0)) {
+		DRM_DEBUG_DRIVER("Maximum Down-Spread: 0.5, support SSC!\n");
+	} else {
+		DRM_DEBUG_DRIVER("Maximum Down-Spread: 0, No support SSC!\n");
+		if (it6505->en_ssc) {
+			DRM_DEBUG_DRIVER("Can not support SSC!!\n");
+			it6505->en_ssc = 0;
+		}
+	}
+
+	if (it6505->dpcd_rev == 0x11 && it6505->dumpdpcd[3] & BIT(6))
+		DRM_DEBUG_DRIVER("Support No AUX Training\n");
+	else
+		DRM_DEBUG_DRIVER("Can not support No AUX Training\n");
+
+	if (dptx_dpcdrd(it6505, 0x68028) & BIT(0)) {
+		DRM_DEBUG_DRIVER("Sink support HDCP!\n");
+		it6505->cp_ready = true;
+#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
+		DRM_DEBUG_DRIVER("Config ENHDCP output with HDCP!\n");
+#else
+		DRM_DEBUG_DRIVER("Not config ENHDCP output no HDCP!\n");
+#endif
+	} else {
+		DRM_DEBUG_DRIVER("Sink not support HDCP !\n");
+		it6505->cp_ready = false;
+#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
+		DRM_DEBUG_DRIVER("Config ENHDCP output no HDCP!\n");
+#else
+		DRM_DEBUG_DRIVER("Not config ENHDCP output no HDCP!\n");
+#endif
+	}
+
+	if (dptx_dpcdrd(it6505, 0x68028) & BIT(1)) {
+		DRM_DEBUG_DRIVER("Downstream is repeater!!\n");
+		it6505->downstream_repeater = true;
+	} else {
+		DRM_DEBUG_DRIVER("Downstream is receiver!!\n");
+		it6505->downstream_repeater = false;
+	}
+}
+
+static void it6505_enable_hdcp(struct it6505 *it6505)
+{
+	int i;
+	u8 c;
+	unsigned long bksvs[5], bksv;
+
+	/* Disable CP_Desired */
+	dptxset(it6505, 0x38, 0x0B, 0x00);
+	dptxset(it6505, 0x05, 0x10, 0x10);
+
+	usleep_range(1000, 1500);
+	c = dptx_dpcdrd(it6505, 0x68028);
+	DRM_DEBUG_DRIVER("DPCD[0x68028]:0x%x!!\n", c);
+	if (!c)
+		return;
+
+	dptxset(it6505, 0x05, 0x10, 0x00);
+	/* Disable CP_Desired */
+	dptxset(it6505, 0x38, 0x01, 0x00);
+	/* Use R0' 100ms waiting */
+	dptxset(it6505, 0x38, 0x08, 0x00);
+	/* clear the repeater List Chk Done and fail bit */
+	dptxset(it6505, 0x39, 0x30, 0x00);
+
+	for (i = 0; i < 5; i++)
+		bksvs[i] = dptx_dpcdrd(it6505, 0x68000 + i);
+
+	bksv = bksvs[0] + (bksvs[1] << 8) + (bksvs[2] << 16) +
+	       (bksvs[3] << 24) + (bksvs[4] << 32);
+	DRM_DEBUG_DRIVER("Sink BKSV = 0x%lx", bksv);
+
+	/* Select An Generator */
+	dptxset(it6505, 0x3A, 0x01, 0x01);
+	/* Enable An Generator */
+	dptxset(it6505, 0x3A, 0x02, 0x02);
+	/* delay1ms(10);*/
+	usleep_range(10000, 15000);
+	/* Stop An Generator */
+	dptxset(it6505, 0x3A, 0x02, 0x00);
+
+	dptxset(it6505, 0x38, 0x01, 0x01);
+	dptxset(it6505, 0x39, 0x01, 0x01);
+}
+
+static void it6505_lanespeed_setup(struct it6505 *it6505)
+{
+	if (!it6505->hbr) {
+		dptxset(it6505, 0x16, 0x01, 1);
+		dptxset(it6505, 0x5C, 0x02, 0x00);
+	} else {
+		dptxset(it6505, 0x16, 0x01, 0);
+		dptxset(it6505, 0x5C, 0x02, 0x02);
+	}
+}
+
+static void it6505_lane_swap(struct it6505 *it6505)
+{
+	int err;
+	union extcon_property_value property;
+
+	err = extcon_get_property(it6505->port->extcon, EXTCON_DISP_DP,
+				  EXTCON_PROP_USB_TYPEC_POLARITY,
+				  &property);
+	if (err) {
+		DRM_ERROR("%s get property fail!", __func__);
+		return;
+	}
+	it6505->laneswap = property.intval;
+
+	dptxset(it6505, 0x16, 0x08, it6505->laneswap ? 8 : 0);
+	dptxset(it6505, 0x16, 0x06, (it6505->lane - 1) << 1);
+	DRM_DEBUG_DRIVER("it6505->laneswap = 0x%x\n", it6505->laneswap);
+
+	if (it6505->laneswap) {
+		switch (it6505->lane) {
+		case 1:
+			dptxset(it6505, 0x5C, 0xF1, 0x81);
+			break;
+		case 2:
+			dptxset(it6505, 0x5C, 0xF1, 0xC1);
+			break;
+		default:
+			dptxset(it6505, 0x5C, 0xF1, 0xF1);
+			break;
+		}
+	} else {
+		switch (it6505->lane) {
+		case 1:
+			dptxset(it6505, 0x5C, 0xF1, 0x11);
+			break;
+		case 2:
+			dptxset(it6505, 0x5C, 0xF1, 0x31);
+			break;
+		default:
+			dptxset(it6505, 0x5C, 0xF1, 0xF1);
+			break;
+		}
+	}
+}
+
+static void it6505_lane_config(struct it6505 *it6505)
+{
+	it6505_lanespeed_setup(it6505);
+	it6505_lane_swap(it6505);
+}
+
+static void dptx_chgbank(struct it6505 *it6505, unsigned int bank_id)
+{
+	dptxset(it6505, 0x0F, 0x01, bank_id & BIT(0));
+}
+
+static void it6505_set_ssc(struct it6505 *it6505)
+{
+	dptxset(it6505, 0x16, 0x10, it6505->en_ssc << 4);
+	if (it6505->en_ssc) {
+		DRM_DEBUG_DRIVER("Enable 27M 4463 PPM SSC\n");
+		dptx_chgbank(it6505, 1);
+		dptxwr(it6505, 0x88, 0x9e);
+		dptxwr(it6505, 0x89, 0x1c);
+		dptxwr(it6505, 0x8A, 0x42);
+		dptx_chgbank(it6505, 0);
+		dptxwr(it6505, 0x58, 0x07);
+		dptxwr(it6505, 0x59, 0x29);
+		dptxwr(it6505, 0x5A, 0x03);
+		/* Stamp Interrupt Step */
+		dptxset(it6505, 0xD4, 0x30, 0x10);
+		dptx_dpcdwr(it6505, 0x107, 0x10);
+	} else {
+		dptx_dpcdwr(it6505, 0x107, 0x00);
+		dptxset(it6505, 0xD4, 0x30, 0x00);
+	}
+}
+
+static void pclk_phase(struct it6505 *it6505)
+{
+	dptxset(it6505, 0x10, 0x03, PCLK_DELAY);
+	dptxset(it6505, 0x12, 0x10, PCLK_INV << 4);
+}
+
+static void afe_driving_setting(struct it6505 *it6505)
+{
+	dptxset(it6505, 0x0F, 0x01, 0x01);
+	dptxwr(it6505, 0x7E, 0x93);
+	dptxwr(it6505, 0x7F, 0x2A);
+	dptxwr(it6505, 0x81, 0x85);
+	dptxset(it6505, 0x0F, 0x01, 0x00);
+}
+
+static void dptx_output(struct it6505 *it6505, unsigned int hbr,
+			unsigned int lane,
+			unsigned int laneswap, unsigned int en_ssc,
+			unsigned int en_hframe)
+{
+	dptxwr(it6505, 0x05, 0x13);
+	/* change bank 0 */
+	dptxset(it6505, 0x0F, 0x01, 0x00);
+	/* RegTxFFRst set */
+	dptxset(it6505, 0x61, 0x02, 0x02);
+	/* RegTxFFRst clear */
+	dptxset(it6505, 0x61, 0x02, 0x00);
+	dptxwr(it6505, 0x64, 0x10);
+	dptxwr(it6505, 0x65, 0x80);
+	dptxwr(it6505, 0x66, 0x10);
+	dptxwr(it6505, 0x67, 0x4F);
+	dptxwr(it6505, 0x68, 0x09);
+	dptxwr(it6505, 0x69, 0xBA);
+	dptxwr(it6505, 0x6A, 0x3B);
+	dptxwr(it6505, 0x6B, 0x4B);
+	dptxwr(it6505, 0x6C, 0x3E);
+	dptxwr(it6505, 0x6D, 0x4F);
+	dptxwr(it6505, 0x6E, 0x09);
+	dptxwr(it6505, 0x6F, 0x56);
+	dptxwr(it6505, 0x70, 0x0E);
+	dptxwr(it6505, 0x71, 0x00);
+	dptxwr(it6505, 0x72, 0x00);
+	dptxwr(it6505, 0x73, 0x4F);
+	dptxwr(it6505, 0x74, 0x09);
+	dptxwr(it6505, 0x75, 0x00);
+	dptxwr(it6505, 0x76, 0x00);
+	dptxwr(it6505, 0x77, 0xE7);
+	dptxwr(it6505, 0x78, 0x10);
+	dptxwr(it6505, 0xE8, 0x00);
+	dptxset(it6505, 0xCE, 0x70, 0x60);
+	dptxset(it6505, 0xD0, 0xC0, 0x80);
+	dptxwr(it6505, 0xCA, 0x4D);
+	dptxwr(it6505, 0xC9, 0xF5);
+	dptxwr(it6505, 0x5C, 0x02);
+
+	dptx_dpcdwr(it6505, 0x600, 0x01);
+	dptxset(it6505, 0x59, 0x01, 0x01);
+	dptxset(it6505, 0x5A, 0x05, 0x01);
+	dptxwr(it6505, 0x12, 0x01);
+	dptxwr(it6505, 0xCB, 0x17);
+	dptxwr(it6505, 0x11, 0x09);
+	dptxwr(it6505, 0x20, 0x28);
+	dptxset(it6505, 0x23, 0x30, 0x00);
+	dptxset(it6505, 0x3A, 0x04, 0x04);
+	dptxset(it6505, 0x15, 0x01, 0x01);
+	dptxwr(it6505, 0x0C, 0x08);
+
+	dptxset(it6505, 0x5F, 0x20, 0x00);
+	it6505_lane_config(it6505);
+
+	it6505_set_ssc(it6505);
+
+	if (en_hframe)
+		dptxwr(it6505, 0xD3, 0x33);
+	else
+		dptxwr(it6505, 0xD3, 0x32);
+
+	dptxset(it6505, 0x15, 0x02, 0x02);
+	dptxset(it6505, 0x15, 0x02, 0x00);
+	dptxset(it6505, 0x05, 0x03, 0x02);
+	dptxset(it6505, 0x05, 0x03, 0x00);
+
+	/* reg60[2] = InDDR */
+	dptxwr(it6505, 0x60, 0x44);
+	/* M444B24 format */
+	dptxwr(it6505, 0x62, 0x01);
+	/* select RGB Bypass CSC */
+	dptxwr(it6505, 0x63, 0x00);
+
+	pclk_phase(it6505);
+	dptxset(it6505, 0x61, 0x01, 0x01);
+	dptxwr(it6505, 0x06, 0xFF);
+	dptxwr(it6505, 0x07, 0xFF);
+	dptxwr(it6505, 0x08, 0xFF);
+
+	dptxset(it6505, 0xd3, 0x30, 0x00);
+	dptxset(it6505, 0xd4, 0x41, 0x41);
+	dptxset(it6505, 0xe8, 0x11, 0x11);
+
+	afe_driving_setting(it6505);
+	dptxwr(it6505, 0x17, 0x04);
+	dptxwr(it6505, 0x17, 0x01);
+}
+
+
+static void dptx_sys_fsm(struct it6505 *it6505)
+{
+	unsigned int dpcd1[0x09], dpcd2[0x18];
+	unsigned int len, i;
+	int reg0e, reg0d, reg9f;
+#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
+	unsigned int ar0_low, ar0_high, br0_low, br0_high;
+#endif
+
+	DRM_DEBUG_DRIVER("[%s]start state: %d\n", __func__, it6505->status);
+
+	dptxrd(it6505, 0x0D, &reg0d);
+
+	if (it6505->status != SYS_UNPLUG && !(reg0d & BIT(1)))
+		dptx_sys_chg(it6505, SYS_UNPLUG);
+	DRM_DEBUG_DRIVER("[%s] state: %d\n", __func__, it6505->status);
+	switch (it6505->status) {
+	case SYS_PWRDN:
+		break;
+	case SYS_UNPLUG:
+		break;
+
+	case SYS_HPD:
+		dptxrd(it6505, 0x9f, &reg9f);
+		DRM_DEBUG_DRIVER("Aux channel status reg9F=0x%02x\n", reg9f);
+		/* GETDPCD */
+		it6505_get_dpcd(it6505);
+		it6505_parse_dpcd(it6505);
+
+		/*
+		 * training fail TRAINFAILCNT times,
+		 * then change to HPD to restart
+		 */
+		it6505->cntfsm = TRAINFAILCNT;
+		DRM_DEBUG_DRIVER("will Train %s %d lanes\n",
+				 it6505->hbr ? "HBR" : "LBR", it6505->lane);
+		dptx_sys_chg(it6505, SYS_AUTOTRAIN);
+		break;
+
+	case SYS_AUTOTRAIN:
+		dptx_output(it6505, it6505->hbr, it6505->lane,
+			    it6505->laneswap, it6505->en_ssc,
+			    it6505->en_hframe);
+
+		/*
+		 * waiting for training down flag
+		 * because we don't know
+		 * how long this step will be completed
+		 * so use step 1ms to wait
+		 */
+		for (i = 0; i < FLAGTRAINDOWN; i++) {
+			usleep_range(1000, 2000);
+			dptxrd(it6505, 0x0E, &reg0e);
+			if (reg0e & BIT(4))
+				break;
+		}
+
+		dptx_sys_chg(it6505, SYS_WAIT);
+		break;
+
+	case SYS_WAIT:
+		dptxrd(it6505, 0x0E, &reg0e);
+		len = ARRAY_SIZE(dpcd1);
+		DRM_DEBUG_DRIVER("SYS_WAIT state parse %ld dpcd offset!\n",
+				 len + ARRAY_SIZE(dpcd2));
+
+		for (i = 0; i < len; i++) {
+			dpcd1[i] = dptx_dpcdrd(it6505, 0x100 + i);
+			DRM_DEBUG_DRIVER("dpcd[0x%02x]:0x%02x", 0x100 + i,
+					 dpcd1[i]);
+		}
+
+		len = ARRAY_SIZE(dpcd2);
+		for (i = 0; i < len; i++) {
+			dpcd2[i] = dptx_dpcdrd(it6505, 0x200 + i);
+			DRM_DEBUG_DRIVER("dpcd[0x%02x]:0x%02x", 0x200 + i,
+					 dpcd2[i]);
+		}
+
+		if (reg0e & BIT(4)) {
+			DRM_DEBUG_DRIVER("Auto Link Training Success ...\n");
+			DRM_DEBUG_DRIVER("Link State : 0x%x\n", reg0e & 0x1F);
+#ifdef CONFIG_DRM_ITE_IT6505_ENAUD
+			it6505_set_audio(it6505, it6505->aud_sel,
+					 it6505->aud_type, it6505->aud_fs,
+					 it6505->aud_ch);
+#endif
+			DRM_DEBUG_DRIVER("it6505->VidStable_Done = %02x\n",
+					 it6505->vidstable_done);
+#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
+			DRM_DEBUG_DRIVER("Config ENHDCP\n");
+			if (it6505->cp_ready) {
+				DRM_DEBUG_DRIVER("Support HDCP\n");
+				dptx_sys_chg(it6505, SYS_ReHDCP);
+			} else {
+				DRM_DEBUG_DRIVER("Not support HDCP\n");
+				dptx_sys_chg(it6505, SYS_NOROP);
+			}
+#else
+			DRM_DEBUG_DRIVER("Not config ENHDCP\n");
+			dptx_sys_chg(it6505, SYS_NOROP);
+#endif
+		} else {
+			dptxrd(it6505, 0x0D, &reg0d);
+			dptxrd(it6505, 0x0E, &reg0e);
+			DRM_DEBUG_DRIVER("Auto Link Training fail step %d!\n",
+					 it6505->cntfsm);
+			DRM_DEBUG_DRIVER("reg0E:0x%x, reg0D:0x%x!\n", reg0e,
+					 reg0d);
+			if (it6505->cntfsm > 0) {
+				it6505->cntfsm--;
+				dptx_sys_chg(it6505, SYS_AUTOTRAIN);
+			} else {
+				DRM_DEBUG_DRIVER(
+					"Auto Training Fail %d times\n",
+					TRAINFAILCNT);
+				DRM_DEBUG_DRIVER("Sys change to SYS_HPD!\n");
+				dptx_dpcdwr(it6505, 0x102, 0x00);
+				dptx_sys_chg(it6505, SYS_HPD);
+			}
+		}
+		break;
+
+#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
+	case SYS_ReHDCP:
+		msleep(500);
+		dptxrd(it6505, 0x3B, &ar0_low);
+		dptxrd(it6505, 0x3C, &ar0_high);
+		dptxrd(it6505, 0x45, &br0_low);
+		dptxrd(it6505, 0x46, &br0_high);
+		DRM_DEBUG_DRIVER("Before EnableHDCP\n");
+		DRM_DEBUG_DRIVER("Ar0_low:%x, Ar0_high:%x\n", ar0_low,
+				 ar0_high);
+		DRM_DEBUG_DRIVER("Br0_low:%x, Br0_high:%x\n", br0_low,
+				 br0_high);
+		it6505_enable_hdcp(it6505);
+		msleep(200);
+		DRM_DEBUG_DRIVER("SYS_ReHDCP end !!\n");
+		break;
+
+#endif
+	case SYS_NOROP:
+		break;
+
+	default:
+		DRM_ERROR("sys_state change to unknown_state:%d\n",
+			  it6505->status);
+		break;
+	}
+}
+
+static int it6505_poweron(struct it6505 *it6505)
+{
+	struct it6505_platform_data *pdata = &it6505->pdata;
+	int err = 0;
+
+	if (it6505->powered) {
+		DRM_DEBUG_DRIVER("[%s] had already been power on!",
+				 __func__);
+		return 0;
+	}
+
+	DRM_DEBUG_DRIVER("it6505 start to power on\n");
+
+	err = regulator_enable(pdata->pwr18);
+	DRM_DEBUG_DRIVER("%s to enable pwr18 regulator",
+			 err ? "Failed" : "Succeeded");
+	if (err)
+		return err;
+	/* time interval between IVDD and OVDD at least be 1ms */
+	usleep_range(1000, 2000);
+	err = regulator_enable(pdata->ovdd);
+	DRM_DEBUG_DRIVER("%s to enable ovdd regulator",
+			 err ? "Failed" : "Succeeded");
+	if (err) {
+		regulator_disable(pdata->pwr18);
+		return err;
+	}
+	/* time interval between OVDD and SYSRSTN at least be 10ms */
+	usleep_range(10000, 20000);
+	gpiod_set_value_cansleep(pdata->gpiod_reset, 0);
+	usleep_range(1000, 2000);
+	gpiod_set_value_cansleep(pdata->gpiod_reset, 1);
+	usleep_range(10000, 20000);
+
+	dptx_init(it6505);
+	it6505->powered = true;
+	return 0;
+}
+
+#ifdef CONFIG_DRM_ITE_IT6505_ENPWRONOFF
+static int it6505_poweroff(struct it6505 *it6505)
+{
+	struct it6505_platform_data *pdata = &it6505->pdata;
+	int err = 0;
+
+	DRM_DEBUG_DRIVER("[%s]start", __func__);
+	if (!(it6505->powered)) {
+		DRM_DEBUG_DRIVER("[%s] power had been already off", __func__);
+		return 0;
+	}
+	gpiod_set_value_cansleep(pdata->gpiod_reset, 0);
+	err = regulator_disable(pdata->pwr18);
+	DRM_DEBUG_DRIVER("%s to disable pwr18 regulator",
+			 err ? "Failed" : "Succeeded");
+	if (err)
+		return err;
+	err = regulator_disable(pdata->ovdd);
+	DRM_DEBUG_DRIVER("%s to disable ovdd regulator",
+			 err ? "Failed" : "Succeeded");
+	if (err)
+		return err;
+
+	kfree(it6505->edid);
+	it6505->edid = NULL;
+	it6505->powered = false;
+	return 0;
+}
+#endif
+
+static int sha1_digest(u8 *sha1_input, unsigned int size, u8 *output_av)
+{
+	struct shash_desc *desc;
+	struct crypto_shash *tfm;
+	int err;
+
+	desc = kzalloc(sizeof(*desc) + crypto_shash_descsize(tfm), GFP_KERNEL);
+	if (!desc)
+		return -ENOMEM;
+
+	tfm = crypto_alloc_shash("sha1", 0, 0);
+	if (IS_ERR(tfm)) {
+		DRM_ERROR("crypto_alloc_shash sha1 failed");
+		kfree(desc);
+		return PTR_ERR(tfm);
+	}
+	desc->tfm = tfm;
+	DRM_DEBUG_DRIVER("[%s]crypto_shash_digest start", __func__);
+	err = crypto_shash_digest(desc, sha1_input, size, output_av);
+	if (err)
+		DRM_ERROR("crypto_shash_digest sha1 failed");
+
+	crypto_free_shash(tfm);
+	kfree(desc);
+	return err;
+}
+
+static int it6505_makeup_sha1_input(struct it6505 *it6505)
+{
+	int msgcnt = 0, i;
+	unsigned int value;
+	unsigned long ksvlist;
+
+	dptxset(it6505, 0x3A, 0x20, 0x20);
+	DRM_DEBUG_DRIVER("read am0: ");
+	for (i = 0; i < 8; i++) {
+		dptxrd(it6505, 0x4C + i, &value);
+		it6505->am0[i] = value;
+		DRM_DEBUG_DRIVER("0x%02X , ", it6505->am0[i]);
+	}
+	DRM_DEBUG_DRIVER("\n");
+	dptxset(it6505, 0x3A, 0x20, 0x00);
+
+	it6505->binfo[0] = dptx_dpcdrd(it6505, 0x6802A);
+	it6505->binfo[1] = dptx_dpcdrd(it6505, 0x6802B);
+	DRM_DEBUG_DRIVER("read Binfo!!");
+	DRM_DEBUG_DRIVER("Attached devices:%02x\n",
+			 it6505->binfo[0] & 0x7F);
+
+	DRM_DEBUG_DRIVER("%s 127 devices are attached\n",
+			 ((it6505->binfo[0] & BIT(7)) >> 7) ?
+			 "over" : "under");
+	DRM_DEBUG_DRIVER("depth, attached levels:%02x\n",
+			 it6505->binfo[1] & 0x07);
+	DRM_DEBUG_DRIVER("%s than seven levels cascaded\n",
+			 ((it6505->binfo[1] & BIT(3)) >> 3) ?
+			 "more" : "less");
+
+	for (i = 0; i < (it6505->binfo[0] & 0x7F); i++) {
+		it6505->shainput[msgcnt]
+			= it6505->ksvlist[msgcnt]
+			= dptx_dpcdrd(it6505,
+				0x6802C + (i % 3) * 5);
+		msgcnt++;
+		it6505->shainput[msgcnt]
+			= it6505->ksvlist[msgcnt]
+			= dptx_dpcdrd(it6505,
+				0x6802D + (i % 3) * 5);
+		msgcnt++;
+		it6505->shainput[msgcnt]
+			= it6505->ksvlist[msgcnt]
+			= dptx_dpcdrd(it6505,
+				0x6802E + (i % 3) * 5);
+		msgcnt++;
+		it6505->shainput[msgcnt]
+			= it6505->ksvlist[msgcnt]
+			= dptx_dpcdrd(it6505,
+				0x6802F + (i % 3) * 5);
+		msgcnt++;
+		it6505->shainput[msgcnt]
+			= it6505->ksvlist[msgcnt]
+			= dptx_dpcdrd(it6505,
+				0x68030 + (i % 3) * 5);
+		msgcnt++;
+		ksvlist
+			= ((unsigned long)
+			(it6505->ksvlist[i * 5 + 4]) << 32)
+			+ (it6505->ksvlist[i * 5 + 3] << 24)
+			+ (it6505->ksvlist[i * 5 + 2] << 16)
+			+ (it6505->ksvlist[i * 5 + 1] << 8)
+			+ it6505->ksvlist[i * 5];
+
+		DRM_DEBUG_DRIVER("KSV List %d device:0x%lx\n",
+				 i, ksvlist);
+	}
+	DRM_DEBUG_DRIVER("\n");
+	it6505->shainput[msgcnt++] = it6505->binfo[0];
+	it6505->shainput[msgcnt++] = it6505->binfo[1];
+	for (i = 0; i < 8; i++)
+		it6505->shainput[msgcnt++] = it6505->am0[i];
+
+	DRM_DEBUG_DRIVER("SHA Message Count = %d\n", msgcnt);
+	return msgcnt;
+}
+
+static void it6505_check_sha1_result(struct it6505 *it6505)
+{
+	unsigned int i, value;
+
+	DRM_DEBUG_DRIVER("SHA calculate complete!\n");
+	for (i = 0; i < 5; i++) {
+		value
+			= (it6505->av[i][3] << 24)
+			+ (it6505->av[i][2] << 16)
+			+ (it6505->av[i][1] << 8)
+			+ it6505->av[i][0];
+		DRM_DEBUG_DRIVER("av %d :0x%08x\n",
+				 i, value);
+	}
+	DRM_DEBUG_DRIVER("\n");
+
+	it6505->passsha = 1;
+	for (i = 0; i < 5; i++) {
+		it6505->bv[i][0]
+			= dptx_dpcdrd(it6505, 0x68017 + i * 4);
+		it6505->bv[i][1]
+			= dptx_dpcdrd(it6505, 0x68016 + i * 4);
+		it6505->bv[i][2]
+			= dptx_dpcdrd(it6505, 0x68015 + i * 4);
+		it6505->bv[i][3]
+			= dptx_dpcdrd(it6505, 0x68014 + i * 4);
+		value
+			= (it6505->bv[i][3] << 24)
+			+ (it6505->bv[i][2] << 16)
+			+ (it6505->bv[i][1] << 8)
+			+ it6505->bv[i][0];
+		DRM_DEBUG_DRIVER("bv %d :0x%08x\n",
+			i, value);
+		if ((it6505->bv[i][0]
+				!= it6505->av[i][0]) ||
+			(it6505->bv[i][1]
+				!= it6505->av[i][1]) ||
+			(it6505->bv[i][2]
+				!= it6505->av[i][2]) ||
+			(it6505->bv[i][3]
+				!= it6505->av[i][3])) {
+			it6505->passsha = 0;
+		}
+	}
+	if (it6505->passsha) {
+		DRM_DEBUG_DRIVER("SHA check result pass!\n");
+		DRM_DEBUG_DRIVER("trigger reg0x39[4] = 1\n");
+		dptxset(it6505, 0x39, BIT(4), BIT(4));
+	} else {
+		DRM_DEBUG_DRIVER("SHA check result fail\n");
+		DRM_DEBUG_DRIVER("trigger reg0x39[5] = 1\n");
+		dptxset(it6505, 0x39, BIT(5), BIT(5));
+	}
+}
+
+static void hpd_irq(struct it6505 *it6505)
+{
+	unsigned int dpcd200, dpcd201, dpcd202, dpcd203;
+	unsigned int dpcd204, dpcd205, aux_busy_cnt, aux_busy, value, reg55;
+	int ret, len;
+#ifdef SHA_DEBUG
+	int i;
+#endif
+
+	dpcd200 = dptx_dpcdrd(it6505, 0x200);
+	dpcd201 = dptx_dpcdrd(it6505, 0x201);
+	dpcd202 = dptx_dpcdrd(it6505, 0x202);
+	dpcd203 = dptx_dpcdrd(it6505, 0x203);
+	dpcd204 = dptx_dpcdrd(it6505, 0x204);
+	dpcd205 = dptx_dpcdrd(it6505, 0x205);
+
+	DRM_DEBUG_DRIVER("dpcd200 = 0x%x\n", dpcd200);
+	DRM_DEBUG_DRIVER("dpcd201 = 0x%x\n", dpcd201);
+	DRM_DEBUG_DRIVER("dpcd202 = 0x%x\n", dpcd202);
+	DRM_DEBUG_DRIVER("dpcd203 = 0x%x\n", dpcd203);
+	DRM_DEBUG_DRIVER("dpcd204 = 0x%x\n", dpcd204);
+	DRM_DEBUG_DRIVER("dpcd205 = 0x%x\n", dpcd205);
+
+	if (dpcd201 & BIT(2)) {
+		ret = dptxrd(it6505, 0x38, &value);
+		it6505->bstatus = dptx_dpcdrd(it6505, 0x68029);
+		dptxrd(it6505, 0x55, &reg55);
+		DRM_DEBUG_DRIVER("reg0x55 = 0x%02x, reg0x68029 = 0x%02x\n",
+				 reg55, it6505->bstatus);
+		if (value & BIT(0)) {
+
+			if (it6505->cp_done) {
+				DRM_DEBUG_DRIVER("Received CP_IRQ");
+				DRM_DEBUG_DRIVER("cp_done = '1'");
+				DRM_DEBUG_DRIVER("Current bstatus = 0x%x\n",
+						 it6505->bstatus);
+			} else {
+				DRM_DEBUG_DRIVER("Received CP_IRQ\n");
+				DRM_DEBUG_DRIVER("cp_done = '0'\n");
+			}
+
+			if (!it6505->cp_done || it6505->bstatus & BIT(2)) {
+				DRM_DEBUG_DRIVER("Trigger CP_IRQ");
+				DRM_DEBUG_DRIVER(" to HDCP Engine\n");
+
+				dptxset(it6505, 0x39, 0x02, 0x02);
+
+				aux_busy_cnt = 0;
+				do {
+					usleep_range(1000, 1500);
+
+					aux_busy_cnt++;
+					ret = dptxrd(it6505, 0x2B, &value);
+					aux_busy = (value & BIT(5)) >> 5;
+				} while (aux_busy == 1 && aux_busy_cnt < 20);
+
+
+				if (aux_busy) {
+					DRM_DEBUG_DRIVER("AUX Busy Period!");
+				} else {
+					msleep(1000);
+					dptxrd(it6505, 0x55, &it6505->bstatus);
+					DRM_DEBUG_DRIVER(
+						"Link Integrity Fail = %ld",
+						(it6505->bstatus & BIT(2))
+							>> 2);
+					DRM_DEBUG_DRIVER("R0' Available = %ld",
+						(it6505->bstatus & BIT(1))
+							>> 1);
+					DRM_DEBUG_DRIVER("KSV List Ready=%ld",
+						(it6505->bstatus & BIT(0)));
+				}
+			}
+		}
+		DRM_DEBUG_DRIVER("Receive CP_IRQ!\n");
+		it6505->bstatus = dptx_dpcdrd(it6505, 0x68029);
+		dptxrd(it6505, 0x55, &reg55);
+		DRM_DEBUG_DRIVER("Cause of the interrupt!");
+		DRM_DEBUG_DRIVER("reg0x68029 = 0x%02x, reg0x55 = 0x%02x\n",
+				 it6505->bstatus, reg55);
+
+		if (it6505->bstatus & BIT(0)) {
+			DRM_DEBUG_DRIVER("HDCP KSV list ready!! ...\n");
+			len = it6505_makeup_sha1_input(it6505);
+			sha1_digest(it6505->shainput, len, (u8 *)it6505->av);
+
+			/* for SHA debug */
+#ifdef SHA_DEBUG
+			DRM_DEBUG_DRIVER("SHA_input:\n");
+			for (i = 0; i < 64; i++) {
+				if (!(i % 16))
+					DRM_DEBUG_DRIVER("\n");
+				DRM_DEBUG_DRIVER("0x%02x",
+						 it6505->shainput[i]);
+			}
+#endif
+			it6505_check_sha1_result(it6505);
+		}
+		if (it6505->bstatus & BIT(1))
+			DRM_DEBUG_DRIVER("HDCP R0' ready!! ...\n");
+		if (it6505->bstatus & BIT(2)) {
+			DRM_DEBUG_DRIVER("Link Integrity Fail,restart HDCP");
+			dptx_sys_chg(it6505, SYS_ReHDCP);
+		}
+	}
+
+	if ((dpcd204 & BIT(7)) == 0x80) {
+		if ((it6505->lane == 1 && (dpcd202 & BIT(2)) != 0x04) ||
+			(it6505->lane == 2 && (dpcd202 & 0x44) != 0x44) ||
+			(it6505->lane == 4 && ((dpcd202 & 0x44) != 0x44 ||
+			(dpcd203 & 0x44) != 0x44)) ||
+			(it6505->lane == 1 && (dpcd203 & BIT(6)) != 0x40) ||
+			(it6505->lane == 2 && (dpcd203 & 0x44) != 0x44) ||
+			(it6505->lane == 4 && ((dpcd203 & 0x44) != 0x44 ||
+			(dpcd202 & 0x44) != 0x44)) ||
+			(dpcd204 & BIT(0)) != 0x01) {
+
+			DRM_DEBUG_DRIVER("Link Re-Training\n");
+			dptxset(it6505, 0xD3, 0x30, 0x30);
+			dptxset(it6505, 0xE8, 0x33, 0x00);
+			msleep(500);
+			dptx_sys_chg(it6505, SYS_HPD);
+#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
+			DRM_DEBUG_DRIVER("INT_MODE:Config ENHDCP");
+			if (it6505->cp_ready) {
+				DRM_DEBUG_DRIVER("INT_MODE:Sink cp_ready:%d",
+						 it6505->cp_ready);
+				DRM_DEBUG_DRIVER("Support HDCP\n");
+				while (it6505->status != SYS_ReHDCP) {
+					dptx_sys_fsm(it6505);
+					if (it6505->status
+						== SYS_UNPLUG)
+						return;
+				}
+				dptx_sys_fsm(it6505);
+				if (it6505->downstream_repeater) {
+					DRM_DEBUG_DRIVER("This is repeater!");
+					hpd_irq(it6505);
+				}
+			} else {
+				DRM_DEBUG_DRIVER("INT_MODE:Sink cp_ready:%d",
+						 it6505->cp_ready);
+				DRM_DEBUG_DRIVER("Not support HDCP");
+				while (it6505->status != SYS_NOROP) {
+					dptx_sys_fsm(it6505);
+					if (it6505->status
+						== SYS_UNPLUG)
+						return;
+				}
+			}
+#else
+				DRM_DEBUG_DRIVER("INT_MODE:Unconfig ENHDCP");
+				while (it6505->status != SYS_NOROP) {
+					dptx_sys_fsm(it6505);
+					if (it6505->status
+						== SYS_UNPLUG)
+						return;
+				}
+#endif
+		}
+	}
+}
+
+static void it6505_check_reg06(struct it6505 *it6505, unsigned int reg06)
+{
+	unsigned int rddata, err;
+	union extcon_property_value property;
+
+	DRM_DEBUG_DRIVER("[%s]start", __func__);
+	if (reg06 & BIT(0)) {
+		/* hpd pin status change */
+		DRM_DEBUG_DRIVER("HPD Change Interrupt\n");
+		dptxrd(it6505, 0x0D, &rddata);
+		if (rddata & BIT(1)) {
+			err = extcon_get_property(it6505->port->extcon,
+				EXTCON_DISP_DP,
+				EXTCON_PROP_USB_TYPEC_POLARITY, &property);
+			if (err) {
+				DRM_DEBUG_DRIVER("%s get property fail!",
+						 __func__);
+			}
+
+			it6505->laneswap = property.intval;
+			DRM_DEBUG_DRIVER("laneswap:%d", it6505->laneswap);
+			dptx_sys_chg(it6505, SYS_HPD);
+			dptx_sys_fsm(it6505);
+#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
+			DRM_DEBUG_DRIVER("Config ENHDCP\n");
+			if (it6505->cp_ready) {
+				DRM_DEBUG_DRIVER("Sink cp_ready:%d\n",
+						 it6505->cp_ready);
+				DRM_DEBUG_DRIVER("Support HDCP\n");
+				while (it6505->status != SYS_ReHDCP) {
+					dptx_sys_fsm(it6505);
+					if (it6505->status
+					== SYS_UNPLUG)
+						return;
+				}
+				dptx_sys_fsm(it6505);
+				if (it6505->downstream_repeater) {
+					DRM_DEBUG_DRIVER("Is repeater");
+					hpd_irq(it6505);
+				}
+			} else {
+				DRM_DEBUG_DRIVER("Sink cp_ready:%d\n",
+						 it6505->cp_ready);
+				DRM_DEBUG_DRIVER("Not support HDCP\n");
+				while (it6505->status != SYS_NOROP) {
+					dptx_sys_fsm(it6505);
+					if (it6505->status
+					== SYS_UNPLUG)
+						return;
+				}
+			}
+#else
+			DRM_DEBUG_DRIVER("Not config ENHDCP\n");
+			while (it6505->status != SYS_NOROP) {
+				dptx_sys_fsm(it6505);
+				if (it6505->status == SYS_UNPLUG)
+					return;
+			}
+#endif
+		} else {
+			dptx_sys_chg(it6505, SYS_UNPLUG);
+		}
+	}
+
+#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
+	if (reg06 & BIT(3)) {
+		DRM_DEBUG_DRIVER("HDCP encryption Fail Interrupt\n");
+		DRM_DEBUG_DRIVER("HDCP retry! ...\n");
+		it6505->cp_done = 0;
+		DRM_DEBUG_DRIVER("Set it6505->cp_done = 0x%x ...\n",
+				 it6505->cp_done);
+		dptx_sys_fsm(it6505);
+		if (it6505->downstream_repeater) {
+			DRM_DEBUG_DRIVER("Is repeater");
+			hpd_irq(it6505);
+		}
+	}
+
+	if (reg06 & BIT(4)) {
+		DRM_DEBUG_DRIVER("HDCP encryption Done Interrupt\n");
+		it6505->cp_done = 1;
+		DRM_DEBUG_DRIVER("Set it6505->cp_done = 0x%x ...\n",
+				 it6505->cp_done);
+		dptx_sys_chg(it6505, SYS_NOROP);
+	}
+#endif
+
+	if (reg06 & BIT(1)) {
+		DRM_DEBUG_DRIVER("HPD IRQ Interrupt\n");
+		hpd_irq(it6505);
+	}
+
+	if (reg06 & BIT(2)) {
+		dptxrd(it6505, 0x0D, &rddata);
+
+		if ((rddata & BIT(2)) >> 2) {
+			DRM_DEBUG_DRIVER("Video Stable On Interrupt\n");
+			it6505->vidstable_done = 1;
+			DRM_DEBUG_DRIVER("Set vidstable_done = 0x%x\n",
+					 it6505->vidstable_done);
+		} else {
+			DRM_DEBUG_DRIVER("Video Stable Off Interrupt");
+			it6505->vidstable_done = 0;
+			DRM_DEBUG_DRIVER("Set vidstable_done = 0x%x\n",
+					 it6505->vidstable_done);
+		}
+	}
+
+	DRM_DEBUG_DRIVER("[%s]end", __func__);
+}
+
+static void it6505_check_reg07(struct it6505 *it6505, unsigned int reg07)
+{
+	DRM_DEBUG_DRIVER("[%s]start", __func__);
+	if (it6505->status == SYS_UNPLUG)
+		return;
+	if (reg07 & BIT(0))
+		DRM_DEBUG_DRIVER("AUX PC Request Fail Interrupt\n");
+
+	if (reg07 & BIT(1)) {
+		unsigned int ar0_low, ar0_high, br0_low, br0_high;
+
+		DRM_DEBUG_DRIVER("HDCP event Interrupt\n");
+		it6505->bstatus = dptx_dpcdrd(it6505, 0x68029);
+		dptxrd(it6505, 0x3B, &ar0_low);
+		dptxrd(it6505, 0x3C, &ar0_high);
+		dptxrd(it6505, 0x45, &br0_low);
+		dptxrd(it6505, 0x46, &br0_high);
+		/*
+		 * Read Bstatus to determine what happened
+		 */
+		DRM_DEBUG_DRIVER("Bstatus reg0x68029:%02x!\n",
+			it6505->bstatus);
+		if (!(it6505->bstatus & BIT(0))) {
+			DRM_DEBUG_DRIVER("R0' read back by TX!\n");
+			DRM_DEBUG_DRIVER("HDCP part I complete!");
+			DRM_DEBUG_DRIVER("Ar0_low:%02x",
+				ar0_low);
+			DRM_DEBUG_DRIVER("Ar0_high:%02x\n",
+				ar0_high);
+			DRM_DEBUG_DRIVER("Br0_low:%02x",
+				br0_low);
+			DRM_DEBUG_DRIVER("Br0_high:%02x\n",
+				br0_high);
+		}
+	}
+#ifdef CONFIG_DRM_ITE_IT6505_ENAUD
+	if (reg07 & BIT(2)) {
+		DRM_DEBUG_DRIVER("Audio FIFO OverFlow Interrupt\n");
+		dptxset(it6505, 0xD3, 0x20, 0x20);
+		dptxset(it6505, 0xE8, 0x22, 0x00);
+
+		dptxset(it6505, 0xB8, 0x80, 0x80);
+		dptxset(it6505, 0xB8, 0x80, 0x00);
+		it6505_set_audio(it6505,
+			it6505->aud_sel,
+			it6505->aud_type,
+			it6505->aud_fs,
+			it6505->aud_ch);
+	}
+#endif
+	DRM_DEBUG_DRIVER("[%s]end", __func__);
+}
+
+static void it6505_check_reg08(struct it6505 *it6505, unsigned int reg08)
+{
+	DRM_DEBUG_DRIVER("[%s]start", __func__);
+	if (it6505->status == SYS_UNPLUG)
+		return;
+	if (reg08 & BIT(4)) {
+		DRM_DEBUG_DRIVER("Link Training Fail Interrupt\n");
+		/* restart training */
+		dptx_sys_chg(it6505, SYS_AUTOTRAIN);
+#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
+		DRM_DEBUG_DRIVER("Config ENHDCP ...\n");
+		if (it6505->cp_ready) {
+			DRM_DEBUG_DRIVER("Sink cp_ready:%d",
+					 it6505->cp_ready);
+			DRM_DEBUG_DRIVER("Support HDCP\n");
+			while (it6505->status != SYS_ReHDCP) {
+				dptx_sys_fsm(it6505);
+				if (it6505->status == SYS_UNPLUG)
+					return;
+			}
+			dptx_sys_fsm(it6505);
+			if (it6505->downstream_repeater) {
+				DRM_DEBUG_DRIVER("This is repeater!\n");
+				hpd_irq(it6505);
+			}
+		} else {
+			DRM_DEBUG_DRIVER("Sink cp_ready:%d",
+					 it6505->cp_ready);
+			DRM_DEBUG_DRIVER("Not support HDCP\n");
+			while (it6505->status != SYS_NOROP) {
+				dptx_sys_fsm(it6505);
+				if (it6505->status == SYS_UNPLUG)
+					return;
+			}
+		}
+#else
+		DRM_DEBUG_DRIVER("Not config ENHDCP\n");
+		while (it6505->status != SYS_NOROP) {
+			dptx_sys_fsm(it6505);
+			if (it6505->status == SYS_UNPLUG)
+				return;
+		}
+#endif
+	}
+
+	if (reg08 & BIT(7)) {
+		DRM_DEBUG_DRIVER("IO Latch FIFO OverFlow Interrupt\n");
+		dptxset(it6505, 0x61, 0x02, 0x02);
+		dptxset(it6505, 0x61, 0x02, 0x00);
+	}
+	DRM_DEBUG_DRIVER("[%s]end", __func__);
+}
+
+static void it6505_dptx_irq(struct it6505 *it6505)
+{
+	unsigned int reg06, reg07, reg08, reg0d;
+
+	dptxrd(it6505, 0x06, &reg06);
+	dptxrd(it6505, 0x07, &reg07);
+	dptxrd(it6505, 0x08, &reg08);
+	dptxrd(it6505, 0x0D, &reg0d);
+
+	dptxwr(it6505, 0x06, reg06);
+	dptxwr(it6505, 0x07, reg07);
+	dptxwr(it6505, 0x08, reg08);
+
+	DRM_DEBUG_DRIVER("[%s]start", __func__);
+	DRM_DEBUG_DRIVER("reg06 = 0x%02x", reg06);
+	DRM_DEBUG_DRIVER("reg07 = 0x%02x", reg07);
+	DRM_DEBUG_DRIVER("reg08 = 0x%02x", reg08);
+	DRM_DEBUG_DRIVER("reg0d = 0x%02x", reg0d);
+
+	if (reg06 != 0)
+		it6505_check_reg06(it6505, reg06);
+
+	if (reg07 != 0)
+		it6505_check_reg07(it6505, reg07);
+
+	if (reg08 != 0)
+		it6505_check_reg08(it6505, reg08);
+	DRM_DEBUG_DRIVER("[%s]end", __func__);
+}
+
+
+static void it6505_bridge_enable(struct drm_bridge *bridge)
+{
+	struct it6505 *ctx = bridge_to_it6505(bridge);
+
+	DRM_DEBUG_DRIVER("[%s]start", __func__);
+
+	it6505_init_fsm(ctx);
+	it6505_int_mask(ctx);
+	dptx_sys_chg(ctx, SYS_HPD);
+
+	DRM_DEBUG_DRIVER("[%s]end", __func__);
+}
+
+static void it6505_bridge_disable(struct drm_bridge *bridge)
+{
+	DRM_DEBUG_DRIVER("[%s]start", __func__);
+	DRM_DEBUG_DRIVER("[%s]end", __func__);
+}
+
+static const struct drm_bridge_funcs it6505_bridge_funcs = {
+	.attach = it6505_bridge_attach,
+	.mode_valid = it6505_bridge_mode_valid,
+	.disable = it6505_bridge_disable,
+	.mode_set = it6505_bridge_mode_set,
+	.enable = it6505_bridge_enable,
+};
+
+static irqreturn_t it6505_intp_threaded_handler(int unused, void *data)
+{
+	struct it6505 *ctx = data;
+
+	msleep(100);
+	down(&ctx->sem_notifier);
+	DRM_DEBUG_DRIVER("[%s] start\n", __func__);
+
+	if (ctx->it6505_drv_hold == 0 && ctx->powered) {
+		DRM_DEBUG_DRIVER("[%s] into it6505_dptx_irq", __func__);
+		it6505_dptx_irq(ctx);
+	}
+
+	DRM_DEBUG_DRIVER("[%s] end", __func__);
+	up(&ctx->sem_notifier);
+	return IRQ_HANDLED;
+}
+
+static int it6505_init_pdata(struct it6505 *it6505)
+{
+	struct it6505_platform_data *pdata = &it6505->pdata;
+	struct device *dev = &it6505->client->dev;
+
+	/* 1.0V digital core power regulator  */
+	pdata->pwr18 = devm_regulator_get(dev, "pwr18");
+	if (IS_ERR(pdata->pwr18)) {
+		DRM_ERROR("pwr18 regulator not found\n");
+		return PTR_ERR(pdata->pwr18);
+	}
+
+	pdata->ovdd = devm_regulator_get(dev, "ovdd");
+	if (IS_ERR(pdata->ovdd)) {
+		DRM_ERROR("ovdd regulator not found\n");
+		return PTR_ERR(pdata->ovdd);
+	}
+
+	/* GPIO for HPD */
+	pdata->gpiod_hpd = devm_gpiod_get(dev, "hpd", GPIOD_IN);
+	if (IS_ERR(pdata->gpiod_hpd))
+		return PTR_ERR(pdata->gpiod_hpd);
+
+	/* GPIO for chip reset */
+	pdata->gpiod_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
+
+	return PTR_ERR_OR_ZERO(pdata->gpiod_reset);
+}
+
+static int it6505_i2c_probe(struct i2c_client *client,
+			const struct i2c_device_id *id)
+{
+	struct it6505 *ctx;
+	struct it6505_platform_data *pdata;
+	int err = 0;
+
+	ctx = devm_kzalloc(&client->dev, sizeof(*ctx), GFP_KERNEL);
+	DRM_DEBUG_DRIVER("[%s]start!", __func__);
+	if (!ctx)
+		return -ENOMEM;
+
+	mutex_init(&ctx->lock);
+
+	pdata = &ctx->pdata;
+
+	ctx->bridge.of_node = client->dev.of_node;
+	ctx->client = client;
+	i2c_set_clientdata(client, ctx);
+
+	err = it6505_init_pdata(ctx);
+	if (err) {
+		DRM_ERROR("Failed to initialize pdata: %d\n", err);
+		return err;
+	}
+
+	ctx->regmap = devm_regmap_init_i2c(client,
+				 &it6505_bridge_regmap_config);
+	if (IS_ERR(ctx->regmap)) {
+		DRM_ERROR("regmap i2c init failed\n");
+		return PTR_ERR(ctx->regmap);
+	}
+
+	pdata->hpd_irq = gpiod_to_irq(pdata->gpiod_hpd);
+	DRM_DEBUG_DRIVER("get HPD IRQ: %d\n", pdata->hpd_irq);
+	if (pdata->hpd_irq < 0) {
+		DRM_ERROR("Failed to get HPD IRQ: %d\n", pdata->hpd_irq);
+		return -ENODEV;
+	}
+
+	pdata->intp_irq = client->irq;
+	DRM_DEBUG_DRIVER("get IT6505: %d\n", pdata->intp_irq);
+	if (!pdata->intp_irq) {
+		DRM_ERROR("Failed to get CABLE_DET and INTP IRQ\n");
+		return -ENODEV;
+	}
+
+	err = devm_request_threaded_irq(&client->dev, pdata->intp_irq, NULL,
+					it6505_intp_threaded_handler,
+					IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
+					"it6505-intp", ctx);
+	if (err) {
+		DRM_ERROR("Failed to request INTP threaded IRQ: %d\n", err);
+		return err;
+	}
+	/* thread sequence control */
+	sema_init(&ctx->sem_notifier, 1);
+
+	ctx->powered = 0;
+	ctx->it6505_drv_hold = 0;
+#ifdef TEST_MODE
+	err = it6505_poweron(ctx);
+	if (err) {
+		DRM_DEBUG_DRIVER("power on fail!");
+		return err;
+	}
+	DRM_DEBUG_DRIVER("power on success!");
+	ctx->it6505_drv_hold = 1;
+#endif
+
+	ctx->bridge.funcs = &it6505_bridge_funcs;
+
+	drm_bridge_add(&ctx->bridge);
+	DRM_DEBUG_DRIVER("[%s]end", __func__);
+	return 0;
+}
+
+static int it6505_remove(struct i2c_client *client)
+{
+	struct it6505 *ctx = i2c_get_clientdata(client);
+
+	DRM_DEBUG_DRIVER("[%s]start", __func__);
+	drm_bridge_remove(&ctx->bridge);
+	kfree(ctx->edid);
+	ctx->edid = NULL;
+	DRM_DEBUG_DRIVER("[%s]end", __func__);
+	return 0;
+}
+
+static const struct i2c_device_id it6505_id[] = {
+	{ "it6505", 0 },
+	{ }
+};
+
+MODULE_DEVICE_TABLE(i2c, it6505_id);
+
+static const struct of_device_id it6505_of_match[] = {
+	{ .compatible = "ite,it6505" },
+	{ }
+};
+
+struct i2c_driver it6505_i2c_driver = {
+	.driver = {
+		.name = "it6505_dptx",
+		.owner = THIS_MODULE,
+		.of_match_table = it6505_of_match,
+	},
+	.probe = it6505_i2c_probe,
+	.remove = it6505_remove,
+	.id_table = it6505_id,
+};
+
+static int __init it6505_init(void)
+{
+	DRM_DEBUG_DRIVER("[%s]start", __func__);
+	i2c_add_driver(&it6505_i2c_driver);
+	DRM_DEBUG_DRIVER("[%s]end", __func__);
+	return 0;
+}
+
+static void __exit it6505_exit(void)
+{
+	DRM_DEBUG_DRIVER("[%s]start", __func__);
+	i2c_del_driver(&it6505_i2c_driver);
+	DRM_DEBUG_DRIVER("[%s]end", __func__);
+}
+
+module_init(it6505_init);
+module_exit(it6505_exit);
+
+MODULE_AUTHOR("Jitao Shi <jitao.shi@mediatek.com>");
+MODULE_DESCRIPTION("IT6505 DisplayPort Transmitter driver");
+MODULE_LICENSE("GPL v2");
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
