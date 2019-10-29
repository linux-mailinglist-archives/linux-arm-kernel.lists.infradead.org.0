Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAFDE8BFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 16:41:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:
	Subject:Date:From:References:In-Reply-To:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8/cyYIf00AkszGNCzJ7VUPNbZdttdKSmdUbYXFzHog8=; b=pUVkmTqGmKuAUs55jUQmRxy0CS
	bEtpDqGZbWru3J6/lLD/rhj50224JNudvOpS/CmO9TGn+7SVFSCyH4g94gu2TcV3xWfMIwEibrWIi
	LF+CkCU/y1igvMB+RAnCSkFrZjB+I23HTIyNrGYora1ZoB6Q8ryudcn2D4hbhTLvsaL96/xlRCXYc
	of/yKo7fkjO3xIWW98W2I3R+7RWJQU2ROo060Nk1TXa3laeaiJgVo6IijcrMP+DMyoxQQ+tVqqDeY
	Kv9aH5ObFG72kSV0VNpseT3wUX24YnPcrk+ni6RhqbevAFYz0w0Hy7oC+pCBH/N/152KNeYXDvgRL
	VhqPXjlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTcA-0000XA-1e; Tue, 29 Oct 2019 15:40:58 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTb2-00074F-49
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 15:39:51 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id 962B968CEE; Tue, 29 Oct 2019 16:39:45 +0100 (CET)
In-Reply-To: <20191029153815.C631668C4E@verein.lst.de>
References: <20191029153815.C631668C4E@verein.lst.de>
From: Torsten Duwe <duwe@lst.de>
Date: Tue, 29 Oct 2019 13:16:57 +0100
Subject: [PATCH v4 3/7] drm/bridge: extract some Analogix I2C DP common code
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Icenowy Zheng <icenowy@aosc.io>, Sean Paul <seanpaul@chromium.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Harald Geyer <harald@ccbib.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
Message-Id: <20191029153945.962B968CEE@verein.lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_083948_561381_63E6B638 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

Some code can be shared within different DP bridges by Analogix.
Extract them to analogix_dp.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Torsten Duwe <duwe@suse.de>
Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
---
 drivers/gpu/drm/bridge/analogix/Makefile           |   2 +-
 drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c | 146 +-----------------
 .../gpu/drm/bridge/analogix/analogix-i2c-dptx.c    | 165 +++++++++++++++++++++
 .../gpu/drm/bridge/analogix/analogix-i2c-dptx.h    |   3 +
 4 files changed, 170 insertions(+), 146 deletions(-)
 create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c

diff --git a/drivers/gpu/drm/bridge/analogix/Makefile b/drivers/gpu/drm/bridge/analogix/Makefile
index 6fcbfd3ee560..7623b9b80167 100644
--- a/drivers/gpu/drm/bridge/analogix/Makefile
+++ b/drivers/gpu/drm/bridge/analogix/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
-analogix_dp-objs := analogix_dp_core.o analogix_dp_reg.o
+analogix_dp-objs := analogix_dp_core.o analogix_dp_reg.o analogix-i2c-dptx.o
 obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
 obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix_dp.o
diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
index 3c7cc5af735c..c36e2c9445a3 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
@@ -35,8 +35,6 @@
 #define I2C_IDX_RX_P1		4
 
 #define XTAL_CLK		270 /* 27M */
-#define AUX_CH_BUFFER_SIZE	16
-#define AUX_WAIT_TIMEOUT_MS	15
 
 static const u8 anx78xx_i2c_addresses[] = {
 	[I2C_IDX_TX_P0] = TX_P0,
@@ -99,153 +97,11 @@ static int anx78xx_clear_bits(struct regmap *map, u8 reg, u8 mask)
 	return regmap_update_bits(map, reg, mask, 0);
 }
 
-static bool anx78xx_aux_op_finished(struct anx78xx *anx78xx)
-{
-	unsigned int value;
-	int err;
-
-	err = regmap_read(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL2_REG,
-			  &value);
-	if (err < 0)
-		return false;
-
-	return (value & SP_AUX_EN) == 0;
-}
-
-static int anx78xx_aux_wait(struct anx78xx *anx78xx)
-{
-	unsigned long timeout;
-	unsigned int status;
-	int err;
-
-	timeout = jiffies + msecs_to_jiffies(AUX_WAIT_TIMEOUT_MS) + 1;
-
-	while (!anx78xx_aux_op_finished(anx78xx)) {
-		if (time_after(jiffies, timeout)) {
-			if (!anx78xx_aux_op_finished(anx78xx)) {
-				DRM_ERROR("Timed out waiting AUX to finish\n");
-				return -ETIMEDOUT;
-			}
-
-			break;
-		}
-
-		usleep_range(1000, 2000);
-	}
-
-	/* Read the AUX channel access status */
-	err = regmap_read(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_CH_STATUS_REG,
-			  &status);
-	if (err < 0) {
-		DRM_ERROR("Failed to read from AUX channel: %d\n", err);
-		return err;
-	}
-
-	if (status & SP_AUX_STATUS) {
-		DRM_ERROR("Failed to wait for AUX channel (status: %02x)\n",
-			  status);
-		return -ETIMEDOUT;
-	}
-
-	return 0;
-}
-
-static int anx78xx_aux_address(struct anx78xx *anx78xx, unsigned int addr)
-{
-	int err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_ADDR_7_0_REG,
-			   addr & 0xff);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_ADDR_15_8_REG,
-			   (addr & 0xff00) >> 8);
-	if (err)
-		return err;
-
-	/*
-	 * DP AUX CH Address Register #2, only update bits[3:0]
-	 * [7:4] RESERVED
-	 * [3:0] AUX_ADDR[19:16], Register control AUX CH address.
-	 */
-	err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P0],
-				 SP_AUX_ADDR_19_16_REG,
-				 SP_AUX_ADDR_19_16_MASK,
-				 (addr & 0xf0000) >> 16);
-
-	if (err)
-		return err;
-
-	return 0;
-}
-
 static ssize_t anx78xx_aux_transfer(struct drm_dp_aux *aux,
 				    struct drm_dp_aux_msg *msg)
 {
 	struct anx78xx *anx78xx = container_of(aux, struct anx78xx, aux);
-	u8 ctrl1 = msg->request;
-	u8 ctrl2 = SP_AUX_EN;
-	u8 *buffer = msg->buffer;
-	int err;
-
-	/* The DP AUX transmit and receive buffer has 16 bytes. */
-	if (WARN_ON(msg->size > AUX_CH_BUFFER_SIZE))
-		return -E2BIG;
-
-	/* Zero-sized messages specify address-only transactions. */
-	if (msg->size < 1)
-		ctrl2 |= SP_ADDR_ONLY;
-	else	/* For non-zero-sized set the length field. */
-		ctrl1 |= (msg->size - 1) << SP_AUX_LENGTH_SHIFT;
-
-	if ((msg->request & DP_AUX_I2C_READ) == 0) {
-		/* When WRITE | MOT write values to data buffer */
-		err = regmap_bulk_write(anx78xx->map[I2C_IDX_TX_P0],
-					SP_DP_BUF_DATA0_REG, buffer,
-					msg->size);
-		if (err)
-			return err;
-	}
-
-	/* Write address and request */
-	err = anx78xx_aux_address(anx78xx, msg->address);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL1_REG,
-			   ctrl1);
-	if (err)
-		return err;
-
-	/* Start transaction */
-	err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P0],
-				 SP_DP_AUX_CH_CTRL2_REG, SP_ADDR_ONLY |
-				 SP_AUX_EN, ctrl2);
-	if (err)
-		return err;
-
-	err = anx78xx_aux_wait(anx78xx);
-	if (err)
-		return err;
-
-	msg->reply = DP_AUX_I2C_REPLY_ACK;
-
-	if ((msg->size > 0) && (msg->request & DP_AUX_I2C_READ)) {
-		/* Read values from data buffer */
-		err = regmap_bulk_read(anx78xx->map[I2C_IDX_TX_P0],
-				       SP_DP_BUF_DATA0_REG, buffer,
-				       msg->size);
-		if (err)
-			return err;
-	}
-
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
-				 SP_DP_AUX_CH_CTRL2_REG, SP_ADDR_ONLY);
-	if (err)
-		return err;
-
-	return msg->size;
+	return anx_dp_aux_transfer(anx78xx->map[I2C_IDX_TX_P0], msg);
 }
 
 static int anx78xx_set_hpd(struct anx78xx *anx78xx)
diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
new file mode 100644
index 000000000000..60707bb5afe7
--- /dev/null
+++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
@@ -0,0 +1,165 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright(c) 2016, Analogix Semiconductor.
+ *
+ * Based on anx7808 driver obtained from chromeos with copyright:
+ * Copyright(c) 2013, Google Inc.
+ */
+#include <linux/regmap.h>
+
+#include <drm/drm.h>
+#include <drm/drm_dp_helper.h>
+#include <drm/drm_print.h>
+
+#include "analogix-i2c-dptx.h"
+
+#define AUX_WAIT_TIMEOUT_MS	15
+#define AUX_CH_BUFFER_SIZE	16
+
+static int anx_i2c_dp_clear_bits(struct regmap *map, u8 reg, u8 mask)
+{
+	return regmap_update_bits(map, reg, mask, 0);
+}
+
+static bool anx_dp_aux_op_finished(struct regmap *map_dptx)
+{
+	unsigned int value;
+	int err;
+
+	err = regmap_read(map_dptx, SP_DP_AUX_CH_CTRL2_REG, &value);
+	if (err < 0)
+		return false;
+
+	return (value & SP_AUX_EN) == 0;
+}
+
+static int anx_dp_aux_wait(struct regmap *map_dptx)
+{
+	unsigned long timeout;
+	unsigned int status;
+	int err;
+
+	timeout = jiffies + msecs_to_jiffies(AUX_WAIT_TIMEOUT_MS) + 1;
+
+	while (!anx_dp_aux_op_finished(map_dptx)) {
+		if (time_after(jiffies, timeout)) {
+			if (!anx_dp_aux_op_finished(map_dptx)) {
+				DRM_ERROR("Timed out waiting AUX to finish\n");
+				return -ETIMEDOUT;
+			}
+
+			break;
+		}
+
+		usleep_range(1000, 2000);
+	}
+
+	/* Read the AUX channel access status */
+	err = regmap_read(map_dptx, SP_AUX_CH_STATUS_REG, &status);
+	if (err < 0) {
+		DRM_ERROR("Failed to read from AUX channel: %d\n", err);
+		return err;
+	}
+
+	if (status & SP_AUX_STATUS) {
+		DRM_ERROR("Failed to wait for AUX channel (status: %02x)\n",
+			  status);
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static int anx_dp_aux_address(struct regmap *map_dptx, unsigned int addr)
+{
+	int err;
+
+	err = regmap_write(map_dptx, SP_AUX_ADDR_7_0_REG, addr & 0xff);
+	if (err)
+		return err;
+
+	err = regmap_write(map_dptx, SP_AUX_ADDR_15_8_REG,
+			   (addr & 0xff00) >> 8);
+	if (err)
+		return err;
+
+	/*
+	 * DP AUX CH Address Register #2, only update bits[3:0]
+	 * [7:4] RESERVED
+	 * [3:0] AUX_ADDR[19:16], Register control AUX CH address.
+	 */
+	err = regmap_update_bits(map_dptx, SP_AUX_ADDR_19_16_REG,
+				 SP_AUX_ADDR_19_16_MASK,
+				 (addr & 0xf0000) >> 16);
+
+	if (err)
+		return err;
+
+	return 0;
+}
+
+ssize_t anx_dp_aux_transfer(struct regmap *map_dptx,
+				struct drm_dp_aux_msg *msg)
+{
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
+		err = regmap_bulk_write(map_dptx,
+					SP_DP_BUF_DATA0_REG, buffer,
+					msg->size);
+		if (err)
+			return err;
+	}
+
+	/* Write address and request */
+	err = anx_dp_aux_address(map_dptx, msg->address);
+	if (err)
+		return err;
+
+	err = regmap_write(map_dptx, SP_DP_AUX_CH_CTRL1_REG, ctrl1);
+	if (err)
+		return err;
+
+	/* Start transaction */
+	err = regmap_update_bits(map_dptx, SP_DP_AUX_CH_CTRL2_REG,
+				 SP_ADDR_ONLY | SP_AUX_EN, ctrl2);
+	if (err)
+		return err;
+
+	err = anx_dp_aux_wait(map_dptx);
+	if (err)
+		return err;
+
+	msg->reply = DP_AUX_I2C_REPLY_ACK;
+
+	if ((msg->size > 0) && (msg->request & DP_AUX_I2C_READ)) {
+		/* Read values from data buffer */
+		err = regmap_bulk_read(map_dptx,
+				       SP_DP_BUF_DATA0_REG, buffer,
+				       msg->size);
+		if (err)
+			return err;
+	}
+
+	err = anx_i2c_dp_clear_bits(map_dptx, SP_DP_AUX_CH_CTRL2_REG,
+				    SP_ADDR_ONLY);
+	if (err)
+		return err;
+
+	return msg->size;
+}
+EXPORT_SYMBOL_GPL(anx_dp_aux_transfer);
diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
index 6295be668cae..430a039c10cd 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
@@ -244,4 +244,7 @@
 /* DP AUX Buffer Data Registers */
 #define SP_DP_BUF_DATA0_REG		0xf0
 
+ssize_t anx_dp_aux_transfer(struct regmap *map_dptx,
+				struct drm_dp_aux_msg *msg);
+
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
